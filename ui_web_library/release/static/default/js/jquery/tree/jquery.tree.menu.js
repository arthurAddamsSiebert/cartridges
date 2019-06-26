/**
 * Adds menus to the tree.
 * <strong>All methods of this class can be called directly on a tree instance</strong>
 * @example
 * menu: {
 *      menuThreshold: 0,
 *      timeOut: 300,
 *      items: [
 *          {
 *              cssClass: 'action1',
 *              render: 'Action 1',
 *              click: function clickAction1(args) {
 *                  alert('Action 1 ' + args.data.title);
 *              }
 *          },
 *          {
 *              cssClass: 'action2',
 *              render: 'Action 2',
 *              click: function clickAction1(args) {
 *                  alert('Action 2 ' + args.data.title);
 *              }
 *          }
 *      ]
 *  }
 * @class menu
 * @memberof! jQuery.tree.plugin~
 */
(function ($) {
    'use strict';

    $.tree.plugin('menu', {
        __construct: function __construct() {
            var container = this.getContainer(),
                settings = this.getSettings(true).menu,
                _this = this;

            container.addClass('tree-menu');

            // listen for action buttons of enabled nodes
            container.on('click.tree', 'ins.tree-actions > button',
                $.proxy(function clickButton(ev) {
                    var button = $(ev.currentTarget),
                        index = button.data('index'),
                        nodeJson = this.getJson(button),
                        node = this.getNode(button);

                    // stop from triggering checkbox
                    ev.preventDefault();
                    ev.stopImmediatePropagation();

                    if (this.isDisabled(node)) return;

                    nodeJson = nodeJson.length === 1 ? nodeJson[0] : nodeJson;

                    // trigger click handler
                    settings.items[index].click({
                        data: {
                            nodeJson: nodeJson,
                            treeInstance: _this,
                            node: node
                        },
                        i: index,
                        trigger: button
                    });
                }, this));

            // listen for menu toggle of enabled nodes
            container.on('click.tree', 'ins.tree-menu-toggle',
                $.proxy(function clickMenu(ev) {
                    var button = $(ev.currentTarget),
                        node = this.getNode(button),
                        nodeJson, data;

                    // stop from triggering checkbox
                    ev.preventDefault();
                    ev.stopImmediatePropagation();

                    if (this.isDisabled(node)) return;

                    if (container.popupmenu('isVisible')) {
                        // hide popup menu
                        container.popupmenu('hide');
                        return;
                    }

                    // get data from node
                    nodeJson = this.getJson(button);
                    nodeJson = nodeJson.length === 1 ? nodeJson[0] : nodeJson;
                    data = {
                        nodeJson: nodeJson,
                        treeInstance: _this,
                        node: node
                    };

                    // show popup menu
                    container.popupmenu('show', button, data);
                }, this));

            // initialize popupmenu
            container.popupmenu({
                items: settings.items.slice(settings.menuThreshold),
                timeOut: settings.timeOut,
                attachTo: container,
                attachMode: 'insert',
                manualShow: true
            });
        },
        /**
         * Default configuration.
         * @property {Array} items action items of the popupmenu
         * @property {Integer} [menuThreshold=0] number of buttons outside of the popupmenu
         * @property {Integer} [timeOut=300] close the popupmenu after mouseleave event
         * @memberOf jQuery.tree.plugin~menu~
         */
        defaults: {
            items: [],
            menuThreshold: 0,
            timeOut: 300
        },
        _fn: {
            /**
             * Add menu-toggle to each node
             * @memberOf jQuery.tree.plugin~menu~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {jQuery} Cleaned nodes
             */
            cleanNode: function cleanNode(obj) {
                obj = this.__callOld();

                var settings = this.getSettings(true).menu,
                    actions = settings.items.slice(0, settings.menuThreshold),
                    buttons = [],
                    i, length, action, value, css;

                // generate action buttons
                for (i = 0, length = actions.length; i < length; i++) {
                    action = actions[i];
                    if (action.type === 'seperator') continue;

                    if (typeof action.render === 'undefined') {
                        value = '';
                    } else {
                        value = typeof action.render === 'function' ? action.render() : action.render;
                    }

                    if (typeof action.cssClass === 'undefined') {
                        css = '';
                    } else {
                        css = typeof action.cssClass === 'function' ? action.cssClass() : action.cssClass;
                    }


                    buttons.push('<button data-index="' + i + '" class="' + css + '">' + value + '</button>');
                }
                buttons = buttons.join('');

                obj = obj.each(function cleanEachNode() {
                    var node = $(this),
                        checkbox = node.find(' > a > .tree-checkbox');

                    // cleanup old dom elements
                    node.find(' > a > ins.tree-menu-toggle').remove();
                    node.find(' > a > ins.tree-actions').remove();

                    // add dom elements
                    if (!checkbox.length) {
                        node.children('a')
                            .prepend('<ins class="tree-icon tree-menu-toggle"></ins>');
                        node.children('a')
                            .prepend('<ins class="tree-icon tree-actions">' + buttons + '</ins>');
                    } else {
                        // add after checkboxes
                        checkbox.after('<ins class="tree-icon tree-menu-toggle"></ins>');
                        checkbox.after('<ins class="tree-icon tree-actions">' + buttons + '</ins>');
                    }
                });

                return obj;
            }
        }
    });
})(jQuery);
