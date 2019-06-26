/*global module: true, test: true, ok: true, strictEqual: true, deepEqual: true, createDemoData: true */
(function ($) {
    'use strict';

    // use one config that is modified if needed
    var gridConfig = {
        getData: window.getData,
        rowsPerPage: [1],
        columns: [
            {
                id: 'sku',
                type: 'text',
                dataKey: 'sku',
                title: 'SKU'
            }
        ]
    };
    var setup = function setup(gridConfig) {
        return $('<div class="element" />').appendTo($('body')).grid(gridConfig);
    };
    var teardown = function teardown(el) {
        el.grid('destroy');
    };
    var testRequiredEventData = function testRequiredEventData(eventName, data, parameterNames, dataName) {
        var name, dataName = dataName || 'data';
        parameterNames = parameterNames.split(',');
        for (var i = 0, l  = parameterNames.length; i < l; i++) {
            name = parameterNames[i].trim();
            ok(typeof data[name] !== 'undefined', eventName + ': ' + dataName + '.' + name);
        }
    };

    module('API');

    test('disabled', 4, function testDisabled() {
        var config = $.extend(true, {}, gridConfig),
            total = 10,
            items = createDemoData(total),
            $document = $(document);

        // modify cloned original config with specific options
        config.columns.push({
            id: 'select',
            type: 'select',
            dataKey: 'sku'
        });
        items[0].selected = true;
        items[1].disabled = true;
        items[2].selected = true;
        items[2].disabled = true;
        config.getData = function getData(request) {
            request.callback({
                total: total,
                items: items
            });
        };

        var el = setup(config);

        ok($('table.grid > tbody > tr:eq(0) .select:checked').length, 'First row checked');
        ok($('table.grid > tbody > tr:eq(1) .select:disabled').length, 'Second row disabled');
        ok($('table.grid > tbody > tr:eq(2) .select:checked').length, 'Third row checked');
        ok($('table.grid > tbody > tr:eq(2) .select:disabled').length, 'Third row disabled');

        $document.off('.qunit');
        teardown(el);
    });

    /*
     * All public methods and all events are tested
     * Event that belong to a method are tested within that method
     */
    test('getRowData', 6, function testGetRowData() {
        var config = $.extend(true, {}, gridConfig),
            $document = $(document),
            rowIndex, columnIndex, originalRow, cellEl, gottenRow;
        // modify cloned original config with specific options
        config.columns[0].render = function (args) {
            columnIndex = args.columnIndex;
            rowIndex = args.rowIndex;
            originalRow = args.row;
        };

        var el = setup(config);

        cellEl = $('table.grid>tbody>tr:eq(' + rowIndex + ')>td:eq(' + columnIndex + ')');

        $document.on('beforeGetRowData.qunit', function beforeGetRowData(ev, data) {
            ok(true, 'beforeGetRowData triggered');
            ok(cellEl.is(data.element), 'beforeGetRowData: data.element');
        });
        $document.on('afterGetRowData.qunit', function afterGetRowData(ev, data) {
            ok(true, 'afterGetRowData triggered');
            ok(cellEl.is(data.element), 'beforeGetRowData: data.element');
            deepEqual(originalRow, data.data, 'afterGetRowData: data.data');
        });

        gottenRow = el.grid('getRowData', cellEl);
        deepEqual(originalRow, gottenRow, 'Row returned');

        $document.off('.qunit');
        teardown(el);
    });

    test('inject', 11, function testInject() {
        var $document = $(document), params = {
            a: true,
            b: false
        };

        $document.on('beforeInject.qunit', function beforeInject(ev, data) {
            ok(true, 'beforeInject triggered');
            strictEqual(data.name, 'injectedFunction', 'beforeInject: data.name');
            ok(data.fn, 'beforeInject: data.fn');
            strictEqual(data.isGetter, true, 'beforeInject: data.isGetter');
        });
        $document.on('afterInject.qunit', function beforeInject(ev, data) {
            ok(true, 'afterInject triggered');
            strictEqual(data.name, 'injectedFunction', 'afterInject: data.name');
            ok(data.fn, 'afterInject: data.fn');
            strictEqual(data.isGetter, true, 'afterInject: data.isGetter');
        });

        var el = setup(gridConfig);

        el.grid('inject', {
            name: 'injectedFunction',
            fn: function (params) {
                ok(true, 'Function called');
                strictEqual(params.a, true, 'Parameters passed');
                return params.b;
            },
            isGetter: true
        });
        strictEqual(el.grid('injectedFunction', params), false, 'Function returns correct value');

        $document.off('.qunit');
        teardown(el);
    });

    test('reload', 19, function testReload() {
        var reload, $document = $(document), request = {
            offset: 20,
            pageSize: 10,
            orderColumnId: 'sku',
            orderTerm: 'sku',
            order: 'asc'
        };
        var config = $.extend(true, {}, gridConfig, {
            getData: function getData(request) {
                if (reload) {
                    strictEqual(request.offset, 20, 'request.offset');
                    strictEqual(request.pageSize, 10, 'request.pageSize');
                    strictEqual(request.orderColumnId, 'sku', 'request.orderColumnId');
                    strictEqual(request.orderTerm, 'sku', 'request.orderTerm');
                    strictEqual(request.order, 'asc', 'request.order');
                }
            }
        });

        var el = setup(config);

        // don't use events triggered by initial setup
        $document.on('beforeReload.qunit', function beforeReload(ev, data) {
            ok(true, 'beforeReload triggered');
            ok($('.element').is(data.element), 'beforeReload:  No Parameters passed');
        });
        $document.on('beforeDataRequest.qunit', function beforeDataRequest(ev, data) {
            ok(true, 'beforeDataRequest triggered');
            testRequiredEventData('beforeDataRequest', data, 'orderColumnId, orderTerm, order, offset');
        });
        $document.on('afterDataRequest.qunit', function afterDataRequest(ev, data) {
            ok(true, 'afterDataRequest triggered');
            testRequiredEventData('afterDataRequest', data, 'orderColumnId, orderTerm, order, offset');
        });
        $document.on('afterReload.qunit', function afterReload(ev, data) {
            ok(true, 'afterReload triggered');
            ok($('.element').is(data.element), 'afterReload:  No Parameters passed');
        });
        $document.on('gridReuse.qunit', function gridReuse(ev, data) {
            ok(true, 'gridReuse triggered');
            ok(typeof data.config.clear !== 'undefined', 'gridReuse: data.config.clear');
            ok(typeof data.config.detach !== 'undefined', 'gridReuse: data.config.detach');
            ok(typeof data.grid !== 'undefined', 'gridReuse: data.grid');
        });


        reload = true;

        el.grid('reload', request);

        $document.off('.qunit');
        teardown(el);
    });

    test('trigger', 2, function testTrigger() {
        var el = setup(gridConfig);

        el.on('anEvent.qunit', function onEvent(ev, data) {
            ok(true, 'anEvent triggered');
            strictEqual(data.a, true, 'anEvent: Parameters passed');
        });
        el.grid('trigger', 'anEvent.qunit', {
            a: true
        });

        el.off('.qunit');
        teardown(el);
    });

    test('columnTypes.add', 2, function testColumnTypesAdd() {
        $.fn.grid.columnTypes.add('qunitColumn', {
            a: true
        });

        var column = $.fn.grid.columnTypes.get('qunitColumn');
        ok(column, 'Column got registered by correct name');
        strictEqual(column.a, true, 'Parameters passed');
    });

    test('columnTypes.get', 2, function testColumnTypesGet() {
        $.fn.grid.columnTypes.add('qunitColumn', {
            a: true
        });

        var column = $.fn.grid.columnTypes.get('qunitColumn', {
            a: false,
            b: true
        });
        strictEqual(column.b, true, 'Parameters passed');
        strictEqual(column.a, false, 'Parameters overwritten');
    });

    test('columnTypes.exist', 1, function testColumnTypesExist() {
        $.fn.grid.columnTypes.add('qunitColumn', {});
        strictEqual($.fn.grid.columnTypes.exists('qunitColumn'), true, 'Column exists');
    });

    test('column.render', 11, function testColumnRender() {
        var config = $.extend(true, {}, gridConfig);
        config.columns[0].render = function (args) {
            ok(typeof args.row !== 'undefined', 'args.row');
            strictEqual(args.rowIndex, 0, 'args.rowIndex');
            ok(typeof args.rows !== 'undefined', 'args.rows');
            ok(typeof args.columns !== 'undefined', 'args.columns');
            ok(typeof args.tr !== 'undefined', 'args.tr');
            ok(typeof args.tbody !== 'undefined', 'args.tbody');
            ok(typeof args.thead !== 'undefined', 'args.thead');
            ok(typeof args.grid !== 'undefined', 'args.grid');
            ok(typeof args.instance !== 'undefined', 'args.instance');
            strictEqual(args.columnIndex, 0, 'args.cellIndex');
            ok(typeof args.cell !== 'undefined', 'args.cell');
        };
        var el = setup(config);
        teardown(el);
    });

    test('events on init', 25, function testEventsOnInit() {
        var $document =  $(document);
        $document.on('beforeInit.qunit', function beforeInit(ev, data) {
            ok(true, 'beforeInit triggered');
            strictEqual(data.rowsPerPage[0], 2, 'beforeInit: Parameters passed');
        });
        $document.on('afterInit.qunit', function afterInit(ev, data) {
            ok(true, 'afterInit triggered');
            strictEqual(data.rowsPerPage[0], 2, 'afterInit: Parameters passed');
        });
        $document.on('beforeRegisterEvents.qunit', function beforeRegisterEvents(ev, data) {
            ok(true, 'beforeRegisterEvents triggered');
            ok($('.element').is(data.element), 'beforeRegisterEvents: No Parameters passed');
        });
        $document.on('afterRegisterEvents.qunit', function afterRegisterEvents(ev, data) {
            ok(true, 'afterRegisterEvents triggered');
            ok($('.element').is(data.element), 'afterRegisterEvents: No Parameters passed');
        });
        $document.on('beforeGetBase.qunit', function beforeGetBase(ev, data) {
            ok(true, 'beforeGetBase triggered');
            ok(typeof data.config.clear !== 'undefined', 'beforeGetBase: data.config.clear');
            ok(typeof data.config.detach !== 'undefined', 'beforeGetBase: data.config.detach');
        });
        $document.on('gridCreation.qunit', function gridCreation(ev, data) {
            ok(true, 'gridCreation triggered');
            ok(typeof data.config.clear !== 'undefined', 'gridCreation: data.config.clear');
            ok(typeof data.config.detach !== 'undefined', 'gridCreation: data.config.detach');
            ok(typeof data.grid !== 'undefined', 'gridCreation: data.grid');
        });
        $document.on('afterGetBase.qunit', function afterGetBase(ev, data) {
            ok(true, 'afterGetBase triggered');
            ok(typeof data.config.clear !== 'undefined', 'afterGetBase: data.clear');
            ok(typeof data.config.detach !== 'undefined', 'afterGetBase: data.detach');
            ok(typeof data.grid !== 'undefined', 'afterGetBase: data.detach');
        });
        $document.on('beforeResolveColumns.qunit', function beforeResolveColumns(ev, data) {
            ok(true, 'beforeResolveColumns triggered');
            ok(typeof data.columns, 'beforeResolveColumns: data.columns');
            ok(typeof data.columnTypes, 'beforeResolveColumns: data.columnTypes');
        });
        $document.on('afterResolveColumns.qunit', function afterResolveColumns(ev, data) {
            ok(true, 'afterResolveColumns triggered');
            ok(typeof data.columns !== 'undefined', 'afterResolveColumns: data.columns');
            ok(typeof data.columnTypes !== 'undefined', 'afterResolveColumns: data.columnTypes');
        });

        window.config = $.extend(true, {}, gridConfig, {
            rowsPerPage: [2]
        });

        var el = setup(window.config);
        teardown(el);
        $document.off('.qunit');
    });

    test('events on destroy', 4, function testEventsOnDestroy() {
        $(document).on('beforeDestroy.qunit', function (ev, data) {
            ok(true, 'beforeDestroy triggered');
            ok(el.is(data.element), 'No Parameters passed');
        });
        $(document).on('afterDestroy.qunit', function (ev, data) {
            ok(true, 'afterDestroy triggered');
            ok(el.is(data.element), 'No Parameters passed');
        });

        var el = setup(window.config);
        teardown(el);
        $(document).off('.qunit');
    });

    test('events on render', 105, function testEventsOnRender() {
        var $document =  $(document);
        $document.on('dataRetrieval.qunit', function dataRetrieval(ev, data) {
            ok(true, 'dataRetrieval triggered');
            testRequiredEventData('dataRetrieval', data, 'orderColumnId, orderTerm, order, offset, total');
        });
        $document.on('beforeRender.qunit', function beforeRender(ev, data) {
            ok(true, 'beforeRender triggered');
            ok($('.element').is(data.element), 'beforeRender:  No Parameters passed');
        });
        $document.on('beforeColumnHeaders.qunit', function beforeColumnHeaders(ev, data) {
            ok(true, 'beforeColumnHeaders triggered');
            testRequiredEventData('beforeColumnHeaders', data, 'columns, rows, tbody, thead, grid');
        });
        $document.on('beforeColumnHeader.qunit', function beforeColumnHeader(ev, data) {
            ok(true, 'beforeColumnHeader triggered');
            testRequiredEventData('beforeColumnHeader', data, 'columnIndex, column, tbody, thead, grid');
        });
        $document.on('afterColumnHeader.qunit', function afterColumnHeader(ev, data) {
            ok(true, 'afterColumnHeader triggered');
            testRequiredEventData('afterColumnHeader', data, 'columnIndex, column, th, tbody, thead, grid, instance');
        });
        $document.on('afterColumnHeaders.qunit', function afterColumnHeaders(ev, data) {
            ok(true, 'afterColumnHeaders triggered');
            testRequiredEventData('afterColumnHeaders', data, 'columns, rows, tbody, thead, grid');
        });
        $document.on('beforeBody.qunit', function beforeBody(ev, data) {
            ok(true, 'beforeBody triggered');
            testRequiredEventData('beforeBody', data, 'columns, rows, tbody, thead, grid');
        });
        $document.on('beforeRow.qunit', function beforeRow(ev, data) {
            ok(true, 'beforeRow triggered');
            testRequiredEventData('beforeRow', data, 'row, rowIndex, rows, columns, tr, tbody, thead, grid, instance');
        });
        $document.on('beforeCell.qunit', function beforeCell(ev, data) {
            ok(true, 'beforeCell triggered');
            testRequiredEventData('beforeCell', data, 'row, rowIndex, rows, columns, tr, tbody, thead, grid, instance, cell, columnIndex');
        });
        $document.on('afterCell.qunit', function afterCell(ev, data) {
            ok(true, 'afterCell triggered');
            testRequiredEventData('afterCell', data, 'row, rowIndex, rows, columns, tr, tbody, thead, grid, instance, cell, columnIndex');
        });
        $document.on('afterRow.qunit', function afterRow(ev, data) {
            ok(true, 'afterRow triggered');
            testRequiredEventData('afterRow', data, 'row, rowIndex, rows, columns, tr, tbody, thead, grid, instance');
        });
        $document.on('afterBody.qunit', function afterBody(ev, data) {
            ok(true, 'afterBody triggered');
            testRequiredEventData('afterBody', data, 'columns, rows, tbody, thead, grid');
        });
        $document.on('beforeRenderPagination.qunit', function beforeRenderPagination(ev, data) {
            ok(true, 'beforeRenderPagination triggered');
            testRequiredEventData('beforeRenderPagination', data.data, 'orderColumnId, orderTerm, order, offset, total');
        });
        $document.on('afterRenderPagination.qunit', function afterRenderPagination(ev, data) {
            ok(true, 'afterRenderPagination triggered');
            testRequiredEventData('afterRenderPagination', data.data, 'orderColumnId, orderTerm, order, offset, total', 'data.data');
            ok(typeof data.tfoot !== 'undefined', 'afterRenderPagination: data.tfoot');
        });
        $document.on('afterRender.qunit', function afterRender(ev, data) {
            ok(true, 'afterRender triggered');
            ok($('.element').is(data.element), 'afterRender:  No Parameters passed');
        });


        var el = setup(gridConfig);
        teardown(el);
        $document.off('.qunit');
    });

})(jQuery);