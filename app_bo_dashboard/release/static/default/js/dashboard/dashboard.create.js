/*global $:false */
/*
 * Dashboard creation dialog specific JavaScript to add functionality to the form
 */
$(function () {
	'use strict';

	/* Disable OK button if the dashboard name is empty */
	var $displayName = $('.js-dashboard-create-name');
	$displayName.on('input', function editDashboardName(event) {
		var value = $(event.target).val();
		$('.js-dashboard-create-submit').prop('disabled', $.trim(value) === '');
	});
	
	/* prevent sending the form if the submit button is disabled */
	$('form[name="createDashboard"]').submit(function (event) {
		if ($('.js-dashboard-create-submit').is(':disabled')) {
			event.preventDefault();
		}
	});
	
	/* resize the dialog when an error is displayed */
	(function enlargeDialog() {
		if ($('.error').length === 0) return;
		
		window.$dialog.height(194);
	})();
});
