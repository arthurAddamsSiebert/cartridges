var body = document.body;

(function($){
	var select = $('select').clone(); 
	var el;

	var oldDone = QUnit.done || jQuery.noop;
	QUnit.done = function() {
		$('select').hide();
		oldDone();
	}

	function button(){
		return el.next();
	}

	function menu(){
		return el.dropdown("widget");
	}

	function header(){
		return menu().find('.ui-dropdown-header');
	}

	module("core");
	
	test("init", function(){
		expect(6);
	 
		el = select.dropdown(), $header = header();
		ok( $header.find('a.ui-dropdown-all').css('display') !== 'none', 'select all is visible' );
		ok( $header.find('a.ui-dropdown-none').css('display') !== 'none', 'select none is visible' );
		ok( $header.find('a.ui-dropdown-close').css('display') !== 'none', 'close link is visible' );
		ok( menu().is(':hidden'), 'menu is hidden');
		ok( el.is(":hidden"), 'the original select is hidden');
		ok( el.attr('tabIndex') == 2, 'button inherited the correct tab index');
		el.dropdown("destroy");
	});
	
	test("form submission", function(){
		expect(3);
		
		var form = $('<form></form>').appendTo(body),
			data;
		
		el = $('<select id="test" name="test" multiple="multiple"><option value="foo" selected="selected">foo</option><option value="bar">bar</option></select>')
			.appendTo(form)
			.dropdown()
			.dropdown("checkAll");
			
		data = form.serialize();
		equals( data, 'test=foo&test=bar', 'after checking all and serializing the form, the correct keys were serialized');
		
		el.dropdown("uncheckAll");
		data = form.serialize();
		equals( data.length, 0, 'after unchecking all and serializing the form, nothing was serialized');
		
		// re-check all and destroy, exposing original select
		el.dropdown("checkAll").dropdown("destroy");
		data = form.serialize();
		equals( data, 'test=foo&test=bar', 'after checking all, destroying the widget, and serializing the form, the correct keys were serialized');
		
		form.remove();
	});

	test("form submission, optgroups", function(){
		expect(4);
		
		var form = $('<form></form>').appendTo(body),
			data;
		
		el = $('<select id="test" name="test" multiple="multiple"><optgroup label="foo"><option value="foo">foo</option><option value="bar">bar</option></optgroup><optgroup label="bar"><option value="baz">baz</option><option value="bax">bax</option></optgroup></select>')
			.appendTo(form)
			.dropdown()
			.dropdown("checkAll");
			
		data = form.serialize();
		equals( data, 'test=foo&test=bar&test=baz&test=bax', 'after checking all and serializing the form, the correct keys were serialized');
		
		el.dropdown("uncheckAll");
		data = form.serialize();
		equals( data.length, 0, 'after unchecking all and serializing the form, nothing was serialized');
		
		// re-check all and destroy, exposing original select
		el.dropdown("checkAll").dropdown("destroy");
		data = form.serialize();
		equals( data, 'test=foo&test=bar&test=baz&test=bax', 'after checking all, destroying the widget, and serializing the form, the correct keys were serialized');
		
		// reset option tags
		el.find("option").each(function(){
			this.selected = false;
		});
		
		// test checking one option in both optgroups
		el.dropdown();
		
		// finds the first input in each optgroup (assumes 2 options per optgroup)
		el.dropdown("widget").find('.ui-dropdown-checkboxes li:not(.ui-dropdown-optgroup-label) input:even').each(function( i ){
			this.click();
		});
		
		data = form.serialize();
		equals( data, 'test=foo&test=baz', 'after manually checking one input in each group, the correct two are serialized');
		
		el.dropdown('destroy');
		form.remove();
	});
	
	test("form submission, single select", function(){
		expect(7);
		
		var form = $('<form></form>').appendTo("body"),
			radios, data;
		
		el = $('<select id="test" name="test" multiple="multiple"><option value="foo">foo</option><option value="bar">bar</option><option value="baz">baz</option></select>')
			.appendTo(form)
			.dropdown({ multiple: false });
		
		// select multiple radios to ensure that, in the underlying select, only one
		// will remain selected
		radios = menu().find(":radio");
		radios[0].click();
		radios[2].click();
		radios[1].click();
		
		data = form.serialize();
		equals( data, 'test=bar', 'the form serializes correctly after clicking on multiple radio buttons');
		equals( radios.filter(":checked").length, 1, 'Only one radio button is selected');
		
		// uncheckAll method
		el.dropdown("uncheckAll");
		data = form.serialize();
		equals( data.length, 0, 'After unchecking all, nothing was serialized');
		equals( radios.filter(":checked").length, 0, 'No radio buttons are selected');
		
		// checkAll method
		el.dropdown("checkAll");
		data = form.serialize();
		equals( el.dropdown("getChecked").length, 1, 'After checkAll, only one radio is selected');
		equals( radios.filter(":checked").length, 1, 'One radio is selected');
		
		// expose original
		el.dropdown("destroy");
		data = form.serialize();
		equals( data, 'test=foo&test=bar&test=baz', 'after destroying the widget and serializing the form, the correct key was serialized: ' + data);
		
		form.remove();
	});
	
	asyncTest("form reset, nothing pre-selected", function(){
		expect(2);
		
		var form = $('<form></form>').appendTo(body),
			noneSelected = 'Please check something';
		
		el = $('<select name="test" multiple="multiple"><option value="foo">foo</option><option value="bar">bar</option></select>')
			.appendTo(form)
			.dropdown({ noneSelectedText: noneSelected })
			.dropdown("checkAll");
			
		// trigger reset
		form.trigger("reset");
		
		setTimeout(function(){
			equals( menu().find(":checked").length, 0, "no checked checkboxes" );
			equals( button().text(), noneSelected, "none selected text");
			el.dropdown('destroy');
			form.remove();
			start();
		}, 10);
	});
	
	asyncTest("form reset, pre-selected options", function(){
		expect(2);
		
		var form = $('<form></form>').appendTo(body);
		
		el = $('<select name="test" multiple="multiple"><option value="foo" selected="selected">foo</option><option value="bar" selected="selected">bar</option></select>')
			.appendTo(form)
			.dropdown({ selectedText: '# of # selected' })
			.dropdown("uncheckAll");
			
		// trigger reset
		form.trigger("reset");
		
		setTimeout(function(){
			equals( menu().find(":checked").length, 2, "two checked checkboxes" );
			equals( button().text(), "2 of 2 selected", "selected text" );
			el.dropdown('destroy');
			form.remove();
			start();
		}, 10);
	});
	
})(jQuery);
