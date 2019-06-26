(function($) {
	var el;
	var body = document.body;

	function table() {
		return el.assignment('widget');
	}

	module("core", {
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

	asyncTest("init", function() {
		expect(7);

		QUnit.stop();

		setTimeout(function () {
			var widget = table();
			ok(widget.is(':visible'), 'container is visible');
			ok(widget.children('div.available').is(':visible'), 'available list is visible');
			ok(widget.children('div.selected').is(':visible'), 'selected list is visible');

			equal(widget.children('div.available').find('li.ui-element:visible').size(), 89, 'pre-selected items');
			equal(widget.children('div.selected').find('li.ui-element:visible').size(), 4, 'pre-selected items');

			equal(widget.children('div.selected').find(':radio:visible ').size(), 4, 'radiobuttons of pre-selected items');

			ok(widget.find('.ui-assignment-notification:visible').size() === 1, 'notification is shown on start');

			QUnit.start();
		}, 100);
	});

})(jQuery);
