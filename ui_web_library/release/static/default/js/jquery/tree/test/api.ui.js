/*global QUnit: true, module: true, asyncTest: true, ok: true, equal: true, deepEqual: true */
(function ($) {
    'use strict';

    var el, config = {
        core: {
            animation: 0
        },
        plugins: ['json', 'ui'],
        json: {
            data: window.demoData
        }
    };

    module('API UI', {
        setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree(config);
        },
        teardown: function teardown() {
            el.off('.tree');
            $.tree.__destruct(el);
            el.remove();
        }
    });

    asyncTest('hoverNode, deHoverNode, isHovered', 9, function testHover() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                nextNode = el.tree('getNext', node);

            el.on('afterHoverNode.tree', function onAfterHoveNode(ev, data) {
                ok(true, 'afterHoverNode fired');
                ok(node.is(data.result.obj), 'afterHoverNode: Correct node passed');
            });
            el.on('afterDehoverNode.tree', function onAfterDehoverNode(ev, data) {
                ok(true, 'afterDehoverNode fired');
                ok(node.is(data.result.obj), 'afterDehoverNode: Correct node passed');
            });

            equal(el.tree('isHovered', node), false, 'Node not hovered');

            el.tree('hoverNode', node);
            el.off('afterHoverNode.tree');

            ok(el.tree('isHovered', node), 'Node hovered');

            el.tree('hoverNode', nextNode);
            el.off('afterDehoverNode.tree');

            equal(el.tree('isHovered', node), false, 'Node not hovered');
            ok(el.tree('isHovered', nextNode), 'Next node hovered');

            el.tree('dehoverNode', nextNode);

            equal(el.tree('isHovered', nextNode), false, 'Next node not hovered');

            QUnit.start();
        });
    });

    asyncTest('selectNode, deselectNode, isSelected, getSelected', 16, function testSelect() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                nextNode = el.tree('getNext', node, true);
            el.tree('deselectAll');

            el.on('afterSelectNode.tree', function onAfterSelectNode(ev, data) {
                ok(true, 'afterSelectNode fired');
                ok(node.is(data.result.obj), 'afterSelectNode: Correct node passed');
            });
            el.on('afterDeselectNode.tree', function onAfterDeselectNode(ev, data) {
                ok(true, 'afterDeselectNode fired');
                ok(node.is(data.result.obj), 'afterDeselectNode: Correct node passed');
            });

            equal(el.tree('isSelected', node), false, 'Node not selected');
            equal(el.tree('getSelected').length, 0, 'No nodes selected');

            ok(el.tree('selectNode', node), 'selectNode: correct return value');
            el.off('afterSelectNode.tree');

            ok(el.tree('isSelected', node), 'Node selected');
            equal(el.tree('getSelected').length, 1, 'One node selected');

            el.tree('selectNode', nextNode, true);

            equal(el.tree('getSelected').length, 2, 'Two nodes selected');
            equal(el.tree('getSelected', node).length, 1, 'One node within context selected');

            el.tree('deselectNode', node);

            equal(el.tree('isSelected', node), false, 'Node not selected');
            equal(el.tree('getSelected').length, 1, 'One node selected');

            el.tree('selectNode', node);
            el.tree('selectNode', nextNode);

            equal(el.tree('getSelected').length, 1, 'Don\'t keep selection: One node selected');
            equal(el.tree('isSelected', node), false, 'Don\'t keep selection: Node not selected');
            ok(el.tree('isSelected', nextNode), 'Don\'t keep selection: Next node selected');

            QUnit.start();
        });
    });

    asyncTest('deselectAll', 5, function testDeselectAll() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                nextNode = el.tree('getNext', node, true),
                firstChild = el.tree('getChildren', nextNode).first();

            el.tree('deselectAll');
            el.tree('selectNode', node);
            el.tree('selectNode', firstChild, true);

            equal(el.tree('getSelected').length, 2, 'Two nodes selected');
            el.on('afterDeselectAll.tree', function onAfterDeselectAll(ev, data) {
                ok(true, 'afterDeselectAll fired');
                ok(firstChild.is(data.result.obj), 'afterDeselectAll: Correct node passed');
            });

            el.tree('deselectAll', nextNode);
            el.off('afterDeselectAll.tree');

            equal(el.tree('getSelected').length, 1, 'One node selected after context related deselect');

            el.tree('selectNode', firstChild, true);
            el.tree('deselectAll');

            equal(el.tree('getSelected').length, 0, 'No node selected');

            QUnit.start();
        });
    });

    asyncTest('selectRange', 4, function testSelectRange() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el), firstChild, lastChildren,
                firstRootNode = rootNodes.first(),
                lastRootNode = rootNodes.last();

            el.on('afterSelectRange.tree', function onAfterSelectRange(ev, data) {
                ok(true, 'afterSelectRange fired');
                equal(data.result.obj.length, rootNodes.length, 'afterSelectRange: Range passed');
            });

            el.tree('deselectAll');
            el.tree('selectRange', firstRootNode, lastRootNode);

            el.off('afterSelectRange.tree');

            equal(el.tree('getSelected').length, rootNodes.length, 'Range selected');

            el.tree('deselectAll');
            firstChild = el.tree('getChildren', firstRootNode).first();
            el.tree('selectNode', firstChild);
            lastChildren = el.tree('getChildren', lastRootNode);
            el.tree('selectRange', lastChildren.first(), lastChildren.last(), true);

            equal(el.tree('getSelected').length, lastChildren.length + 1, 'Range selected and previous selection preserved');

            QUnit.start();
        });
    });

    asyncTest('getState, setState, getJson', 3, function testState() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'), oldJson, newJson;
            el.tree('deselectAll');

            el.tree('selectNode', node);
            oldJson = el.tree('getJson');
            var status = el.tree('getState');

            ok(oldJson.length > 0, 'Json length > 0');

            el.tree('dehoverNode', node);
            el.tree('deselectNode', node);

            el.tree('setState', status);
            newJson = el.tree('getJson');

            ok(el.tree('isSelected', node), 'Node selected');
            deepEqual(oldJson, newJson, 'Json identical');

            QUnit.start();
        });
    });

    asyncTest('getNode', 3, function testGetNode() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'), selectedNodes,
                nextNode = el.tree('getNext', node, true);

            el.tree('selectNode', node);
            el.tree('selectNode', nextNode, true);

            selectedNodes =  el.tree('getNode');

            ok(nextNode.is(selectedNodes), 'Last selected node returned');
            equal(selectedNodes.length, 1, 'Only 1 node returned');

            selectedNodes =  el.tree('getNode', null, true);

            equal(selectedNodes.length, 2, 'All selected nodes returned');

            QUnit.start();
        });
    });

    asyncTest('defaults: disableNestedSelection', 3, function testDisableNestedSelection() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'), selectedNodes,
                firstChild = el.tree('getChildren', node).first();

            el.tree('selectNode', node);
            el.tree('selectNode', firstChild, true);

            selectedNodes = el.tree('getSelected');
            equal(selectedNodes.length, 1, 'Only 1 node got selected');
            ok(selectedNodes.is(node), 'Selection wasn\'t changed after first selection');

            el.off('.tree');
            $.tree.__destruct(el);
            el.remove();
        });

        // create a new tree to test changed config options
        $.extend(config, {}, {
            ui: {
                disableNestedSelection: false
            }
        });
        var newEl = $('<div class="newElement"></div>').appendTo('body');
        newEl.tree(config);

        newEl.on('__ready.tree', function onReady() {
            var node = newEl.tree('getNode', '#Node0'), selectedNodes,
                firstChild = newEl.tree('getChildren', node).first();

            newEl.tree('selectNode', node);
            newEl.tree('selectNode', firstChild, true);

            selectedNodes = newEl.tree('getSelected');
            equal(selectedNodes.length, 2, 'Both nodes got selected');

            newEl.off('.tree');
            $.tree.__destruct(newEl);
            newEl.remove();

            QUnit.start();
        });
    });

    // TODO cleanNode, test key config options
})(jQuery);
