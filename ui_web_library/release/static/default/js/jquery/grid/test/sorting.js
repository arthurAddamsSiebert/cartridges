/*global module: true, test: true, ok: true, total: true*/
(function($) {
    'use strict';

    var setup = function() {
            return $('<div class="element" />').appendTo($('body')).grid({
                getData: window.getData,
                rowsPerPage: [25, 10, 50, 100, 250],
                columns: [
                    {
                        id: 'sku',
                        type: 'text',
                        dataKey: 'sku',
                        title: 'SKU',
                        render: function(args) {
                            return '<strong>' + args.cell + '</strong>';
                        }
                    },
                    {
                        id: 'displayName',
                        type: 'text',
                        dataKey: 'displayName',
                        title: 'Name'
                    }
                ]
            });
        },
        teardown = function(el) {
            el.grid('destroy');
        };

    module('sorting');

    var getFirstColumn = function(el) {
        return el.find('> table > thead th:first');
    };

    test('ascending', 2, function() {
        var el = setup(),
            th = getFirstColumn(el);

        ok(th.is('.sortable'), 'first column is sortable');

        th.children('a').click();
        th = getFirstColumn(el);

        ok(th.is('.desc'), 'descending order');

        teardown(el);
    });

    test('descending', 2, function() {
        var el = setup(),
            th = getFirstColumn(el);

        ok(th.is('.sortable'), 'first column is sortable');

        th.children('a').click();
        th = getFirstColumn(el);
        th.children('a').click();
        th = getFirstColumn(el);
        ok(th.is('.asc'), 'ascending order');

        teardown(el);
    });

    var predefinedSortingSetup = function() {
        return $('<div class="element" />').appendTo($('body')).grid({
            getData: function(request) {
                request.callback({
                    orderColumnId: 'sku',
                    order: 'asc',
                    offset: request.offset,
                    total: total,
                    items: createDemoData(total).slice(request.offset, request.offset + request.pageSize)
                });
            },
            rowsPerPage: [25, 10, 50, 100, 250],
            columns: [
                {
                    id: 'sku',
                    type: 'text',
                    dataKey: 'sku',
                    title: 'SKU',
                    sortable: false,
                    render: function(cell) {
                        return '<strong>' + cell + '</strong>';
                    }
                },
                {
                    id: 'displayName',
                    type: 'text',
                    dataKey: 'displayName',
                    title: 'Name',
                    sortable: false
                },
                {
                    id: 'anotherSkuColumn',
                    type: 'text',
                    dataKey: 'sku',
                    title: 'Another Sku Column',
                    cssClass: 'anotherSku',
                    sortable: false
                }
            ]
        });
    };

    test('predefined', 4, function() {
        var el = predefinedSortingSetup(),
            th = getFirstColumn(el),
            anotherSkuTh = el.find('> table > thead th.anotherSku');

        ok(!th.is('.sortable'), 'first column is not sortable');
        ok(th.is('.sorted'), 'first column is sorted');
        ok(th.is('.asc'), 'ascending order');

        ok(!anotherSkuTh.is('.sorted'), 'column with same dataKey not sorted');

        teardown(el);
    });

})(jQuery);