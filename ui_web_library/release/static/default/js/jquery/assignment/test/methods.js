(function($) {
	var el;
	var body = document.body;

	function table() {
		return el.assignment('widget');
	}

	module("methods", {
		setup: function() {
			el = $(window.selectElement).appendTo(body);
			el.assignment({
				animated: null
			});
		},
		teardown: function() {
			el.assignment('destroy');
			el.remove();
		}
	});

	asyncTest('widget', function() {
		expect(1);

		QUnit.stop();

		setTimeout(function() {
			ok(el.assignment('widget').is($('div.ui-assignment')), 'Widget is the Assignment element');
			QUnit.start();
		}, 100);
	});

	asyncTest('isBusy', function() {
		expect(1);

		QUnit.stop();

		setTimeout(function() {
			var busy = el.assignment('isBusy');
			ok(typeof busy !== undefined && busy !== null, 'control returns busy status');
			QUnit.start();
		}, 100);
	});

	asyncTest('selectedValues', function() {
		expect(2);

		QUnit.stop();

		setTimeout(function() {
			ok(el.assignment('selectedValues') !== undefined, 'has selected items');
			equal(el.assignment('selectedValues').length, 4, 'has 4 pre-selected items');
			QUnit.start();
		}, 100);
	});

	asyncTest('selectedDefaultValue', function() {
		expect(5);

		QUnit.stop();

		setTimeout(function() {
			equal(el.assignment('selectedDefaultValue'), '', 'no default value selected');

			var widget = table();
			var li = widget.find('ul.selected li.ui-element:first');
			var value = li.children(':radio').click().val();

			equal(el.assignment('selectedDefaultValue'), value, 'default value set after clicking radio button');

			li.children('.action').click();
			equal(el.assignment('selectedDefaultValue'), '', 'no default value after deselecting default item');

			li = widget.find('ul.available li.ui-element:first');
			value = li.children(':radio').val();

			li.children('.action').click();
			equal(el.assignment('selectedDefaultValue'), '', 'no default value after selecting new item');

			li = widget.find('ul.selected li.ui-element:first');
			value = li.children(':radio').click().val();

			equal(el.assignment('selectedDefaultValue'), value, 'default value set after clicking radio button');

			li.children('.action').click();
			QUnit.start();
		}, 100);
	});

	asyncTest('select', function() {
		expect(1);

		QUnit.stop();

		setTimeout(function() {
			el.assignment('select', 'Australia');

			setTimeout(function() {
				ok(el.assignment('isSelected', 'Australia'), 'item was selected');
				QUnit.start();
			}, 100);
		}, 100);
	});

	asyncTest('deselect', function() {
		expect(1);

		QUnit.stop();

		setTimeout(function() {
			el.assignment('deselect', 'Austria');

			setTimeout(function() {
				ok(el.assignment('isSelected', 'Austria') === false, 'item was deselected');
				QUnit.start();
			}, 100);
		}, 100);
	});

})(jQuery);
