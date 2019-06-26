(function ($) {
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

	columnTypes.add('status', {
		render: function render(params) {
			var src = !!params.cell ? 'true.png' : 'false.png';
			return '<img src="' + src + '" />';
		}
	});

}(jQuery));