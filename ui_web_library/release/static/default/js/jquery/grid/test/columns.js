/*global module: true, test: true, ok: true, equal: true */
(function($) {
    'use strict';

    var columns = $.fn.grid.columnTypes;

    module('columns-manager');

    test('add, get', 5, function() {
        var render = function() {
        };

        columns.add('test1', {
            sortable: true,
            title: 'Test',
            minWidth: 200,
            render: render,
            cssClass: 'test'
        });

        var column = columns.get('test1', { id: 'test1' });
        equal(column.sortable, true, 'is sortable');
        equal(column.title, 'Test', 'has title');
        equal(column.minWidth, 200, 'has minWidth');
        equal(column.render, render, 'has render-function');
        equal(column.cssClass, 'test', 'has css class');
    });

    test('get custom', 6, function() {
        var render1 = function() {
        };

        columns.add('test2', {
            sortable: true,
            title: 'Test',
            minWidth: 200,
            render: render1,
            cssClass: 'test'
        });

        var render2 = function() {
        };

        var column = columns.get('test2', {
            id: 'test2',
            sortable: false,
            title: 'TestCustom',
            minWidth: 300,
            render: render2,
            cssClass: 'custom'
        });
        equal(column.sortable, false, 'is not sortable');
        equal(column.title, 'TestCustom', 'has title');
        equal(column.minWidth, 300, 'has minWidth');
        ok(column.render !== render1, 'hasn\'t old render-function');
        equal(column.render, render2, 'has new render-function');
        equal(column.cssClass, 'custom', 'has css class');
    });

    test('exists', 1, function() {
        columns.add('test3', {
            sortable: true
        });

        ok(columns.exists('test3'), 'column exists');
    });

    var el = $('<div class="element" />').appendTo($('body'));

    module('column', {
        setup: function() {
            el.grid({
                getData: window.getData,
                rowsPerPage: [25, 50, 100, 250],
                columns: [{
                    id: 'sku',
                    type: 'text',
                    dataKey: 'sku',
                    title: 'SKU',
                    sortable: false,
                    render: function(args) {
                        return '<strong>' + args.cell + '</strong>';
                    }
                }, {
                    id: 'displayName',
                    type: 'text',
                    dataKey: 'displayName',
                    title: 'Name'
                }]
            });
        },
        teardown: function() {
            el.grid('destroy');
        }
    });

    test('render', 5, function() {
        var th1 = el.find('th:nth-child(1)');
        equal(th1.text(), 'SKU', 'column1-title correct');
        ok(th1.hasClass('sortable') === false, 'column1 isn\'t sortable');
        equal(el.find('tbody>tr:eq(0)>td:eq(0)').children('strong').size(), 1, 'column1 has custom render-function');

        var th2 = el.find('th:nth-child(2)');
        equal(th2.text(), 'Name', 'column2-title correct');
        ok(th2.hasClass('sortable'), 'column2 is sortable');
    });

})(jQuery);
