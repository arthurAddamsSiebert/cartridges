/**
 * Controls the looks of tree, without this plugin you will get a functional tree, but it will look just like an ordinary UL list
 * <strong>All methods of this class can be called directly on a tree instance</strong>
 * @class themes
 * @memberof! jQuery.tree.plugin~
 */
(function ($) {
    'use strict';

    $.tree.plugin('themes', {
        __construct: function __construct() {
            this.getContainer()
                .on('__construct.tree', $.proxy(function onConstruct() {
                    var themeSettings = this.getSettings(true).themes;
                    this.data.themes.dots = themeSettings.dots;
                    this.data.themes.icons = themeSettings.icons;

                    if (themeSettings.theme === false) {
                        themeSettings.theme = 'default';
                    }
                    this.setTheme(themeSettings.theme);
                }, this))
                .on('__construct.tree __ready.tree __loaded.tree', $.proxy(function execShowHide() {
                    this[this.data.themes.dots ? 'showDots' : 'hideDots']();
                    this[this.data.themes.icons ? 'showIcons' : 'hideIcons']();
                }, this));
        },
        /**
         * Default configuration.
         * @property {String} theme The name of the theme you want to use. Default is _default_.
         * @property {Boolean} dots Whether to show dots or not. Default is _true_. The chosen theme should support this option.
         * @property {Boolean} icons Whether to show icons or not. Default is _true_.
         * @memberOf jQuery.tree.plugin~themes~
         */
        defaults: {
            theme: false,
            dots: true,
            icons: true
        },
        _fn: {
            /**
             * Sets the tree theme. This function is automatically called at construction with the specified
             * <config.themes.theme>
             * @memberOf jQuery.tree.plugin~themes~
             * @param {String} themeName the name of the theme to apply
             * @return {undefined|Boolean} false of no name was provided
             * @example
             * // Set the theme and autodetect the location
             * $('#div1').tree('setTheme','classic');
             * // A custom theme. Please note that if you place your own theme in the _themes_ folder ot will be autodetected too.
             * $('#div2').tree('setTheme','custom-theme','/some/path/theme.css');
             */
            setTheme: function setTheme(themeName) {
                if (!themeName) {
                    return false;
                }
                if (this.data.themes.theme !== themeName) {
                    this.getContainer().removeClass('tree-' + this.data.themes.theme);
                    this.data.themes.theme = themeName;
                }
                this.getContainer().addClass('tree-' + themeName);
                this.__callback(themeName);
            },
            /**
             * Get the currently active theme name
             * @memberOf jQuery.tree.plugin~themes~
             * @return {String}
             */
            getTheme: function getTheme() {
                return this.data.themes.theme;
            },
            /**
             * Removes css class for not showing dotted lines
             * @memberOf jQuery.tree.plugin~themes~
             */
            showDots: function showDots() {
                this.data.themes.dots = true;
                this.getContainer()
                    .children('ul')
                    .removeClass('tree-no-dots');
            },
            /**
             * Adds css class for not showing dotted lines
             * @memberOf jQuery.tree.plugin~themes~
             */
            hideDots: function hideDots() {
                this.data.themes.dots = false;
                this.getContainer()
                    .children('ul')
                    .addClass('tree-no-dots');
            },
            /**
             * Toggles dotted lines
             * @memberOf jQuery.tree.plugin~themes~
             */
            toggleDots: function toggleDots() {
                if (this.data.themes.dots) {
                    this.hideDots();
                } else {
                    this.showDots();
                }
            },
            /**
             * Removes css class for not showing items.
             * @memberOf jQuery.tree.plugin~themes~
             */
            showIcons: function showIcons() {
                this.data.themes.icons = true;
                this.getContainer()
                    .children('ul')
                    .removeClass('tree-no-icons');
            },
            /**
             * Adds css class for not showing items.
             * @memberOf jQuery.tree.plugin~themes~
             */
            hideIcons: function hideIcons() {
                this.data.themes.icons = false;
                this.getContainer()
                    .children('ul')
                    .addClass('tree-no-icons');
            },
            /**
             * Toggles Icons
             * @memberOf jQuery.tree.plugin~themes~
             */
            toggleIcons: function toggleIcons() {
                if (this.data.themes.icons) {
                    this.hideIcons();
                } else {
                    this.showIcons();
                }
            },
            /**
             * Set the icon for a specific node
             * @memberOf jQuery.tree.plugin~themes~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {*} icon String - Path to the icon
             * <br />False - remove icon
             * @return {Boolean} False if obj wasn't found
             */
            setIcon: function setIcon(obj, icon) {
                obj = this.getNode(obj);
                if (!obj || obj === -1 || !obj.length) {
                    return false;
                }
                obj = obj.find('> a > .tree-themeicon');
                if (icon === false) {
                    this.hideIcon(obj);
                } else if (icon.indexOf('/') === -1) {
                    obj.addClass(icon)
                        .attr('rel', icon);
                } else {
                    obj.css('background', 'url("' + icon + '") center center no-repeat')
                        .attr('rel', icon);
                }
                return true;
            },
            /**
             * Get the icon of a specific node
             * @memberOf jQuery.tree.plugin~themes~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {*} Null - obj wasn't found
             * <br />False - Icon is hidden
             * <br />String - Node icon path
             */
            // TODO this is inconsistent return behavior (returning null when obj was not found instead of false)
            getIcon: function getIcon(obj) {
                var iconRel;
                obj = this.getNode(obj);
                if (!obj || obj === -1 || !obj.length) {
                    return null;
                }
                obj = obj.find('> a > .tree-themeicon');
                if (obj.hasClass('tree-themeicon-hidden')) {
                    return false;
                }
                iconRel = obj.attr('rel');
                return (iconRel && iconRel.length) ? iconRel : null;
            },
            /**
             * Hide the icon of a node
             * @memberOf jQuery.tree.plugin~themes~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} False if obj wasn't found
             */
            hideIcon: function hideIcon(obj) {
                obj = this.getNode(obj);
                if (!obj || obj === -1 || !obj.length) {
                    return false;
                }
                obj.find('> a > .tree-themeicon')
                    .addClass('tree-themeicon-hidden');
                return true;
            },
            /**
             * Show the icon of a node
             * @memberOf jQuery.tree.plugin~themes~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} False if obj wasn't found
             */
            showIcon: function showIcon(obj) {
                obj = this.getNode(obj);
                if (!obj || obj === -1 || !obj.length) {
                    return false;
                }
                obj.find('> a > .tree-themeicon')
                    .removeClass('tree-themeicon-hidden');
                return true;
            },
            /**
             * Decorates the core cleanNode method with the ability to reset icons and adds them if not found.
             * @memberOf jQuery.tree.plugin~themes~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {*} {jQuery} The cleaned nodes
             * @see {@link jQuery.tree.plugin~core~cleanNode}
             */
            cleanNode: function cleanNode(obj) {
                obj = this.__callOld();
                var that = this;
                return obj.each(function cleanEachNode() {
                    var node = $(this),
                        treeData = node.data('tree');
                    if (!node.find('> a > ins.tree-themeicon').length) {
                        node.children('a').prepend('<ins class="tree-icon tree-themeicon">&#160;</ins>');
                    }
                    if (treeData && typeof treeData.icon !== 'undefined') {
                        that.setIcon(node, treeData.icon);
                        delete treeData.icon;
                    }
                });
            },
            /**
             * Decorates the core getState method with the ability to add theme settings to the state.
             * @memberOf jQuery.tree.plugin~themes~
             * @return {*}
             * @see {@link jQuery.tree.plugin~core~getState}
             */
            getState: function getState() {
                var state = this.__callOld();
                state.themes = {
                    'theme': this.getTheme(),
                    'icons': this.data.themes.icons,
                    'dots': this.data.themes.dots
                };
                return state;
            },
            /**
             * Decorates the core setState method with the ability to restore theme settings.
             * @memberOf jQuery.tree.plugin~themes~
             * @param state
             * @param callback
             * @return {Boolean}
             * @see {@link jQuery.tree.plugin~core~setState}
             */
            setState: function setState(state, callback) {
                if (this.__callOld()) {
                    if (state.themes) {
                        if (state.themes.theme) {
                            this.setTheme(state.themes.theme);
                        }
                        if (typeof state.themes.dots !== 'undefined') {
                            this[state.themes.dots ? 'showDots' : 'hideDots']();
                        }
                        if (typeof state.themes.icons !== 'undefined') {
                            this[state.themes.icons ? 'showIcons' : 'hideIcons']();
                        }
                        delete state.themes;
                        this.setState(state, callback);
                        return false;
                    }
                    return true;
                }
                return false;
            },
            /**
             * Decorates the core getJson method to add the icon of a node to the returned json.
             * @memberOf jQuery.tree.plugin~themes~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} isCallback do not modify this, tree uses this parameter to keep track of the recursion
             * @return {Object} A json object representing the tree node
             * @see {@link jQuery.tree.plugin~core~getJson}
             */
            getJson: function getJson(obj, isCallback) {
                var node = this.__callOld(),
                    icon;
                if (isCallback) {
                    icon = this.getIcon(obj);
                    if (typeof icon !== 'undefined' && icon !== null) {
                        node.data.tree.icon = icon;
                    }
                }
                return node;
            }
        }
    });
})(jQuery);
