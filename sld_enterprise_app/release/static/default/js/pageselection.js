/*global $:false, bridge: false */
'use strict';

/*
 * Initialize the pageselection iframe-bridge to provide a connection
 * between the iframe content and it's parent document.
 */
bridge.register('pageselection', function registerBridge(iframe) {
	
	var $dialog = $(iframe).closest('.js-dialog');
	
	return {
		/**
		 * States that within the iframe the apply of a selection has happend.
		 */
		applySelectionValue: function applySelectionValue(value, url) {
			$.get(url, {
					ObjectUUID: value
				})
				.done(function (response) {
					$('#ConfigurationParameter_' + $dialog.attr('data-configparametername')).val(response.linkValue).trigger('cpo-change');
					$dialog.dialog('close');
				})
				.fail(function () {
					alert('link creation failed');
				});
		}
	};
});
