(function($) {
	module('core', {
		setup: function() {
			el = $('<button class="element">button</button>').appendTo($('body'));
			el.popupmenu({
	            timeout: 300,
	            items: [
                    {
                        cssClass: 'edit',
                        render: 'Edit',                            
                        click: function() {
                            $.data(el, 'MenuEditClicked', true);
                        }
                    },
                    {
                        cssClass: 'delete',
                        render: function() {
                            return 'Delete';
                        },
                        click: $.data(el, 'MenuDeleteClicked', true)
                    },
                    {
                    	type: 'separator'
                    },
	            ]
			});
		},
		teardown: function() {
			el.popupmenu('destroy');
			el.detach().empty();
		}

	});
	
	test('init', 1, function() {
		ok(el.has('div.menu-popup'), 'appended to element');
	});
	
	test('show', 6, function() {
		el.popupmenu('show');
		var menu = el.siblings('div.menu-popup');
		
		ok(el.popupmenu('isVisible'), 'menu is displayed');
		
		ok(menu.find('> ul > li').length === 3, 'correct amount of menu items displayed');
		ok(menu.has('> ul > li.edit'), 'css classes applied');
		
		equal(menu.find('> ul > li.edit').text(), 'Edit', 'Edit item text present');
		equal(menu.find('> ul > li.delete').text(), 'Delete', 'Delete item text present');
		ok(menu.find('> ul > li.separator').length === 1, 'Separator present');
	});
	
	test('click item', 2, function () {
		el.popupmenu('show');
		var menu = el.siblings('div.menu-popup');
		
		menu.find('> ul > li.edit').click(); 
		ok($.data(el, 'MenuEditClicked'), 'edit click action executed');
		menu.find('> ul > li.delete').click();		
		ok($.data(el, 'MenuDeleteClicked'), 'delete click action executed');
	});
	
	test('add item', 4, function () {
		el.popupmenu('addItem', {
	        cssClass: 'export',
	        render: 'Export',                            
	        click: function() {
	            $.data(el, 'MenuExportClicked', true);
	        }
		});
		el.popupmenu('show');
		var menu = el.siblings('div.menu-popup');		
		
		ok(menu.find('> ul > li').length === 4, 'correct amount of menu items displayed');
		ok(menu.find('> ul > li.export').index() === 3, 'new menu item inserted into right position');
		equal(menu.find('> ul > li.export').text(), 'Export', 'Export item text present');
		menu.find('> ul > li.export').click();
		ok($.data(el, 'MenuExportClicked'), 'export click action executed');
	});
	
	test('add item to specific position', 2, function () {
		el.popupmenu('addItem', {
	        render: 'Copy',
	        cssClass: 'copy'                          
		},1);
		el.popupmenu('show');
		var menu = el.siblings('div.menu-popup');
		
		ok(menu.find('> ul > li').length === 4, 'correct amount of menu items displayed');
		ok(menu.find('> ul > li.copy').index() === 1, 'new menu item inserted into right position');
	});

})(jQuery);