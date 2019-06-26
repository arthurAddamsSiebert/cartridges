/**
 * Populate the "Attribute Value" select box with operators
 * based on selection of "Attribute Types".
 * selObj:  "Attribute Type" select box
 */

function UpdateList(selObj) {
	// Remove all existing items from ConditionConfiguration_AttributeValueOperator list
	var selObjUpdate = $('#ConditionConfiguration_AttributeValueOperator');
	if (selObjUpdate.length > 0) {
		selObjUpdate.empty();
		var selObjValue = $(selObj).val();

		$('<option value="equalto"> equal to ("==")</option>')
			.appendTo(selObjUpdate);

		$('<option value="notequalto"> not equal to ("!=")</option>')
			.appendTo(selObjUpdate);

		// add items based on the selected option of attributeType
		if ($.inArray(selObjValue, ['quantity', 'integer', 'double', 'decimal', 'date', 'long', 'money', 'text']) > -1) {
			$('<option value="greaterthan"> greater than (">")</option>')
				.appendTo(selObjUpdate);

			$('<option value="lessthan"> less than ("<")</option>')
				.appendTo(selObjUpdate);

			$('<option value="greaterthanorequalto"> greater than or equal (">=")</option>')
				.appendTo(selObjUpdate);

			$('<option value="lessthanorequalto"> less than or equal to ("<=")</option>')
				.appendTo(selObjUpdate);
		}
		displayDiv();
	}
}

function toggleDisabled(el, val) {
	val ? el.hide() : el.show();
	el.find('*').prop('disabled', val);
}

function displayDiv(a) {
	var qtyDiv = $('#qty_div');
	var moneyDiv = $('#money_div');
	var dateDiv = $('#date_div');

	if (qtyDiv.length > 0) {
		toggleDisabled(qtyDiv, true);
	}
	if (moneyDiv.length > 0) {
		toggleDisabled(moneyDiv, true);
	}
	if (dateDiv.length > 0) {
		toggleDisabled(dateDiv, true);
	}

	var atrTypeObj = $('#ConditionConfiguration_AttributeType');
	var atrValueObj = $('#ConditionConfiguration_AttributeValueOperator');
	if (atrTypeObj.length > 0 && atrValueObj.length > 0) {
		var atrTypeObjValue = atrTypeObj.val();

		if (atrTypeObjValue === 'quantity') {
			toggleDisabled(qtyDiv, false);
		}
		if (atrTypeObjValue === 'money') {
			toggleDisabled(moneyDiv, false);
		}

		var defaultInput = $('#default_input');
		if (atrTypeObjValue === 'date') {
			toggleDisabled(dateDiv, false);
			toggleDisabled(defaultInput, true);
			$( ".date_class_replace" ).removeClass( "label_date_outside" ).addClass( "label_date_outside" );
		} else {
			toggleDisabled(defaultInput, false);
			$( ".date_class_replace" ).removeClass( "label_date_outside" );
		}
	}
}
