'use strict';
/**
 * Adds the passed amount of months to the date and writes the new date and time into the to fields
 *
 * @requires moment.js
 *
 * @param months the number of months to add to the from date
 * @param pattern the pattern to use for outputting the new date
 * @param formName the name of the form to search the input fields in
 * @param fromDateName name of the form element containing the from day
 * @param fromTimeName name of the form element containing the from time
 * @param toDateName name of the form element containing the to day
 * @param toTimeName name of the form element containing the to time
 */
function updateDate(months, pattern, formName, fromDateName, fromTimeName, toDateName, toTimeName) {
	if (!months) return;

	var form = document.forms[formName],
		fromDateValue = form.elements[fromDateName].value,
		fromTimeValue = form.elements[fromTimeName].value,
		toDateField = form.elements[toDateName],
		toTimeField = form.elements[toTimeName],
		newMonth, toDate, toDateValue;

	months = parseInt(months, 10);

	if (!fromDateValue) return;

	var newDateTo = moment(fromDateValue, pattern.toUpperCase()).add(months,'months');
    
	if (newDateTo.isValid()) {
	    toDateField.value = newDateTo.format(pattern.toUpperCase());
	    toTimeField.value = fromTimeValue;
	} else {
	    toDateField.value = '';
	    toTimeField.value = '';
	}
}