/*jshint forin:true, noarg:true, noempty:true, eqeqeq:true, bitwise:true, strict:true, undef:true, curly:true, browser:true, jquery:true, indent:4, maxerr:50 */
(function ($) {
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

	columnTypes.add('float', {
		sortable: true,
		render: function render(params) {
			return parseFloat(params.cell);
		}
	});

}(jQuery));