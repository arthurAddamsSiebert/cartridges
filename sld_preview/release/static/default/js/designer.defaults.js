/*
 * SELECT
 */

function setSelectSystemDefault(el) {
	$("select", el).each(function() {
		var id = this.id;

		$('.system-default-value', this).each(function() {
			var value = $(this).val();
			$("#" + id + " option[value='" + value + "']").prop('selected', true);
		}).change();
	});
}

function isSelectSystemDefault(el) {
	var systemDefaultSelected = true;

	$("select", el).each(function() {
		var id = this.id;

		$('.system-default-value', this).each(function() {
			var value = $(this).val();

			if (!$("#" + id + " option[value='" + value + "']").prop('selected')) {
				systemDefaultSelected = false;
			}
		});
	});

	return systemDefaultSelected;
}

function setSelectFormDefault(el) {
	$('select', el).each(function() {
		$('option', this).each(function() {
			if (!this.defaultSelected && this.selected) {
				$(this).prop('selected', false);
			} else if (this.defaultSelected && !this.selected) {
				$(this).prop('selected', true);
			}
		});
	}).change();
}

function isSelectFormDefault(el) {
	var formDefaultSelected = true;

	$('select', el).each(function() {
		$('option', this).each(function() {
			if (!this.defaultSelected && this.selected) {
				formDefaultSelected = false;
			} else if (this.defaultSelected && !this.selected) {
				formDefaultSelected = false;
			}
		});
	});

	return formDefaultSelected;
}

/*
 * CHECKBOX
 */

function setCheckboxSystemDefault(el) {
	$("input[type=checkbox]", el).each(function() {
		if (($(this).data("system-default-value") != null) && (($(this).data("system-default-value") && !this.checked) || (!$(this).data("system-default-value") && this.checked))) {
			this.click();
		}
	});
}

function isCheckboxSystemDefault(el) {
	var checkboxSystemDefault = true;

	$("input[type=checkbox]", el).each(function() {
		if (($(this).data("system-default-value") != null) && (($(this).data("system-default-value") && !this.checked) || (!$(this).data("system-default-value") && this.checked))) {
			checkboxSystemDefault = false;
		}
	});

	return checkboxSystemDefault;
}

function setCheckboxFormDefault(el) {
	$('input[type=checkbox]', el).each(function() {
		if (this.defaultChecked != this.checked)
			this.click();
	});
}

function isCheckboxFormDefault(el) {
	var checkboxFormDefault = true;

	$('input[type=checkbox]', el).each(function() {
		if (this.defaultChecked != this.checked)
			checkboxFormDefault = false;
	});

	return checkboxFormDefault;
}

/*
 * RADIOBUTTON
 */

function setRadiobuttonSystemDefault(el) {
	$("input[type=radio]", el).each(function() {
		if (($(this).data("system-default-value") != null) && (($(this).data("system-default-value") && !this.checked) || (!$(this).data("system-default-value") && this.checked))) {
			this.click();
		}
	});
}

function isRadiobuttonSystemDefault(el) {
	var radiobuttonSystemDefault = true;

	$("input[type=radio]", el).each(function() {
		if (($(this).data("system-default-value") != null) && (($(this).data("system-default-value") && !this.checked) || (!$(this).data("system-default-value") && this.checked))) {
			radiobuttonSystemDefault = false;
		}
	});

	return radiobuttonSystemDefault;
}

function setRadiobuttonFormDefault(el) {
	$('input[type=radio]', el).each(function() {
		if (!this.checked && this.defaultChecked)
			this.click();
	});
}

function isRadiobuttonFormDefault(el) {
	var radiobuttonFormDefault = true;

	$('input[type=radio]', el).each(function() {
		if (!this.checked && this.defaultChecked)
			radiobuttonFormDefault = false;
	});

	return radiobuttonFormDefault;
}