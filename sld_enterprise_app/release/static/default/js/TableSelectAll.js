/**
 * Selects or deselects all elements of a specific form with a specific name (or part of the name),
 * as well as enables and disables a layer with specified IDs.
 * @param {String} formName              name of the form
 * @param {String} partOfFormElementName part of the name of the form elements
 * @param {String} selectId              layer that contains the 'Select All' link
 * @param {String} clearId               layer that contains the 'Clear All' link
 */
function selectAll(formName, partOfFormElementName, selectId, clearId) {

    // can't use only jQuery here, some ids contain : and .
    var $elements = $('form[name="' + formName + '"]').find(':checkbox, :radio'),
    	$select = $(document.getElementById(selectId)),
    	$clear = $(document.getElementById(clearId)),
    	selected = $select.is(':visible');

    $elements.each(function () {
        var $el = $(this),
        	name = $el.attr('name');

        if (!name) return;
        if (name.indexOf(partOfFormElementName) === -1) return;
        if ($el.prop('disabled')) return;

        $el.prop('checked', selected);
    });

    var $floatingSelect = $('#floating_header_copy_of_' + selectId),
    	$floatingClear = $('#floating_header_copy_of_' + clearId);

    if (selected) {
        $select.hide();
        $clear.show();

        if ($floatingSelect.length > 0) $floatingSelect.hide();
        if ($floatingClear.length > 0) $floatingClear.show();
    }
    else {
        $select.show();
        $clear.hide();

        if ($floatingSelect.length > 0) $floatingSelect.show();
        if ($floatingClear.length > 0) $floatingClear.hide();
    }
}

