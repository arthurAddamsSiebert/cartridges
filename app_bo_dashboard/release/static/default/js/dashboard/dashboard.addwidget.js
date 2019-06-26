/*global $:false */
'use strict';

/*
 * "add widget" dialog specific JavaScript to add functionality to the form
 */
$(function () {
	/* add the widget to the dashboard */
	$(document).on('click', '.js-dashboard-addwidget-add', function addWidget(event) {
		event.preventDefault();
		var $button = $(this),
			id = $button.data('id'),
			title = $button.data('title'),
			url = $button.data('url'),
			configurable = $button.data('configurable');

		window.$parentDocument.trigger('addwidget.dashboard', [
			{
				typeId: id,
				title: title,
				url: url,
				configurable: configurable
			},
			$.noop,
			function addFail() {
				alert('Adding widget failed.');
			}
		]);
	});
});

/**
 * Initialize the "Add Widget" dialog.
 * 
 * @param {string} title Title of the dialog
 * @param {string} url   URL of the dialog content
 */
function initAddWidgetDialog() {
	// initialize add widget dialog
	var $dialogAddWidget = $('#dashboard-dialog-addwidget');
	$dialogAddWidget.on('dialogclose', function onClose() {
		$(document).one('click', function removeWidgetHighlight() {
			// remove highlight from last added widget
			$('#dashboard').children('.widget-highlight').removeClass('widget-highlight');
		});
	});
}
