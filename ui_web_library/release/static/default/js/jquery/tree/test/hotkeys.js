/*global QUnit: true, module: true, asyncTest: true, ok: true, strictEqual: true */
(function ($) {
    'use strict';

    var el;

    module('Hotkeys', {
        setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree({
                core: {
                    animation: 0
                },
                plugins: ['themes', 'json', 'ui', 'hotkeys'],
                json: {
                    data: window.demoData
                }
            });
        },
        teardown: function teardown() {
            el.off('.tree');
            $.tree.__destruct(el);
            el.remove();
        }
    });

    function triggerKeyEvent(key) {
        var event = $.Event('keydown');
        event.which = key;
        $(document).trigger(event);
    }

    asyncTest('down', 3, function testDown() {
        el.on('__ready.tree', function onReady() {
            // trigger "down"
            triggerKeyEvent(40);

            var first = el.tree('getChildren', el).first();
            first.children('a').click();
            strictEqual(el.tree('isSelected', first), true, 'first node is selected');

            // trigger "down"
            triggerKeyEvent(40);

            var child = el.tree('getChildren', first).first();
            child.children('a').click();
            strictEqual(el.tree('isSelected', first), false, 'first node isn\'t selected');
            strictEqual(el.tree('isSelected', child), true, 'first child is selected');

            QUnit.start();
        });
    });

    asyncTest('up', 3, function testUp() {
        el.on('__ready.tree', function onReady() {
            // trigger "up"
            triggerKeyEvent(38);

            var last = el.tree('getChildren', el).last();
            last.children('a').click();
            strictEqual(el.tree('isSelected', last), true, 'last node is selected');

            // trigger "up"
            triggerKeyEvent(38);

            var previous = el.tree('getPrev', last);
            previous.children('a').click();
            strictEqual(el.tree('isSelected', last), false, 'last node isn\'t selected');
            ok(el.tree('isSelected', previous), 'previous node is selected');

            QUnit.start();
        });
    });

    asyncTest('right', 2, function testRight() {
        el.on('__ready.tree', function onReady() {
            el.on('afterCloseAll.tree', function onAfterCloseAll() {
                // trigger "down"
                triggerKeyEvent(40);

                // trigger "right"
                triggerKeyEvent(39);

                var node = el.tree('getChildren', el).first();
                ok(el.tree('isOpen', node), 'first node is opened');

                // trigger "down"
                triggerKeyEvent(40);

                // trigger "right"
                triggerKeyEvent(39);

                node = el.tree('getChildren', node).first();
                ok(el.tree('isOpen', node), 'child node is opened');

                QUnit.start();
            });

            el.tree('closeAll');
        });
    });

    asyncTest('left', 4, function testLeft() {
        el.on('__ready.tree', function onReady() {
            el.on('afterOpenAll.tree', function onAfterOpenAll() {
                var node = el.tree('getChildren', el).first();
                node = el.tree('getChildren', node).first();
                ok(el.tree('isOpen', node), 'node is opened');
                // trigger "down"
                triggerKeyEvent(40);
                triggerKeyEvent(40);

                // trigger "left"
                triggerKeyEvent(37);

                strictEqual(el.tree('isOpen', node), false, 'node was closed');

                node = el.tree('getChildren', el).first();
                ok(el.tree('isOpen', node), 'node is opened');

                // trigger "up"
                triggerKeyEvent(38);

                // trigger "left"
                triggerKeyEvent(37);

                strictEqual(el.tree('isOpen', node), false, 'node was closed');

                QUnit.start();
            });

            el.tree('openAll');
        });
    });
})(jQuery);
