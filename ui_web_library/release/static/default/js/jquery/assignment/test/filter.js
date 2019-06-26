(function($) {
	var el;
	var body = document.body;

	function table() {
		return el.assignment('widget');
	}

	module("filter", {
		setup: function() {
			el = $(window.selectElement).appendTo(body);
			el.assignment({
				animated: null,
				searchDelay: 0
			});
		},
		teardown: function() {
			el.assignment('destroy');
			el.remove();
		}
	});

	asyncTest('init', function() {
		expect(1);

		QUnit.stop();

		setTimeout(function() {
			var widget = table();
			ok(widget.find('input.search').size() === 1, 'filter field is shown');
			QUnit.start();
		}, 100);
	});

	asyncTest('filtering wrong', function() {
		expect(2);

		QUnit.stop();

		setTimeout(function() {
			var widget = table();

			var beforeCount = widget.children('div.available').find('li.ui-element:visible').size();
			el.assignment('search', 'test');
			widget.find('input.search').val('test').keydown();

			setTimeout(function() {
				equal(widget.children('div.available').find('li.ui-element:visible').size(), 0, 'wrong term results in 0 items');
				el.assignment('search', '');

				setTimeout(function() {
					equal(widget.children('div.available').find('li.ui-element:visible').size(), beforeCount, 'empty term results in showing all items');

					QUnit.start();
				}, 100);
			}, 100);
		}, 100);
	});

	asyncTest('filtering right', function() {
		expect(1);

		QUnit.stop();

		setTimeout(function() {
			var widget = table();

			var beforeCount = widget.children('div.available').find('li.ui-element:visible').size();
			el.assignment('search', 'Australia');

			setTimeout(function() {
				equal(widget.children('div.available').find('li.ui-element:visible').size(), 1, 'right term results in 1 item');

				QUnit.start();
			}, 500);
		}, 100);
	});

	asyncTest('filtering substring right', function() {
		expect(1);

		QUnit.stop();

		setTimeout(function() {
			var widget = table();

			var beforeCount = widget.children('div.available').find('li.ui-element:visible').size();
			el.assignment('search', 'ia');

			setTimeout(function() {
				equal(widget.children('div.available').find('li.ui-element:visible').size(), 25, 'right substring results in 25 item');

				QUnit.start();
			}, 100);
		}, 100);
	});

})(jQuery);
