/**
 * @fileOverview JavaScript for parameter functionalities (especially select boxes)
 */

/**
 * Used to trigger 'multiValueChange' event, which will be handled by the script handler 'default'
 * to set the overloading flag.
 */
function notifyConfigurationParameterChange(selectID) {
	if (typeof jQuery != 'undefined') {		
		$('#' + selectID).trigger('cpo-multi-value-change');
	}
}

/**
 * Remove the selected options of the select list.
 * 
 * @param {String} selectID The select elements id.
 */
function removeOptions(selectID) {
	var selectList = document.getElementById(selectID);
	for (i = selectList.options.length-1; i >= 0 ; i--) {
		if (selectList.options[i].selected) {  
			selectList.remove(i);   
		}
	}
	
	notifyConfigurationParameterChange(selectID);
}
/**
 * Move the selected options up one location in the select list.
 * @see http://blog.pothoven.net/2006/10/move-options-up-and-down-select-lists.html
 * 
 * @param {String} selectID The select elements id.
 */
function moveOptionsUp(selectID) {
	var selectList = document.getElementById(selectID);
	var selectOptions = selectList.getElementsByTagName('option');
	for (var i = 1; i < selectOptions.length; i++) {
		var opt = selectOptions[i];
		if (opt.selected) {
			selectList.removeChild(opt);
			selectList.insertBefore(opt, selectOptions[i - 1]);
		}
	}
	
	notifyConfigurationParameterChange(selectID);
}
/**
 * Move the selected options down one location in the select list.
 * @see http://blog.pothoven.net/2006/10/move-options-up-and-down-select-lists.html
 * 
 * @param {String} selectID The select elements id.
 */
function moveOptionsDown(selectID) {
	var selectList = document.getElementById(selectID);
	var selectOptions = selectList.getElementsByTagName('option');
	for (var i = selectOptions.length - 2; i >= 0; i--) {
		var opt = selectOptions[i];
		if (opt.selected) {
		var nextOpt = selectOptions[i + 1];
		opt = selectList.removeChild(opt);
		nextOpt = selectList.replaceChild(opt, nextOpt);
		selectList.insertBefore(nextOpt, opt);
		}
	}
	
	notifyConfigurationParameterChange(selectID);
}
/**
 * Changes select options order.
 * 
 * @param {String} selectID The select elements id.
 * @param {String} direction The moving direction ("up" or "down").
 */
function changeOptionsOrder(selectID, direction) {
	if (direction == "up") {
		moveOptionsUp(selectID);
	} else if (direction == "down") {
		moveOptionsDown(selectID);		
	}
	
	notifyConfigurationParameterChange(selectID);
}
/**
 * Move selected options from one select list to another.
 * @see http://blog.pothoven.net/2006/10/move-options-across-select-lists.html
 * 
 * @param {String} fromSelectID The select elements id where the options are moved from.
 * @param {String} toSelectID The select elements id where the options are moved to.
 */
function moveOptionsAcross(fromSelectID, toSelectID) {
	var fromSelect = document.getElementById(fromSelectID);
	var toSelect = document.getElementById(toSelectID);
	var selectOptions = fromSelect.getElementsByTagName('option');
	for (var i = 0; i < selectOptions.length; i++) {
		var opt = selectOptions[i];
		if (opt.selected) {
			fromSelect.removeChild(opt);
			toSelect.appendChild(opt);
			i--;
		}
	}
	
	notifyConfigurationParameterChange(toSelectID);
}
/**
 * Select all options of marked (class="submitAllValues") select elements for form submission.
 */
function selectOptionsForSubmit() {
	var selects = document.getElementsByTagName("select");	  
	if (!selects.length) return;
	for (i=0; i<selects.length; i++)
	{
		if (selects[i].length && selects[i].className.match(/submitAllValues/))
		{
			for (j=0;j<selects[i].length;j++)
			{
				selects[i].options[j].selected = true;
			}
		}
	}
}
/**
 * Sort a select elements options by its texts.
 * @see http://stackoverflow.com/questions/278089/javascript-to-sort-contents-of-select-element
 * 
 * @param {String} selectID The select elements id.
 */
function sortSelect(selectID) {
	var select = document.getElementById(selectID);
    var tmpAry = new Array();
    for (var i=0;i<select.options.length;i++) {
            tmpAry[i] = new Array();
            tmpAry[i][0] = select.options[i].text;
            tmpAry[i][1] = select.options[i].value;
    }
    tmpAry.sort();
    while (select.options.length > 0) {
    	select.options[0] = null;
    }
    for (var i=0;i<tmpAry.length;i++) {
            var op = new Option(tmpAry[i][0], tmpAry[i][1]);
            select.options[i] = op;
    }
    
    notifyConfigurationParameterChange(selectID);
    return;
}

/**
 * For applying a check state of one single check box instance to a 
 * hidden input parameter. It can be used to workaround the problem 
 * that an unchecked check box is not transmitted on form submit.
 * 
 * @param source A input instance of type check box 
 */
function syncHiddenValueWithCheckbox(source) {
	source.form["ConfigurationParameter_Hidden_"+source.name].value = source.checked;
}
