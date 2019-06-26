(function($) {
	var el;
	var body = document.body;

	function table() {
		return el.assignment('widget');
	}

	module("options", {
		setup: function() {
			el = $(window.selectElement).appendTo(body);
		},
		teardown: function() {
			el.assignment('destroy');
			el.remove();
		}
	});

	asyncTest("not searchable", function() {
		expect(1);

		QUnit.stop();

		el.assignment({
			animated: null,
			searchable: false
		});

		setTimeout(function() {
			var widget = table();

			ok(widget.find('input.search').is(':hidden'), 'search field is hidden');

			QUnit.start();
		}, 100);
	});

	asyncTest("searchable", function() {
		expect(1);

		QUnit.stop();

		el.assignment({
			animated: null
		});

		setTimeout(function() {
			var widget = table();

			ok(widget.find('input.search').is(':visible'), 'search field is visible');

			QUnit.start();
		}, 100);
	});

	asyncTest("dividerLocation", function() {
		expect(2);

		function roundTo(n, l) {
			return (Math.round(n * l) / l);
		}

		QUnit.stop();

		el.assignment({
			animated: null,
			dividerLocation: 0.3
		});

		setTimeout(function() {
			var widget = table();

			var availableWidth = widget.children('div.available').width();
			var selectedWidth = widget.children('div.selected').width();
			var sum = availableWidth + selectedWidth;

			ok(sum > 0, 'width of available list and selected list is greater than 0');

			var percentage = roundTo(selectedWidth / sum, 10);

			equal(percentage, 0.3, 'right divider location is shown');

			QUnit.start();
		}, 100);
	});

})(jQuery);
