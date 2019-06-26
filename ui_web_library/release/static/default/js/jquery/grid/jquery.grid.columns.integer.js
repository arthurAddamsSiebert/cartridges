(function ($) {
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

	columnTypes.add('integer', {
		sortable: true,
		render: function render(params) {
			return parseInt(params.cell, 10);
		}
	});

}(jQuery));