/*global $:false */
/**
 * Initializes the dashboard creation dialog and enhances the dashboard menu
 * for specific default actions.
 * 
 * @param {string} title Title of the dashboard creation dialog
 * @param {string} url   URL of the dashboard creation page
 */
function initDashboardDialog(url) {
	'use strict';

	var dialogInitialized = false,
		$createDashboard = $('#dashboard-dialog-create'),
		$iframe = $createDashboard.children('iframe');

	$createDashboard.on('dialogclose', function onClose() {
		$iframe.attr('src', url);
	});
	
	/* preload the dialog before the user clicks create-dashboard */
	$('.js-dashboard-menu-default').mouseover(function preloadDialog() {
		/* dialog is already initialized */
		if (dialogInitialized) return;
		
		$iframe.attr('src', url);
		dialogInitialized = true;
	});
	
	$('.js-dashboard-menu-create').click(function openCreateDashboard(event) {
		event.preventDefault();
		/* initialize dialog if preload on mouseover failed */
		if (!dialogInitialized) {
			$iframe.attr('src', url);
			dialogInitialized = true;
		}
		
		$createDashboard.dialog('open');
	});
	
	$('.js-dashboard-menu-default').click(function defaultDashboardAction(event) {
		event.preventDefault();
		var $defaultAction = $('.dashboardMenu').find('ul a:first');
		if ($defaultAction.length > 0) {
			$defaultAction[0].click();
		}
	});
}
