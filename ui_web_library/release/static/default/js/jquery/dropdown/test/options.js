(function($){
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

	module("options");

	test("noneSelectedText", function(){
		expect(7);
		var text;
		
		el = $("select").dropdown({
			noneSelectedText: 'None Selected'
		});
		
		// read from widget
		text = el.dropdown("option", "noneSelectedText");

		equals( button().text(), text, 'on init, button reads "None Selected"');
		el.dropdown("checkAll");
		ok( button().text() !== text, 'after checkAll, button no longer reads "None Selected"');
		el.dropdown("uncheckAll");
		equals( button().text(), text, 'after uncheckAll, button text restored to "None Selected"');
		
		// change the option value
		el.dropdown("option", "noneSelectedText", "No Checkboxes Checked");
		equals( el.dropdown("option", "noneSelectedText"), "No Checkboxes Checked", "new noneSelectedText value set correctly");
		
		// read updated value from widget
		text = el.dropdown("option", "noneSelectedText");
		
		// test against the new value
		equals( button().text(), text, 'after changing the option value, button now reads "No Checkboxes Checked"');
		el.dropdown("checkAll");
		ok( button().text() !== text, 'after checkAll, button no longer reads "No Checkboxes Checked"');
		el.dropdown("uncheckAll");
		equals( button().text(), text, 'after uncheckAll, button text restored to "No Checkboxes Checked"');
		
		el.dropdown("destroy");
	});

	test("selectedText", function(){
		expect(3);
		var numOptions = $("select option").length;
		
		el = $("select").dropdown({
			selectedText: '# of # selected'
		});
		
		el.dropdown("checkAll");
		equals( button().text(), numOptions+' of '+numOptions+' selected', 'after checkAll, button reflects the total number of checked boxes');
		
		// change option value
		el.dropdown("option", "selectedText", function( numChecked ){
			return numChecked + ' options selected';
		});
		
		equals( button().text(), numOptions+' options selected', 'after changing the option to a function value, button reflects the new text');
		
		// uncheck all
		el.dropdown("uncheckAll");
		equals( button().text(), el.dropdown("option","noneSelectedText"), 'after unchecking all, button text now reflects noneSelectedText option value');

		el.dropdown("destroy");
	});

	test("selectedList", function(){
		expect(2);
		
		var html = '<select multiple><option value="foo">foo &quot;with quotes&quot;</option><option value="bar">bar</option><option value="baz">baz</option></select>';
		
		el = $(html).dropdown({
			selectedList: 3
		});
		
		el.dropdown("checkAll");
		equals( button().text(), 'foo "with quotes", bar, baz', 'after checkAll, button text is a list of all options in the select');
		el.dropdown("destroy");
		
		el = $(html).dropdown({
			selectedList: 2
		});
		
		el.dropdown("checkAll");
		equals( button().text(), '3 selected', 'after checkAll with a limited selectedList value, button value displays number of checked');
		el.dropdown("destroy").remove();
	});

	function asyncSelectedList( useTrigger, message ){
		expect(1);
		stop();
		
		var html = '<select multiple><option value="foo">foo</option><option value="bar">bar</option><option value="baz">baz</option></select>',
			checkboxes;
		
		el = $(html).appendTo(body).dropdown({
			selectedList: 2
		});
		
		checkboxes = el.dropdown("widget").find(":checkbox");
		
		if( useTrigger ){
			checkboxes.eq(0).trigger('click');
			checkboxes.eq(1).trigger('click');
		} else {
			checkboxes.eq(0)[0].click();
			checkboxes.eq(1)[0].click();
		}
		
		setTimeout(function(){
			equals( button().text(), 'foo, bar', message);
			el.dropdown("destroy").remove();
			start();
		}, 10);
	}
	
	test("selectedList - manual trigger - jQuery", function(){
		asyncSelectedList( true, 'manually checking items with trigger()' );
	});

	test("selectedList - manual trigger - native", function(){
		asyncSelectedList( false, 'manually checking items with element.click()' );
	});
	
	test("selectedList - encoding", function() {
		el = $('<select><option value="A&amp;E">A&amp;E</option></select>')
			.appendTo(document.body)
			.dropdown({ selectedList: 1 });

		equals(button().text(), 'A&E');
		equals(button().find("span").last().html(), 'A&amp;E');
		el.dropdown("destroy").remove();
	});

	test("height", function(){
		expect(2);
		
		var height = 234;
		
		el = $("select").dropdown({ height: height }).dropdown("open");
		equals( height, menu().find("ul.ui-dropdown-checkboxes").height(), 'max-height after opening propertly set to '+height );
		
		// change height and re-test
		height = 333;
		el.dropdown("option", "height", height);
		equals( height, menu().find("ul.ui-dropdown-checkboxes").height(), 'changing value through api to '+height );
		
		el.dropdown("destroy");
	});

	test("minWidth", function(){
		expect(3);
		
		var minWidth = 321;
		
		el = $("select").dropdown({ minWidth:minWidth }).dropdown("open");
		equals( minWidth, button().outerWidth(), 'outerWidth of button is '+minWidth );
		
		// change height and re-test
		minWidth = 351;
		el.dropdown("option", "minWidth", minWidth);
		equals( minWidth, button().outerWidth(), 'changing value through api to '+minWidth);
		
		// change height to something that should fail.
		minWidth = 10;
		el.dropdown("option", "minWidth", minWidth);
		var outerWidth = button().outerWidth();
		ok( minWidth !== outerWidth, 'changing value through api to '+minWidth+' (too small), outerWidth is actually ' + outerWidth);
		
		el.dropdown("destroy");
	});

	test("checkAllText", function(){
		expect(2);
		var text = "foo";
		
		el = $("select").dropdown({ checkAllText:text });
		equals( text, menu().find(".ui-dropdown-all").text(), 'check all link reads '+text );
		
		// set through option
		text = "bar";
		el.dropdown("option","checkAllText","bar");
		equals( text, menu().find(".ui-dropdown-all").text(), 'check all link reads '+text );
		
		el.dropdown("destroy");
	});

	test("uncheckAllText", function(){
		expect(2);
		var text = "foo";
		
		el = $("select").dropdown({ uncheckAllText:text });
		equals( text, menu().find(".ui-dropdown-none").text(), 'check all link reads '+text );
		
		// set through option
		text = "bar";
		el.dropdown("option","uncheckAllText","bar");
		equals( text, menu().find(".ui-dropdown-none").text(), 'changing value through api to '+text );
		
		el.dropdown("destroy");
	});

	test("autoOpen", function(){
		expect(2);
		
		el = $("select").dropdown({ autoOpen:false });
		
		ok( menu().is(":hidden"), 'menu is hidden with autoOpen off');
		el.dropdown("destroy");
		
		el = $("select").dropdown({ autoOpen:true });
		ok( menu().is(":visible"), 'menu is visible with autoOpen on');
		el.dropdown("destroy");
		
		// no built in support for change on the fly; not testing it.
	});
	
	test("multiple (false - single select)", function(){
		expect(10);
		
		el = $("select").dropdown({ multiple:false });
		
		// get some references
		var $menu = menu(), $header = header();
		
		ok( $header.find('a.ui-dropdown-all').is(':hidden'), 'select all link is hidden' );
		ok( $header.find('a.ui-dropdown-none').is(':hidden'), 'select none link is hidden' );
		ok( $header.find('a.ui-dropdown-close').css('display') !== 'hidden', 'close link is visible' );
		ok( !$menu.find(":checkbox").length, 'no checkboxes are present');
		ok( $menu.find(":radio").length > 0, 'but radio boxes are');
		
		// simulate click on ALL radios
		var radios = $menu.find(":radio").trigger("click");
		
		// at the end of that, only one radio should be checked and the menu closed
		equals( radios.filter(":checked").length, 1, 'After checking all radios, only one is actually checked');
		equals( false, el.dropdown('isOpen'), 'Menu is closed' );
		
		// uncheck boxes... should only be one
		radios.filter(":checked").trigger("click");
		
		// method calls
		el.dropdown("checkAll");
		equals( $menu.find("input:radio:checked").length, 1, 'After checkAll method call only one is actually checked');
		
		el.dropdown("uncheckAll");
		equals( $menu.find("input:radio:checked").length, 0, 'After uncheckAll method nothing is checked');
		
		// check/uncheck all links
		equals( $menu.find(".ui-dropdown-all, ui-dropdown-none").filter(":visible").length, 0, "Check/uncheck all links don't exist");
		
		el.dropdown("destroy");
	});

	test("multiple (changing dynamically)", function(){
		expect(6);

		el = $('<select multiple><option value="foo">foo</option></select>')
			.appendTo("body")
			.dropdown();
		
		el.dropdown("option", "multiple", false);
		equals(el[0].multiple, false, "When changing a multiple select to a single select, the select element no longer has the multiple property");
		equals(menu().hasClass("ui-dropdown-single"), true, "...and the menu now has the single select class");
		equals(menu().find('input[type="radio"]').length, 1, "...and the checkbox is now a radio button");

		el.dropdown("option", "multiple", true);
		equals(el[0].multiple, true, "When changing a single select to a multiple select, the select element has the multiple property");
		equals(menu().hasClass("ui-dropdown-single"), false, "...and the menu doesn't have the single select class");
		equals(menu().find('input[type="checkbox"]').length, 1, "...and the radio button is now a checkbox");

		el.dropdown("destroy").remove();
	});

	test("classes", function(){
		expect(6);
		
		var classname = 'foo';
		
		el = $("select").dropdown({ classes:classname });
		var $button = button(), $widget = menu();
		
		equals( $widget.hasClass(classname), true, 'menu has the class ' + classname);
		equals( $button.hasClass(classname), true, 'button has the class ' + classname);
		
		// change it up
		var newclass = 'bar';
		el.dropdown("option", "classes", newclass);
		equals( $widget.hasClass(newclass), true, 'menu has the new class ' + newclass);
		equals( $button.hasClass(newclass), true, 'button has the new class ' + newclass);
		equals( $button.hasClass(classname), false, 'menu no longer has the class ' + classname);
		equals( $button.hasClass(classname), false, 'button no longer has the class ' + classname);
		el.dropdown("destroy");
	});

	test("header", function(){
		expect(7);
		
		function countLinks(){
			return header().find("a").length;
		}
		
		// default
		el = $("select").dropdown({ autoOpen:true });
		ok(header().is(':visible'), "default config: header is visible" );
		el.dropdown("option", "header", false);
		ok(header().is(':hidden'), "after changing header option on default config: header is no longer visible" );
		
		// test for all links within the default header
		equals(countLinks(), 3, "number of links in the default header config");
		
		el.dropdown("destroy");
		
		// create again, this time header false
		el = $("select").dropdown({ header:false, autoOpen:true });
		ok(header().is(':hidden'), "init with header false: header is not visible" );
		el.dropdown("option", "header", true);
		ok(header().is(':visible'), "after changing header option: header is visible" );
		
		el.dropdown("destroy");
		
		// create again, this time custom header
		el = $("select").dropdown({ header:"hai guyz", autoOpen:true });
		equals(header().text(), "hai guyz", "header equals custom text");
		equals(countLinks(), 1, "number of links in the custom header config (should be close button)");
		
		el.dropdown("destroy");
	});
	
})(jQuery);
