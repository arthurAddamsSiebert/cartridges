/*global QUnit: true, module: true, asyncTest: true, ok: true, equal: true */
(function ($) {
    'use strict';

    // the flexible setup is necessary because mostly config options are tested
    var config = {
        core: {
            animation: 0
        },
        plugins: ['json'],
        json: {
            data: window.demoData
        }
    };
    var setup = function setup(config) {
        var el = $('<div class="element"></div>').appendTo('body');
        el.tree(config);
        return el;
    };
    var teardown = function teardown(el) {
        el.off('.tree');
        $.tree.__destruct(el);
        el.remove();
    };

    module('API JSON');

    asyncTest('defaults: progressiveRender', 11, function testProgressiveRender() {
        var customConfig = $.extend(true, {}, config),
            customDemoData = window.createChildren('Node', 0);

        customDemoData[0].open = true;
        customDemoData[0].children[1].open = true;
        customConfig.json.progressiveRender = true;
        customConfig.json.data = customDemoData;

        var el = setup(customConfig);
        el.on('__loaded.tree', function onLoaded() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                children = el.tree('getChildren', firstRootNode),
                openedChild = children.eq(1),
                rootNodeToOpen = rootNodes.eq(1);

            ok(el.tree('isOpen', firstRootNode), 'Root node successfully preopened');
            ok(el.tree('isOpen', openedChild), 'Child node successfully preopened');
            equal(el.tree('isLeaf', children.last()), false, 'Other child nodes are not leafs');
            equal(el.tree('isOpen', rootNodeToOpen), false, 'Second root node not open');

            equal(el.tree('isLoaded', rootNodeToOpen), false, 'Not opened node is not loaded');
            el.tree('getChildren', rootNodeToOpen, function getChildrenCallback(node, children) {
                ok(children.length > 0, 'getChildren works even if node is not opened');
            });

            el.tree('openNode', rootNodeToOpen);

            ok(el.tree('isLoaded', rootNodeToOpen), 'Opened node is loaded');
            ok(el.tree('isOpen', rootNodeToOpen), 'Second root node opened');
            equal(el.tree('isOpen', el.tree('getChildren', rootNodeToOpen).first()), false, 'Children of second root node not opened');
            equal(el.tree('isLeaf', el.tree('getChildren', rootNodeToOpen).first()), false, 'Children of second root are not leafs');

            el.tree('closeNode', rootNodeToOpen);

            ok(el.tree('isLoaded', rootNodeToOpen), 'Closed node is still loaded');

            teardown(el);
            QUnit.start();
        });
    });

    asyncTest('defaults: progressiveUnload', 5, function testProgressiveUnload() {
        var customConfig = $.extend(true, {}, config),
            customDemoData = window.createChildren('Node', 0);

        customDemoData[0].open = true;
        customDemoData[0].children[1].open = true;
        customConfig.json.progressiveUnload = true;
        customConfig.json.data = customDemoData;

        var el = setup(customConfig);
        el.on('__loaded.tree', function onLoaded() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                children = el.tree('getChildren', firstRootNode),
                openedChild = children.eq(1),
                rootNodeToOpen = rootNodes.eq(1);

            ok(el.tree('isLoaded', openedChild), 'Opened child is loaded');
            el.tree('closeNode', openedChild);
            ok(!el.tree('isLoaded', openedChild), 'Closed child is not loaded');

            el.tree('getChildren', openedChild, function getChildrenCallback(node, children) {
                ok(children.length > 0, 'Getting children of a closed (but visible) node is possible');
            });

            ok(!el.tree('isLoaded', rootNodeToOpen), 'Closed root node not loaded');
            el.tree('openNode', rootNodeToOpen);
            ok(el.tree('isLoaded', rootNodeToOpen), 'Opened root node loaded');

            teardown(el);
            QUnit.start();
        });
    });
    
    asyncTest('defaults: data', 15, function testData() {
        var customConfig = $.extend(true, {}, config);

        customConfig.json.progressiveRender = true;
        
        // custom method for infinite levels
        customConfig.json.data = function data(node, callback) {
            callback({
                title: 'Infinitree',
                children: true
            });
        };

        var el = setup(customConfig);
        el.on('__loaded.tree', function onLoaded() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                openNChildren;

            ok(el.tree('isLoaded', firstRootNode) === false, 'First root node not loaded');

            el.tree('getChildren', firstRootNode, function (node, children) {
                ok(children.length > 0, 'Getting children of a closed (but visible) node is possible');
                ok(el.tree('isLoaded', firstRootNode), 'First root node loaded after getting children');
                ok(el.tree('isLoaded', children.first()) === false, 'Closed child is not loaded');
                
                el.tree('openNode', firstRootNode);
                ok(el.tree('isLoaded', firstRootNode), 'Opened root node loaded');
                
                // open n levels of the tree and call callback after finishing
                openNChildren = function openNChildren(parent, count, callback) {
                    if (count > 0) {
                        el.tree('openNode', parent, function openNodeCallback() {
                            el.tree('getChildren', firstRootNode, function getChildrenCallback(node, children) {
                                ok(node.length > 0, 'Node opened and children acquired, ' + (count - 1)  + ' to go.');
                                openNChildren(children.first(), --count, callback);
                            });
                        });
                    } else if (callback) {
                        callback();
                    }
                };
                
                // with data method provided, tree should have infinite levels
                openNChildren(el.tree('getChildren', node).first(), 10, function getChildrenCallback() {
                    teardown(el);
                    QUnit.start();
                });
            });
        });
    });

})(jQuery);
