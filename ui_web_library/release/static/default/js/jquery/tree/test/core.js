/*global QUnit: true, module: true, asyncTest: true, ok: true */
(function ($) {
    'use strict';

    var el,
        coreDemoData = window.createChildren('Node', 0);
        
    // opened nodes
    coreDemoData[0].open = true;
    coreDemoData[0].children[1].open = true;

	module('Core', {
		setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree({
                core: {
                    animation: 0
                },
                plugins: ['themes', 'json', 'ui'],
                json: {
                    data: coreDemoData
                }
            });
		},
		teardown: function teardown() {
            el.off('.tree');
            $.tree.__destruct(el);
            el.remove();
		}
	});

	asyncTest('init', 2, function testInit() {
        el.on('__ready.tree', function onReady() {
            ok(el.is('.tree'), 'div has correct css class');
            ok(el.tree('getChildren', el).length > 0, 'tree has nodes');

            QUnit.start();
        });
	});

    asyncTest('initially opened nodes', 2, function testInitiallyOpenedNodes() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getChildren', el).first();
            ok(el.tree('isOpen', node), 'has opened child-node');

            node = el.tree('getChildren', node).filter(':eq(1)');
            ok(el.tree('isOpen', node), 'has opened child-child-node');

            QUnit.start();
        });
    });

    asyncTest('open/close single node', 2, function testOpenCloseSingleNode() {
        var node;

        el.on('__ready.tree', function onReady() {
            node = el.tree('getChildren', el).last();

            el.on('__afterOpen.tree', function onAfterOpen() {
                // step 2
                ok(el.tree('isOpen', node), 'node is opened');

                node.children('ins').click();
            });

            el.on('__afterClose.tree', function onAfterClose() {
                // step 3
                ok(el.tree('isClosed', node), 'node is closed');

                QUnit.start();
            });
            // step 1
            node.children('ins').click();
        });
    });

    asyncTest('keep states of child when toggling node', 5, function testKeepStatesWhenToggling() {
        el.on('__ready.tree', function onReady() {
            var node, child;

            node = el.tree('getChildren', el).first();
            ok(el.tree('isOpen', node), 'node is opened');
            child = el.tree('getChildren', node).filter(':eq(1)');
            ok(el.tree('isOpen', child), 'child is opened');

            // step 2
            el.on('__afterClose.tree', function onAfterClose() {
                ok(el.tree('isClosed', node), 'node is closed');
                node.children('ins').click();
            });

            // step 3
            el.on('__afterOpen.tree', function onAfterOpen() {
                ok(el.tree('isOpen', node), 'node is opened');
                ok(el.tree('isOpen', child), 'child is opened');

                QUnit.start();
            });

            // step 1
            node.children('ins').click();
        });
    });
})(jQuery);
