/**
 * All methods listed below can be called directly on an instance or via $('selector').grid('methodName', arg1, arg2, argN).
 * @name grid
 * @class
 * @memberOf! jQuery.fn
 */
(function ($) {

    'use strict';

    /** name of the plugin */
    var pluginName = 'grid',
        /**
         * Getter method names. These names return own values when called with $('selector').grid('methodName', arg1, arg2, argN).
         * Methods not listed here return the grid instance.
         * @private
         * @memberOf jQuery.fn.grid~
         */
        getter = ['getBase', 'getColumnData', 'getRowData'],
        /**
         * Default configuration.
         * @class
         * @memberOf jQuery.fn.grid~
         */
        defaults = {
            /** @lends jQuery.fn.grid.defaults# */

            /**
             * This method is called for each data request (loading, sorting, pagination)
             * and triggers the callback method with the received data. The documented parameters
             * are passed to the method. If you don't define this function the grid won't display
             * any data.
             * @function
             * @param {Object} data arguments object
             * @param {String} data.orderColumnId Id of the column that should be ordered and recieve the order indicator
             * @param {String} data.orderTerm order by that column
             * @param {String} data.order order direction (asc/desc)
             * @param {Int} data.offset at which row the current page starts
             * @param {Int} data.pageSize amount of rows displayed per page
             * @param {Function} data.callback the function to be called with the recieved data
             * @see jQuery.fn.grid.reload
             */
            getData: $.noop,
            /** Trigger loading of grid data after initialization. */
            loadOnInit: true,
            /**
             * This method is called for each row and can return a css class as string (or an empty string).
             * @function
             * @param {Object} data arguments object
             * @param {Int} data.i index of the current row
             * @param {Object} data.row object
             */
            rowCss: $.noop,
            /** Rows-per-page options, listed in the selectbox on the bottom, first value is default value */
            rowsPerPage: [ 25, 10 ],
            /** Hide "show all" for more rows */
            showAllLimit: 200,
            /**
             * A simple pagination bar is used when this limit is reached. For large data sets some features of the pagignation bar are
             * disabled e.g jump to first/last page.
             */
            paginationLimit: 5000,
            /**
             * Executed before getData method. getData method is not executed if this returns false
             * @function
             * @param {Object} request
             * @returns {Boolean} success
             * @see jQuery.fn.grid.defaults.getData
             */
            beforeDataRequest: function beforeDataRequest() {
                return true;
            },
            /** All localizable strings are listed in this object, use the placeholders ({first}, {last}, ...) where needed */
            text: {
                /**
                 * pagination status
                 * params: from, to, total
                 */
                status: '<strong>{from}</strong> - <strong>{to}</strong> of <strong>{total}</strong>',
                /** items per page */
                items: 'items per page',
                /** e.g. rows 1-25 of 5010 */
                of: 'of',
                /** show all */
                showAll: 'show all',
                titleSingleSelection: '',
                /** params: total */
                selectAllMenuAll: 'Select all ({total})',
                /** params: total */
                selectAllMenuNone: 'Select none'
            },
            /** An array of column configuration objects */
            columns: []
        };

    /**
     * Stores element-reference, merges options with default values, triggers init().
     * @constructor
     * @class
     * @private
     * @name Plugin
     * @memberOf jQuery.fn.grid~
     * @returns void
     * @param {Object} element container element for the grid
     * @param {Object} options configuration of this grid instance
     */
    function Plugin(element, options) {
        // vars for a specific instance
        this.element = element;
        this.defaults = defaults;
        this.columnIds = [];
        // merge options with default options
        this.options = options ? $.extend(true, {}, defaults, options) : $.extend({}, defaults);
        // merge rowsPerPage separatly
        this.options.rowsPerPage = options.rowsPerPage ? this.getValue({
            attr: options.rowsPerPage
        }) : defaults.rowsPerPage;

        // pagination informations
        this.pagination = {
            orderColumnId: '',
            orderTerm: '',
            order: 'asc',
            offset: 0,
            pageSize: this.options.rowsPerPage[0],
            total: -1,
            lastPage: function lastPage() {
                var pageSize = 1;
                if (this.pageSize > 0) {
                    pageSize = this.pageSize;
                } else if (this.pageSize === -1) {
                    pageSize = this.total;
                }
                return Math.ceil(this.total / pageSize);
            },
            currentPage: function currentPage() {
                var pageSize = this.pageSize > 0 ? this.pageSize : 1;
                return Math.ceil((this.offset + 1) / pageSize);
            }
        };

        // sort rows per page
        this.options.rowsPerPage.sort(function sort(a, b) {
            return a - b;
        });

        // initialize
        this.init();
    }

    /**
     * Get value from string or result from function.
     * @function
     * @private
     * @name getValue
     * @memberOf jQuery.fn.grid~
     * @param {Object} args arguments object
     * @param {String|Function} args.attr attribute value or method to be called
     * @param {Object[]} args.params parameters passed to the method
     * @param {Object} args.scope context for method execution
     * @returns {String} value of the attribute
     */
    Plugin.prototype.getValue = function getValue(args) {
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
     * Replaces Strings by key with values (similar to sprintf)
     * @private
     * @function
     * @name format
     * @memberOf jQuery.fn.grid~
     * @param {String} s String with placeholders (e.g. {total})
     * @param {Object} data Replacement Object containing available placeholders in format: { placeholderName: value }
     * @returns {String} Given string with filled placeholders
     */
    Plugin.prototype.format = function format(s, data) {
        if (!s || !data) {
            return s;
        }
        $.each(data, function (index, value) {
            var regex = new RegExp('\\{' + index + '\\}', 'g');
            s = s.replace(regex, value);
        });
        return s;
    };

    /**
     * Trigger external events.
     * @function
     * @name trigger
     * @memberOf jQuery.fn.grid~
     * @param {String} name name of the event
     * @param {Object}* any other data objects
     */
    Plugin.prototype.trigger = function trigger(name) {
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
     * @memberOf jQuery.fn.grid~
     * @param {Object} injection arguments object
     * @param {String} injection.name name of the function
     * @param {Function} injection.fn function to be injected
     * @param {Boolean} injection.isGetter the function returns a value
     */
    Plugin.prototype.inject = function inject(injection) {
        var name = injection.name,
            fn = injection.fn || $.noop,
            isGetter = injection.isGetter;

        this.trigger('beforeInject', {
            name: name,
            fn: fn,
            isGetter: isGetter
        });

        if (typeof Plugin.prototype[name] !== 'undefined') {
            return false;
        }

        Plugin.prototype[name] = fn;
        if (isGetter === true) {
            getter.push(name);
        }

        this.trigger('afterInject', {
            name: name,
            fn: fn,
            isGetter: isGetter
        });

        return true;
    };

    /**
     * Initialization of the grid.
     * @private
     * @function
     * @name init
     * @memberOf jQuery.fn.grid~
     */
    Plugin.prototype.init = function init() {
        this.trigger('beforeInit', this.options);

        // register all event-handlers
        this.registerEvents();

        // load data on start
        if (this.options.loadOnInit === true) {
            this.reload();
        }

        this.trigger('afterInit', this.options);
    };

    /**
     * Destroy the grid, remove all references from the DOM.
     * @private
     * @function
     * @name destroy
     * @memberOf jQuery.fn.grid~
     */
    Plugin.prototype.destroy = function destroy() {
        this.trigger('beforeDestroy');

        // clear the element
        this.element.empty();
        // unregister the events
        this.element.off('.' + pluginName);

        this.trigger('afterDestroy');
    };

    /**
     * Register basic event-handlers.
     * @private
     * @function
     * @name registerEvents
     * @memberOf jQuery.fn.grid~
     */
    Plugin.prototype.registerEvents = function registerEvents() {
        this.trigger('beforeRegisterEvents');

        var that = this;

        // sorting
        this.element.on('click.' + pluginName, 'th.sortable > a', function sort(event) {
            event.preventDefault();
            var th = $(this).parent(),
                columnData = that.getColumnData(th),
                orderTerm = columnData.dataKey,
                orderColumnId = columnData.id,
                order;

            if (typeof orderTerm === 'undefined') {
                return;
            }

            // use current order if orderTerm didn't change
            if (orderTerm === that.pagination.orderTerm) {
                order = that.pagination.order;
            }

            // reverse the order, use 'desc' as default
            order = order === 'desc' ? 'asc' : 'desc';

            that.reload({
                orderColumnId: orderColumnId,
                orderTerm: orderTerm,
                order: order
            });
        });

        // pagination
        this.element.on('change.' + pluginName, 'select[name="itemsperpage"]', function page() {
            var offset = that.pagination.offset,
                pageSize = parseInt($(this).val(), 10);

            if (offset % pageSize > 0) {
                offset -= offset % pageSize;
            }
            that.reload({
                offset: offset,
                pageSize: pageSize
            });
        });

        this.element.on('click.' + pluginName, 'tfoot a[href].first', function firstClick(event) {
            event.preventDefault();
            that.reload({
                offset: 0
            });
        });

        this.element.on('click.' + pluginName, 'tfoot a[href].prev', function prevClick(event) {
            event.preventDefault();
            var offset = that.pagination.offset - that.pagination.pageSize;
            if (offset < 0) {
                offset = 0;
            }
            that.reload({
                offset: offset
            });
        });

        this.element.on('click.' + pluginName, 'tfoot a[href].next', function nextClick(event) {
            event.preventDefault();
            var offset = that.pagination.offset + that.pagination.pageSize;
            if (offset > that.pagination.total) {
                offset = that.pagination.total - that.pagination.offset;
            }
            that.reload({
                offset: offset
            });
        });

        this.element.on('click.' + pluginName, 'tfoot a[href].last', function lastClick(event) {
            event.preventDefault();
            var offset = (that.pagination.lastPage() - 1) * that.pagination.pageSize;
            that.reload({
                offset: offset
            });
        });

        this.element.on('click.' + pluginName, 'tfoot a[href].page', function pageClick(event) {
            event.preventDefault();
            var page = parseInt($(this).text(), 10),
                offset = (page - 1) * that.pagination.pageSize;
            that.reload({
                offset: offset
            });
        });

        this.trigger('afterRegisterEvents');
    };

    /**
     * Reuses or creates grid.
     * @private
     * @function
     * @name getBase
     * @memberOf jQuery.fn.grid~
     * @param {Object} config arguments object
     * @param {Boolean} [config.detach=false] detach the grid from the DOM for faster operations
     * @param {Boolean} [config.clear=false] clear the grid
     */
    Plugin.prototype.getBase = function getBase(config) {
        var defaults = {
            detach: false,
            clear: false
        };
        config = config ? $.extend({}, defaults, config) : $.extend({}, defaults);

        this.trigger('beforeGetBase', {
            config: config
        });

        var grid = this.element.children('.grid');

        if (!grid.is('.grid')) {
            // create grid if it does not exist
            grid = $('<table class="grid"><thead></thead><tbody></tbody><tfoot></tfoot></table>');
            this.trigger('gridCreation', {
                config: config,
                grid: grid
            });
        } else {
            if (config.detach === true) {
                // always detach for better performance on the DOM
                grid.detach();
            }

            if (config.clear === true) {
                // clear grid by setting empty thead and tbody
                grid.html('<thead></thead><tbody></tbody><tfoot></tfoot>');
            }

            this.trigger('gridReuse', {
                config: config,
                grid: grid
            });
        }

        this.trigger('afterGetBase', {
            config: config,
            grid: grid
        });

        return grid;
    };

    /**
     * Get the column object of any element inside the tbody.
     * @private
     * @function
     * @name getColumnData
     * @memberOf jQuery.fn.grid~
     * @param {Object} element any DOM element inside the tbody
     * @returns {Object} column configuration
     */
    Plugin.prototype.getColumnData = function getColumnData(element) {
        if (element instanceof $ === false) {
            element = $(element);
        }

        this.trigger('beforeGetColumnData', {
            element: element
        });

        var grid = this.getBase({
                detach: false,
                clear: false
            }),
            tbody = grid.children('tbody'),
            thead = grid.children('thead'),
            td, data;

        if (element.is('td')) {
            td = element;
        } else {
            td = element.closest('td');
        }

        if (tbody.has(element).length > 0) {
            // element is inside the tbody
            element = element.closest('table').find('>thead>tr>th:nth-child(' + (td.index() + 1) + ')');
        } else if (thead.has(element).length > 0 && !element.is('th')) {
            // element is inside the thead
            element = element.closest('th');
        }
        // get column-data from element
        data = element.data('column');

        this.trigger('afterGetColumnData', {
            element: element,
            data: data
        });

        return data;
    };

    /**
     * Get the row object of any element inside a tr.
     * @function
     * @name getRowData
     * @memberOf jQuery.fn.grid~
     * @param {Object} element any DOM element inside a tr
     * @returns {Object} row data
     */
    Plugin.prototype.getRowData = function getRowData(element) {
        if (element instanceof $ === false) {
            element = $(element);
        }

        this.trigger('beforeGetRowData', {
            element: element
        });

        // element is inside the tr or the tr itself
        var data = element.closest('tr').data('row') || element.data('row');

        this.trigger('afterGetRowData', {
            element: element,
            data: data
        });

        return data;
    };

    /**
     * Resolve column-names to referenced columns.
     * @private
     * @function
     * @name resolveColumnConfiguration
     * @memberOf jQuery.fn.grid~
     */
    Plugin.prototype.resolveColumnConfiguration = function resolveColumnConfiguration() {
        var columns = this.options.columns,
            columnTypes = $.fn.grid.columnTypes,
            column, i, l;

        this.trigger('beforeResolveColumns', {
            columns: columns,
            columnTypes: columnTypes
        });

        for (i = 0, l = columns.length; i < l; i++) {
            column = columns[i];

            if (!column.id) {
                throw 'Column id required';
            }
            if ($.inArray(column.id, this.columnIds) !== -1) {
                throw 'Column id has to be unique, "' + column.id + '" alread exists';
            }
            this.columnIds.push(column.id);

            // lookup column by type
            if (columnTypes.exists(column.type)) {
                // merge customization if existant
                column.ref = columnTypes.get(column.type, column);
            } else {
                throw 'No column of type "' + column.type + '" found';
            }

            // bind all functions to the column
            if (typeof column.ref.init === 'function') {
                column.ref.init = $.proxy(column.ref.init, column.ref);
            }
            if (typeof column.ref.title === 'function') {
                column.ref.title = $.proxy(column.ref.title, column.ref);
            }
            if (typeof column.ref.render === 'function') {
                column.ref.render = $.proxy(column.ref.render, column.ref);
            }
            if (typeof column.ref.postRender === 'function') {
            	column.ref.postRender = $.proxy(column.ref.postRender, column.ref);
            }
            if (typeof column.ref.cssClass === 'function') {
                column.ref.cssClass = $.proxy(column.ref.cssClass, column.ref);
            }

            // initialize the column
            column.ref.init({
                columnIndex: i,
                instance: this
            });
        }

        this.trigger('afterResolveColumns', {
            columns: columns,
            columnTypes: columnTypes
        });
    };

    /**
     * Looks up columns. Column configuration needs to be resolved before.
     * @private
     * @function
     * @name getColumnById
     * @memberOf jQuery.fn.grid~
     * @param {String} id The id of the searched column
     * @returns {Object} Column instance
     */
    Plugin.prototype.getColumnById = function getColumnById(id) {
        var columns = this.options.columns, columnInstance;
        $.each(columns, function eachColumn(index, column) {
            if (column.id === id) {
                columnInstance = column;
            }
        });
        return columnInstance;
    };

    /**
     * Render is triggered by reload() with data.
     * @private
     * @function
     * @name render
     * @memberOf jQuery.fn.grid~
     * @param {Object} data rendering data
     * @param {String} data.orderColumnId Id of the column that should be ordered and recieve the order indicator
     * @param {String} data.orderTerm name of the sorted column
     * @param {String} data.order sort order
     * @param {Int} data.offset offset of the data
     * @param {Int} data.total total number of items
     * @param {Object[]} data.items array of items
     */
    Plugin.prototype.render = function render(data) {
        this.trigger('dataRetrieval', data);

        // resolve referenced column-types
        this.resolveColumnConfiguration();

        // store pagination informations
        this.pagination.offset = data.offset;
        this.pagination.total = data.total;
        this.pagination.orderColumnId = data.orderColumnId;
        if (data.orderTerm) {
            this.pagination.orderTerm = data.orderTerm;
        } else {
            var column = this.getColumnById(this.pagination.orderColumnId);
            if (column) {
                this.pagination.orderTerm = column.dataKey;
            }
        }
        this.pagination.order = data.order;

        this.trigger('beforeRender');

        var itemData = data.items,
            columns = this.options.columns,
            // detaching the grid from the DOM will boost performance
            grid = this.getBase({
                detach: true,
                clear: true
            }),
            thead, tbody, tfoot, i, j, k, l, td, tr, th, row, cell, column, title,
            css, content, columnParams, rowParams, cellParams, eventParams;

        // get dom references
        thead = $('<tr></tr>').appendTo(grid.children('thead'));
        if (this.options.showFooter === true) {
        	tfoot = $('<tr><td colspan="' + columns.length + '"></td></tr>').appendTo(grid.children('tfoot')).children('td');
    	} else {
    		tfoot = '';
    	}
        tbody = grid.children('tbody');

        eventParams = {
            columns: columns,
            rows: itemData,
            tbody: tbody,
            thead: thead,
            grid: grid
        };

        // column headers
        this.trigger('beforeColumnHeaders', eventParams);
        var sortControls = '<div class="sort-controls"><div class="up"></div><div class="down"></div></div>';
        for (i = 0, l = columns.length; i < l; i++) {
            column = columns[i];

            this.trigger('beforeColumnHeader', {
                columnIndex: i,
                column: column,
                thead: thead,
                tbody: tbody,
                grid: grid
            });

            // create column header
            th = $('<th></th>').addClass('column-' + column.type).data('column', column);

			// set column-width
			th.css({
			    'min-width': column.ref.minWidth > -1 ? column.ref.minWidth : '',
			    'max-width': column.ref.maxWidth > -1 ? column.ref.maxWidth : '',
			    'width': column.ref.width > -1 ? column.ref.width : ''
			});

            columnParams = {
                columnIndex: i,
                column: column,
                th: th,
                thead: thead,
                tbody: tbody,
                grid: grid,
                instance: this
            };

            // add additional css classes
            css = this.getValue({
                scope: column.ref,
                attr: column.ref.cssClass,
                params: [ columnParams ]
            });
            if (css !== '') {
                th.addClass(css);
            }

            // use user-defined title or default column-title
            title = this.getValue({
                scope: column.ref,
                attr: column.title || column.ref.title,
                params: [ columnParams ]
            });

            // sortable
            if (column.ref.sortable === true) {
                th.addClass('sortable');
                title = $('<a href="#">' + sortControls + '</a>').prepend(title);
            }
            if (this.pagination.orderTerm &&
                    this.pagination.orderTerm === column.dataKey &&
                    column.ref.id === this.pagination.orderColumnId) {
                th.addClass('sorted ' + this.pagination.order);
                if (column.ref.sortable === false) {
                    // maybe sorting is disabled, but items are presorted
                    // div is neccessary, else prepending won't work
                    title = $('<div" class="not-sortable">' + sortControls + '</div>').prepend(title);
                }
            }
            th.append(title);

            // append column header
            thead.append(th);

            this.trigger('afterColumnHeader', columnParams);
        }
        this.trigger('afterColumnHeaders', eventParams);

        // table body
        this.trigger('beforeBody', eventParams);
        for (i = 0, l = itemData.length; i < l; i++) {
            row = itemData[i];
            // create row with alternating/additional css class
            css = this.getValue({
                attr: this.options.rowCss,
                params: [{
                    rowIndex: i,
                    row: row
                }]
            });
            tr = $('<tr class="row ' + (i % 2 === 0 ? 'odd' : 'even') + '"></tr>').data('row', row).addClass(css);

            cellParams = rowParams = {
                row: row,
                rowIndex: i,
                rows: itemData,
                columns: columns,
                tr: tr,
                tbody: tbody,
                thead: thead,
                grid: grid,
                instance: this
            };

            this.trigger('beforeRow', rowParams);

            // each cell of the row
            for (j = 0, k = columns.length; j < k; j++) {
                column = columns[j];
                cell = row[column.dataKey];

                // use rowParams, add cell and columnIndex
                cellParams.cell = cell;
                cellParams.columnIndex = j;

                this.trigger('beforeCell', cellParams);

                // append rendered cell
                content = this.getValue({
                    scope: column.ref,
                    attr: column.ref.render,
                    params: [ cellParams ]
                });
                td = $('<td></td>').append(content).addClass('column-' + column.type).appendTo(tr);
                cellParams.td = td;
				
				// set column-width
				td.css({
					'min-width': column.ref.minWidth > -1 ? column.ref.minWidth : '',
					'max-width': column.ref.maxWidth > -1 ? column.ref.maxWidth : '',
					'width': column.ref.width > -1 ? column.ref.width : ''
				});

				// add additional css classes
                css = this.getValue({
                    scope: column.ref,
                    attr: column.ref.cssClass,
                    params: [ cellParams ]
                });

                css = column.ref.cssClass;
                if (css !== '') {
                    td.addClass(css);
                }

                column.ref.postRender(cellParams);
                
                this.trigger('afterCell', cellParams);
            }

            this.trigger('afterRow', rowParams);

            // append row to table body
            tbody.append(tr);
        }
        this.trigger('afterBody', eventParams);

        // render pagination in the table footer
        if (this.options.showFooter === true) {
        	this.renderPagination(tfoot, data);
        }

        // append the grid to the DOM
        this.element.append(grid);

        this.trigger('afterRender');
    };

    /**
     * Render pagination footer.
     * @private
     * @function
     * @name renderPagination
     * @memberOf jQuery.fn.grid~
     * @param {Object} tfoot DOM element of the tfoot
     * @param {Object} data rendering data
     * @param {String} data.orderColumnId Id of the column that should be ordered and recieve the order indicator
     * @param {String} data.orderTerm name of the sorted column
     * @param {String} data.order sort order
     * @param {Int} data.offset offset of the data
     * @param {Int} data.total total number of items
     * @param {Object[]} data.items array of items
     */
    Plugin.prototype.renderPagination = function renderPagination(tfoot, data) {
        var currentPage = this.pagination.currentPage(),
            max = this.pagination.lastPage(),
            tr, td, itemsPerPage, content, i, l;

        this.trigger('beforeRenderPagination', { data: data });

        tr = $('<table><tr></tr></table>').appendTo(tfoot).find('tr');

        // CURRENT RANGE
        tr.append('<td class="range">' + this.format(this.options.text.status, {
                from: this.pagination.offset + 1,
                to: this.pagination.offset + data.items.length,
                total: this.pagination.total
            }) + '</td>');

        // ITEMS PER PAGE
        if (this.options.rowsPerPage.length > 1) {
            itemsPerPage = $('<select name="itemsperpage" class="select inputfield_en"></select>');
            for (i = 0, l = this.options.rowsPerPage.length; i < l; i++) {
                content = this.options.rowsPerPage[i];
                if (content !== -1) {
                    itemsPerPage.append('<option value="' + content + '">' + content + '</option>');
                }
            }
            // "show all" entry
            if (this.pagination.total <= this.options.showAllLimit) {
                itemsPerPage.append('<option value="-1">' + this.options.text.showAll + '</option>');
            }
            // preselect the current items per page value
            itemsPerPage.children('option[value="' + this.pagination.pageSize + '"]').prop('selected', true);

            $('<td class="rowsperpage"> ' + this.options.text.items + '</td>').prepend(itemsPerPage).appendTo(tr);
        }

        // PAGING CONTROLS
        td = $('<td class="pagination unselectable"></td>').appendTo(tr);

        // no pagination needed when only 1 page
        if (max < 2) {
            return;
        }

        var maxRight = 5,
            maxLeft = 5,
            maxWidth = maxRight + maxLeft,
            right,
            left = 1,
            pages = [],
            prev = [],
            next = [],
            maxLink,
            small = this.pagination.total < this.options.paginationLimit;


        // calculate max width of shown page numbers
        if (max <= maxWidth) {
            maxWidth = max;
        }

        // find most left page number
        if (currentPage - maxLeft > 1) {
            left = currentPage - maxLeft;
        }

        // find most right page number
        right = max;
        if (currentPage + maxRight < max) {
            right = currentPage + maxRight;
        } else {
            if (right - maxWidth > 0) {
                left = right - maxWidth;
            }
        }

        if (left + maxWidth < max && left + maxWidth > right) {
            right = left + maxWidth;
        }

        // left arrows
        if (small && currentPage !== 1) {
            prev.push('<a href="#first" class="first">&#124;&lt;</a>');
        } else {
            prev.push('<a class="first">&#124;&lt;</a>');
        }

        if (currentPage !== 1) {
            prev.push('<a href="#prev" class="prev">&lt;</a>');
        } else {
            prev.push('<a class="prev">&lt;</a>');
        }

        // add page numbers from left to right
        for (i = left, l = right + 1; i < l; i++) {
            if (i === currentPage) {
                pages.push('<strong>[' + i + ']</strong>');
            } else {
                pages.push('<a href="#' + i + '" class="page">' + i + '</a>');
            }
        }

        // right arrows
        if (currentPage !== max) {
            next.push('<a href="#next" class="next">&gt;</a>');
        } else {
            next.push('<a class="next">&gt;</a>');
        }

        if (small && currentPage !== max) {
            next.push('<a href="#last" class="last">&gt;&#124;</a>');
        } else {
            next.push('<a class="last">&gt;&#124;</a>');
        }

        if (small) {
            maxLink = '<a href="#last" class="page">' + max + '</a>';
        } else {
            maxLink = max;
        }

        // add navigation with previous and next
        td.append(prev.join(' ') + ' ' + pages.join(' ') +  ' ' + this.options.text.of + ' ' + maxLink + ' ' + next.join(' '));

        this.trigger('afterRenderPagination', {
            data: data,
            tfoot: tfoot
        });
    };

    /**
     * Triggeres data-retrieval and -rendering.
     * @function
     * @name reload
     * @memberOf jQuery.fn.grid~
     * @param {Object} request arguments object
     * @param {Int} request.offset offset of the data
     * @param {Int} request.pageSize number of items
     * @param {String} request.orderColumnId Id of the column that should be ordered and recieve the order indicator
     * @param {String} request.orderTerm name of the sorted column
     * @param {String} request.order sort order
     */
    Plugin.prototype.reload = function reload(request) {
        this.trigger('beforeReload');

        // default values for request
        var defaults = {
            offset: this.pagination.offset,
            pageSize: this.pagination.pageSize,
            orderColumnId: this.pagination.orderColumnId,
            orderTerm: this.pagination.orderTerm,
            order: this.pagination.order
        };

        // merge actual request with default values
        request = request ? $.extend({}, defaults, request) : $.extend({}, defaults);

        this.trigger('beforeDataRequest', request);

        if (this.options.beforeDataRequest.call(this, request) === true) {

            // save changed values from request
            this.pagination.pageSize = request.pageSize;
            this.pagination.orderColumnId = request.orderColumnId;
            this.pagination.orderTerm = request.orderTerm;
            this.pagination.order = request.order;

            // clear column ids
            this.columnIds = [];

            // trigger data request, call render() on success
            this.options.getData({
                offset: request.offset,
                pageSize: request.pageSize,
                orderColumnId: request.orderColumnId,
                orderTerm: request.orderTerm,
                order: request.order,
                callback: $.proxy(this.render, this)
            });

            this.trigger('afterDataRequest', request);
        }

        this.trigger('afterReload');
    };

    /**
     * A really lightweight plugin wrapper around the constructor, preventing
     * against multiple instantiations, recognizing getter-functions
     */
    if (typeof $.fn[pluginName] !== 'undefined') {
        throw '$.fn.' + pluginName + ' already exists, aborting';
    }
    /**
     * This is called when creating and configuring the plugin or executing functions on it
     */
    $.fn[pluginName] = function () {
        var args = arguments,
            fn, params, instance;

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

        return this.each(function forEachInstance() {
            // get plugin instance
            var instance = $.data(this, 'plugin_' + pluginName),
                options;

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

    /**
     * column type manager
     * @class
     * @name columnTypes
     * @memberOf jQuery.fn.grid
     */
    $.fn[pluginName].columnTypes = (function () {
        /**
         * Stores all available column types e.g. &lt;column type&gt;: column configuration
         * @private
         * @memberof jQuery.fn.grid.columnTypes~
         */
        var columns = {},
            /**
             * Configration parameters of a columntype.
             * @class
             * @memberof jQuery.fn.grid.columnTypes~
             */
            defaultColumn = {
                /** @lends jQuery.fn.grid.columnTypes.defaultColumn~ */

                /** Column identifier, has to be unique for grid columns */
                id: null,
                /** The key under which the value in the data object is stored */
                dataKey: null,
                /**  column is sortable */
                sortable: false,
                /** Initialization of the column */
                init: $.noop,
                /**
                 * Custom method for rendering of the cell. If none is given, the column
                 * specific render method is used. Can also be a string.
                 * @function
                 * @name render
                 * @memberOf jQuery.fn.grid.columnTypes~defaultColumn~
                 * @param {Object} args
                 * @param args.row
                 * @param args.rowIndex
                 * @param args.rows
                 * @param args.columns
                 * @param args.tr
                 * @param args.tbody
                 * @param args.thead
                 * @param args.grid
                 * @param args.instance
                 * @param args.columnIndex
                 * @param args.cell
                 * @returns the rendered string
                 */
                render: $.noop,
                /**
                 * Custom method executed after the cell is rendered. If none is given, the column
                 * specific postRender method is used.
                 * @function
                 * @name render
                 * @memberOf jQuery.fn.grid.columnTypes~defaultColumn~
                 * @param {Object} args
                 * @param args.row
                 * @param args.rowIndex
                 * @param args.rows
                 * @param args.columns
                 * @param args.tr
                 * @param args.td
                 * @param args.tbody
                 * @param args.thead
                 * @param args.grid
                 * @param args.instance
                 * @param args.columnIndex
                 * @param args.cell
                 * @returns the rendered string
                 */
                postRender: $.noop,
                /**
                 * Renders title of the column. Can also be a string.
                 * @function
                 * @name title
                 * @memberOf jQuery.fn.grid.columnTypes~defaultColumn~
                 * @param {Object} args
                 * @param args.columnIndex
                 * @param args.column
                 * @param args.th
                 * @param args.thead
                 * @param args.tbody
                 * @param args.grid
                 * @param args.instance
                 * @returns title
                 */
                title: '',
                /** Minimum width */
                minWidth: -1,
                /** Maximum width */
                maxWidth: -1,
                /** Current width */
                width: -1,
                /**
                 * Additional css class. The parameters described are the common minimum set.
                 * When rendering a cell more parameters are passed. Can also be a string.
                 * @function
                 * @name cssClass
                 * @memberOf jQuery.fn.grid.columnTypes~defaultColumn~
                 * @param {Object} args
                 * @param args.columnIndex
                 * @param args.column
                 * @param args.thead
                 * @param args.tbody
                 * @param args.grid
                 * @param args.instance
                 * @returns title
                 */
                cssClass: ''
            };

        return {
            /** @lends jQuery.fn.grid.columnTypes~ */

            /**
             * Add a new column-type, overwrite the old column-type with the same name.
             * @memberof jQuery.fn.grid.columnTypes~
             * @param {String} type column type
             * @param {Object} column configuration of the column
             * @returns reference to the columns manager
             */
            add: function add(type, column) {
                column.type = type;
                if (typeof column !== 'object') {
                    throw 'Column has to be of type "object"';
                }
                // merge column with default configuration
                columns[type] = $.extend(true, {}, defaultColumn, column);
                return this;
            },
            /**
             * Get an existing column-type and merge it with custom attributes.
             * @memberof jQuery.fn.grid.columnTypes~
             * @param {String} type column type
             * @param {Object} columnConfig user-defined configuration which is mixed in
             * @returns {Object} column
             */
            get: function get(type, columnConfig) {
                var column = columns[type];
                if (typeof column === 'undefined') {
                    throw 'No column of type "' + type + '" registered';
                }
                // merge custom configuration if given
                if (typeof columnConfig === 'object') {
                    column = $.extend(true, {}, column, columnConfig);
                }
                return column;
            },
            /**
             * Check for existance of column-type.
             * @memberof jQuery.fn.grid.columnTypes~
             * @param {String} type column type
             * @returns {Boolean} the column exists
             */
            exists: function exists(type) {
                return !!columns[type];
            }
        };
    })();

}(jQuery));
