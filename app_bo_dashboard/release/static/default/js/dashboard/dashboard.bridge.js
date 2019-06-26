/*global $:false, bridge: false */
/*
 * Initialize the dashboard iframe-bridge to provide a client-side
 * widget API.
 */
(function () {
	'use strict';

	bridge.register('dashboard', function registerBridge(iframe) {
		var $widget = $(iframe).closest('.widget'),
			$lock = $widget.find('.widget-lock'),
			$configure = $widget.find('.widget-action-configure');
		
		return {
			/**
			 * State that the widget is ready with initialization.
			 * This will unlock the body of the widget for user-interaction.
			 * Call busy() to lock the widget.
			 */
			ready: function ready() {
				$lock.hide();
			},
			/**
			 * States that the widget is busy.
			 * This will lock the body of the widget from any user-interaction.
			 * Call ready() to unlock the widget.
			 */
			busy: function busy() {
				$lock.show();
			},
			/**
			 * Opens the widget configuration dialog.
			 */
			configure: function configure() {
				$configure.click();
			}
		};
	});
})();
