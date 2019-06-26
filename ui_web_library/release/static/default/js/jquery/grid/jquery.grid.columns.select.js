(function ($) {
    'use strict';

    var columnTypes = $.fn.grid.columnTypes;
    /**
     * @class select
     * This column occupies 2 attributes of the row object defined in the datatemplate:
     * selected     {Boolean}   Whether the current row is selected
     * disabled     {Boolean}   Whether the checkbox of the current row is disabled
     * @memberOf jQuery.fn.grid.columnTypes
     */
    columnTypes.add('select', {
        width: 70,
        maxWidth: 70,
        single: false,
        /**
         * Name for checkboxes for tracking selected elements
         * @memberOf jQuery.fn.grid.columnTypes.select~
         */
        selectedItemsName: 'selected',
        /**
         * Name for hidden input fields to track all displayed elements
         * @memberOf jQuery.fn.grid.columnTypes.select~
         */
        availableItemsName: 'available',
        /**
         * The method to be called when select 'really' all control is triggered.
         * If that method is not configured, select 'really' all is not available.
         * @memberOf jQuery.fn.grid.columnTypes.select~
         */
        selectAllFn: $.noop,
        /**
         * True if 'really' select all option was chosen
         * @private
         * @memberOf jQuery.fn.grid.columnTypes.select~
         */
        allSelected: false,
        init: function init(params) {
            var instance = params.instance;
            // add new option to grid plugin
            if (typeof instance.options.text.titleSingleSelection === 'undefined') {
                instance.options.text.titleSingleSelection = 'Default';
            }
            
            if (typeof instance.options.text.tooltipSelectAll === 'undefined') {
            	instance.options.text.tooltipSelectAll = 'Select all';
            }

            // inject a new getter function into the grid plugin
            var getSelectedRows = function () {
                this.trigger('beforeGetSelectedRows');

                var grid = this.getBase(),
                    selected = grid.find('> tbody > tr.selected'),
                    i, l, data = [];

                // get row data for each selected row
                for (i = 0, l = selected.length; i < l; i++) {
                    data.push(this.getRowData(selected[i]));
                }

                this.trigger('afterGetSelectedRows', {
                    rowData: data,
                    selected: selected,
                    grid: grid
                });

                return data;
            };
            instance.inject({
                name: 'getSelectedRows',
                fn: getSelectedRows,
                isGetter: true
            });

            // disable text selection during shift+click on grids
            var unselectable = false,
                element = instance.element;
            $('body').on({
                'keydown.gridselection': function (event) {
                    if (event.which === 16 && !unselectable) {
                        // disable selections
                        element.attr('unselectable', 'on').addClass('unselectable');
                        unselectable = true;
                    }
                },
                'keyup.gridselection': function (event) {
                    if (event.which === 16 && unselectable) {
                        // enable selections
                        element.removeAttr('unselectable').removeClass('unselectable');
                        unselectable = false;
                    }
                }
            });

            element.on('beforeDestroy', function () {
                // unregister the events
                $('body').off('.gridselection');
                element.removeClass('selectable');
            });

            element.addClass('selectable');
        },
        render: function render(params) {
            var checked = '',
                disabled = '';

            if (params.row.selected === true) {
                params.tr.addClass('selected');
                checked = 'checked="checked"';
            } else if (this.allPreSelected === true && this.single === false) {
                this.allPreSelected = false;
                // uncheck "select all"
                this.selectAllCheckbox.prop('checked', false);
            }

            if (params.row.disabled === true) {
                params.tr.addClass('disabled');
                disabled = 'disabled="disabled"';
            }

            if (this.single === false) {
                return '<input type="checkbox" class="select" name="' + this.selectedItemsName + '" value="' + params.cell + '" ' + checked + ' ' + disabled + '/>' +
                    '<input type="hidden" name="' + this.availableItemsName + '" value="' + params.cell + '"/>';
            } else {
                return '<input type="radio" class="select" name="' + this.selectedItemsName + '" value="' + params.cell + '" ' + checked + ' ' + disabled + '/>' +
                    '<input type="hidden" name="' + this.availableItemsName + '" value="' + params.cell + '"/>';
            }
        },
        title: function title(params) {
            // the last clicked row when not pressing shift
            var instance = params.instance,
                that = this,
                lastRow;

            // expect that all rows are pre-selected, fix it during rendering
            this.allPreSelected = true;

            // de-/selection by row click
            params.tbody.on('click.gridselection', 'td', function (event) {
                var td = $(this),
                    tr = td.parent(),
                    ignoreInput = td.not('.select').is(':input') === true,
                    disabled = tr.find('.select:disabled'),
                    i, l, selected, deselected;

                if (ignoreInput || disabled.length || $(event.target).is('a')) {
                    return;
                }

                if (event.shiftKey === true && lastRow && that.single === false) {
                    // add range of rows to selection

                    // IE: remove text-selection
                    if (window.getSelection) {
                        window.getSelection().removeAllRanges();
                    } else if (document.selection) {
                        document.selection.empty();
                    }

                    var first = lastRow.index(), last = tr.index(),
                        state = lastRow.find('td.column-select > .select').prop('checked');
                    if (first > last) {
                        // swap values so that first is lower than last
                        last = (first += last -= first) - last;
                    }
                    selected = params.tbody.children('tr').filter(function (index) {
                        // use only elements inside the range
                        return index >= first && index <= last;
                    });

                    // select the range
                    for (i = 0, l = selected.length; i < l; i++) {
                        that.selectionChange(params, '', $(selected[i]), undefined, state);
                    }
                } else {
                    // only this item is selected
                    lastRow = tr;

                    // only 1 selected row is allowed, deselect all the others
                    if (that.single === true) {
                        var deselected = params.tbody.children('tr.selected').not(event.target);
                        for (i = 0, l = deselected.length; i < l; i++) {
                            that.selectionChange(params, '', $(deselected[i]), undefined, false);
                        }
                    }

                    that.selectionChange(params, event.target, tr, td);
                }

                if (that.single === false) {
                    // check if all rows are selected
                    that.selectAllCheckbox.prop('checked', params.tbody.children('tr:not(.selected):not(.disabled)').length === 0);
                }
            });

            // "default" title for single selection
            if (that.single === true) {
                return instance.options.text.titleSingleSelection;
            }

            // de-/selection by "select all" and "deselect all"
            this.selectAllCheckbox = $('<input type="checkbox" name="selectAllOnPage" title="' + instance.options.text.tooltipSelectAll + '" checked="checked"/>').on('change.selectAllOnPage', function (ev) {
                that.selectAllOnPage(ev, params);
            });

            if (typeof this.selectAllFn !== 'function' || this.selectAllFn === $.noop) return this.selectAllCheckbox;

            // encapsulate checkbox in button
            var buttonGroup = $('<span class="button-group really-select-all"></span>');
            this.selectAllOnPageButton = $('<button class="button"></button>').append(this.selectAllCheckbox).click(function (ev) {
                if ($(ev.target).is(that.selectAllCheckbox)) return;
                that.selectAllCheckbox.prop('checked', !that.selectAllCheckbox.prop('checked')).change();
            });

            // append dropdown button and menu
            this.selectAllMenuTigger = $('<button class="button dropdown-toggle"><div>&nbsp;</div></button>').addClass('selectAll');
            this.selectAllMenuTigger.popupmenu({
                menuThreshold: 1,
                alignTo: buttonGroup,
                items: [
                    {
                        render: function () {
                            return instance.format(instance.options.text.selectAllMenuAll, { total: instance.pagination.total });
                        },
                        click: function () {
                            that.selectAllItems(true, params);
                        }
                    },
                    {
                        render: instance.format(instance.options.text.selectAllMenuNone, { total: instance.pagination.total }),
                        click: function () {
                            that.selectAllItems(false, params);
                        }
                    }
                ]
            });
            return buttonGroup.append(this.selectAllOnPageButton, this.selectAllMenuTigger);
        },
        /**
         * Change selection of a single row.
         * @private
         * @memberOf jQuery.fn.grid.columnTypes.select~
         */
        selectionChange: function selectionChange(params, target, tr, td, checked) {
            var checkbox = tr.find('td.column-select > .select'),
                instance = params.instance,
                rowData = instance.getRowData(tr);

            if (checkbox.prop('disabled')) return;

            instance.trigger('beforeRowSelectionChange', {
                tr: tr,
                rowData: rowData,
                checkbox: checkbox,
                td: td,
                grid: params.grid
            });

            if (checkbox.is(target) === false) {
                if (typeof checked === 'undefined') {
                    if (this.single && checkbox.prop('checked')) {
                        // don't uncheck radio select
                        checked = true;
                    } else {
                        checked = !checkbox.prop('checked');
                    }
                }
                checkbox.prop('checked', checked);
            }
            if (checkbox.is(':checked') === true) {
                tr.addClass('selected');
            } else {
                tr.removeClass('selected');
            }

            instance.trigger('afterRowSelectionChange', {
                tr: tr,
                rowData: rowData,
                checkbox: checkbox,
                td: td,
                grid: params.grid
            });
        },
        /**
         * Select / deselect all items on the displayed page.
         * @private
         * @memberOf jQuery.fn.grid.columnTypes.select~
         */
        selectAllOnPage: function selectAllOnPage(event, params) {
            var trs = params.tbody.find('tr'), i, l,
                state = this.selectAllCheckbox.prop('checked'),
                instance = params.instance;

            instance.trigger('beforeAllOnPageSelectionChange', {
                tbody: params.tbody,
                grid: params.grid
            });

            // select all tr elements
            for (i = 0, l = trs.length; i < l; i++) {
                this.selectionChange(params, '', $(trs[i]), undefined, state);
            }
            this.selectAllCheckbox.prop('checked', state);

            instance.trigger('afterAllOnPageSelectionChange', {
                tbody: params.tbody,
                grid: params.grid
            });
        },
        /**
         * Select / deselect all items on all pages.
         * @private
         * @memberOf jQuery.fn.grid.columnTypes.select~
         */
        selectAllItems: function selectAllItems(selected, params) {
            var instance = params.instance,
                //pageSize = instance.pagination.count,
                //totalElements = instance.pagination.total,
                selected = (typeof selected === 'boolean') ? selected : !this.allSelected;

            instance.trigger('beforeAllSelectionChange', {
                tbody: params.tbody,
                grid: params.grid
            });

            // call the configured method
            this.selectAllFn({
                grid: instance,
                selected: selected,
                callback: function () {
                    instance.trigger('afterAllSelectionChange', {
                        tbody: params.tbody,
                        grid: params.grid
                    });
                    this.allSelected = selected;
                    instance.reload();
                }
            });
        }
    });

}(jQuery));