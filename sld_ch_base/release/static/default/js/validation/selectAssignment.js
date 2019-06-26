$(document).ready(function(){
	
	// close dialog
	$('#ProductValidationDialog').bind('dialogclose', function(event, ui) {
		// clear assigned selects
		$('.assignedSelect').children().remove();
				
		// clear available locales
		var availableLocales = $('#AvailableLocales:enabled');
		availableLocales.children().remove();
				
		// fill available locales with all locales
		var allLocalesStr = $('#AllLocales:enabled').val();
		if (allLocalesStr) {
			var allLocales = allLocalesStr.split(';');
			for (var i = 0; i < allLocales.length; i++) {
				var localeIdAndName = allLocales[i].split(':');
				availableLocales.append('<option value=' + localeIdAndName[0] + '>' + localeIdAndName[1] + '</option>');
			}
		}
		
		// clear available currencies
		var availableCurrencies = $('#AvailableCurrencies:enabled');
		availableCurrencies.children().remove();
				
		// fill available currencies with all currencies
		var allCurrenciesStr = $('#AllCurrencies:enabled').val();
		if (allCurrenciesStr) {
			var allCurrencies = allCurrenciesStr.split(';');
			for (var i = 0; i < allCurrencies.length; i++) {
			    var currencyIdAndName = allCurrencies[i].split(':');
				availableCurrencies.append('<option value=' + currencyIdAndName[0] + '>' + currencyIdAndName[1] + '</option>');
			}
		}
	});
	
	// binds click callback function for shuttle management buttons
	$('.shuttleButton').bind('click', function(){
		var btnId= $(this).attr('id');
		
		var availableSelect = $('.availableSelect:enabled');
		var assignedSelect = $('.assignedSelect:enabled');
		
		transfer(btnId, availableSelect, assignedSelect);
		
		if ($(this).is('.localeShuttleButton')) {
			setupRuleLocales()
		} else if ($(this).is('.currencyShuttleButton')) {
			setupRuleCurrencies()
		}	
	});
	
	function transferSelectionInSelect(sourceSelect, targetSelect, transferAll) {
		var sourceRemainedOptions = [];
		
		$(sourceSelect).children().each(function(){
			var option = $(this);
			var isOptionForTransfer = transferAll || option.attr('selected');
			if (isOptionForTransfer) {
				transferSelectOption(option, targetSelect);
			} else {
				sourceRemainedOptions.push(option);
			}
		});
		
		emptySelect(sourceSelect);
		fillSelect(sourceSelect, sourceRemainedOptions);
	}

	function transfer(btnId, availableSelect, assignedSelect) {
		if (startsWith(btnId, 'assignAll')) {
			transferSelectionInSelect(availableSelect, assignedSelect, true);
		} else if (startsWith(btnId, 'unassignAll')) {
			transferSelectionInSelect(assignedSelect, availableSelect, true);
		} else if (startsWith(btnId, 'assign')) {
			transferSelectionInSelect(availableSelect, assignedSelect, false);
		} else if (startsWith(btnId, 'unassign')) {
			transferSelectionInSelect(assignedSelect, availableSelect, false);
		}
	}

	function transferSelectOption(option, targetSelect) {
		targetSelect.append('<option value=' + option.val() + '>' + option.text() + '</option>');
	}

	function emptySelect(select) {
		select.empty();
	}

	function fillSelect(select, options) {
		for (var i = 0; i < options.length; i++) {
			select.append('<option value=' + options[i].val() + '>' + options[i].text() + '</option>');;
		}
	}

	// checks if the baseStr starts with the targetStr
	function startsWith(baseStr, targetStr) {
		return baseStr.indexOf(targetStr) == 0;
	}
});

function setupRuleLocales() {
	var assignedLocalesParam = '';
	var assinedLocalesOptions = $("#AssignedLocales:enabled").children('option').each(function(){
		assignedLocalesParam += $(this).val() + ',';
	});
	assignedLocalesParam = assignedLocalesParam.substring(0, assignedLocalesParam.lastIndexOf(','));
	$('#RuleLocales:enabled').val(assignedLocalesParam);
}

function setupRuleCurrencies() {
	var assignedCurrenciesParam = '';
	var assinedCurrenciesOptions = $("#AssignedCurrencies:enabled").children('option').each(function(){
		assignedCurrenciesParam += $(this).val() + ',';
	});
	assignedCurrenciesParam = assignedCurrenciesParam.substring(0, assignedCurrenciesParam.lastIndexOf(','));
	$('#RuleCurrencies:enabled').val(assignedCurrenciesParam);
}