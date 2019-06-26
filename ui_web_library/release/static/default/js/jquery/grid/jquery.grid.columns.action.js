(function ($) {
    'use strict';

    var columnTypes = $.fn.grid.columnTypes;
    /**
     * @class action
     * @memberOf jQuery.fn.grid.columnTypes
     */
    columnTypes.add('action', {
        /**
         * Menu item configuration Objects.
         * @type {Array}
         * @see jQuery.fn.popupmenu.defaultItem
         * @memberOf jQuery.fn.grid.columnTypes.action~
         */
        items: [
            /**
             * Pseudo class used only for documentation. Represents the items stored in
             * the items array of the action column.
             * @class defaultItem
             * @memberOf jQuery.fn.grid.columnTypes.action~
             */
            /**
             * Additional parameters are passed to the click handler of an item.
             * @function
             * @name click
             * @memberOf jQuery.fn.grid.columnTypes.action~defaultItem~
             * @see jQuery.fn.popupmenu.defaultItem.click
             * @param {Object} data Data object
             * @param {String/Object} data.cell Data value of the current cell
             * @param {Object} data.row Data values for the current row
             * @param {Integer} data.cellindex Index of the current cell
             * @param {Integer} data.rowindex Index of the current row
             */
            /**
             * Additional parameters are passed to the render method of an item.
             * @function
             * @name render
             * @memberOf jQuery.fn.grid.columnTypes.action~defaultItem~
             * @see jQuery.fn.popupmenu.defaultItem.render
             * @param {Object} data Data object
             * @param {String/Object} data.cell Data value of the current cell
             * @param {Object} data.row Data values for the current row
             * @param {Integer} data.cellindex Index of the current cell
             * @param {Integer} data.rowindex Index of the current row
             */
        ],
        /**
         * Time in ms the menu should be visible after mouse was moved away
         * @memberOf jQuery.fn.grid.columnTypes.action~
         * @see jQuery.fn.popupmenu.defaults
         */
        timeOut: 300,
        /**
         * By default, items are displayed as buttons, but if there are more items
         * than this treshold, these items are displayed withn a menu.
         * E.g. treshold is 2 and you have 2 items, no action button
         * with menu will be displayed. If treshold is 2 and you have 3 items,
         * one item, one action button is displayed and the menu contains
         * the 2 remaining items.
         * @memberOf jQuery.fn.grid.columnTypes.action~
         */
        menuThreshold: 3,
        /**
         * @private
         * @memberOf jQuery.fn.grid.columnTypes.action~
         */
        lastTdChildren: $(),
        /**
         * Determine if menu exists or only buttons displayed.
         * @memberOf jQuery.fn.grid.columnTypes.action~
         * @return {Boolean}
         */
        hasMenu: function hasMenu() {
            return !!this.menu;
        },
        init: function init(params) {
            var that = this;

            params.instance.element.off('mouseout.gridaction');
            params.instance.element.on('mouseout.gridaction', 'table.grid', function mouseout(event) {
                if ($(event.relatedTarget).closest('table.grid').is(this)) return;
                window.setTimeout(function hideButtons() {
                    that.lastTdChildren.css('visibility', 'hidden');
                }, this.timeOut + 50);
            });

            params.instance.element.off('afterColumnHeader.gridaction');
            params.instance.element.on('afterColumnHeader.gridaction', function afterColumnHeader(ev, data) {
                if (that.id === data.column.id) {
                    that.afterTitle(data);
                }
            });
        },
        title: function title(/*params*/) {
            return '';
        },
        render: function render(params) {
            var item, btn, content, result = $(),
                data = {
                    cell: params.cell,
                    row: params.row,
                    columnIndex: params.columnIndex,
                    rowIndex: params.rowIndex
                },
                size = this.hasMenu() ? this.menuThreshold : this.items.length;

            // add each button
            for (var i = 0; i < size; i++) {
                item = this.items[i];

                if (item.type === 'separator') {
                    btn = $('<span class="separator"></span>');
                } else {
                    btn = $('<button class="button"></button>');
                    content = params.instance.getValue({
                        scope: item,
                        attr: item.render,
                        params: [{
                            data: {
                                button: btn,
                                cell: params.cell,
                                row: params.row,
                                columnIndex: params.columnIndex,
                                rowIndex: params.rowIndex,
                                tr: params.tr,
                                grid: params.grid,
                                instance: params.instance
                            }
                        }]
                    });
                    btn.append(content);

                    btn.click((function wrapClick(fn, param) {
                        return function wrapClickFn(event) {
                            event.preventDefault();
                            // use same structure as in jquery.fn.popupmenu.create
                            param.event = event;
                            fn.apply(this, [{data: param}]);
                        };
                    })(item.click, data));
                }

                btn.addClass(item.cssClass);

                result = result.add(btn);
            }

            // add more button for menu
            if (this.hasMenu()) {
                var more = $('<button class="button more">More</button>').data('more-data', data);
                result = result.add(more);
            }

            return result.css('visibility', 'hidden');
        },
        /**
         * Attach Menu and Button Events
         * @private
         * @memberOf jQuery.fn.grid.columnTypes.action~
         * @param {Object} params
         */
        afterTitle: function afterTitle(params) {
            var that = this;
            // use one menu instance for all rows, don't use menu for 1 item
            if (this.items.length > (this.menuThreshold + 1)) {
                params.th.popupmenu({
                    items: this.items.slice(this.menuThreshold),
                    timeOut: this.timeOut,
                    attachTo: params.th,
                    attachMode: 'insert',
                    manualShow: true
                });

                this.menu = true;

                params.tbody.on('click', 'td.column-action > button.more', function showMenu(event) {
                    var button = $(this), data = button.data('more-data');

                    event.preventDefault();

                    if (params.th.popupmenu('isVisible') === false) {
                        params.th.popupmenu('show', button, data);
                    } else {
                        params.th.popupmenu('hide');
                    }
                });
            }

            // show buttons on mouseover, hide them on mouseout
            // event handler defined here instead of init, so that th doesn't need to be
            // found for each mouseover event (which is very slow)
            params.instance.element.off('mouseover.gridaction');
            params.instance.element.on('mouseover.gridaction', 'table.grid>tbody>tr', function mouseover(ev) {
                if (params.th.popupmenu('isVisible') === true) return;
                var td = $(ev.target).closest('table.grid>tbody>tr').children('td:eq(' + params.columnIndex + ')');

                that.lastTdChildren.css('visibility', 'hidden');
                that.lastTdChildren = td.children().css('visibility', 'inherit');
            });
        }
    });

}(jQuery));
