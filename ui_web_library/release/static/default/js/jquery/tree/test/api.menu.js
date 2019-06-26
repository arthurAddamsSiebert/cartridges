/*global QUnit: true, module: true, asyncTest: true, equal: true, deepEqual: true, ok: true */
(function ($) {
    'use strict';

    var el;

    module('API Menu', {
        setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree({
                plugins: ['json', 'menu'],
                core: {
                    animation: 0
                },
                json: {
                    data: window.demoData
                },
                menu: {
                    menuThreshold: 1,
                    items: [
                        {
                            cssClass: 'action1',
                            render: 'Action 1',
                            click: function click(args) {
                                ok(true, 'Action triggered');
                                window.checkClickHandler1(args);
                            }
                        },
                        {
                            cssClass: 'action2',
                            render: 'Action 2',
                            click: function click(args) {
                                ok(true, 'Action triggered');
                                window.checkClickHandler2(args);
                            }
                        }
                    ]
                }
            });
        },
        teardown: function teardown() {
            el.off('.tree');
            $.tree.__destruct(el);
            el.remove();
        }
    });

    asyncTest('menu threshold', 3, function testMenuThreshold() {
        el.on('__ready.tree', function ready() {
            var node = el.tree('getNode', '#Node0'),
                button = node.find(' > a > .tree-actions > button');

            equal(button.length, 1, 'One button is visible');
            ok(button.hasClass('action1'), 'Button has correct css class');
            equal(button.text(), 'Action 1', 'Button has the right label');

            QUnit.start();
        });
    });

    asyncTest('button click', 3, function testMenuThreshold() {
        el.on('__ready.tree', function ready() {
            var node = el.tree('getNode', '#Node0'),
                button = node.find(' > a > .tree-actions > button'),
                data = el.tree('getJson', node);

            window.checkClickHandler1 = function checkClickHandler1(args) {
                deepEqual(args.data.nodeJson, data[0], 'correct data in click handler');
                ok(node.is(args.data.node), 'correct node in click handler');
            };

            // this will trigger 3 assertions
            button.click();

            QUnit.start();
        });
    });

    asyncTest('popup & data', 7, function testPopup() {
        el.on('__ready.tree', function ready() {
            var node = el.tree('getNode', '#Node0'),
                toggle = node.find(' > a > .tree-menu-toggle'),
                data = el.tree('getJson', node),
                popup, action;

            equal(toggle.length, 1, 'Menu toggle is visible');

            toggle.click();

            popup = el.children('.menu-popup:visible');
            equal(popup.length, 1, 'Popup is visible');

            action = popup.find('li');

            equal(action.length, 1, '1 action found');
            ok(action.hasClass('action2'), 'Action has correct css class');

            window.checkClickHandler2 = function checkClickHandler2(args) {
                deepEqual(args.data.nodeJson, data[0], 'correct data in click handler');
                ok(node.is(args.data.node), 'correct node in click handler');
            };

            // this will trigger 2 assertions
            action.click();

            QUnit.start();
        });
    });

    asyncTest('disabled button & popup', 7, function testPopup() {
        el.on('__ready.tree', function ready() {
            var node = el.tree('getNode', '#Node0'),
                button = node.find(' > a > .tree-actions > button'),
                toggle = node.find(' > a > .tree-menu-toggle'),
                data = el.tree('getJson', node),
                popup, action;

            window.checkClickHandler1 = function checkClickHandler1(args) {
                deepEqual(args.data.nodeJson, data[0], 'correct data in click handler');
                ok(node.is(args.data.node), 'correct node in click handler');
            };
            button.click();

            window.checkClickHandler2 = function checkClickHandler2(args) {
                deepEqual(args.data.nodeJson, data[0], 'correct data in click handler');
                ok(node.is(args.data.node), 'correct node in click handler');
            };
            toggle.click();
            popup = el.children('.menu-popup:visible');
            action = popup.find('li');
            action.click();

            el.tree('disableNode', node);

            window.checkClickHandler1 = function checkClickHandler1Fail() {
                ok(false, 'the button click handler should not trigger');
            };
            button.click();

            toggle.click();
            popup = el.children('.menu-popup:visible');
            equal(popup.length, 0, 'Popup isn\'t visible');

            QUnit.start();
        });
    });
})(jQuery);
