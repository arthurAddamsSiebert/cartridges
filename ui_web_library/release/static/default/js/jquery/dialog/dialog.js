/*global $:false */
$(function () {
	'use strict';
	
	/*
	 * <div id="myDialog" class="js-dialog" width="640" height="480" data-autoopen="true" data-draggable="true" data-resizable="true" data-title="Title">
	 *     <div class="dialog-content">
	 *         This is the content
	 *     </div>
	 *     <div class="dialog-buttons">
	 *         <input type="button" value="Cancel" data-focus data-action="dialog-close">
	 *         <input type="button" value="OK">
	 *     </div>
	 * </div>
	 * 
	 * <input type="button" value="Open Dialog" data-action="dialog-open #myDialog">
	 */
	function initDialog(i, el) {
		var $dialog = $(el),
			width = parseInt($dialog.attr('width'), 10),
			height = parseInt($dialog.attr('height'), 10);

		// remove width and height from wrapper
		$dialog.removeAttr('width').removeAttr('height');
		
		// show iframe loading overlay
		var $iframe = $dialog.children('iframe.dialog-iframe');
		if ($iframe.length === 1) {
			var $loading = $($.parseHTML('<div class="dialog-iframe-load"><div></div></div>')).appendTo($dialog);
			$iframe.on('load', function () {
				$loading.hide();
			});
		}
		
		var autoOpen = $dialog.data('autoopen') === true,
			draggable = typeof $dialog.data('draggable') === 'undefined' ? true : $dialog.data('draggable'),
			modal = typeof $dialog.data('modal') === 'undefined' ? true : $dialog.data('modal'),
			resizable = $dialog.data('resizable') === true,
			title = $dialog.data('title') || '',
			height = height || 'auto',
			width = width || 'auto';
		
		$dialog.dialog({
			autoOpen: autoOpen,
			closeOnEscape: true,
			dialogClass: 'js-dialog-frame',
			draggable: draggable,
			height: height,
			modal: modal,
			resizable: resizable,
			title: title,
			width: width,
			open: function onOpen() {
				// if iframe exists, focus it
				if ($iframe.length > 0) {
					$iframe.get(0).contentWindow.focus();
				}
				var $focusedEl = $dialog.find('[data-focus]');
				if ($focusedEl.length > 0) {
					$focusedEl.get(0).focus();
				}
			}
		});

		// close this dialog
		$dialog.find('[data-action="dialog-close"]').click(function () {
			$dialog.dialog('close');
		});
	}
	
	// initialize all existing dialog elements
	$('.js-dialog').each(initDialog);

	// open specific dialog
	$(document).off('click.dialog')
    	.on('click.dialog', '[data-action^="dialog-open "]', function onDialogOpen(event) {
    		event.preventDefault();
    		var selector = $(this).data('action').substr('dialog-open '.length),
    			$selector = $(selector);
    		
    		if ($selector.length === 0) return;
    		
    		// initialize dialog if it wasn't yet
    		if (!$selector.data('uiDialog')) {
    			initDialog(undefined, $selector);
    		}
    		
    		$selector.dialog('open');
    	});
});
