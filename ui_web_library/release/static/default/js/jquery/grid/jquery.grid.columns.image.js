(function ($) {
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

	columnTypes.add('image', {
		sortable: true,
		render: function render(params) {
			return '<img src="' + params.cell + '" />';
		}
	});

}(jQuery));