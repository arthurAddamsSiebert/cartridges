/*global alert: true */
'use strict';

var demoData = [], single;

(function () {
    // generate demo data
    function getURLParameter(name, fallback) {
        return decodeURIComponent(
            (location.search.match(new RegExp('[?|&]' + name + '=(.+?)(&|$)')) || [undefined, fallback])[1]
        );
    }
    var max = parseInt(getURLParameter('rows', 3010), 10);
    single = getURLParameter('single', false) === 'true';

    for (var i = 0; i < max; i++) {
        demoData.push({
            sku: Math.floor(Math.random() * Math.pow(2, 40)),
            progress: parseInt(Math.random() * 100, 10),
            displayName: 'Product ' + i,
            price: Math.floor(Math.random() * 1000),
            online: Math.random() < 0.5,
            disabled: Math.random() < 0.2
        });
    }
})();

$(function () {

    // toolbar buttons
    $('#toolbar').children('input[name="more"]').popupmenu({
        items: [
            {
                cssClass: 'online',
                render: function render() {
                    var rows = $('#element').grid('getSelectedRows');
                    return 'Set Online (' + rows.length + ' items)';
                },
                click: function click() {
                    alert('Online ');
                }
            },
            {
                type: 'separator'
            },
            {
                cssClass: 'export',
                render: function render() {
                    var rows = $('#element').grid('getSelectedRows');
                    return 'Export (' + rows.length + ' items)';
                },
                click: function click() {
                    alert('Export ');
                }
            }
        ]
    });

    $('#toolbar').children('input[name="delete"]').on('click', function click(event) {
        event.preventDefault();
        var rows = $('#element').grid('getSelectedRows');
        alert('Delete ' + rows.length + ' items');
    });

    // store selection before page change
    var selectedRowIndex;
    $('#element').on('afterRowSelectionChange', function afterRowSelectionChange(event, data) {
        for (var i = 0, l = demoData.length; i < l; i++) {
            if (demoData[i].sku === data.rowData.sku) {
                if (single === true) {
                    if (selectedRowIndex) {
                        demoData[selectedRowIndex].selected = false;
                    }
                    selectedRowIndex = i;
                }
                demoData[i].selected = data.checkbox.is(':checked');
                break;
            }
        }
    });

    // grid initialization
    $('#element').grid({
        getData: function getData(request) {
            // simulate sorting of demo data
            if (request.orderTerm) {
                var sortDesc = function sortDesc(a, b) {
                    if (b[request.orderTerm] < a[request.orderTerm]) return -1;
                    if (b[request.orderTerm] > a[request.orderTerm]) return 1;
                    return 0;
                };
                var sortAsc = function sortAsc(a, b) {
                    if (a[request.orderTerm] < b[request.orderTerm]) return -1;
                    if (a[request.orderTerm] > b[request.orderTerm]) return 1;
                    return 0;
                };
                demoData.sort(request.order === 'desc' ? sortDesc : sortAsc);
            }

            // slice from demo data
            request.callback({
                orderColumnId: request.orderColumnId,
                orderTerm: request.orderTerm,
                order: request.order,
                offset: request.offset,
                total: demoData.length,
                items: request.pageSize > -1 ? demoData.slice(request.offset, request.offset + request.pageSize) : demoData
            });
        },
        text: {
            status: '<strong>{from}</strong> - <strong>{to}</strong> von <strong>{total}</strong>'
        },
        rowsPerPage: [25, 10, 50, 100, 250],
        columns: [
            {
                id: 'select',
                type: 'select',
                dataKey: 'sku',
                selectedItemsName: 'selectedProducts',
                availableItemsName: 'availableProducts',
                single: single,
                selectAllFn: function selectAllFn(params) {
                    // for demonstration purposes only; a request should be sent to server
                    params.grid.options.getData({
                        offset: 0,
                        pageSize: params.grid.pagination.total,
                        callback: function (data) {
                            var i, l, items = data.items;
                            for (i = 0, l = data.total; i < l; i++) {
                                items[i].selected = params.selected;
                            }
                            params.callback();
                        }
                    });
                }
            },
            {
                id: 'sku',
                type: 'text',
                dataKey: 'sku',
                title: 'SKU',
                minWidth: 100,
                render: function render(params) {
                    return '<strong>' + params.cell + '</strong>';
                }
            },
            {
                id: 'progress',
                type: 'progress',
                dataKey: 'progress',
                title: 'Progress'
            },
            {
                id: 'displayName',
                type: 'link',
                dataKey: 'displayName',
                title: 'Name',
                url: '#{sku}/detail',
                params: ['sku']
            },
            {
                id: 'price',
                type: 'money',
                dataKey: 'price',
                title: 'Price',
                cssClass: 'right'
            },
            {
                id: 'online',
                type: 'status',
                dataKey: 'online',
                title: 'Online/Offline',
                render: function render(params) {
                    var src = !!params.cell ? 'online.gif' : 'offline.gif';
                    return '<img src="' + src + '" />';
                }
            },
            {
                id: 'action',
                type: 'action',
                dataKey: 'sku',
                menuThreshold: 2,
                items: [
                    {
                        cssClass: 'online',
                        render: 'Online',
                        click: function click(args) {
                            alert('Online ' + args.data.cell);
                        }
                    },
                    {
                        cssClass: 'edit',
                        render: 'Edit',
                        click: function click(args) {
                            alert('Edit ' + args.data.cell);
                        }
                    },
                    {
                        cssClass: 'delete',
                        render: function click() {
                            return 'Delete';
                        },
                        click: function click(args) {
                            alert('Delete ' + args.data.cell);
                        }
                    },
                    {
                        type: 'separator'
                    },
                    {
                        cssClass: 'export',
                        render: 'Export',
                        click: function click(args) {
                            alert('Export ' + args.data.cell);
                        }
                    }
                ]
            }
        ],
        rowCss: function rowCss(params) {
            return ((params.rowIndex + 1) % 5 === 0) ? 'fiver' : '';
        }
    });
});