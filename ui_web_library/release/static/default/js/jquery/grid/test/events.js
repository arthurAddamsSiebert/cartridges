/*global QUnit: true, module: true, asyncTest: true, ok: true */
(function($) {
	'use strict';

	var el = $('<div class="element" />').appendTo($('body'));

	var setup = function() {
		el.grid({
			getData: window.getData,
			rowsPerPage: [25, 50, 100, 250],
			columns: [{
				id: 'sku',
				type: 'text',
				dataKey: 'sku',
				title: 'SKU',
				custom: {
					sortable: false,
					render: function(args) {
						return '<strong>' + args.cell + '</strong>';
					}
				}
			}, {
				id: 'displayName',
				type: 'text',
				dataKey: 'displayName',
				title: 'Name'
			}]
		});
	};
	var teardown = function() {
		el.grid('destroy');
	};

	module('events', {
		setup: function() {

		},
		teardown: function() {
			el.grid('destroy');
		}
	});

	var events = ['beforeInit', 'afterInit', 'beforeRegisterEvents', 'afterRegisterEvents', 'gridCreation', 'beforeResolveColumns', 'afterResolveColumns', 'dataRetrieval', 'beforeRender', 'beforeColumnHeaders', 'afterColumnHeaders', 'beforeBody', 'afterBody', 'afterRender', 'beforeReload', 'afterReload', 'beforeDataRequest', 'afterDataRequest'], l = events.length;
	asyncTest('default events', l, function() {
		// helper function to resume after last event-handler
		var resume = (function() {
			var i = 0;
			return function() {
				i++;
				if (i === l) {
					QUnit.start();
				}
			};
		})();

		for ( var i = 0; i < events.length; i++) {
			el.bind(events[i], function(event) {
				if ($.inArray(event.type, events) > -1) {
					ok(true, event.type + ' passed');
					// remove event from the list to make sure that all
					// event-types where called
					delete events[$.inArray(event.type, events)];
					resume();
				}
			});
		}

		setup();
	});

})(jQuery);
