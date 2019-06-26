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

	module("methods");

	test("open", function(){
		expect(2);
	 
		el = select.dropdown().dropdown("open");
			ok( el.dropdown("isOpen"), "isOpen parameter true" );
			equals( menu().css("display"), "block", "Test display CSS property" );
		el.dropdown("destroy");
	});
	
	test("close", function(){
		expect(2);
	 
		el = select.dropdown().dropdown("open").dropdown("close");
			ok( !el.dropdown("isOpen"), "isOpen parameter false" );
			equals( menu().css("display"), "none", "Test display CSS property" );
		el.dropdown("destroy");
	});
	
	test("enable", function(){
		expect(2);
	 
		el = select.dropdown().dropdown("disable").dropdown("enable");
			ok( button().is(":disabled") === false, "Button is enabled" );
			ok( el.is(":disabled") === false, "Original select is enabled" );
		el.dropdown("destroy");
	});
	
	test("disable", function(){
		expect(2);
	 
	 	// clone this one so the original is not affected
		el = select.clone(true).appendTo(body).dropdown().dropdown("disable");
			ok( button().is(":disabled"), 'Button is disabled');
			ok( el.is(":disabled"), 'Original select is disabled');
		el.dropdown("destroy").remove();
	});
	
	test("enabling w/ pre-disabled tags (#216)", function(){
		expect(5);
	 
	 	el = $('<select><option disabled value="foo">foo</option><option value="bar">bar</option>')
			.appendTo(document.body)
			.dropdown();

		var boxes = menu().find("input")
		var disabled = boxes.first();
		var enabled = boxes.last();
		var key = "ech-dropdown-disabled";

		equals(disabled.is(":disabled"), true, "The first option is disabled");
		el.dropdown("disable");
		equals(disabled.data(key), undefined, "After disabling the widget, the pre-disabled option is not flagged to re-enable");
		equals(enabled.data(key), true, "and the enabled option is flagged to be re-enable");
		el.dropdown("enable");
		equals(disabled.is(":disabled"), true, "After enabling, the first option is still disabled");
		equals(disabled.data(key), undefined, "and the option no longer has the stored data flag");
		el.dropdown("destroy").remove();
	});
	
	test("widget", function(){
		expect(1);
	 
		el = select.dropdown();
			ok( menu().is("div.ui-dropdown-menu"), 'Widget is the menu element');
		el.dropdown("destroy");
	});
	
	test("getButton", function(){
		expect(1);
	 
		el = select.dropdown();
		var button = el.dropdown("getButton");
			ok( button.is("button.ui-dropdown"), 'Button is the button element');
		el.dropdown("destroy");
	});
	
	test("checkAll", function(){
		expect(1);
	 
		el = select.dropdown().dropdown("checkAll");
		var inputs = menu().find("input");
			ok( inputs.filter(":checked").length === inputs.length, 'All inputs selected on the widget?');
		el.dropdown("destroy");
	});

	test("uncheckAll", function(){
		expect(1);
	 
		el = select.dropdown().dropdown("checkAll").dropdown("uncheckAll");
			ok( menu().find("input:checked").length === 0, 'All inputs unchecked on the widget?');
		el.dropdown("destroy");
	});

	test("isOpen", function(){
		expect(2);
	 
		el = select.dropdown().dropdown("open");
			ok( el.dropdown("isOpen"), 'Testing isOpen method after calling open method');
		el = select.dropdown("close");
			ok( !el.dropdown("isOpen"), 'Testing isOpen method after calling close method');
		el.dropdown("destroy");
	});

	test("destroy", function(){
		expect(2);
	 
		el = select.dropdown().dropdown("destroy");
			ok( !$(".ui-dropdown").length , 'button.ui-dropdown removed from the DOM');
			ok( !el.data("dropdown") , 'no more dropdown obj attached to elem');
	});

	test("getChecked", function(){
		expect(2);
	 
		el = select.dropdown().dropdown("checkAll");
			equals( el.dropdown("getChecked").length, $('select').find('option').length, 'number of checkboxes returned after checking all and calling getChecked');
		el.dropdown("uncheckAll");
			equals( el.dropdown("getChecked").length, 0, 'number of checkboxes returned after unchecking all and calling getChecked');
		el.dropdown("destroy");
	});

	test("refresh", function(){
		expect(4);
		
		el = select.clone().appendTo(body).dropdown();
		el.empty().html('<option value="foo">foo</option><option value="bar">bar</option>');
		el.dropdown('refresh');
		
		var checkboxes, getCheckboxes = (function hai(){
			checkboxes = menu().find('input[type="checkbox"]');
			return hai;
		})();
		
		equals( checkboxes.length, 2, "After clearing the select, adding 2 options, and refresh(), only 2 checkboxes exist");
		equals( checkboxes.eq(0).val(), 'foo', 'first is foo' );
		equals( checkboxes.eq(1).val(), 'bar', 'second is foo' );
		
		// add one more w/ append, just for safety's sake
		el.append('<option value="baz">baz</option>');
		el.dropdown('refresh');
		getCheckboxes();
		equals( checkboxes.eq(2).val(), 'baz', 'after an append() call, the third option is now' );
		
		el.dropdown("destroy").remove();
	});
})(jQuery);
