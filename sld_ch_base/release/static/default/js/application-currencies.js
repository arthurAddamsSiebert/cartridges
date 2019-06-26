function initCurrenciesDialog(locCurrencies, qualifiedName) {
	var $select = $('#CurrenciesMgmtAssignment');
	
	$('#CurrenciesMgmtDialog-cancel').click(function () {
		$('#CurrenciesMgmtAssignment').assignment('reset');
	});

	$select
		.on('shownotification', function() {
			$('#CurrenciesMgmtDialog-ok').prop('disabled', true);
		})
		.on('hidenotification', function() {
			$('#CurrenciesMgmtDialog-ok').prop('disabled', false);
		});

	$('#CurrenciesMgmtDialog-ok').click(function (event) {
		var radio = $select.assignment('selectedDefaultValue'),
			$options, $tbody, $clone, $cloneOptions;

		if (radio === '') return;
		
		$options = $select
			.children(':selected')
			.toArray()
			.sort(function(a, b){
				var textA = $(a).text(),
					textB = $(b).text();
				
				if (textA == textB) return 0;
				return (textA < textB) ? -1 : 1;
			});

		$tbody = $('#currencylist').children('tbody');
		
		// remove old cloned selectbox and old rows
		$tbody.empty();
		
		// clone selectbox, add it to table
		$clone = $select.clone().removeAttr('id').hide();
		$cloneOptions = $clone.children().removeAttr('selected');
		// clone selections
		$select.children().each(function(i) {
	        $cloneOptions.eq(i).prop('selected', $(this).prop('selected'));
	    });
		$tbody.append($clone);

		$tbody.append('<tr><td width="80" class="table_header e s"><div class="center">Default</div></td><td class="table_header s">' + locCurrencies + '</td></tr>');

		$($options).each(function(index, element) {
			var checked = 'inactive',
				isDefault = '',
				$option = $(element);

			// option is marked as default
			if ($option.val() === radio) {
				checked = 'active';
				isDefault = '<input type="hidden" value="' + $.trim($option.val()) + '" name="' + qualifiedName + '">';
			}

			$tbody.append('<tr>' +
				'<td class="e s center">' +
				'<div class="' + checked + '"></div>' +
//				'<input type="hidden" value="' + $.trim($option.val()) + '" name="' + qualifiedName + '">' +
				isDefault +
				'</td>' +
				'<td class="table_detail s top">' + $option.text() + '</td>' +
			'</tr>');
		});

		$('#CurrenciesMgmtDialog').dialog('close');
	});
}
