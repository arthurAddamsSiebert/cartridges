(function ($) {
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

    columnTypes.add('percentage', {
        sortable: true,
        render: function render(params) {
            return parseFloat(params.cell) + '%';
        }
    });

}(jQuery));