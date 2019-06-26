(function($) {
	var el;
	var body = document.body;

	function table() {
		return el.assignment('widget');
	}

	module("events", {
		setup: function() {
			el = $(window.selectElement).appendTo(body);
		},
		teardown: function() {
			el.assignment('destroy');
			el.remove();
		}
	});

	asyncTest("deselected", function() {
		expect(1);

		QUnit.stop(5000);

		el.assignment({
			animated: null,
			deselected: function(event, ui) {
				ok(true, 'received deselected-event');
				QUnit.start();
			}
		});

		setTimeout(function() {
			el.assignment('deselect', 'Austria');
		}, 100);
	});

	asyncTest("selected", function() {
		expect(1);

		QUnit.stop(5000);

		el.assignment({
			animated: null,
			selected: function(event, ui) {
				ok(true, 'received selected-event');
				QUnit.start();
			}
		});

		setTimeout(function() {
			el.assignment('select', 'Australia');
		}, 100);
	});

})(jQuery);
