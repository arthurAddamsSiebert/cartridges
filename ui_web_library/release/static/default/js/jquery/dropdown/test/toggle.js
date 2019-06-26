(function($) {
	var el, widget, button, input;

	module("toggle filter widget", {
		setup: function() {
			el = $('<select multiple><option value="foo" data-filtered="true">testffoooo</option><option value="bar">testbbaarr</option><option value=" baz " data-filtered="true">testbbaazz</option><option value="qux">testquxtest</option><option value="10" data-filtered="true">ten</option><option value="100">one hundred</option><option value="5">five</option><option>a test with word boundaries</option><option>special regex !^$()//-|{}/: characters</option></select>');

			el.appendTo(document.body);
			el.dropdown();
			el.dropdowntoggle({
				filterOnCreate: true
			});
			el.dropdown("open");

			widget = el.dropdown("widget");
			input = widget.find(".ui-dropdown-toggle input");
		},

		teardown: function() {
			el.dropdowntoggle("destroy");
			el.dropdown("destroy");
			el.remove();
		}
	});

	test("defaults", function() {
		expect(1);
		ok(input.is(":visible"), "Filter checkbox is visible");
	});

	asyncTest("testing predefined filter", function() {
		expect(2);

		QUnit.stop();

		if(input.is(':checked')) {
			input.click();
		}

		window.setTimeout(function () {
			equals(widget.find('ul.ui-dropdown-checkboxes > li:visible').length, 3, "3 items are shown");

			if(input.not(':checked')) {
				input.prop('checked', true).click();
			}

			window.setTimeout(function () {
				equals(widget.find('ul.ui-dropdown-checkboxes > li:visible').length, 9, "9 items are shown");

				QUnit.start();
			}, 100);
		}, 100);
	});
})(jQuery);
