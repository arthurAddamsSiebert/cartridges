/*global module: true, test: true, ok: true */
(function($) {
	'use strict';

	var el = $('<div class="element" />').appendTo($('body'));

	module('core', {
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
				}, {
					id: 'price',
					type: 'money',
					dataKey: 'price',
					title: 'Price'
				}]
			});
		},
		teardown: function() {
			el.grid('destroy');
		}
	});

	test('init', 2, function() {
		ok(el.has('table.grid'), 'was appended to the element');
		ok(el.find('table.grid > tbody > tr').size() > 0, 'has rows');
	});

})(jQuery);
