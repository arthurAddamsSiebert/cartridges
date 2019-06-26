/*
 * Intershop Tree Plugin
 *
 * based on:
 *      jstree 1.0.0
 *      http://jstree.com/
 *
 *      Copyright (c) 2011 Ivan Bozhanov (vakata.com)
 *
 *      Licensed same as jquery - under the terms of either the MIT License or the GPL Version 2 License
 *          http://www.opensource.org/licenses/mit-license.php
 *          http://www.gnu.org/licenses/gpl.html
 *
 */
(function ($) {
    'use strict';

    if (!$) {
        throw 'tree: jQuery not included.';
    }
    if ($.tree) {
        return;
    }

    (function () {
        var instances = [],
            focusedInstance = -1,
            availablePlugins = {},
            functions = {};

        /**
         * Contains all static functions and variables used by tree, some plugins also append variables and functions.
         * @name tree
         * @class
         * @memberOf! jQuery
         */
        $.tree = {
            /**
             * Creates a new tree instance, any arguments after the first one are merged and used to configure the tree.<br />
             * `.data('tree')` is also called on the container and is used for configuration (keep in mind you can specify this data using a 'data-tree' attribute)
             * @private
             * @memberof jQuery.tree
             * @param {*} container - the container of the tree (this should not be the UL node, but a wrapper) - DOM node, jQuery object or selector
             */
            __construct: function __construct(container) {
                var settings = {},
                    data = {},
                    plugins = [],
                    pluginTemp = [],
                    i = 0;

                container = $(container);
                if ($.tree._reference(container)) {
                    $.tree.__destruct(container);
                }

                // merge existing with new settings
                $.extend.apply(null, [true, settings].concat(Array.prototype.slice.call(arguments, 1), (container.data('tree') || {})));

                // available plugins
                plugins = $.isArray(settings.plugins) ? settings.plugins : $.tree.defaults.plugins.slice();

                // every plugin has to be unique
                plugins = $.grep(plugins, function (value, key) {
                    return $.inArray(value, plugins) === key;
                });

                // merge settings with default-settings
                settings = $.extend(true, {}, $.tree.defaults, settings);

                // remove settings for missing plugins
                $.each(availablePlugins, function removeUnusedSettings(name) {
                    if (name !== 'core' && $.inArray(name, plugins) === -1) {
                        settings[name] = null;
                        delete settings[name];
                    } else {
                        pluginTemp.push(name);
                        data[name] = {};
                    }
                });
                settings.plugins = pluginTemp;

                // current instance number (0-based)
                i = parseInt(instances.push({}), 10) - 1;
                container.data('treeInstanceId', i)
                    .addClass('tree tree-' + i);

                /**
                 * @type {Object} Provides storage for plugins (aside from private variables). Every plugin has an key in this object.
                 * @example
                 * this.data.<pluginName>;
                 * This is useful for detecting if some plugin is included in the instance (plugins also use this for dependencies and enhancements).
                 */
                this.data = data;
                /**
                 * Returns the instances index. Every instance on the page has an unique index, when destroying an intance the index will not be reused.
                 * @memberof jQuery.tree~
                 * @return {Number} index
                 */
                this.getIndex = function getIndex() {
                    return i;
                };
                /**
                 * get jQuery container of the current instance
                 * @memberof jQuery.tree~
                 * @return {jQuery} jQuery container
                 */
                this.getContainer = function getContainer() {
                    return container;
                };
                /**
                 * get jQuery UL element of the current instance
                 * @memberof jQuery.tree~
                 * @return {jQuery} jQuery UL element
                 */
                this.getContainerUl = function getContainerUl() {
                    return container.children('ul:eq(0)');
                };
                /**
                 * get all settings for the current instance
                 * @memberof jQuery.tree~
                 * @param {Boolean} [writable] return settings with write access (default: false)
                 * @return {Object} settings object
                 */
                this.getSettings = function getSettings(writable) {
                    return writable ? settings : $.extend(true, {}, settings);
                };

                /**
                 * internal event trigger
                 * @memberof jQuery.tree~
                 * @param {String} event name of the event
                 * @param {*} data data that is sent with the event
                 * @return {*}
                 * @private
                 */
                this.__trigger = function __trigger(event, data) {
                    if (!event) {
                        return;
                    }
                    if (!data) {
                        data = {};
                    }
                    if (typeof event === 'string') {
                        event = event.replace('.tree', '') + '.tree';
                    }
                    data.instance = this;
                    return this.getContainer().triggerHandler(event, data);
                };

                // store this instance scope
                instances[i] = this;

                // call constructor of each plugin
                $.each(pluginTemp, function callPluginConstructors(j, plugin) {
                    if (availablePlugins[plugin]) {
                        availablePlugins[plugin].__construct.apply(instances[i]);
                    }
                });

                this.__trigger('__construct');

                // set focus on this tree
                $.tree._focus(i);

                return this;
            },
            /**
             * Destroys an instance, and also clears `tree-` prefixed classes and all events in the `tree` namespace
             * @memberof jQuery.tree
             * @param {*} instance the instance to destroy (this argument is passed to <$.tree._reference> to get the instance)
             * @see {@link $.tree._reference}
             */
            __destruct: function __destruct(instance) {
                instance = $.tree._reference(instance);
                if (!instance) {
                    return false;
                }

                var settings = instance.getSettings(),
                    index = instance.getIndex(),
                    i = 0;

                if (focusedInstance === index) {
                    // focus next tree instance
                    for (i in instances) {
                        if (instances.hasOwnProperty(i) && i !== index) {
                            $.tree._focus(i);
                            break;
                        }
                    }
                    // if found instance is this instance, defocus
                    if (focusedInstance === index) {
                        $.tree._focus(false);
                    }
                }

                // destruct each plugin
                $.each(settings.plugins, function destructEachPlugin(i, plugin) {
                    try {
                        availablePlugins[plugin].__destruct.apply(instance);
                    } catch (err) {
                    }
                });

                instance.__trigger('__destruct');

                // remove events, data, restore css classes
                instance.getContainer()
                    .off('.tree')
                    .removeData('treeInstanceId')
                    .find('[class^="tree"]')
                    .addBack()
                    .attr('class', function removeCssClasses() {
                        return this.className.replace(/tree[^ ]*|$/ig, '');
                    });

                // remove global listener
                $(document).off('.tree-' + index);

                // remove this instance
                delete instances[index];

                return true;
            },
            /**
             * Call a function on the instance and return the result.
             * @private
             * @memberof jQuery.tree
             *
             * @param instance - *mixed* the instance to destroy (this argument is passed to <jQuery.fn.tree._reference> to get the instance)
             * @param operation - *string* the operation to execute
             * @param args - *array* the arguments to pass to the function
             *
             * @return {*} when function or instance not found or the result returned by the called method
             *
             * @see {@link jQuery.tree._reference}
             */
            __call: function __call(instance, operation, args) {
                // get instance
                instance = $.tree._reference(instance);

                // check if instance exists and has operation
                if (!instance || !$.isFunction(instance[operation])) {
                    return;
                }

                // call operation and return result
                return instance[operation].apply(instance, args);
            },
            /**
             * Returns an instance.
             * @private
             * @memberof jQuery.tree
             * @param needle - *mixed* - integer, DOM node contained inside a tree container, ID string, jQuery object, selector
             * @returns instance
             */
            _reference: function _reference(needle) {
                // needle is an integer, instance is known
                if (instances[needle]) {
                    return instances[needle];
                }

                // needle is selector, jQuery object or ID string
                var o = $(needle);
                if (!o.length && typeof needle === 'string') {
                    o = $('#' + needle);
                }
                // no DOM reference found
                if (!o.length) {
                    return null;
                }

                // needle is DOM node contained inside tree
                return instances[o.closest('.tree')
                    .data('treeInstanceId')] || null;
            },
            /**
             * Returns the currently focused instance (by default once an instance is created it is focused)
             * @private
             * @memberof jQuery.tree
             */
            _focused: function _focused() {
                // get focused instance
                return instances[focusedInstance] || null;
            },
            /**
             * Make an instance focused (which defocuses the previously focused instance)
             * @private
             * @memberof jQuery.tree
             * @param {*} instance the instance to focus (this argument is passed to <$.tree._reference> to get the instance)
             * @see {@link $.tree._reference}
             */
            _focus: function _focus(instance) {
                if (instance === false) {
                    // remove focus
                    instances[focusedInstance].getContainer().removeClass('tree-focused');
                    instances[focusedInstance].__trigger('_defocus');
                    focusedInstance = -1;
                    return false;
                }

                // if instance doesn't exist or is already focused
                instance = $.tree._reference(instance);
                if (!instance || instance.getIndex() === focusedInstance) {
                    return false;
                }

                // remove focus from other instance
                if (focusedInstance !== -1) {
                    instances[focusedInstance].getContainer().removeClass('tree-focused');
                    instances[focusedInstance].__trigger('_defocus');
                }
                // add focus to this instance
                focusedInstance = instance.getIndex();
                instance.getContainer().addClass('tree-focused');
                instance.__trigger('_focus');

                return true;
            },
            /**
             * Register a plugin
             * @memberof jQuery.tree
             * @param {string} pluginName The name of the new plugin (it will be used as a key in an object - make sure it is valid)
             * @param {object} pluginData
             * @param {function} [pluginData.__construct=$.noop] this function will be executed when a new instance is created
             * @param {function} [pluginData.__destuct=$.noop] this function will be executed when an instance is destroyed
             * @param {Object} [pluginData._fn={}] each key of this object should be a function that will extend the tree prototype
             * @param {Object} [pluginData.defaults=false] the default configuration for the plugin (if any)
             */
            plugin: function plugin(pluginName, pluginData) {
                // merge default values with plugin-data
                pluginData = $.extend({}, {
                    __construct: $.noop,
                    __destuct: $.noop,
                    _fn: {},
                    defaults: false
                }, pluginData);

                // add plugin name to list of plugins
                availablePlugins[pluginName] = pluginData;

                // add plugin defaults to tree defaults
                $.tree.defaults[pluginName] = pluginData.defaults;

                // encapsulate each plugin function
                $.each(pluginData._fn, function encapsulateEachPluginFn(fnName, fn) {
                    // add plugin name and references to functions of the same name to this function
                    fn.plugin = pluginName;
                    fn.old = functions[fnName];

                    // adds new function to the other functions of the same name
                    functions[fnName] = function fnWrapper() {
                        var result, func = fn,
                            args = Array.prototype.slice.call(arguments),
                            event = new $.Event('before' + fnName.charAt(0).toUpperCase() + fnName.slice(1) + '.tree'),
                            plugin = this.getSettings(true).plugins;

                        do {
                            if (func && func.plugin && $.inArray(func.plugin, plugin) !== -1) {
                                break;
                            }
                            func = func.old;
                        } while (func);
                        if (!func) {
                            return;
                        }

/*
                        if (fnName.indexOf('_') === 0) {
                            // call private functions
                            result = func.apply(this, args);
                        } else {
*/
                            // trigger event
                            result = this.__trigger(event, {
                                'func': fnName,
                                'args': args,
                                'plugin': func.plugin
                            });
                            if (result === false) {
                                return;
                            }

                            // create new scope
                            var scope = $.extend({}, this, {
                                __callback: function __callback(data) {
                                    this.__trigger('after' + fnName.charAt(0).toUpperCase() + fnName.slice(1) + '.tree', {
                                        'args': args,
                                        'result': data,
                                        'plugin': func.plugin
                                    });
                                    return data;
                                },
                                __callOld: function __callOld(replaceArguments) {
                                    return func.old.apply(this, (replaceArguments ? Array.prototype.slice.call(arguments, 1) : args));
                                },
                                __instance: this
                            });
                            // execute function
                            result = func.apply(scope, args);
//                        }
                        return result;
                    };

                    functions[fnName].old = fn.old;
                    functions[fnName].plugin = pluginName;
                });
            },
            /**
             * Object storing all the default configuration options for every plugin and the core.<br />
             * If this is modified all instances created after the modification, which do not explicitly specify some other value will use the new default.
             * @memberof jQuery.tree
             * @property {Array} plugins The plugins that should be available for this tree instance.
             * @example
             * // this instance will use the _default_ theme
             * $('#div0').tree({ plugins : ['themes'] });
             * $.tree.defaults.themes.theme = 'classic';
             * // this instance will use the _classic_ theme
             * $('#div1').tree({ plugins : ['themes'] });
             * // this instance will use the _apple_ theme
             * $('#div2').tree({ themes : { 'theme' : 'apple' }, plugins : ['themes'] });
             */
            defaults: {
                plugins: []
            }
        };
        /**
         * The actual plugin wrapper, use this to create instances or execute functions on created instances.
         * Creates an instance using the specified objects for containers, or executes a command on an instance, specified by a container.
         * @name tree
         * @class
         * @ignore
         * @memberof! jQuery.fn
         * @param {String | Object} settings
         *     <ul>
         *         <li>if you pass an *object* a new instance will be created (using <$.tree.__construct>)for each of the objects in the jquery</li>
         *         <li>if an instance already exists on the container it will be destroyed first</li>
         *         <li>if you pass a *string* it will be executed using <$.tree.__call> on each instance</li>
         *     </ul>
         * @example
         * // this creates an instance
         * $('#some-id').tree({
         *     plugins: [ 'json', 'themes', 'ui' ]
         * });
         *
         * // this executes a function on the instance
         * $('#some-id').tree('select_node', '#the-id-to-select');
         * @see {@link jQuery.tree.__construct}
         * @see {@link jQuery.tree.__destruct}
         * @see {@link jQuery.tree.__call}
         */
        $.fn.tree = function tree(settings) {
            var _isFunction = (typeof settings === 'string'),
                _arguments = Array.prototype.slice.call(arguments, 1),
                _return = this;

            this.each(function eachTree() {
                if (_isFunction) {
                    if (typeof functions[settings] === 'undefined') {
                        throw 'Function ' + settings + '(' + _arguments.join(', ') + ') not found';
                    }
                    // execute function
                    var val = $.tree.__call(this, settings, _arguments);
                    if (typeof val !== 'undefined') {
                        _return = val;
                        return false;
                    }
                } else {
                    // initialize tree
                    _isFunction = new $.tree.__construct(this, settings);
                }
            });
            return _return;
        };
        functions = $.tree.__construct.prototype;

        // $('#example').is(':tree')
        $.expr[':'].tree = function treeExpression(element) {
            return typeof ($(element).data('treeInstanceId')) !== 'undefined';
        };
    })();

    (function () {
        // node and mode for copy / cut / paste operations
        var ccpNode = false,
            ccpMode = false;

        // store scrollbar width
        $(function getScrollbarWidth() {
            $.tree.SCROLLBAR_WIDTH = $.treeUtils.getScrollbarWidth();
        });

        /**
         * <strong>All methods of this class can be called directly on a tree instance</strong>
         * @class core
         * @memberof! jQuery.tree.plugin~
         */
        $.tree.plugin('core', {
            /**
             * This event is triggered in the *tree* namespace when all initial loading is done. It won't be triggered after a refresh. Fires only once.
             * @event jQuery.tree#__ready
             * @memberof jQuery.tree.plugin~core
             * @property data.instance the instance
             */
            /**
             * This event is triggered in the *tree* namespace when data is first rendered in the tree. It won't be triggered after a refresh. Fires only once.
             * @event jQuery.tree#__loaded
             * @memberof jQuery.tree.plugin~core
             * @property {Object} data.instance the instance
             * @example
             * $('div').bind('__loaded.tree', function (e, data) { data.instance.do_something(); });
             */
            /**
             * This event is triggered in the *tree* namespace when the tree is locked.
             * @event jQuery.tree#lock
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else).
             * @param data.result _null_
             * @example
             * $('div').bind('lock.tree', function (e, data) { data.instance.do_something(); });
             */
            /**
             * This event is triggered in the *tree* namespace when the tree is unlocked.
             * @event jQuery.tree#unlock
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else).
             * @param data.result _null_
             * @example
             * $('div').bind('unlock.tree', function (e, data) { data.instance.do_something(); });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is loaded (succesfully or not).
             * @event jQuery.tree#loadNode
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data.instance - the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else).
             * @param {Object} data.result
             * @param {Object} data.result.obj the loaded node
             * @param {Boolean} data.result.status  whether the node was loaded successfully
             * @example
             * $('div').bind('loadNode.tree', function (e, data) { if(data.result.status) { data.instance.openNode(data.result.obj); } });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is successfully opened (but if animation
             * is used this event is triggered BEFORE the animation completes). See <jquery.tree#__afterOpen>.
             * @event jQuery.tree#openNode
             * @memberof jQuery.tree.plugin~core
             * @param data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else).
             * @param {Object} data.result
             * @param {Node} data.result.obj the opened node
             * @example
             * $('div').bind('openNode.tree', function (e, data) {
             *   data.result.obj.find('> ul > .tree-closed').each(function () {
             *     data.instance.openNode(this);
             *   }
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is successfully opened AFTER the animation completes). See <openNode>.
             * @event jQuery.tree#__afterOpen
             * @memberof jQuery.tree.plugin~core
             * @param data
             * @param {Object} data.instance the instance
             * @param {Object} data.result
             * @param {Object} data.result.obj the opened node
             * @example
             * $('div').bind('__afterOpen.tree', function (e, data) {
             *   data.result.obj.find('> ul > .tree-closed').each(function () {
             *     data.instance.openNode(this);
             *   }
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is closed (but if animation is used this event
             * is triggered BEFORE the animation completes). See <jQuery.tree#__afterClose>.
             * @event jQuery.tree#closeNode
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else).
             * @param {Object} data.result
             * @param {tree Node} data.result.obj the closed node
             * @example
             * $('div').bind('closeNode.tree', function (e, data) {
             *   data.result.obj.children('ul').remove();
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is closed AFTER the animation completes). See <closeNode>.
             * @event jQuery.tree#__afterClose
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Object} data.result
             * @param {Object} data.result.obj the opened node
             * @example
             * $('div').bind('__afterClose.tree', function (e, data) {
             *   data.result.obj.children('ul').remove();
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when an openAll call completes.
             * @event jQuery.tree#openAll
             * @memberof jQuery.tree.plugin~core
             * @param data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else).
             * @param {Object} data.result
             * @param {Object} data.result.obj the node used in the call
             * @example
             * $('div').bind('openAll.tree', function (e, data) {
             *   alert('DONE');
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a closeAll call completes.
             * @event jQuery.tree#closeAll
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else).
             * @param {Object} data.result
             * @param {Object} data.result.obj the node used in the call
             * @example
             * $('div').bind('closeAll.tree', function (e, data) {
             *   alert('DONE');
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a setState call completes.
             * @event jQuery.tree#setState
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else)
             */
            /**
             * This event is triggered in the *tree* namespace when a refresh call completes.
             * @event jQuery.tree#refresh
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             */
            /**
             * This event is triggered in the *tree* namespace when a setText call completes.
             * @event jQuery.tree#_setText
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else)
             * @param {Object} data.result
             * @param {Node} data.result.obj the node
             * @param {String} data.result.val the new title
             * @example
             * $('div').bind('_setText.tree', function (e, data) {
             *   alert('Renamed to: ' + data.result.val);
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a new node is created.
             * @event jQuery.tree#createNode
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else)
             * @param {Object} data.result
             * @param {Object} data.result.obj the node
             * @param {Object} data.result.parent the parent
             * @param {Object} data.result.position the numerical index
             * @example
             * $('div').bind('createNode.tree', function (e, data) {
             *   alert('Created `' + data.instance.getText(data.result.obj) + '` inside `' +
             *      (data.result.parent === -1 ? 'the main container' : data.instance.getText(data.result.parent)) +
             *      '` at index ' + data.result.position);
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is renamed.
             * @event jQuery.tree#setText
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else)
             * @param {Object} data.result
             * @param {Object} data.result.obj the node
             * @param {Object} data.result.title the new title
             * @param {Object} data.result.old the old title
             * @example
             * $('div').bind('setText.tree', function (e, data) {
             *   a*lert('Node rename from `' + data.result.old + '` to `' + data.result.title '`');
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is deleted.
             * @event jQuery.tree#deleteNode
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else)
             * @param {Object} data.result
             * @param {Object} data.result.obj the removed node
             * @param {Object} data.result.prev the previous sibling of the removed node
             * @param {Object} data.result.parent the parent of the removed node
             * @example
             * $('div').bind('deleteNode.tree', function (e, data) {
             *   alert('Node deleted!');
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is moved.
             * @event jQuery.tree#moveNode
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else)
             * @param {Object} data.result
             * @param {Object} data.result.obj the node
             * @param {Object} data.result.parent the new parent
             * @param {Object} data.result.position the numerical index
             * @param {Object} data.result.oldParent the old parent
             * @param {Object} data.result.isMulti a boolean indicating if the node is coming from another tree instance
             * @example
             * $('div').bind('moveNode.tree', function (e, data) {
             *   alert('Moved `' + data.instance.getText(data.result.obj) + '` inside `' +
             *      (data.result.parent === -1 ? 'the main container' : data.instance.getText(data.result.parent)) +
             *      '` at index ' + data.result.position);
             * });
             */
            /**
             * This event is triggered in the *tree* namespace when a node is copied.
             * @event jQuery.tree#copyNode
             * @memberof jQuery.tree.plugin~core
             * @param {Object} data
             * @param {Object} data.instance the instance
             * @param {Array} data.args the arguments passed to the function
             * @param {String} data.plugin the function's plugin (here it will be _'core'_ but if the function is extended it may be something else)
             * @param {Object} data.result
             * @param {Object} data.result.obj the node
             * @param {Object} data.result.parent the new parent
             * @param {Object} data.result.position the numerical index
             * @param {Object} data.result.original the original object
             * @param {Object} data.result.isMulti a boolean indicating if the node is coming from another tree instance
             * @param {Object} data.result.oldInstance the source instance
             * @param {Object} data.result.newInstance the receiving instance
             * @example
             * $('div').bind('copyNode.tree', function (e, data) {
             *   alert('Copied `' + data.instance.getText(data.result.original) + '` inside `' +
             *      (data.result.parent === -1 ? 'the main container' : data.instance.getText(data.result.parent)) +
             *      '` at index ' + data.result.position);
             * });
             */
            /**
             * Basic initialization an event binding.
             * @private
             * @memberof! jQuery.tree.plugin~core
             */
            __construct: function __construt() {
                this.data.core.ready = false;

                // add touch support
                if ($.support.touch) {
                    this.getContainer().addTouch();
                }

                this.getContainer()
                    .on('__construct.tree', $.proxy(function onConstruct() {
                        // defer, so that events bound AFTER creating the instance (like __ready) are still handled
                        setTimeout($.proxy(function init() {
                            if (this) {
                                this.init();
                            }
                        }, this), 0);
                    }, this))
                    .on('afterCreateNode.tree', $.proxy(function afterCreateNode(e, data) {
                        this.cleanNode(data.result.obj);
                    }, this))
                    .on('afterLoadNode.tree', $.proxy(function afterLoadNode(e, data) {
                        // data.result.status
                        if (data.result.status) {
                            if (data.result.obj === -1) {
                                // only detach for root (checkbox three-state will not work otherwise)
                                // also - if you could use async cleanNode won't be such an issue
                                var ul = this.getContainerUl().detach();
                                this.cleanNode(ul.children('li'));
                                this.getContainer().prepend(ul);
                            } else {
                                this.cleanNode(data.result.obj.find('> ul > li'));
                            }

                            var isLoading = this.getContainerUl()
                                .find('.tree-loading:eq(0)')
                                .length;

                            if (!this.data.core.ready && !isLoading) {
                                this.data.core.ready = true;
                                this.__trigger('__ready');
                            }
                        }
                    }, this))
                    .on('__loaded.tree', $.proxy(function onLoaded(e, data) {
                        data.instance.getContainerUl()
                            .children('li')
                            .each(function repairEachNodeOpenState() {
                                data.instance.repairNodeOpenState(this);
                            });
                    }, this))
                    .on('afterOpenNode.tree', $.proxy(function afterOpenNode(e, data) {
                        data.result.obj.find('> ul > li')
                            .each(function repairEachNodeOpenState() {
                                data.instance.repairNodeOpenState(this);
                            });
                    }, this))
                    .on('mousedown.tree', $.proxy(function onMousedown() {
                        $.tree._focus(this.getIndex());
                    }, this))
                    .on('dblclick.tree', function onDblclick() {
                        // remove browser-inflicted text-selection
                        if (document.selection && document.selection.empty) {
                            document.selection.empty();
                        } else {
                            if (window.getSelection) {
                                var selection = window.getSelection();
                                try {
                                    selection.removeAllRanges();
                                    selection.collapse();
                                } catch (err) {
                                }
                            }
                        }
                    })
                    .on('click.tree', '.tree-ocl', $.proxy(function onClick(ev) {
                        // var target = $(ev.target);
                        // if(target.is('ins') && ev.pageY - target.offset().top < this.data.core.liHeight) { this.toggleNode(target); }
                        this.toggleNode(ev.target);
                    }, this));
            },
            __destruct: function __destruct() {

            },
            /**
             * Default configuration.
             * @memberof jQuery.tree.plugin~core
             * @property {*} [strings=false]
             *      Contains strings needed for the operation of the tree so that you can localize. Can also be a method
             *      returning the searched string. See example below.
             *      <br />Method parameters:
             *      <br />{String} s The string to be localized
             * @property {Boolean} [checkCallback=true]
             *      This is executed before a check (e.g. if a node can be moved or copied) is performed. If this is false
             *      or a method returning false, the check will also return false.
             * @property {Integer} [animation=100]
             *      Defines the duration of open/close animations. 0 means no animation.
             * @property {Boolean} [readOnly=false]
             *      If readOnly is checked, no modifications are allowed until nodes are enabled
             * @example
             * // strings as function
             * $('div').tree({
             *   core : {
             *       strings : function (s) {
             *           if(s === 'Loading ...') { s = 'Please wait ...'; }
             *           return s;
             *       }
             *   }
             * });
             * // strings as object
             * $('div').tree({
             *   core : {
             *       strings : {
             *           'Loading ...' : 'Please wait ...'
             *       }
             *   }
             * });
             * @see {@link jQuery.tree.plugin~core~_getString}
             */
            defaults: {
                strings: false,
                checkCallback: true,
                animation: 100,
                readOnly: false
            },
            _fn: {
                /**
                 * Used to get the common string in the tree.
                 * <br />If <config.core.strings> is set to a function, that function is called with a single parameter
                 *      (the needed string), the response is returned.
                 * <br />If <config.core.strings> is set to an object, the key named as the needed string is returned.
                 * <br /> If <config.core.strings> is not set, the the needed string is returned.
                 * @private
                 * @memberof jQuery.tree.plugin~core
                 * @param {String} s the needed string
                 * @return {String} The localized string
                 */
                _getString: function _getString(s) {
                    var strings = this.getSettings(true).core.strings;
                    if ($.isFunction(strings)) {
                        return strings.call(this, s);
                    }
                    if (strings && strings[s]) {
                        return strings[s];
                    }
                    return s;
                },
                /**
                 * Used internally. This function is called once the core plugin is constructed.
                 * @private
                 * @memberof jQuery.tree.plugin~core
                 * @fires jQuery.tree#__loaded
                 * @fires jQuery.tree#__ready
                 */
                init: function init() {
                    this.data.core.originalContainerHtml = this.getContainer().find(' > ul > li').clone(true);
                    this.data.core.originalContainerHtml.find('li')
                        .addBack()
                        .contents()
                        .filter(function filterEmptyNodes() {
                            return this.nodeType === 3 && (!this.nodeValue || /^\s+$/.test(this.nodeValue));
                        })
                        .remove();
                    this.getContainer()
                        .html('<ul><li class="tree-loading"><a href="#">' + this._getString('Loading ...') + '</a></li></ul>');
                    this.cleanNode(-1);
                    this.data.core.liHeight = this.getContainerUl().children('li:eq(0)').height() || 18;
                    this.loadNode(-1, function triggerLoaded() {
                        this.__trigger('__loaded');
                    });
                },
                /**
                 * Used to lock the tree. When the tree is in a locked state, no functions can be called on the instance (except <isLocked> and <unlock>).
                 * <br />Additionally a _tree-locked_ class is applied on the container.
                 * @memberof jQuery.tree.plugin~core
                 * @fires jQuery.tree#lock
                 */
                lock: function lock() {
                    this.data.core.locked = true;
                    this.getContainer().addClass('tree-locked');
                    this.__callback();
                },
                /**
                 * Used to unlock the tree. Instance can be used normally again. The _tree-locked_ class is removed from the container.
                 * @memberof jQuery.tree.plugin~core
                 */
                unlock: function unlock() {
                    this.data.core.locked = false;
                    this.getContainer().removeClass('tree-locked');
                    this.__callback();
                },
                /**
                 * Used to get the locked status of the tree.
                 * @memberof jQuery.tree.plugin~core
                 * @returns {Boolean} locked true if tree is locked, false otherwise
                 */
                isLocked: function isLocked() {
                    return this.data.core.locked;
                },
                /**
                 * Get a hold of the LI node (which represents the tree node). Be aware that only loaded nodes can be found.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {jQuery|Integer|Boolean}
                 * jQuery collection -  node was found, the collection contains the LI node
                 * <br />-1 - the tree container was referenced
                 * <br />false - on failure (obj is not part of a tree, or does not exists in the DOM)
                 */
                getNode: function getNode(obj) {
                    var $obj = $(obj, this.getContainer());
                    if ($obj.is('.tree') || obj === -1) {
                        return -1;
                    }
                    $obj = $obj.closest('li', this.getContainer());
                    return $obj.length ? $obj : false;
                },
                /**
                 * Get the next sibling of a node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {boolean} strict
                 *      <ul>
                 *          <li>_true_ - tree will only return immediate siblings.</li>
                 *          <li>_false_ - If _obj_ is the last child of its parent, the parent's next sibling is returned.
                 *              <br />Or, if the node is opened and has children the first child is returned.</li>
                 *      </ul>
                 * @return {jQuery|Boolean}
                 * jquery - node was found, the collection contains the LI node
                 * <br />-1 - the tree container was referenced
                 * <br />false - node was not found, or failure (obj is not part of a tree, or does not exists in the DOM)
                 */
                getNext: function getNext(obj, strict) {
                    obj = this.getNode(obj);
                    if (obj === -1) {
                        return this.getContainerUl().children('li:eq(0)');
                    }
                    if (!obj || !obj.length) {
                        return false;
                    }
                    if (strict) {
                        return (obj.nextAll('li').size() > 0) ? obj.nextAll('li:eq(0)') : false;
                    }
                    if (obj.hasClass('tree-open')) {
                        return obj.find('li:eq(0)');
                    } else if (obj.nextAll('li').size() > 0) {
                        return obj.nextAll('li:eq(0)');
                    } else {
                        return obj.parentsUntil('.tree', 'li').next('li').eq(0);
                    }
                },
                /**
                 * Get the previous sibling of a node
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {boolean} strict if set to _true_ tree will only return immediate siblings, otherwise, if _obj_
                 *      is the first child of its parent, the parent's previous sibling is returned.
                 * @return {jQuery|Boolean}
                 * jQuery collection - node was found, the collection contains the LI node
                 * <br />-1 - the tree container was referenced
                 * <br />false - node was not found, or failure (obj is not part of a tree, or does not exists in the DOM)
                 */
                getPrev: function getPrev(obj, strict) {
                    obj = this.getNode(obj);
                    if (obj === -1) {
                        return this.getContainer().find('> ul > li:last-child');
                    }
                    if (!obj || !obj.length) {
                        return false;
                    }
                    if (strict) {
                        return (obj.prevAll('li').length > 0) ? obj.prevAll('li:eq(0)') : false;
                    }
                    if (obj.prev('li').length) {
                        obj = obj.prev('li').eq(0);
                        while (obj.hasClass('tree-open')) {
                            obj = obj.children('ul:eq(0)').children('li:last');
                        }
                        return obj;
                    } else {
                        var node = obj.parentsUntil('.tree', 'li:eq(0)');
                        return node.length ? node : false;
                    }
                },
                /**
                 * Get the parent of a node
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {jQuery|Boolean}
                 * jQuery collection - node was found, the collection contains the LI node
                 * <br />-1 - when _obj_ was a root node
                 * <br />false - on failure (obj is not part of a tree, or does not exists in the DOM)
                 */
                getParent: function getParent(obj) {
                    obj = this.getNode(obj);
                    if (obj === -1 || !obj || !obj.length) {
                        return false;
                    }
                    var parent = obj.parentsUntil('.tree', 'li:eq(0)');
                    return parent.length ? parent : -1;
                },
                /**
                 * Get all the children of a node
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * <br />If _-1_ is used all root nodes are returned.
                 * @param {Function} callback the following parameters get passed:
                 * <ul>
                 *     <li>node - the node used for getting children</li>
                 *     <li>children - the children of the node</li>
                 * </ul>
                 * @return {jQuery|Boolean|undefined}
                 * jQuery collection - node was found, the collection contains the LI nodes of all immediate children
                 * <br />false - on failure (obj is not part of a tree, or does not exists in the DOM)
                 */
                getChildren: function getChildren(obj, callback) {
                    var children;
                    obj = this.getNode(obj);
                    if (obj === -1) {
                        children = this.getContainerUl().children('li');
                        if (callback) {
                            callback.call(this, obj, children);
                        } else {
                            return children;
                        }
                    }
                    if (!obj || !obj.length) {
                        return false;
                    }

                    children = obj.find('> ul > li');
                    if (!callback) {
                        return children;
                    }

                    if (this.isLoaded(obj)) {
                        callback.call(this, obj, children);
                    } else {
                        this.loadNode(obj, function loadNodeCallback(node) {
                            this.getChildren(node, callback);
                        });
                        return undefined;
                    }
                },
                /**
                 * Check if a node is a parent.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean}
                 * true - obj has children or is closed (will be loaded)
                 * <br />false - obj is not a valid node or has no children (leaf node)
                 */
                isParent: function isParent(obj) {
                    obj = this.getNode(obj);
                    return obj && obj !== -1 && (obj.find('> ul > li:eq(0)').length || obj.hasClass('tree-closed'));
                },
                /**
                 * Check if a node is loaded.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean}
                 * true - _obj_ has children or is leaf
                 * <br />false - _obj_ is currently loading or is not a leaf, but has no children
                 */
                isLoaded: function isLoaded(obj) {
                    obj = this.getNode(obj);
                    return obj && ((obj === -1 && !this.getContainer()
                        .find('> ul > li.tree-loading')
                        .length) || (obj !== -1 && !obj.hasClass('tree-loading') && (obj.find('> ul > li')
                        .length || obj.hasClass('tree-leaf'))));
                },
                /**
                 * Check if a node is currently loading.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean}
                 * true - _obj_ is currently loading
                 * <br />false - _obj_ is not currently loading
                 */
                isLoading: function isLoading(obj) {
                    obj = this.getNode(obj);
                    return obj && ((obj === -1 && this.getContainer()
                        .find('> ul > li.tree-loading')
                        .length) || (obj !== -1 && obj.hasClass('tree-loading')));
                },
                /**
                 * Check if a node is currently open.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean}
                 * true - _obj_ is currently open
                 * <br />false - _obj_ is not currently open
                 */
                isOpen: function isOpen(obj) {
                    obj = this.getNode(obj);
                    return obj && obj !== -1 && obj.hasClass('tree-open');
                },
                /**
                 * Check if a node is currently closed.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean}
                 * true - _obj_ is currently closed
                 * <br />false - _obj_ is not currently closed
                 */
                isClosed: function isClosed(obj) {
                    obj = this.getNode(obj);
                    return obj && obj !== -1 && obj.hasClass('tree-closed');
                },
                /**
                 * Check if a node is a leaf node (has no children).
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean}
                 * true - _obj_ is a leaf node
                 * <br />false - _obj_ is not a leaf node
                 */
                isLeaf: function isLeaf(obj) {
                    obj = this.getNode(obj);
                    return obj && obj !== -1 && obj.hasClass('tree-leaf');
                },

                /**
                 * Load the children of a node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc. Use -1 to load the root nodes.
                 * @param {Function} callback a function to be executed in the tree's scope. Receives two arguments:
                 * <br />_obj_ (the same node used to call loadNode),
                 * <br />_status_ (a boolean indicating if the node was loaded successfully.
                 * @return {Boolean}
                 * true - _obj_ is a valid node and will try loading it
                 * <br />false - _obj_ is not a valid node
                 * @fires jQuery.tree#afterLoadNode.tree
                 * @see {@link _loadNode}
                 */
                loadNode: function loadNode(obj, callback) {
                    obj = this.getNode(obj);
                    if (!obj) {
                        callback.call(this, obj, false);
                        return false;
                    }
                    // if(this.isLoading(obj)) { return true; }
                    if (obj !== -1) {
                        obj.addClass('tree-loading');
                    }
                    this._loadNode(obj, $.proxy(function loadNodeCallback(status) {
                        if (obj !== -1) {
                            obj.removeClass('tree-loading');
                        }
                        this.__callback({
                            'obj': obj,
                            'status': status
                        });
                        if (callback) {
                            callback.call(this, obj, status);
                        }
                    }, this));
                    return true;
                },
                /**
                 * Load the children of a node, but as opposed to loadNode does not change any visual properties or trigger events.
                 * This function is used in loadNode internally. The idea is for data source plugins to overwrite this function.
                 * This implementation (from the *core*) only uses markup found in the tree container, and does not load async.
                 * @private
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc. Use -1 to load the root nodes.
                 * @param {Function} callback a function to be executed in the tree's scope.
                 * @param {Boolean} callback.status (a boolean indicating if the node was loaded successfully).
                 * @see {@link loadNode}
                 */
                _loadNode: function _loadNode(obj, callback) {
                    // if using async - empty the node first
                    if (obj === -1) {
                        this.getContainerUl()
                            .empty()
                            .append(this.data.core.originalContainerHtml.clone(true));
                    }
                    callback.call(null, true);
                },
                /**
                 * Open a node so that its children are visible. If the node is not loaded try loading it first.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {Function} callback - a function to be executed in the tree's scope.
                 *      The following parameters will be passed to this method:
                 *      <ul>
                 *          <li>{Node} obj - the node being opened</li>
                 *          <li>{Boolean} status - a boolean indicating if the node was opened successfully. When node
                 *              is already open, false is returned.</li>
                 *      </ul>
                 * @param {Integer} animation the duration in milliseconds of the slideDown animation. If not supplied
                 *      the jQuery default is used. Please note that on IE6 a 0 is enforced here due to performance issues.
                 * @return {Boolean | undefined} False if node could not be found or was already open.
                 * @fires jQuery.tree#afterOpenNode.tree
                 * @fires jQuery.tree#__afterOpen
                 */
                openNode: function openNode(obj, callback, animation) {
                    obj = this.getNode(obj);
                    animation = typeof animation === 'undefined' ? this.getSettings().core.animation : animation;
                    if (obj === -1 || !obj || !obj.length) {
                        return false;
                    }
                    if (this.isOpen(obj)) {
                        if (callback) {
                            callback.call(this, obj, false);
                        }
                        return false;
                    }
                    if (!this.isLoaded(obj)) { // TODO: isLoading?
                        this.loadNode(obj, function (node, ok) {
                            return ok ? this.openNode(node, callback, animation) : (callback ? callback.call(this, node, false) : false);
                        });
                        return undefined;
                    }
                    if (this.isLeaf(obj)) {
                        return false;
                    }
                    // open node
                    var that = this;
                    obj.children('ul')
                        .css('display', 'none')
                        .end()
                        .removeClass('tree-closed')
                        .addClass('tree-open')
                        // .children('ins').text('-').end()
                        .children('ul')
                        .stop(true, true)
                        .slideDown(animation, function afterSlideDown() {
                            this.style.display = '';
                            that.__trigger('__afterOpen', {
                                'result': {
                                    'obj': obj
                                }
                            });
                        });
                    if (callback) {
                        callback.call(this, obj, true);
                    }
                    this.__callback({
                        'obj': obj
                    });
                    if (obj.hasClass('tree-root')) {
                    	obj.children('ul').addClass('child-tree-root');
                    }
                },
                /**
                 * Close a node so that its children are not visible.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {Integer} animation the duration in milliseconds of the slideDown animation. If not supplied
                 *      the jQuery default is used. Please note that on IE6 a _0_ is enforced here due to performance issues.
                 * @return {Boolean | undefined} False if node could not be found or was already closed.
                 * @fires jQuery.tree#afterCloseNode.tree
                 * @fires jQuery.tree#__afterClose
                 */
                closeNode: function closeNode(obj, animation) {

                    obj = this.getNode(obj);
                    animation = (typeof animation)
                        .toLowerCase() === 'undefined' ? this.getSettings()
                        .core.animation : animation;
                    if (!obj || !obj.length || !this.isOpen(obj)) {
                        return false;
                    }
                    var that = this;
                    obj.children('ul')
                        .css('display', 'block !important')
                        .end()
                        .removeClass('tree-open')
                        .addClass('tree-closed')
                        // .children('ins').text('+').end()
                        .children('ul')
                        .stop(true, true)
                        .slideUp(animation, function afterSlideUp() {
                            this.style.display = '';
                            that.__trigger('__afterClose', {
                                'result': {
                                    'obj': obj
                                }
                            });
                        });
                    this.__callback({
                        'obj': obj
                    });
                },
                /**
                 * If a node is closed - open it, if it is open - close it. Doesn't works for async operations.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 */
                toggleNode: function toggleNode(obj) {
                    obj = this.getNode(obj);
                    if (this.isClosed(obj)) {
                        return this.openNode(obj);
                    }
                    if (this.isOpen(obj)) {
                        return this.closeNode(obj);
                    }
                },
                /**
                 * Open all nodes from a certain node down.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 *      If _-1_ is used or is omitted all nodes in the tree are opened.
                 * @param {Integer} animation the duration of the slideDown animation when opening the nodes.
                 *      If not set _0_ is enforced for performance issues.
                 * @param {Object} originalObj used internally to keep track of the recursion - do not set manually!
                 * @param {Function} callback called after all nodes were opened
                 * @fires jQuery.tree#afterOpenAll.tree
                 */
                openAll: function openAll(obj, animation, callback, originalObj) {
                    obj = obj ? this.getNode(obj) : -1;
                    obj = !obj || obj === -1 ? this.getContainerUl() : obj;
                    originalObj = originalObj || obj;
                    var that = this;
                    obj = this.isClosed(obj) ? obj.find('li.tree-closed').addBack() : obj.find('li.tree-closed');
                    obj.each(function eachNode() {
                        that.openNode(this, that.isLoaded(this) ? null : function openAllCallback(obj) {
                            this.openAll(obj, animation, callback, originalObj);
                        }, animation || 0);
                    });
                    if (originalObj.find('li.tree-closed').length === 0) {
                        if (callback) {
                            callback.call(this);
                        }
                        this.__callback({
                            'obj': originalObj
                        });
                    }
                },
                /**
                 * Close all nodes from a certain node down.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 *      If _-1_ is used or is omitted all nodes in the tree are closed.
                 * @param {Integer} animation the duration of the slideDown animation when opening the nodes. If not set _0_ is enforced for performance issues.
                 * @fires jQuery.tree#afterCloseAll.tree
                 */
                closeAll: function closeAll(obj, animation) {
                    obj = obj ? this.getNode(obj) : -1;
                    var $obj = !obj || obj === -1 ? this.getContainerUl() : obj,
                        that = this;
                    $obj = this.isOpen($obj) ? $obj.find('li.tree-open').addBack() : $obj.find('li.tree-open');
                    $obj.each(function closeEachNode() {
                        that.closeNode(this, animation || 0);
                    });
                    this.__callback({
                        'obj': obj
                    });
                },
                /**
                 * Disables a node so that it can't be modified
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {String} disabledText the text explaining why the node is disabled
                 * @param {Boolean} recursive if nodes below obj should also be disabled
                 * @return {jQuery | undefined}
                 */
                disableNode: function disableNode(obj, disabledText, recursive) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1) {
                        return;
                    }
                    var _this = this;

                    if (recursive) {
                        obj = obj.find('li[class*="tree"]').addBack();
                    }
                    if (obj.length > 1) {
                        $.each(obj, function disableEachNode() {
                            _this.disableNode(this, disabledText, false);
                        });
                    }

                    var nodeData = obj.data('core');
                    disabledText = disabledText || nodeData.disabledText;
                    this.setDisabledText(obj, disabledText);
                    obj.addClass('tree-disabled');

                    nodeData.disabled = true;

                    this.__callback({
                        'obj': obj
                    });

                    return this;
                },
                /**
                 * Enables a node so that it can be modified
                 * @memberOf jQuery.tree.plugin~checkbox~
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {Boolean} recursive if nodes below obj should also be enabled
                 * @return {jQuery | undefined}
                 */
                enableNode: function enableNode(obj, recursive) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1) {
                        return;
                    }
                    var _this = this;

                    if (recursive) {
                        obj = obj.find('li[class*="tree"]').addBack();
                    }
                    if (obj.length > 1) {
                        $.each(obj, function enableEachNode() {
                            _this.enableNode(this, false);
                        });
                    }

                    var nodeData = obj.data('core');
                    obj.removeClass('tree-disabled');
                    obj.find(' > a').prop('title', nodeData.oldTitle);
                    nodeData.disabled = false;

                    this.__callback({
                        'obj': obj
                    });

                    return this;
                },
                /**
                 * Check if a node is enabled
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean} True if node is disabled
                 */
                isDisabled: function isDisabled(obj) {
                    obj = this.getNode(obj);
                    return !!(obj && obj !== -1 && obj.data('core') && obj.data('core').disabled);
                },
                /**
                 * Disables all nodes so they can't be modified
                 * @memberof jQuery.tree.plugin~core
                 * @param {String} disabledText the text explaining why the node is disabled
                 */
                disableAll: function disableAll(disabledText) {
                    var _this = this;
                    this.getChildren(-1, function disableLazy(node, children) {
                        children.each(function disableEachNode() {
                            _this.disableNode(this, disabledText, true);
                        });
                    });
                },
                /**
                 * Enables all nodes so they can be modified
                 * @memberof jQuery.tree.plugin~core
                 * @param {String} disabledText the text explaining why the node is disabled
                 */
                enableAll: function disableAll(disabledText) {
                    var _this = this;
                    this.getChildren(-1, function enableLazy(node, children) {
                        children.each(function enableEachNode() {
                            _this.enableNode(this, disabledText, true);
                        });
                    });
                },
                /**
                 * Get disabled text
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @return {Boolean} True if checkbox is disabled
                 */
                getDisabledText: function getDisabledText(obj) {
                    obj = this.getNode(obj);
                    return  obj && obj.data('core') ? obj.data('core').disabledText : '';
                },
                /**
                 * Set disabled text
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {String} disabledText the text to set
                 * @return {Boolean} True if checkbox is disabled
                 */
                setDisabledText: function getDisabledText(obj, disabledText) {
                    obj = this.getNode(obj);
                    if (obj && obj.data('core')) {
                        obj.data('core').oldTitle = obj.find(' > a').prop('title');
                        obj.data('core').disabledText = disabledText;
                        obj.find(' > a').prop('title', disabledText);
                    }
                    return obj;
                },
                /**
                 * This function converts inserted nodes to the format required by tree. It takes care of converting
                 * a simple unordered list to the internally used markup.
                 * <br/>Note that the similar named repairNodeOpenState only modifies state while this method
                 * dis- and reassembles the node.
                 * <br />The core calls this function automatically when new data arrives (by binding to the <loadNode> event).
                 * Each plugin may override this function to include its own source.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 *      If _-1_ is used or is omitted all nodes in the tree are cleaned.
                 * @example
                 * // in your plugin code
                 * cleanNode : function(obj) {
                 *  obj = this.__callOld();
                 *  obj.each(function () {
                 *    // do your stuff here
                 *  });
                 * }
                 * @return {jQuery} the cleaned children of the original node.
                 */
                cleanNode: function cleanNode(obj) {
                    // DETACH maybe inside the 'loadNode' function? But what about animations, etc?
                    obj = this.getNode(obj);
                    obj = !obj || obj === -1 ? this.getContainer()
                        .find('li') : obj.find('li')
                        .addBack();
                    var that = this,
                        settings = this.getSettings();
                    return obj.each(function cleanEachNode() {

                        var node = $(this),
                            data = node.data('core'),
                            // is_ajax -> return this.getSettings().core.is_ajax || this.data.ajax;
                            // TODO why first (data && data.opened) || ?
                            status = (data && data.opened) || node.hasClass('tree-open') ? 'open' : (data && data.closed) || node.children('ul').length ? 'closed' : 'leaf';
                            // replace with node.find('>ul>li').length || (this.is_ajax() && !node.children('ul').length)

                        if (!data) {
                            node.data('core', {});
                            data = {};
                        }

                        // recalculate states
                        node.removeClass('tree-open tree-closed tree-leaf tree-last');
                        if (!node.children('a').length) {
                            // allow for text and HTML markup inside the nodes
                            node.contents()
                                .filter(function filterUl() {
                                    return this.nodeType === 3 || this.tagName !== 'UL';
                                })
                                .wrapAll('<a href="#"></a>');
                            node.children('a')
                                .html(node.children('a')
                                    .html()
                                    .replace(/[\s\t\n]+$/, ''));
                        } else {
                            if (!$.trim(node.children('a').attr('href'))) {
                                node.children('a').attr('href', '#');
                            }
                        }
                        if (!node.children('ins.tree-ocl').length) {
                            node.prepend('<ins class="tree-icon tree-ocl">&#160;</ins>');
                        }
                        if (node.is(':last-child')) {
                            node.addClass('tree-last');
                        }
                        if (node.is(':first-child') && !node.parent().parent().is('li')) {
                            node.addClass('tree-root');
                        }
                        switch (status) {
                            case 'leaf':
                                node.addClass('tree-leaf');
                                break;
                            case 'closed':
                                node.addClass('tree-open');
                                that.closeNode(node, 0);
                                break;
                            case 'open':
                                node.addClass('tree-closed');
                                that.openNode(node, false, 0);
                                break;
                        }

                        if (data.opened) {
                            delete data.opened;
                        }
                        if (data.closed) {
                            delete data.closed;
                        }
                        if (data.disabled || settings.core.readOnly) {
                            that.disableNode(node, data.disabledText);
                        }
                    });
                },
                /**
                 * This function repairs the opened/closed/leaf state when data changes (as the user interacts with the tree).
                 * The core calls this function automatically when a node is opened, deleted or moved.
                 * <br />Note that the similar named cleanNode method completely dis- and reassembles the node while this
                 * method only repairs open states.
                 * @private
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 *      If _-1_ is used or is omitted the root nodes are processed.
                 * @param {Boolean} deep true to also repair all subsidiary nodes
                 * @returns {jQuery} the processed children of the original node.
                 */
                repairNodeOpenState: function repairNodeOpenState(obj, deep) {
                    // PROCESS SINGLE NODE (OR USE BOOLEAN single PARAM), CALL FROM CLEAN_NODE, LOSE THE EVENTS ABOVE
                    obj = this.getNode(obj);
                    if (!obj || (obj === -1 && !deep)) {
                        return false;
                    }
                    if (obj === -1) {
                        obj = this.getContainer().find('li');
                    } else {
                        obj = deep ? obj.find('li').addBack() : obj;
                    }
                    obj.each(function repairEachNodeOpenState() {
                        var node = $(this);

                        if (node.hasClass('tree-open') && !node.find('> ul > li').length) {
                            node.removeClass('tree-open')
                                .addClass('tree-leaf')
                                .children('ul')
                                .remove();
                        } else if (node.hasClass('tree-leaf') && !!node.find('> ul > li').length) {
                            node.removeClass('tree-leaf')
                                .addClass('tree-closed');
                        }
                        node[node.is(':last-child') ? 'addClass' : 'removeClass']('tree-last');
                    });
                    return obj;
                },
                /**
                 * This function scrolls the container to the desired node (if needed).
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj  this is used as a jquery selector - can be jQuery object, DOM node, string, etc
                 */
                scrollToNode: function scrollToNode(obj) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1 || !obj.length || !obj.is(':visible')) {
                        return;
                    }
                    var container = this.getContainer()[0],
                        containerRect = container.getBoundingClientRect(), top, bottomScrollBarWidth,
                        domNode = obj[0],
                        nodeRect = domNode.getBoundingClientRect();

                    //vertical scrolling
                    if (container.scrollHeight > container.offsetHeight) {

                        // scroll up so that node is at the top of the container
                        top = nodeRect.top - containerRect.top;
                        if (top < 0) {
                            container.scrollTop = container.scrollTop + top - 1;
                        }

                        // scroll down so that node is at the top of the container
                        bottomScrollBarWidth = container.scrollWidth > container.offsetWidth ? $.tree.SCROLLBAR_WIDTH : 0;
                        if (top + this.data.core.liHeight + bottomScrollBarWidth > container.offsetHeight) {
                            container.scrollTop = container.scrollTop + (top - container.offsetHeight + this.data.core.liHeight + 1 + bottomScrollBarWidth);
                        }
                    }

                    // horizontal scrolling
                    if (container.scrollWidth > container.offsetWidth && domNode.scrollWidth - domNode.offsetWidth > 0) {
                        // some part of the node is hidden, find out which
                        // note that the li is used for positioning and not the text inside that li. The size of the li
                        // may differ from the size of the text because the size of the li includes the size of its children
                        var rightScrollBarWidth = container.scrollHeight > container.offsetHeight ? $.tree.SCROLLBAR_WIDTH : 0,
                            rightCut = nodeRect.left + domNode.scrollWidth - (containerRect.right - rightScrollBarWidth),
                            leftCut = containerRect.left - nodeRect.left;

                        if (leftCut > 0) {
                            // scroll to left
                            container.scrollLeft = domNode.scrollLeft;
                        } else if (rightCut > 0) {
                            // don't cut off left side by scrolling to right
                            var minCut = domNode.scrollWidth - containerRect.width;
                            container.scrollLeft = container.scrollLeft + rightCut - (minCut > 0 ? minCut : 0);
                        }
                    }
                },
                /**
                 * This function returns the current state of the tree (as collected from all active plugins).
                 * Plugin authors: pay special attention to the way this function is extended for new plugins.
                 * @memberof jQuery.tree.plugin~core
                 * @example In your plugin code write:
                 * getState : function () {
                 *   var state = this.__callOld();
                 *   state.your-plugin-name = <some-value-you-collect>;
                 *   return state;
                 * }
                 * @return {Object} the current state of the instance with these properties:
                 * <ul>
                 *      <li>open - An array containing the ids of opened nodes</li>
                 *      <li>scroll - the scroll position</li>
                 * </ul>
                 */
                getState: function getState() { // TODO: scroll position, theme
                    var state = {
                        'core': {
                            open: [],
                            disabled: [],
                            'scroll': {
                                'left': this.getContainer().scrollLeft(),
                                'top': this.getContainer().scrollTop()
                            }
                        }
                    };
                    this.getContainerUl()
                        .find('.tree-open')
                        .each(function saveEachOpenNode() {
                            if (this.id) {
                                state.core.open.push(this.id);
                            }
                        });
                    this.getContainer()
                        .find('.tree-disabled')
                        .each(function addEachDisabled() {
                            if (this.id) {
                                var data = $(this).data('core');
                                state.core.disabled.push({
                                    id: this.id,
                                    disabledText: data.disabledText,
                                    oldTitle: data.oldTitle
                                });
                            }
                        });
                    return state;
                },
                /**
                 * This function sets the state of the tree.
                 * Plugin authors: pay special attention to the way this function is extended for new plugins.
                 * @memberof jQuery.tree.plugin~core
                 * @param {Object} state the state to restore to. It has these properties:
                 *      <ul>
                 *          <li>open - An array containing the ids of opened nodes</li>
                 *          <li>scroll - the scroll position</li>
                 *      </ul>
                 * @param {Function} callback this will be executed in the instance's scope once restoring is done
                 * @return {Boolean} the return value is used to determine the phase of restoration
                 * @fires jQuery.tree#afterSetState.tree
                 * @example In your plugin code write:
                 * setState : function (state, callback) {
                 *   if(this.__callOld()) {
                 *     if(state.your-plugin-name) {
                 *
                 *       // restore using `state.your-plugin-name`
                 *       // if you need some async activity so that you return to this bit of code
                 *       // do not delete state.your-plugin-name and return false (see core's function for example)
                 *
                 *       delete state.your-plugin-name;
                 *       this.setState(state, callback);
                 *       return false;
                 *     }
                 *     return true;
                 *   }
                 *   return false;
                 * }
                 */
                setState: function setState(state, callback) {
                    if (state) {
                        if (state.core) {
                            var _this = this,
                                res = true;
                            if ($.isArray(state.core.open)) {
                                this.closeAll(); // this was removed in commit 2af1990fa "A bug when restoring an async tree
                                                 // is fixed + a few modifications" but is needed for restoring the state
                                $.each(state.core.open.concat([]), function setStateForEachNode(index, id) {
                                    var el = document.getElementById(id);
                                    if (el) {
                                        if (_this.isLoaded(el)) {
                                            if (_this.isClosed(el)) {
                                                _this.openNode(el, false, 0);
                                            }
                                            $.treeUtils.arrayRemove(state.core.open, index);
                                        } else {
                                            if (!_this.isLoading(el)) {
                                                _this.openNode(el, $.proxy(function openNodeCallback() {
                                                    this.setState(state);
                                                }, _this), 0);
                                            }
                                            // there will be some async activity - so wait for it
                                            res = false;
                                        }
                                    }
                                });
                            }
                            if ($.isArray(state.core.disabled)) {
                                $.each(state.core.disabled, function (index, value) {
                                    var node = _this.getNode('#' + value.id);
                                    _this.disableNode(node, value.disabledText);
                                });
                            }

                            if (state.core.scroll) {
                                if (state.core.scroll && typeof state.core.scroll.left !== 'undefined') {
                                    this.getContainer().scrollLeft(state.core.scroll.left);
                                }
                                if (state.core.scroll && typeof state.core.scroll.top !== 'undefined') {
                                    this.getContainer().scrollTop(state.core.scroll.top);
                                }
                            }
                            if (res) {
                                delete state.core;
                                this.setState(state, callback);
                                return false;
                            }
                        }

                        if ($.isEmptyObject(state)) {
                            if (callback) {
                                callback.call(this);
                            }
                            this.__callback();
                            return false;
                        }
                        return true;
                    }
                    return false;
                },
                /**
                 * This function saves the current state, reloads the complete tree and returns it to the saved state.
                 * @memberof jQuery.tree.plugin~core
                 * @fires jQuery.tree#refresh
                 */
                refresh: function refresh() {
                    this.data.core.state = this.getState();
                    this.loadNode(-1, function loadNodeCallback(obj, success) {
                        if (success) {
                            this.setState($.extend(true, {}, this.data.core.state), function setStateCallback() {
                                this.__trigger('refresh');
                            });
                        }
                        this.data.core.state = null;
                    });
                },
                /**
                 * This function returns the title of the node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {Boolean} removeHtml set to true to return plain text instead of HTML
                 * @return {String} the title of the node, specified by _obj_
                 */
                getText: function getText(obj, removeHtml) {
                    var method = removeHtml ? 'text' : 'html';
                    obj = this.getNode(obj);
                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    obj = obj.children('a:eq(0)').clone();
                    obj.children('.tree-icon').remove();
                    obj = obj[method]();
                    obj = $('<div></div>')[method](obj);
                    return obj.html();
                },
                /**
                 * This function sets the title of the node. This is a low-level function, you'd be better off using <setText>.
                 * @private
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
                 * @param {String} val the new title of the node (can be HTMl too)
                 * @return {Boolean} if the rename was successful
                 */
                _setText: function _setText(obj, val) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    obj = obj.children('a:eq(0)');
                    var tmp = obj.children('ins').clone();
                    obj.html(val).prepend(tmp);
                    return true;
                },
                /**
                 * This function returns a jQuery node after parsing a JSON object (a LI node for single elements or an UL node for multiple).
                 * This function will use the default title from tree.config.core.strings if none is specified.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} nodeJson the input to parse
                 *      <ul>
                 *          <li>can be a string, e.g. 'The title of the parsed node'</li>
                 *          <li>array of strings, e.g. [ 'Node 1', 'Node 2' ]</li>
                 *          <li>an object, e.g. { 'title' : 'The title of the parsed node' }</li>
                 *          <li>you can manipulate the output, e.g.
                 *          { 'title' : 'The title of the parsed node', 'liAttr' : { 'id' : 'id_for_li' }, 'aAttr' : { 'href' : 'http://tree.com' } }</li>
                 *          <li>you can supply metadata, which you can later access using $(the_li_node).data(), e.g.
                 *          { 'title' : 'The title of the parsed node', 'data' : { <some-values-here> } }</li>
                 *          <li>you can supply children (they can be objects too), e.g.
                 *          { 'title' : 'The title of the parsed node', 'children' : [ 'Node 1', { 'title' : 'Node 2' } ] }</li>
                 *      </ul>
                 * @return {jQuery} - the LI (or UL) node which was produced from the JSON
                 */
                parseJson: function parseJson(nodeJson) {
                    var li, link, ul, that, nodeData;
                    if ($.isArray(nodeJson)) {
                        ul = $('<ul></ul>');
                        that = this;
                        $.each(nodeJson, function eachNodeJson(index, node) {
                            ul.append(that.parseJson(node));
                        });
                        return ul;
                    }
                    if (typeof nodeJson === 'undefined') {
                        nodeJson = {};
                    }
                    if (typeof nodeJson === 'string') {
                        nodeJson = {
                            'title': nodeJson
                        };
                    }
                    if (!nodeJson.liAttr) {
                        nodeJson.liAttr = {};
                    }
                    if (!nodeJson.aAttr) {
                        nodeJson.aAttr = {};
                    }
                    if (!nodeJson.aAttr.href) {
                        nodeJson.aAttr.href = '#';
                    }
                    if (!nodeJson.title) {
                        nodeJson.title = this._getString('New node');
                    }

                    li = $('<li></li>').attr(nodeJson.liAttr);
                    link = $('<a></a>')
                        .attr(nodeJson.aAttr)
                        .html(nodeJson.title);
                    ul = $('<ul></ul>');
                    if (nodeJson.data && !$.isEmptyObject(nodeJson.data)) {
                        li.data(nodeJson.data);
                    }
                    if (!li.data('core')) {
                        li.data('core', {});
                    }
                    nodeData = li.data('core');
                    var hasChildren = false;
                    if (nodeJson.children === true || $.isArray(nodeJson.children) || (nodeData && $.isArray(nodeData.children))) {
                        nodeData.closed = true;
                        hasChildren = true;
                    }
                    li.append(link);
                    if ($.isArray(nodeJson.children)) {
                        $.each(nodeJson.children, $.proxy(function eachChild(i, child) {
                            ul.append(this.parseJson(child));
                        }, this));
                        li.append(ul);
                    }

                    // if node has attribute open=true, open the node
                    if (nodeJson.open === true && hasChildren) {
                        nodeData.opened = true;
                    }

                    if (nodeJson && nodeJson.data && nodeJson.data.core && nodeJson.data.core.disabled) {
                        nodeData.disabled = true;
                        if (nodeJson.disabledText) {
                            nodeData.disabledText = nodeJson.core.disabledText;
                        }
                    }

                    return li;
                },
                /**
                 * This function returns the whole tree (or a single node) in JSON format.
                 * Each plugin may override this function to include its own source.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj the input to parse
                 * @param {Boolean} isCallback do not modify this, tree uses this parameter to keep track of the recursion
                 * @example In your plugin code:
                 * getJson : function(obj, is_callback) {
                 *     var r = this.__callOld();
                 *     if(is_callback) {
                 *         if(<some-condition>) { r.data.tree.<some-key> = <some-value-this-plugin-will-process>; }
                 *     }
                 *     return r;
                 * }
                 * @returns {Array} An array containing the hierarchical structured trees nodes
                 */
                getJson: function getJson(obj, isCallback) {
                    obj = typeof obj !== 'undefined' ? this.getNode(obj) : false;
                    if (!isCallback) {
                        if (!obj || obj === -1) {
                            obj = this.getContainerUl().children('li');
                        }
                    }
                    var nodes,
                        that,
                        liAttr = {},
                        aAttr = {},
                        tmp;

                    if (!obj || !obj.length) {
                        return false;
                    }
                    // if more than one nodes, call this method for all nodes
                    if (obj.length > 1 || !isCallback) {
                        nodes = [];
                        that = this;
                        obj.each(function eachNode() {
                            nodes.push(that.getJson($(this), true));
                        });
                        return nodes;
                    }
                    // process a nodes attributes
                    tmp = $.treeUtils.attributes(obj, true);
                    $.each(tmp, function eachNodeAttribute(index, value) {
                        if (index === 'id') {
                            liAttr[index] = value;
                            return true;
                        }
                        // remove tree specific attributes and spaces
                        value = $.trim(value.replace(/\btree[^ ]*/ig, '').replace(/\s+$/ig, ' '));
                        if (value.length) {
                            liAttr[index] = value;
                        }
                    });
                    // process link attributes
                    tmp = $.treeUtils.attributes(obj.children('a'), true);
                    $.each(tmp, function eachLinkAttribute(index, value) {
                        if (index === 'id') {
                            aAttr[index] = value;
                            return true;
                        }
                        value = $.trim(value.replace(/\btree[^ ]*/ig, '').replace(/\s+$/ig, ' '));
                        if (value.length) {
                            aAttr[index] = value;
                        }
                    });
                    var nodeJson = {
                        'title': this.getText(obj),
                        'data': $.extend(true, {}, obj.data() || {}),
                        'children': false,
                        'liAttr': liAttr,
                        'aAttr': aAttr
                    };

                    if (!nodeJson.data.tree) {
                        nodeJson.data.tree = {};
                    }
                    if (this.isOpen(obj)) {
                        nodeJson.data.tree.opened = true;
                    }
                    if (this.isClosed(obj)) {
                        nodeJson.data.tree.closed = true;
                    }
                    if (this.isDisabled(obj)) {
                        nodeJson.data.core || (nodeJson.data.core = {});
                        nodeJson.data.core.disabled = true;
                        nodeJson.data.core.disabledText = this.getDisabledText(obj);
                    }

                    // get Json for each direct child
                    obj = obj.find('> ul > li');
                    if (obj.length) {
                        nodeJson.children = [];
                        that = this;
                        obj.each(function eachNode() {
                            nodeJson.children.push(that.getJson($(this), true));
                        });
                    }
                    return nodeJson;
                },
                /**
                 * This function creates and inserts a new node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} parent the parent for the newly created node. This is used as a jquery selector,
                 *      can be jQuery object, DOM node, string, etc. Use -1 to create a new root node.
                 * @param {*} node the input to parse, check parseJson for description
                 * @param {*} [position=last] where to create the new node. Can be one of these:
                 *      <ul>
                 *          <li>'before' - before the parent</li>
                 *          <li>'after' - after the parent</li>
                 *          <li>'first' - first child of the parent</li>
                 *          <li>'last' - last child of the parent</li>
                 *          <li>'inside' - first child of the parent</li>
                 *          <li>numerical index - nth child of the parent</li>
                 * @param {Function} callback optional function to be executed once the node is created. The following
                 *      parameters get passed to this method:
                 *      <br />li - the node
                 * @param {Boolean} isLoaded used internally when a node needs to be loaded - do not pass this
                 * @return {Boolean|jQuery} the node which was produced from the JSON (may return _undefined_
                 *      if the parent node is not yet loaded, but will create the node)
                 * @fires jQuery.tree#afterCreateNode.tree
                 * @see {@link jQuery.tree.plugin~core~parseJson}
                 */
                createNode: function createNode(parent, node, position, callback, isLoaded) {
                    parent = this.getNode(parent);
                    position = typeof position === 'undefined' ? 'last' : position;

                    if (parent !== -1 && !parent.length) {
                        return false;
                    }
                    if (typeof position !== 'number' && !position.match(/^(before|after)$/) && !isLoaded && !this.isLoaded(parent)) {
                        return this.loadNode(parent, function loadNodeCallback() {
                            this.createNode(parent, node, position, callback, true);
                        });
                    }

                    var createdNode = this.parseJson(node),
                        tmp = parent === -1 ? this.getContainer() : parent;

                    if (parent === -1) {
                        if (position === 'before') {
                            position = 'first';
                        }
                        if (position === 'after') {
                            position = 'last';
                        }
                    }
                    switch (position) {
                    case 'before':
                        position = parent.index();
                        parent = this.getParent(parent);
                        break;
                    case 'after':
                        position = parent.index() + 1;
                        parent = this.getParent(parent);
                        break;
                    case 'inside':
                    case 'first':
                        position = 0;
                        break;
                    case 'last':
                        position = tmp.children('ul').children('li').length;
                        break;
                    default:
                        if (!position) {
                            position = 0;
                        }
                        break;
                    }
                    if (!this.check('createNode', createdNode, parent, position)) {
                        return false;
                    }

                    tmp = parent === -1 ? this.getContainer() : parent;
                    if (!tmp.children('ul').length) {
                        tmp.append('<ul></ul>');
                    }
                    if (tmp.children('ul').children('li').eq(position).length) {
                        tmp.children('ul').children('li').eq(position).before(createdNode);
                    } else {
                        tmp.children('ul').append(createdNode);
                    }
                    this.repairNodeOpenState(parent, true);
                    if (callback) {
                        callback.call(this, createdNode);
                    }
                    this.__callback({
                        'obj': createdNode,
                        'parent': parent,
                        'position': createdNode.index()
                    });
                    return createdNode;
                },
                /**
                 * This function renames a new node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj the node to rename. This is used as a jquery selector, can be jQuery object, DOM node, string, etc.
                 * @param {String} html the new title
                 * @return {undefined|Boolean} false if the text could not be set
                 * @fires jQuery.tree#afterSetText.tree
                 */
                setText: function setText(obj, html) {
                    obj = this.getNode(obj);
                    var old = this.getText(obj);
                    if (!this.check('setText', obj, this.getParent(obj), html)) {
                        return false;
                    }
                    if (obj && obj.length) {
                        this._setText(obj, html); // .apply(this, Array.prototype.slice.call(arguments))
                        this.__callback({
                            'obj': obj,
                            'title': html,
                            'old': old
                        });
                    }
                },
                /**
                 * This function deletes a node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj the node to delete. This is used as a jquery selector, can be jQuery object, DOM node, string, etc.
                 * @return {*} the removed node on success, _false_ on failure
                 * @fires jQuery.tree#afterDeleteNode.tree
                 */
                deleteNode: function deleteNode(obj) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    var parent = this.getParent(obj),
                        previous = this.getPrev(obj);
                    if (!this.check('deleteNode', obj, parent, obj.index())) {
                        return false;
                    }
                    obj = obj.detach();
                    this.repairNodeOpenState(parent);
                    this.repairNodeOpenState(previous);
                    this.__callback({
                        'obj': obj,
                        'previous': previous,
                        'parent': parent
                    });
                    return obj;
                },
                /**
                 * This function checks if a structure modification is valid.
                 * @memberof jQuery.tree.plugin~core
                 * @param {String} check what are we checking (copyNode, moveNode, setText, createNode, deleteNode)
                 * @param {*} obj the node.
                 * @param {*} parent the parent (if dealing with a move or copy - the new parent).
                 * @param {*} position the index among the parent's children (or the new name if dealing with a rename)
                 * @return {Boolean} _true_ if the modification is valid, _false_ otherwise
                 */
                check: function check(check, obj, parent, position) {
                    var tmp = check.match(/^moveNode|copyNode|createNode$/i) ? parent : obj,
                        checkCallback = this.getSettings().core.checkCallback;
                    if (checkCallback === false || ($.isFunction(checkCallback) && checkCallback.call(this, check, obj, parent, position) === false)) {
                        return false;
                    }
                    tmp = tmp === -1 ? this.getContainer().data('core') : tmp.data('core');
                    if (tmp && tmp.functions && tmp.functions[check]) {
                        tmp = tmp.functions[check];
                        if ($.isFunction(tmp)) {
                            tmp = tmp.call(this, check, obj, parent, position);
                        }
                        if (tmp === false) {
                            return false;
                        }
                    }
                    switch (check) {
                    case 'createNode':
                        break;
                    case 'setText':
                        break;
                    case 'moveNode':
                        tmp = parent === -1 ? this.getContainer() : parent;
                        tmp = tmp.children('ul').children('li');
                        if (tmp.length && tmp.index(obj) !== -1 && (position === obj.index() || position === obj.index() + 1)) {
                            return false;
                        }
                        if (parent !== -1 && parent.parentsUntil('.tree', 'li').addBack().index(obj) !== -1) {
                            return false;
                        }
                        break;
                    case 'copyNode':
                        break;
                    case 'deleteNode':
                        break;
                    }
                    return true;
                },
                /**
                 * This function moves a node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj the node to move. This is used as a jquery selector, can be jQuery object, DOM node, string, etc.
                 * @param {*} parent the new parent. This is used as a jquery selector, can be jQuery object, DOM node, string, etc. Use -1 to promote to a root node.
                 * @param {*} [position=last] where to create the new node. Can be one of 'before', 'after', 'first', 'last', 'inside' or a numerical index.
                 * @param {Function} callback optional function to be executed once the node is moved. These parameters are passed:
                 *      <ul>
                 *          <li>{jQuery} movedNode - the moved node</li>
                 *          <li>{Number} newParent - the new parent of the moved node</li>
                 *          <li>{jQuery} clonedNodeIndex- the index of the moved node within that parent</li>
                 *      </ul>
                 * @param {Boolean} isLoaded used internally when a node needs to be loaded - do not pass this
                 * @return {Boolean} indicating if the move was successful (may return _undefined_ if the parent node is not yet loaded, but will move the node)
                 * @fires jQuery.tree#afterMoveNode.tree
                 * @see {@link jQuery.tree.plugin~core~createNode} for a detailed position description
                 */
                moveNode: function moveNode(obj, parent, position, callback, isLoaded) {
                    obj = this.getNode(obj);
                    parent = this.getNode(parent);
                    position = typeof position === 'undefined' ? 'last' : position;

                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    if (parent !== -1 && !parent.length) {
                        return false;
                    }
                    if (!position.toString().match(/^(before|after)$/) && !isLoaded && !this.isLoaded(parent)) {
                        return this.loadNode(parent, function loadNodeCallback() {
                            this.moveNode(obj, parent, position, callback, true);
                        });
                    }

                    var oldParent = this.getParent(obj),
                        newParent = (!position.toString().match(/^(before|after)$/) || parent === -1) ? parent : this.getParent(parent),
                        oldInstance = $.tree._reference(obj),
                        newInstance = parent === -1 ? this : $.tree._reference(parent),
                        isMulti = (oldInstance.getIndex() !== newInstance.getIndex());
                    if (newParent === -1) {
                        parent = newInstance.getContainer();
                        if (position === 'before') {
                            position = 'first';
                        }
                        if (position === 'after') {
                            position = 'last';
                        }
                    }
                    switch (position) {
                    case 'before':
                        position = parent.index();
                        break;
                    case 'after':
                        position = parent.index() + 1;
                        break;
                    case 'inside':
                    case 'first':
                        position = 0;
                        break;
                    case 'last':
                        position = parent.children('ul').children('li').length;
                        break;
                    default:
                        if (!position) {
                            position = 0;
                        }
                        break;
                    }
                    if (!this.check('moveNode', obj, newParent, position)) {
                        return false;
                    }

                    if (!parent.children('ul').length) {
                        parent.append('<ul></ul>');
                    }
                    if (parent.children('ul').children('li').eq(position).length) {
                        parent.children('ul').children('li').eq(position).before(obj);
                    } else {
                        parent.children('ul').append(obj);
                    }

                    if (isMulti) { // if multitree - clean the node recursively - remove all icons, and call deep cleanNode
                        obj.find('.tree-icon, .tree-ocl').remove();
                        this.cleanNode(obj);
                    }
                    oldInstance.repairNodeOpenState(oldParent, true);
                    newInstance.repairNodeOpenState(newParent, true);
                    if (callback) {
                        callback.call(this, obj, newParent, obj.index());
                    }
                    this.__callback({
                        'obj': obj,
                        'parent': newParent,
                        'position': obj.index(),
                        'oldParent': oldParent,
                        'isMulti': isMulti,
                        'oldInstance': oldInstance,
                        'newInstance': newInstance
                    });
                    return true;
                },
                /**
                 * This function copies a node.
                 * @memberof jQuery.tree.plugin~core
                 * @param {*} obj the node to copy. This is used as a jquery selector, can be jQuery object, DOM node, string, etc.
                 * @param {*} parent the new parent. This is used as a jquery selector, can be jQuery object, DOM node, string, etc. Use -1 to promote to a root node.
                 * @param {*} [position=last] where to create the new node. Can be one of 'before', 'after', 'first', 'last', 'inside' or a numerical index.
                 * @param {Function} callback optional function to be executed once the node is copied. These parameters are passed:
                 *      <ul>
                 *          <li>{jQuery} clonedNode - the created node</li>
                 *          <li>{Number} newParent - the parent of the created node</li>
                 *          <li>{jQuery} clonedNodeIndex- the index of the created node within that parent</li>
                 *          <li>{jQuery} originalNode - the node that was used for copying</li>
                 *      </ul>
                 * @param {Boolean} isLoaded used internally when a node needs to be loaded - do not pass this
                 * @return {Boolean} indicating if the copy was successful (may return _undefined_ if the parent node is not yet loaded, but will copy the node)
                 * @fires jQuery.tree#afterCopyNode.tree
                 */
                copyNode: function copyNode(obj, parent, position, callback, isLoaded) {

                    obj = this.getNode(obj);
                    parent = this.getNode(parent);
                    position = typeof position === 'undefined' ? 'last' : position;

                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    if (parent !== -1 && !parent.length) {
                        return false;
                    }
                    if (!position.toString().match(/^(before|after)$/) && !isLoaded && !this.isLoaded(parent)) {
                        return this.loadNode(parent, function loadNodeCallback() {
                            this.copyNode(obj, parent, position, callback, true);
                        });
                    }
                    var orgObj = obj, clonedObj,
                        oldParent = this.getParent(obj),
                        newParent = (!position.toString()
                            .match(/^(before|after)$/) || parent === -1) ? parent : this.getParent(parent),
                        oldInstance = $.tree._reference(obj),
                        newInstance = parent === -1 ? this : $.tree._reference(parent),
                        isMulti = (oldInstance.getIndex() !== newInstance.getIndex());

                    clonedObj = obj.clone(true);
                    clonedObj.find('*[id]').addBack().each(function prefixEachId() {
                        if (this.id) {
                            this.id = 'copy_' + this.id;
                        }
                    });
                    if (newParent === -1) {
                        parent = newInstance.getContainer();
                        if (position === 'before') {
                            position = 'first';
                        }
                        if (position === 'after') {
                            position = 'last';
                        }
                    }
                    switch (position) {
                    case 'before':
                        position = parent.index();
                        break;
                    case 'after':
                        position = parent.index() + 1;
                        break;
                    case 'inside':
                    case 'first':
                        position = 0;
                        break;
                    case 'last':
                        position = parent.children('ul').children('li').length;
                        break;
                    default:
                        if (!position) {
                            position = 0;
                        }
                        break;
                    }

                    if (!this.check('copyNode', orgObj, newParent, position)) {
                        return false;
                    }

                    if (!parent.children('ul').length) {
                        parent.append('<ul></ul>');
                    }
                    if (parent.children('ul').children('li').eq(position).length) {
                        parent.children('ul').children('li').eq(position).before(clonedObj);
                    } else {
                        parent.children('ul').append(clonedObj);
                    }
                    if (isMulti) { // if multitree - clean the node recursively - remove all icons, and call deep cleanNode
                        clonedObj.find('.tree-icon, .tree-ocl').remove();
                    }
                    newInstance.cleanNode(clonedObj); // always clean so that selected states, etc. are removed
                    newInstance.repairNodeOpenState(newParent, true); // no need to correct the old parent, as nothing has changed there
                    if (callback) {
                        callback.call(this, clonedObj, newParent, clonedObj.index(), orgObj);
                    }
                    this.__callback({
                        'obj': clonedObj,
                        'parent': newParent,
                        'oldParent': oldParent,
                        'position': clonedObj.index(),
                        'original': orgObj,
                        'isMulti': isMulti,
                        'oldInstance': oldInstance,
                        'newInstance': newInstance
                    });
                    return true;
                },
                /**
                 * Marks a node for cutting. Replaces existing markings.
                 * @memberof jQuery.tree.plugin~core
                 * @param obj the Node to cut. This is used as a jquery selector, can be jQuery object, DOM node, string, etc.
                 * @return {undefined|Boolean} False if obj wasn't found
                 */
                cut: function cut(obj) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    ccpNode = obj;
                    ccpMode = 'moveNode';
                    this.__callback({
                        'obj': obj
                    });
                },
                /**
                 * Marks nodes for copying. Replaces existing markings.
                 * @memberof jQuery.tree.plugin~core
                 * @param obj The node to copy. This is used as a jquery selector, can be jQuery object, DOM node, string, etc.
                 * @return {undefined|Boolean} False if obj wasn't found
                 */
                copy: function copy(obj) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    ccpNode = obj;
                    ccpMode = 'copyNode';
                    this.__callback({
                        'obj': obj
                    });
                },
                /**
                 * Checks if any node was marked for cut / copying
                 * @memberof jQuery.tree.plugin~core
                 * @return {undefined|Boolean} If a node can be pasted
                 */
                canPaste: function canPaste() {
                    return ccpMode !== false && ccpNode !== false && ccpMode.match(/^(copyNode|moveNode)$/);
                },
                /**
                 * Executes the pasting operation with the specified node. This method needs no callback, because all nodes
                 * that get pasted are already loaded.
                 * @memberof jQuery.tree.plugin~core
                 * @param obj The node to paste the previously marked nodes relative to. This is used as a jquery selector,
                 *      can be jQuery object, DOM node, string, etc.
                 * @return {undefined|Boolean} False if obj wasn't found
                 */
                paste: function paste(obj) {
                    var parent = this.getNode(obj);
                    if (!parent || !this.canPaste()) {
                        return false;
                    }
                    this[ccpMode](ccpNode, parent);
                    this.__callback({
                        'obj': parent,
                        'nodes': ccpNode,
                        'mode': ccpMode
                    });
                    ccpNode = false;
                    ccpMode = false;
                },
                /**
                 * Creates an edit input for the passed input and appends events
                 * @memberof jQuery.tree.plugin~core
                 * @param obj
                 * @param {String} defaultText The text to show within the created input and to apply when input left empty on blur.
                 * @return {undefined|Boolean} False if obj wasn't found
                 */
                edit: function edit(obj, defaultText) {
                    obj = this.getNode(obj);
                    if (!obj || obj === -1 || !obj.length) {
                        return false;
                    }
                    obj.parentsUntil('.tree', '.tree-closed')
                        .each($.proxy(function openEachNode(i, v) {
                            this.openNode(v, false, 0);
                        }, this));
                    var containerWidth = this.getContainer().width(),
                        link = obj.children('a:eq(0)'),
                        objectIcons = obj.children('ins'),
                        linkIcons = link.children('ins'),
                        objectIconsWidth = objectIcons.width() * objectIcons.length,
                        linkIconsWidth = linkIcons.width() * linkIcons.length,
                        text = typeof defaultText === 'string' ? defaultText : this.getText(obj),
                        h1 = $('<div></div>', {
                            css: {
                                'position': 'absolute',
                                'top': '-200px',
                                'left': '-1000px',
                                'visibility': 'hidden'
                            }
                        }).appendTo('body'),
                        h2 = obj.css('position', 'relative').append(
                            $('<input />', {
                                'value': text,
                                'class': 'tree-rename-input',
                                // 'size' : text.length,
                                'css': {
                                    'padding': '0',
                                    'border': '1px solid silver',
                                    'position': 'absolute',
                                    'left': (objectIconsWidth + linkIconsWidth + 4) + 'px',
                                    'right': 'auto',
                                    'top': '0px',
                                    'height': (this.data.core.liHeight - 2) + 'px',
                                    'lineHeight': (this.data.core.liHeight - 2) + 'px',
                                    'width': '150px' // will be set a bit further down
                                },
                                'blur': $.proxy(function blur() {
                                    var input = obj.children('.tree-rename-input'),
                                        value = input.val();
                                    if (value === '') {
                                        value = text;
                                    }
                                    h1.remove();
                                    input.remove();
                                    this.setText(obj, value);
                                    obj.css('position', '');
                                }, this),
                                'keyup': function keyup(event) {
                                    var key = event.keyCode || event.which;
                                    if (key === 27) {
                                        this.value = text;
                                        this.blur();
                                    } else if (key === 13) {
                                        this.blur();
                                    } else {
                                        h2.width(Math.min(h1.text('pW' + this.value)
                                            .width(), containerWidth));
                                    }
                                },
                                'keypress': function keypress(event) {
                                    var key = event.keyCode || event.which;
                                    if (key === 13) {
                                        return false;
                                    }
                                }
                            })).children('.tree-rename-input'),
                        fn = {
                                fontFamily: link.css('fontFamily') || '',
                                fontSize: link.css('fontSize') || '',
                                fontWeight: link.css('fontWeight') || '',
                                fontStyle: link.css('fontStyle') || '',
                                fontStretch: link.css('fontStretch') || '',
                                fontVariant: link.css('fontVariant') || '',
                                letterSpacing: link.css('letterSpacing') || '',
                                wordSpacing: link.css('wordSpacing') || ''
                            };
                    this._setText(obj, '');
                    h1.css(fn);
                    h2.css(fn).width(Math.min(h1.text('pW' + h2[0].value).width(), containerWidth))[0].select();
                }
            }
        });
    })();
})(jQuery);
