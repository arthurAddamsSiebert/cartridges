/*global $:false */
/*
 * include this helper file in the iframe of the dialog
 * 
 * <div class="dialog-content">
 *     This is the content
 * </div>
 * <div class="dialog-buttons">
 *     <input type="button" value="Close" data-focus data-action="dialog-close">
 * </div>
 */


// check for parent window
if (!window.frameElement || !window.parent) {
	throw new Error('this window has no parent window');
}

// easier DOM access to the parent window
window.parent$ = window.parent.$;
window.$parentDocument = window.parent$(window.parent.document);
window.$dialog = window.parent.$(window.frameElement).parent();

$(function () {
	'use strict';

	// close the dialog on clicking the close button
	$('body').on('click', '[data-action="dialog-close"]', function onClose() {
		window.$dialog.dialog('close');
	});

	/* close the dialog on pressing the escape key */
	$(document).keyup(function onKeyPress(event) {
		var VK_ESCAPE = 27;
		if (event.keyCode === VK_ESCAPE) {
			window.$dialog.dialog('close');
		}
	});
	
	/* focus displayName field */
	var $focusedEl = $('[data-focus]');
	$(window).focus(function () {
		$focusedEl.focus();
	});
	$focusedEl.focus();
	
	$(window).one('beforeunload', function showOverlay() {
		window.$dialog.children('.dialog-iframe-load').show();
	});
});
