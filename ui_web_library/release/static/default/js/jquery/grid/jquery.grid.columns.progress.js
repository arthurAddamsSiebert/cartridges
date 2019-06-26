(function ($) {
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

    columnTypes.add('progress', {
        sortable: true,
        minWidth: 20,
        render: function render(params) {
            var percent = parseFloat(params.cell);
            return '<div class="progress"><span class="text">' + percent + '%</span><span class="bar" style="width: ' + params.cell + '%;">&nbsp;</span></div>';
        }
    });

}(jQuery));