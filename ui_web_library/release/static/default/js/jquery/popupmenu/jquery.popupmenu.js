/**
 * All methods listed below can be called directly on an instance or via $('selector').popupmenu('methodName', arg1, arg2, argN)
 * @name popupmenu
 * @class
 * @memberOf jQuery.fn
 */

(function($) {
    'use strict';

    // name of the plugin
    var pluginName = 'popupmenu',
        /**
         * Getter method names. These names return own values when called with $('selector').popupmenu('getterName', arg1, arg2, argN).
         * Methods not listed here return the grid instance.
         * @private
         * @memberOf jQuery.fn.popupmenu~
         */
        getter = ['isVisible', 'getMenuTrigger'],
        /**
         * Default configuration.
         * @class
         * @memberOf jQuery.fn.popupmenu~
         */
        defaults = {
            /** @lends jQuery.fn.popupmenu.defaults~ */

            /** Array of menu item configurations. */
            items: [],
            /** Timeout when to hide the menu again. */
            timeOut: 300,
            /** Attach menu to this element and show when this element is clicked. */
            attachTo: null,
            /**
             * Can be 'after' or 'insert'. How the menu should be placed. After the given element or into it.
             * After should be applied for buttons. Use insert with care, the menu will get closed if the mouse
             * leaves the element it was inserted to (even if the mouse still remains within the menu).
             */
            attachMode: 'after',
            /** Menu is aligned to this element instead of the element it was attached to. */
            alignTo: null,
            /**
             * By default, the menu is shown after clicking on the element it was attached to.
             * Set this to true if showing / hiding of the menu is handled by your code.
             */
            manualShow: false
        },
        /**
         * Default menu item configuration.
         * @class
         * @memberOf jQuery.fn.popupmenu~
         */
        defaultItem = {
            /** @lends jQuery.fn.popupmenu~defaultItem~ */

            /** can be text or seperator */
            type: 'text',
            /**
             * {String|Function} How the menu item is displayed. The following arguments
             * will be passed when it is called.
             * @function
             * @param {Object} args Passed parameters
             * @param {Int} args.i Index of the current row
             * @param {Object} args.li Row object
             * @param {Object} args.instance Menu instance
             * @param {Object} args.trigger The element that triggerd the menu to open
             * @param {Object} args.data Data passed from show()
             */
            render: $.noop,
            /**
             * The method that will be attached to the click event. Parameters
             * can be passed to this method by passing them to the show method.
             * @see jQuery.fn.popupmenu.show
             * @param {Object} args Passed parameters
             * @param {Object} args.i Index of the current row
             * @param {Object} args.li Row object
             * @param {Object} data.instance Menu instance
             * @param {Object} data.trigger The element that triggerd the menu to open
             * @param {Object} args.data Data passed from show()
             */
            click: $.noop,
            /** String or function */
            cssClass: ''
        };

    /**
     * Get value from string or result from function.
     * @function
     * @private
     * @name getValue
     * @memberOf jQuery.fn.popupmenu~
     * @param {Object} args arguments object
     * @param {String|Function} args.attr attribute value or method to be called
     * @param {Object[]} args.params parameters passed to the method
     * @param {Object} args.scope context for method execution
     * @returns {String} value of the attribute
     */
    Plugin.prototype.getValue = function(args) {
        /*
        var defaults = {
            scope: this,
            params: []
        };
        */
        if (typeof args.scope === 'undefined') {
            args.scope = this;
        }
        if (typeof args.params === 'undefined') {
            args.params = [];
        }
//      is very slow: args = $.extend(true, {}, defaults, args);
        if (typeof args.attr === 'function') {
            return args.attr.apply(args.scope, args.params);
        }
        return args.attr;
    };

    /**
     * Stores element-reference, merges options with default values, triggers init().
     * @constructor
     * @private
     * @memberOf jQuery.fn.popupmenu~
     * @param {Object} element $(this)
     * @param {Object} options configuration of this grid instance
     */
    function Plugin(element, options) {
        this.element = element;
        this.defaults = defaults;
        // merge options with default options
        this.options = options ? $.extend(true, {}, defaults, options) : $.extend({}, defaults);

        // initialize
        this.init();
        return this;
    }

    /**
     * Replaces Strings by key with values (similar to sprintf)
     * @private
     * @function
     * @name format
     * @memberOf jQuery.fn.popupmenu~
     * @param {String} s String with placeholders (e.g. {total})
     * @param {Object} data Replacement Object containing available placeholders in format: { placeholderName: value }
     * @returns {String} Given string with filled placeholders
     */
    Plugin.prototype.format = function(s, data) {
        var regex;
        if(!s || !data) {
            return s;
        }
        $.each(data, function (index, value) {
            regex = new RegExp('\\{' + index + '\\}', 'g');
            s = s.replace(regex, value);
        });
        return s;
    };

    /**
     * Trigger external events.
     * @function
     * @name trigger
     * @memberOf jQuery.fn.popupmenu~
     * @param {String} name name of the event
     * @param {Object}* any other data objects
     */
    Plugin.prototype.trigger = function(name) {
        // cut event-name from arguments
        var params = Array.prototype.slice.call(arguments, 1);

        // append plugin instance as last parameter
        params.push(this);

        // trigger event
        this.element.trigger(name, params);
    };

    /**
     * Inject non-existing methods into the plugin.
     * @function
     * @name inject
     * @memberOf jQuery.fn.popupmenu~
     * @param {Object} injection arguments object
     * @param {String} injection.name name of the function
     * @param {Function} injection.fn function to be injected
     * @param {Boolean} injection.isGetter the function returns a value
     */
    Plugin.prototype.inject = function(injection) {
        var name = injection.name,
            fn = injection.fn || $.noop,
            isGetter = injection.isGetter;

        this.trigger('beforeInject', name, fn, isGetter);

        if (typeof Plugin.prototype[name] !== 'undefined'){
            return false;
        }

        Plugin.prototype[name] = fn;
        if (isGetter === true) {
            getter.push(name);
        }

        this.trigger('afterInject', name, fn, isGetter);

        return true;
    };

    /**
     * Initialization of the grid.
     * @private
     * @function
     * @name init
     * @memberOf jQuery.fn.popupmenu~
     */
    Plugin.prototype.init = function() {
        this.trigger('beforeInit', this.options);

        this.popup = $('<div class="menu-popup"></div>');

        // register all event-handlers
        this.registerEvents();

        this.trigger('afterInit', this.options);
    };

    /**
     * Destroy the grid, remove all references from the DOM.
     * @private
     * @function
     * @name destroy
     * @memberOf jQuery.fn.popupmenu~
     */
    Plugin.prototype.destroy = function() {
        this.trigger('beforeDestroy');

        this.popup.remove();

        // unregister the events
        this.element.off('.' + pluginName);

        this.trigger('afterDestroy');
    };

    /**
     * Register basic event-handlers.
     * @private
     * @function
     * @name registerEvents
     * @memberOf jQuery.fn.popupmenu~
     */
    Plugin.prototype.registerEvents = function() {
        this.trigger('beforeRegisterEvents');

        var that = this;

        if(this.options.manualShow !== true) {
            var el = this.getMenuTrigger();
            el.on('click.menuTrigger', function (ev) {
                ev.preventDefault();

                if(!that.isVisible()){
                    that.show(el, { event: ev });
                } else {
                    that.hide();
                }
            });
        }

        this.trigger('afterRegisterEvents');
    };

    /**
     * add a menu item, call show() again to immediatly see the changes
     * @function
     * @name addItem
     * @memberOf jQuery.fn.popupmenu~
     * @param {Object} item the item to add
     * @param {Integer} index the index to add the item at, items are appended by default
     */
    Plugin.prototype.addItem = function(item, index) {
        index = index || this.options.items.length;
        this.trigger('beforeAddItem', item, index);

        item = $.extend(true, {}, defaultItem, item);
        this.options.items.splice(index, 0, item);

        this.trigger('afterAddItem', item, index);
    };

    /**
     * Create and append menu html to DOM.
     * @private
     * @function
     * @name create
     * @memberOf jQuery.fn.popupmenu~
     * @param {Object} data arguments to be passed to the click handler of each menu item
     */
    Plugin.prototype.create = function(data) {
        this.trigger('beforeCreatePopup');

        this.popup.detach().empty();

        var item, ul = $('<ul></ul>').appendTo(this.popup), li, params, trigger = this.getMenuTrigger();

        for (var i = 0, l = this.options.items.length; i < l; i++) {
            item = this.options.items[i];
            li = $('<li></li>');
            params = {
                    li: li,
                    i: i,
                    instance: this,
                    trigger: trigger,
                    data: data
            };
            if(item.type === 'separator') li.addClass('separator');
            li.addClass(item.cssClass);

            // use configured render method
            li.append(this.getValue({
                scope: item,
                attr: item.render,
                params: [params]
            }));
            // use configured click handler
            li.click((function(item, fn, params, menu) {
                return function onMenuItemClick(event) {
                    menu.hide();
                    params.event = event;
                    if (typeof fn === 'function') {
                        fn.apply(this, [params]);
                    }
                };
            })(item, item.click, params, this));

            li.appendTo(ul);
        }

        if(this.options.attachTo) {
            if(this.options.attachMode === 'after') {
                $(this.options.attachTo).after(this.popup);
            } else {
                this.popup.appendTo(this.options.attachTo);
            }
        } else {
            this.popup.appendTo('body');
        }

        this.trigger('afterCreatePopup');
    };

    /**
     * Position the menu to an element, adjust position so it its completly visible.
     * @function
     * @name setPosition
     * @memberOf jQuery.fn.popupmenu~
     * @param {Object} element Element to position menu to.
     */
    Plugin.prototype.setPosition = function(element) {
        this.trigger('beforePositionPopup');

        // place popup near element
        var doc = document.documentElement, body = document.body,
            scrollX = doc.scrollLeft || body.scrollLeft,
            scrollY = doc.scrollTop || body.scrollTop,
            viewportWidth = (doc.clientWidth || window.innerWidth),
            viewportHeight = (doc.clientHeight || window.innerHeight),
            viewportRightEdge = viewportWidth + scrollX,
            viewportBottomEdge = viewportHeight + scrollY,
            overlay = this.popup,
            popupWidth = overlay.outerWidth(),
            popupHeight = overlay.outerHeight(),
            element = $(element),
            elementLeft = element.offset().left,
            popupLeft = elementLeft,
            elementTop = element.offset().top + element.outerHeight(),
            popupTop = elementTop,
            buttonLeft = 0;

        // check if parts of the popup are displayed offscreen
        if (elementLeft + popupWidth >= viewportRightEdge) {
            // move popup to the left to make it visible
            popupLeft = elementLeft + element.outerWidth() - popupWidth;
        }
        if (elementTop + popupHeight >= viewportBottomEdge) {
            if((elementTop - scrollY) - popupHeight > 0) {
                // show popup above element
                popupTop -= element.outerHeight() + popupHeight;
            } else {
                // show popup on same height as element
                popupTop = viewportBottomEdge - popupHeight;
            
                // attach to element, don't overlay if possible
                var neededSpace = element.outerWidth() + popupWidth,
                    availableSpace = viewportRightEdge - buttonLeft,
                    spaceRemaining = availableSpace - neededSpace,
                    toLeft = spaceRemaining < 0 ? -spaceRemaining : 0;
                popupLeft = buttonLeft + element.outerWidth() - toLeft;
            }
        }
        if(popupWidth > viewportWidth) {
            popupLeft = scrollX;
        }
        if(popupHeight > viewportHeight) {
            popupTop = scrollY;
        }

        this.popup.css({
            left: popupLeft,
            top: popupTop
        });

        this.trigger('afterPositionPopup');
    };

    /**
     * Determine if popup is visible
     * @function
     * @name isVisible
     * @memberOf jQuery.fn.popupmenu~
     * @return {Boolean} if popup is currently displayed
     */
    Plugin.prototype.isVisible = function() {
        return this.popup.is(':visible');
    };

    /**
     * Determine which element triggers show for the menu
     * @function
     * @name getMenuTrigger
     * @memberOf jQuery.fn.popupmenu~
     * @return {Boolean} if popup is currently displayed
     */
    Plugin.prototype.getMenuTrigger = function () {
        return this.options.attachTo || this.element;
    };

    /**
     * Display the overlay.
     * @function
     * @name show
     * @memberOf jQuery.fn.popupmenu~
     * @param {jQuery Object} element to position the menu to
     * @param {Object} data additional data to pass to the click handler
     */
    Plugin.prototype.show = function(element, data) {
        element = element || this.getMenuTrigger();

        this.trigger('beforeShow');

        this.popup.hide();
        this.create(data);
        this.setPosition(this.options.alignTo || element);
        this.popup.show();

        var that = this;
        this.currentElement = element;
        this.timerId = -1;
        // add timeout for mouseout
        var hidePopupTimer = function() {
            // hide popup
            that.timerId = window.setTimeout(function() {
                that.hide();
            }, that.options.timeOut);

            // cancel hiding
            var stopHiding = function() {
                window.clearInterval(that.timerId);
            };
            element.add(that.popup).on('mouseover.menu-popup', stopHiding);
        };
        element.add(this.popup).on('mouseout.menu-popup', hidePopupTimer);

        this.trigger('afterShow');
    };

    /**
     * Hides the overlay
     * @function
     * @name hide
     * @memberOf jQuery.fn.popupmenu~
     */
    Plugin.prototype.hide = function() {
        this.trigger('beforeHide');

        window.clearInterval(this.timerId);
        //this.currentElement.add(this.popup).off('.menu-popup');
        
        var el = this.currentElement || this.element || this.getMenuTrigger();
        el.add(this.popup).off('.menu-popup');
        
        this.popup.hide();

        this.trigger('afterHide');
    };

    /**
     * A really lightweight plugin wrapper around the constructor, preventing
     * against multiple instantiations, recognizing getter-functions
     */
    if (typeof $.fn[pluginName] !== 'undefined') {
        throw '$.fn.' + pluginName + ' already exists, aborting';
    }
    $.fn[pluginName] = function() {
        var args = arguments, fn, params, instance;

        // first parameter is a string, this is a function call
        if (args.length > 0 && typeof args[0] === 'string') {
            // first parameter is the function name
            fn = args[0];
            // extract other parameters
            params = Array.prototype.slice.call(args, 1);

            // check for getter function
            if ($.inArray(fn, getter) > -1) {
                // getter-function can be called for only 1 element at a time
                if (this.length !== 1) {
                    throw 'getter "' + fn + '" can be called for only 1 element at a time';
                }
                // get plugin instance
                instance = $.data(this[0], 'plugin_' + pluginName);
                if (!instance) {
                    throw 'No instance of ' + pluginName + ' found to call getter "' + fn + '"';
                }

                // execute the function with parameters, return the result
                return instance[fn].apply(instance, params);
            }
        }

        return this.each(function() {
            // get plugin instance
            var instance = $.data(this, 'plugin_' + pluginName), options;

            // create new instance for element
            if (!instance) {
                // first parameter is the options object
                if (args.length === 1 && typeof args[0] === 'object') {
                    options = args[0];
                }
                // create new plugin instance and store it to the element
                $.data(this, 'plugin_' + pluginName, new Plugin($(this), options));
            } else if (fn) {
                // call function of existing instance
                instance[fn].apply(instance, params);
            } else {
                throw 'No instance of "' + pluginName + '" found';
            }
        });
    };

}(jQuery));
