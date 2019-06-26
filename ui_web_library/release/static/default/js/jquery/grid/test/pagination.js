/*global module: true, test: true, ok: true, equal: true */
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
						custom: {
							sortable: false,
							render: function(args) {
								return '<strong>' + args.cell + '</strong>';
							}
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

	module('pagination');

	test('rows per page', 14, function() {
		var el = setup(),
			select = el.find('select[name="itemsperpage"]');

		ok(select.size() === 1, 'has items-per-page selectbox');
		equal(select.val(), '25', 'preselected rows per page value is 25');

		equal(select.children('option:eq(0)').val(), '10', 'first item is 10');
		equal(select.children('option:eq(0)').text(), '10', 'first item displays 10');
		equal(select.children('option:eq(1)').val(), '25', 'second item is 25');
		equal(select.children('option:eq(1)').text(), '25', 'second item displays 25');
		equal(select.children('option:eq(2)').val(), '50', 'third item is 50');
		equal(select.children('option:eq(2)').text(), '50', 'third item displays 50');
		equal(select.children('option:eq(3)').val(), '100', 'fourth item is 100');
		equal(select.children('option:eq(3)').text(), '100', 'fourth item displays 100');
		equal(select.children('option:eq(4)').val(), '250', 'fifth item is 250');
		equal(select.children('option:eq(4)').text(), '250', 'fifth item displays 250');

		select.val('10').change();
		
		// select has to be retrieved again, after reload it points to an no longer displayed instance
		select = el.find('select[name="itemsperpage"]');
		
		equal(select.val(), '10', 'select displays new rows per page value 10');
		equal(el.find('> table > tbody > tr').length, 10, 'has 10 rows');

		teardown(el);
	});

	test('pages', 3, function() {
		var el = setup(),
			pagination = el.find('> table > tfoot td.pagination'),
			status = el.find('> table > tfoot td.range');

		ok(status.text().indexOf('1 - 25') === 0, 'showing rows 1 - 25');

		equal(pagination.children('.page:last').text(), '40', 'last page is 40');

		pagination.children('.page:first').click();

		status = el.find('> table > tfoot td.range');
		ok(status.text().indexOf('26 - 50') === 0, 'showing rows 26 - 50');

		teardown(el);
	});

})(jQuery);
