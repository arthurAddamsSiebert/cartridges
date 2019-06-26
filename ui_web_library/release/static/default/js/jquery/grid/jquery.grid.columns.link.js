(function ($) {
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

	columnTypes.add('link', {
		sortable: true,
        // url-template, use {0}, {1}, ... as placeholders
        url: '#',
        // attributes to fill into the placeholders
        params: [],
		render: function render(params) {
            // replace placeholders in url
            var url = params.instance.format.apply(params.instance, [ this.url ].concat(params.row));
			return '<a href="' + url + '">' + params.cell + '</a>';
		}
	});

}(jQuery));