(function ($) {
    'use strict';

    var columnTypes = $.fn.grid.columnTypes;

    columnTypes.add('text', {
        sortable: true,
        render: function render(params) {
            return params.cell;
        }
    });

}(jQuery));
