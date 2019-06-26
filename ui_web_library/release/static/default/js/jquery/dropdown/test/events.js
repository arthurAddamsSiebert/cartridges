(function($){
	var select = $("select").clone();
	var el;

	function button(){
		return el.next();
	}

	function menu(){
		return el.dropdown("widget");
	}

	function header(){
		return menu().find('.ui-dropdown-header');
	}

	module("events");

	test("dropdownopen", function(){
		expect(27);
	 
	 	// inject widget
		el = $("<select multiple><option value='foo'>foo</option></select>").appendTo(body);
		el.dropdown({
			open: function(e,ui){
				ok( true, 'option: dropdown("open") fires open callback' );
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdownopen', 'option: event type in callback');
				equals(menu().css("display"), 'block', 'menu display css property equals block'); 
				same(ui, {}, 'option: ui hash in callback');
			}
		})
		.bind("dropdownopen", function(e,ui){
			ok(true, 'event: dropdown("open") fires dropdownopen event');
			equals(this, el[0], 'event: context of event');
			same(ui, {}, 'event: ui hash');
		});
		
		// now try to open it..
		el.dropdown("open")
		
		// make sure the width of the menu and button are equivalent
		equals( button().outerWidth(), menu().outerWidth(), 'button and menu widths are equivalent');
		
		// close
		el.dropdown("close");
		
		// make sure a click event on the button opens the menu as well.
		button().trigger("click");
		el.dropdown("close");
		
		// make sure a click event on a span inside the button opens the menu as well.
		button().find("span:first").trigger("click");
		
		// reset for next test
		el.dropdown("destroy").remove();
		
		// now try returning false prevent opening
		el = $("<select></select>")
			.appendTo(body)
			.dropdown()
			.bind("dropdownbeforeopen", function(){
				ok( true, "event: binding dropdownbeforeopen to return false (prevent from opening)" );
				return false;
			})
			.dropdown("open");
		
		ok( !el.dropdown("isOpen"), "dropdown is not open after dropdown('open')" );
		el.dropdown("destroy").remove();
	});

	test("dropdownclose", function(){
		expect(25);
	 
	 	// inject widget
		el = $("<select multiple><option>foo</option></select>").appendTo(body);
		el.dropdown({
			close: function(e,ui){
				ok( true, 'option: dropdown("close") fires close callback' );
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdownclose', 'option: event type in callback');
				equals(menu().css("display"), 'none', 'menu display css property equals none'); 
				same(ui, {}, 'option: ui hash');
			}
		})
		.bind("dropdownclose", function(e,ui){
			ok(true, 'dropdown("close") fires dropdownclose event');
			equals(this, el[0], 'event: context of event');
			same(ui, {}, 'event: ui hash');
		})
		.dropdown("open")
		.dropdown("close")
		.dropdown("open");
		
		// make sure a click event on the button closes the menu as well.
		button().click();
		el.dropdown("open");
		
		// make sure a click event on a span inside the button closes the menu as well.
		button().find("span:first").click();

		// make sure that the menu is actually closed.  see issue #68
		ok( el.dropdown('isOpen') === false, 'menu is indeed closed' );

		el.dropdown("destroy").remove();
	});
	
	test("dropdownbeforeclose", function(){
		expect(8);
	 
	 	// inject widget
		el = $("<select multiple></select>").appendTo(body);
		el.dropdown({
			beforeclose: function(e,ui){
				ok( true, 'option: dropdown("beforeclose") fires close callback' );
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdownbeforeclose', 'option: event type in callback');
				same(ui, {}, 'option: ui hash');
			}
		})
		.bind("dropdownbeforeclose", function(e,ui){
			ok(true, 'dropdown("beforeclose") fires dropdownclose event');
			equals(this, el[0], 'event: context of event');
			same(ui, {}, 'event: ui hash');
		})
		.dropdown("open")
		.dropdown("close");
		
		el.dropdown("destroy").remove();
		
		// test 'return false' functionality
		el = $("<select multiple></select>").appendTo(body);
		el.dropdown({
			beforeclose: function(){
				return false;
			}
		});
		
		el.dropdown('open').dropdown('close');
		ok( menu().is(':visible') && el.dropdown("isOpen"), "returning false inside callback prevents menu from closing" );
		el.dropdown("destroy").remove();
	});
	
	test("dropdownclick", function(){
		expect(24);
	 
	 	var times = 0;

	 	// inject widget
		el = $("<select multiple><option value='1'>Option 1</option><option value='2'>Option 2</option></select>")
			.appendTo(body);
		
		el.dropdown({
			click: function(e,ui){
				ok(true, 'option: triggering the click event on the second checkbox fires the click callback' );
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdownclick', 'option: event type in callback');
				equals(ui.value, "2", "option: ui.value equals");
				equals(ui.text, "Option 2", "option: ui.title equals");
			}
		})
		.bind("dropdownclick", function(e,ui){
			ok(true, 'event: triggering the click event on the second checkbox triggers dropdownclick');
			equals(this, el[0], 'event: context of event');
			equals(ui.value, "2", "event: ui.value equals");
			equals(ui.text, "Option 2", "event: ui.title equals");
		})
		.bind("change", function(e){
			if(++times === 1){
				equals(el.val().join(), "2", "event: select element val() within the change event is correct" );
			} else {
				equals(el.val(), null, "event: select element val() within the change event is correct" );
			}

			ok(true, "event: the select's change event fires");
		})
		.dropdown("open");
		
		// trigger a click event on the input
		var lastInput = menu().find("input").last();
		lastInput[0].click();

		// trigger once more.
		lastInput[0].click();

		// make sure it has focus
		equals(true, lastInput.is(":focus"), "The input has focus");

		// make sure menu isn't closed automatically
		equals( true, el.dropdown('isOpen'), 'menu stays open' );

		el.dropdown("destroy").remove();
	});

	test("dropdowncheckall", function(){
		expect(10);
	 
	 	// inject widget
		el = $('<select multiple><option value="1">Option 1</option><option value="2">Option 2</option></select>').appendTo(body);

		el.dropdown({
			checkAll: function(e,ui){
				ok( true, 'option: dropdown("checkAll") fires checkall callback' );
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdowncheckall', 'option: event type in callback');
				same(ui, {}, 'option: ui hash in callback');
			}
		})
		.bind("dropdowncheckall", function(e,ui){
			ok( true, 'event: dropdown("checkall") fires dropdowncheckall event' );
			equals(this, el[0], 'event: context of event');
			same(ui, {}, 'event: ui hash');
		})
		.bind("change", function(){
			ok(true, "event: the select's change event fires");
			equals( el.val().join(), "1,2", "event: select element val() within the change event is correct" );
		})
		.dropdown("open")
		.dropdown("checkAll");

		equals(menu().find("input").first().is(":focus"), true, "The first input has focus");
		
		el.dropdown("destroy").remove();
	});
	
	test("dropdownuncheckall", function(){
		expect(10);
	 
	 	// inject widget
		el = $('<select multiple><option value="1">Option 1</option><option value="2">Option 2</option></select>').appendTo(body);

		el.dropdown({
			uncheckAll: function(e,ui){
				ok( true, 'option: dropdown("uncheckAll") fires uncheckall callback' );
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdownuncheckall', 'option: event type in callback');
				same(ui, {}, 'option: ui hash in callback');
			}
		})
		.bind("dropdownuncheckall", function(e,ui){
			ok( true, 'event: dropdown("uncheckall") fires dropdownuncheckall event' );
			equals(this, el[0], 'event: context of event');
			same(ui, {}, 'event: ui hash');
		})
		.bind("change", function(){
			ok(true, "event: the select's change event fires");
			equals( el.val(), null, "event: select element val() within the change event is correct" );
		})
		.dropdown("open")
		.dropdown("uncheckAll");
		
		equals(menu().find("input").first().is(":focus"), true, "The first input has focus");

		el.dropdown("destroy").remove();
	});
	
	
	test("dropdownbeforeoptgrouptoggle", function(){
		expect(10);

		// inject widget
		el = $('<select multiple><optgroup label="Set One"><option value="1">Option 1</option><option value="2">Option 2</option></optgroup></select>')
          .appendTo(body);

		el.bind("change", function(){
			ok(true, "the select's change event fires");
		})
		.dropdown({
			beforeoptgrouptoggle: function(e,ui){
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdownbeforeoptgrouptoggle', 'option: event type in callback');
				equals(ui.label, "Set One", 'option: ui.label equals');
				equals(ui.inputs.length, 2, 'option: number of inputs in the ui.inputs key');
			}
		})
		.bind("dropdownbeforeoptgrouptoggle", function(e,ui){
			ok( true, 'option: dropdown("uncheckall") fires dropdownuncheckall event' );
			equals(this, el[0], 'event: context of event');
			equals(ui.label, "Set One", 'event: ui.label equals');
			equals(ui.inputs.length, 2, 'event: number of inputs in the ui.inputs key');
		})
		.dropdown("open");
		
		menu().find("li.ui-dropdown-optgroup-label a").click();
		
		el.dropdown("destroy").remove();
		el = el.clone();
		
		// test return false preventing checkboxes from activating
		el.bind("change", function(){
			ok( true ); // should not fire
		}).dropdown({
			beforeoptgrouptoggle: function(){
				return false;
			},
			// if this fires the expected count will be off.  just a redundant way of checking that return false worked
            optgrouptoggle: function(){
                ok( true );
            }
		}).appendTo( body );

        var label = menu().find("li.ui-dropdown-optgroup-label a").click();
        equals( menu().find(":input:checked").length, 0, "when returning false inside the optgrouptoggle handler, no checkboxes are checked" );
        el.dropdown("destroy").remove();
	});

	test("dropdownoptgrouptoggle", function(){
		expect(12);
		
		// inject widget
		el = $('<select multiple><optgroup label="Set One"><option value="1">Option 1</option><option value="2">Option 2</option></optgroup></select>').appendTo(body);

		el.dropdown({
			optgrouptoggle: function(e,ui){
				equals(this, el[0], "option: context of callback");
				equals(e.type, 'dropdownoptgrouptoggle', 'option: event type in callback');
				equals(ui.label, "Set One", 'option: ui.label equals');
				equals(ui.inputs.length, 2, 'option: number of inputs in the ui.inputs key');
				equals(ui.checked, true, 'option: ui.checked equals true');
			}
		})
		.bind("dropdownoptgrouptoggle", function(e,ui){
			ok( true, 'option: dropdown("uncheckall") fires dropdownuncheckall event' );
			equals(this, el[0], 'event: context of event');
			equals(ui.label, "Set One", 'event: ui.label equals');
			equals(ui.inputs.length, 2, 'event: number of inputs in the ui.inputs key');
			equals(ui.checked, true, 'event: ui.checked equals true');
		})
		.dropdown("open");
		
		// trigger native click event on optgroup
		menu().find("li.ui-dropdown-optgroup-label a").click();
		equals(menu().find(":input:checked").length, 2, "both checkboxes are actually checked" );

		equals(menu().find("input").first().is(":focus"), true, "The first input has focus");
		
		el.dropdown("destroy").remove();
	});

})(jQuery);
