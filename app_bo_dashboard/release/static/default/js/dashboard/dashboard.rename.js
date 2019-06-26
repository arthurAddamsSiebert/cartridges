/*global $:false */
/*
 * Dashboard renaming dialog specific JavaScript to add functionality to the form
 */
$(function () {
	'use strict';

	/* Disable OK button if the dashboard name is empty */
	var $displayName = $('.js-dashboard-rename-name');
	$displayName.on('input', function editDashboardName(event) {
		var value = $(event.target).val();
		$('.js-dashboard-rename-submit').prop('disabled', $.trim(value) === '');
	});
	
	// preselect input value
	function preselectValue() {
        window.setTimeout(function () {
            $displayName.select(); 
         }, 50);
	}
	$displayName.on('focus', preselectValue);
	preselectValue();

	/* prevent sending the form if the submit button is disabled */
	$('form[name="renameDashboard"]').submit(function (event) {
		if ($('.js-dashboard-rename-submit').is(':disabled')) {
			event.preventDefault();
		}
	});
	
	/* resize the dialog when an error is displayed */
	(function enlargeDialog() {
		if ($('.error').length === 0) return;
		
		window.$dialog.height(194);
	})();
});
