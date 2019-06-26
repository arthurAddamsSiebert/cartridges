/*global module: true, test: true, ok: true, equal: true, expect: true */
(function($) {
	'use strict';

	var setup = function(single) {
		if (typeof single === 'undefined') {
			single = false;
		}
		return $('<div class="element" />').appendTo($('body')).grid({
				getData: window.getData,
				rowsPerPage: [25, 10, 50, 100, 250],
				columns: [
					{
						id: 'select',
						type: 'select',
						dataKey: 'sku',
						single: single
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

	module('selection');

	test('1 row', 4, function() {
		var el = setup(),
			trs = el.find('>table>tbody>tr'),
			tr = trs.first();

		equal(tr.is('.selected'), false, 'first row isn\'t selected');
		tr.children('td:eq(0)').click();
		ok(tr.is('.selected'), 'first row is selected');
		
		var data = el.grid('getSelectedRows');
		equal(data.length, 1, 'one dataset is returned');
		equal(data[0].displayName, tr.children('td:eq(1)').text(), 'value is correct');

		teardown(el);
	});

	test('all rows', 6, function() {
		var el = setup(),
			trs = el.find('>table>tbody>tr'),
			selectAll = el.find('>table>thead>tr>th>:checkbox');

		// nothing is selected
		equal(trs.filter('.selected').length, 0, 'no rows selected');
		equal(el.grid('getSelectedRows').length, 0, 'no dataset is returned');
		// selected all
		selectAll.click();
		equal(trs.length, trs.filter('.selected').length, 'all rows selected');
		equal(el.grid('getSelectedRows').length, trs.length, 'all datasets returned');
		// deselect all
		selectAll.click();
		equal(trs.filter('.selected').length, 0, 'no rows selected');
		equal(el.grid('getSelectedRows').length, 0, 'no dataset is returned');

		teardown(el);
	});

	test('single selection', function() {
		var el = setup(true),
			trs = el.find('>table>tbody>tr'),
			tr, selected;

		expect(trs.length * 2);

		for (var i = 0, l = trs.length; i < l; i++) {
			tr = $(trs.get(i));
			// clicking the second column of the current tr should also select row
			tr.children('td:eq(1)').click();

			selected = trs.filter('.selected');
			equal(selected.length, 1, 'only 1 row selected');
			equal(selected.get(0), tr.get(0), 'correct row is selected');
		}

		teardown(el);
	});

})(jQuery);