/*global QUnit: true, module: true, asyncTest: true, ok: true, equal: true, strictEqual: true */
(function ($) {
    'use strict';

    var el;

    module('API Core', {
        setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree({
                core: {
                    animation: 0
                },
                plugins: ['json'],
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

    asyncTest('event parameters', 10, function testEventParameters() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0');

            el.on('beforeCloseNode.tree', function onBeforeCloseNode(ev, data) {
                ok(true, 'beforeCloseNode fired');
                ok(typeof data.args !== 'undefined', 'beforeCloseNode: data.args passed');
                ok(typeof data.instance !== 'undefined', 'beforeCloseNode: data.instance passed');
                equal(data.plugin, 'core', 'beforeCloseNode: data.plugin passed');
                equal(data.func, 'closeNode', 'beforeCloseNode: data.func passed');
            });
            el.on('afterCloseNode.tree', function onAfterCloseNode(ev, data) {
                ok(true, 'afterCloseNode fired');
                ok(typeof data.args !== 'undefined', 'afterCloseNode: data.args passed');
                ok(typeof data.instance !== 'undefined', 'afterCloseNode: data.instance passed');
                equal(data.plugin, 'core', 'afterCloseNode: data.plugin passed');
                equal(typeof data.result, 'object', 'afterCloseNode: data.result passed');
            });

            el.tree('openNode', node);
            el.tree('closeNode', node);

            QUnit.start();
        });
    });

    asyncTest('core.getNode', 5, function testGetNode() {
        el.on('__ready.tree', function onReady() {
            var node = el.find('#Node0');

            ok(node.is(el.tree('getNode', '#Node0')), 'node found via selector');
            ok(node.is(el.tree('getNode', node)), 'node found via jQuery object');
            ok(node.is(el.tree('getNode', node[0])), 'node found via dom object');
            strictEqual(el.tree('getNode', el), -1, 'returning -1 when node is tree container');
            strictEqual(el.tree('getNode', 'abc'), false, 'returning false when node wasn\'t found');

            QUnit.start();
        });
    });

    asyncTest('core.getNext, getPrev', 7, function testGetNextPrev() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                next = el.tree('getNext', node, true),
                children = el.tree('getChildren', node),
                grandChildren = el.tree('getChildren', children.last()),
                tempChildren = grandChildren,
                leaf;
            el.tree('closeAll');
            el.tree('openNode', node);
            el.tree('openNode', children.last());

            // get last leaf of grandChildren
            do  {
                leaf = tempChildren.last();
                tempChildren = el.tree('getChildren', leaf);
            } while (tempChildren.length !== 0);

            ok(next.length > 0, 'Next returned');
            ok(node.is(el.tree('getPrev', next, true)), 'Prev of next is original node');

            ok(children.first().is(el.tree('getNext', node)), 'Non strict: the nodes first child is returned ' +
                'when the node is open, even if the next sibling exists');
            ok(next.is(el.tree('getNext', leaf)), 'Non strict: the parent\'s next sibling is returned');
            ok(el.tree('getNext', children.last(), true) === false, 'Strict: false returned');
            ok(node.is(el.tree('getPrev', children.first())), 'Non strict: the parent is returned');
            ok(el.tree('getPrev', children.first(), true) === false, 'Strict: false returned');

            QUnit.start();
        });
    });

    asyncTest('core.getChildren, getParent', 7, function testGetChildrenParent() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'), rootParent, children, parent,
                rootElements = el.tree('getChildren', el);

            el.tree('getChildren', node, function getChildrenCallback(passedNode, passedChildren) {
                ok(true, 'getChildren: callback called');
                ok(node.is(passedNode), 'getChildren callback: correct node passed');
                ok(passedChildren.length > 0, 'getChildren callback: children passed');

                children = passedChildren;
                parent = el.tree('getParent', children.last());

                ok(children.length > 0, 'Children returned');
                ok(node.is(parent), 'Parent of children is original node');
                ok(rootElements.find(node), 'Passing the tree returns root nodes');
                rootParent = el.tree('getParent', rootElements);
                ok(rootElements.is(el.tree('getChildren', rootParent)), 'Traversing to root and back works');
            });

            QUnit.start();
        });
    });

    asyncTest('core.isLeaf, isParent', 4, function testIsLeafParent() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                children = node,
                leaf = node;

            // get a leaf
            do  {
                leaf = children.last();
                children = el.tree('getChildren', leaf);
            } while (children.length !== 0);

            ok(!el.tree('isLeaf', node), 'Var Node is not a leaf');
            ok(el.tree('isLeaf', leaf), 'Var Leaf is a leaf');
            ok(el.tree('isParent', node), 'Node is a parent');
            ok(!el.tree('isParent', leaf), 'Leaf is not a parent');

            QUnit.start();
        });
    });

    asyncTest('core.lock', 6, function testLock() {
        el.on('__ready.tree', function onReady() {
            el.on('afterLock.tree', function onAfterLock(ev, data) {
                ok(true, 'afterLock fired');
                ok(typeof data.result === 'undefined', 'afterLock: Nothing passed');
            });
            el.on('afterUnlock.tree', function onAfterUnlock(ev, data) {
                ok(true, 'afterUnlock fired');
                ok(typeof data.result === 'undefined', 'afterLock: Nothing passed');
            });

            el.tree('lock');
            ok(el.is('.tree-locked'), 'tree is locked');
            el.tree('unlock');
            ok(!el.is('.tree-locked'), 'tree is unlocked');

            QUnit.start();
        });
    });

    asyncTest('core.openNode, toggleNode, isOpen, isClosed', 14, function testOpenNode() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                childNode = el.tree('getChildren', '#Node0').first(),
                toggleNode = el.tree('getNode', '#Node1');
            el.tree('closeNode', node);

            el.on('afterOpenNode.tree', function onAfterOpenNode(ev, data) {
                ok(true, 'afterOpenNode fired');
                ok(childNode.is(data.result.obj), 'afterOpenNode: Correct node passed');
                el.off('afterOpenNode.tree');
                // keep track of how many times this event is fired (e.g. for toggle)
                el.on('afterOpenNode.tree', function onAfterOpenNode() {
                    ok(true, 'afterOpenNode fired');
                });
            });
            el.on('afterCloseNode.tree', function onAfterCloseNode(ev, data) {
                ok(true, 'afterCloseNode fired');
                ok(toggleNode.is(data.result.obj), 'afterCloseNode: Correct node passed');
                el.off('afterCloseNode.tree');
                // keep track of how many times this event is fired (e.g. for toggle)
                el.on('afterCloseNode.tree', function onAfterCloseNode() {
                    ok(true, 'afterCloseNode fired');
                });
            });

            ok(el.tree('isClosed', childNode), 'Node initially closed');

            // this only works because node isn't loaded async (not implemented in core)
            var opened = el.tree('openNode', childNode, function openNodeCallback(passedNode, status) {
                ok(true, 'Open callback called');
                ok(status, 'Node status parameter passed and correct');
                ok(passedNode.is(childNode), 'Correct node passed');
                ok(el.tree('isOpen', passedNode), 'Node opened');
            }, 0);
            ok(opened !== false, 'Correct return value');

            opened = el.tree('openNode', childNode);
            ok(opened === false, 'Try again: Node was already open');

            el.tree('closeNode', toggleNode);
            el.tree('toggleNode', toggleNode);
            ok(el.tree('isOpen', toggleNode), 'Node toggled open');
            el.tree('toggleNode', toggleNode);
            ok(el.tree('isClosed', toggleNode), 'Node toggled shut');

            QUnit.start();
        });
    });

    asyncTest('core.closeNode', 2, function testCloseNode() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0');
            el.tree('openNode', node);
            ok(el.tree('isOpen', node), 'Node initially open');

            el.tree('closeNode', node, 0);
            ok(el.tree('isClosed', node), 'Node closed');

            QUnit.start();
        });
    });

    asyncTest('core.openAll, closeAll', 7, function testOpenAll() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                children = el.tree('getChildren', node);
            el.tree('closeNode', node);

            el.on('afterOpenAll.tree', function onAfterOpenAll(ev, data) {
                ok(true, 'afterOpenAll fired');
                ok(node.is(data.result.obj), 'afterOpenAll: Correct node passed');
            });
            el.on('afterCloseAll.tree', function onAfterCloseAll(ev, data) {
                ok(true, 'afterCloseAll fired');
                ok(node.is(data.result.obj), 'afterCloseAll: Correct node passed');
            });

            el.tree('openAll', node, null, function openAllCallback() {
                ok(true, 'openAll: callback called');
            });
            ok(el.tree('isOpen', children.first()), 'All children opened');
            el.tree('closeAll', node);
            ok(el.tree('isClosed', children.first()), 'All children closed');

            QUnit.start();
        });
    });

    asyncTest('core.getText, setText', 5, function testGetText() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                oldText = el.tree('getText', node),
                text = 'RenamedNode';

            el.on('afterSetText.tree', function onAfterSetText(ev, data) {
                ok(true, 'afterSetText fired');
                ok(node.is(data.result.obj), 'afterSetText: Correct node passed');
                equal(data.result.title, text, 'afterSetText: Correct old text passed');
                equal(data.result.old, oldText, 'afterSetText: Correct new text passed');
            });

            el.tree('setText', node, text);
            equal(el.tree('getText', node), text, 'Node has new Text');

            QUnit.start();
        });
    });

	asyncTest('core.disableNode, enableNode, isDisabled, disableAll, enableAll', 12, function testGetText() {
		el.on('__ready.tree', function onReady() {
			var node = el.tree('getNode', '#Node0'),
				children = el.tree('getChildren', node),
				firstChild = children.first(),
				oldText = el.tree('getText', node),
				text = 'DisabledNode',
				text2 = 'DisabledNodeSetText';

			ok(el.tree('isDisabled', node) === false, 'Tree node enabled initially');

			el.tree('disableNode', node, text);

			ok(el.tree('isDisabled', node), 'Tree node disabled');
			equal(el.tree('getDisabledText', node), text, 'Disabled text set to ' + text);
			ok(el.tree('isDisabled', firstChild) === false, 'Child node still enabled'); // children are only affected when checkbox plugin used

			el.tree('setDisabledText', node, text2);

			equal(el.tree('getDisabledText', node), text2, 'Disabled text set to ' + text2);

			el.tree('enableNode', node);

			ok(el.tree('isDisabled') === false, 'Tree node enabled');

			el.tree('disableAll', text);

			ok(el.tree('isDisabled', node), 'Tree node disabled');
			equal(el.tree('getDisabledText', node), text, 'Disabled text set to ' + text);
			ok(el.tree('isDisabled', firstChild), 'Child node disabled');
			equal(el.tree('getDisabledText', firstChild), text, 'Disabled text set to ' + text);

			el.tree('enableAll', text);

			ok(el.tree('isDisabled', node) === false, 'Tree node enabled');
			ok(el.tree('isDisabled', firstChild) === false, 'Child node enabled');

			QUnit.start();
		});
	});

    asyncTest('core.getState, setState', 13, function testSetState() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                children = el.tree('getChildren', node);

            el.on('afterSetState.tree', function onAfterSetState(ev, data) {
                ok(true, 'afterSetState fired');
                ok(typeof data.result === 'undefined', 'afterSetState: Nothing passed');
            });

            el.tree('closeAll');
            el.tree('openNode', node);
            el.tree('openNode', children.first());
            el.tree('disableNode', children.eq(1));

            var state = el.tree('getState');
            ok(typeof state.core.open !== 'undefined', 'Status contains open property');
            ok(typeof state.core.scroll !== 'undefined', 'Status contains scroll property');
            ok(typeof state.core.scroll.left !== 'undefined', 'Status contains scroll.left property');
            ok(typeof state.core.scroll.top !== 'undefined', 'Status contains scroll.top property');
            equal(state.core.open.length, 2, 'Status contains two opened elements');
            ok($.inArray(node.prop('id'), state.core.open) !== -1, 'Status open contains node');
            ok($.inArray(children.first().prop('id'), state.core.open) !== -1, 'Status open contains the nodes first child');
            equal(children.eq(1).prop('id'), state.core.disabled[0].id, 'disabled node in state');

            state.core.open = [];
            state.core.open.push(children.last().prop('id'));

            el.tree('setState', state, function setStateCallback() {
                ok(true, 'setState callback called');
                ok(!el.tree('isOpen', node), 'Node was closed through setState');
                ok(el.tree('isOpen', children.last()), 'Node was opened through setState');
            });

            QUnit.start();
        });
    });

    asyncTest('core.loadNode', 4, function testLoadNode() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0');

            el.on('afterLoadNode.tree', function onAfterLoadNode(ev, data) {
                ok(true, 'afterLoadNode fired');
                ok(node.is(data.result.obj), 'afterLoadNode: Correct node passed');
                ok(typeof data.result.status !== 'undefined', 'afterLoadNode: Status passed');
            });

            ok(el.tree('loadNode', node), 'Correct return value');

            QUnit.start();
        });
    });

    asyncTest('core.parseJson', 9, function testParseJson() {
        el.on('__ready.tree', function onReady() {
            var node, nodes;

            node = el.tree('parseJson', 'createdNode');
            equal(el.tree('getText', node), 'createdNode', 'Node created has correct title');

            node = el.tree('parseJson', ['node1', 'node2']);
            nodes = node.find('li');
            equal(nodes.length, 2, 'Correct amount of nodes was created');
            equal(el.tree('getText', nodes[0]), 'node1', 'Node 1 created has correct title');

            node = el.tree('parseJson', {
                title: 'createdNode',
                liAttr: {
                    id: 'createdNodeId'
                },
                aAttr: {
                    href: 'http://example.com/'
                },
                data: {
                    a: 'b'
                }
            });
            equal(el.tree('getText', node), 'createdNode', 'Node created has correct title');
            equal(node.prop('id'), 'createdNodeId', 'Node has correct id');
            equal(node.find('a').prop('href'), 'http://example.com/', 'Node has correct href');
            equal(node.data('a'), 'b', 'Node has correct data');

            node = el.tree('parseJson', {
                children: ['child1', 'child2']
            });
            nodes = el.tree('getChildren', node);
            equal(nodes.length, 2, 'Correct amount of children was created');
            equal(el.tree('getText', nodes[0]), 'child1', 'Correct amount of children was created');

            QUnit.start();
        });
    });

    asyncTest('core.createNode, deleteNode', 21, function testCreateNode() {
        el.on('__ready.tree', function onReady() {
            var parent = el.tree('getNode', '#Node0'),
                nodeJson = {
                    liAttr: {
                        id: 'createdNode'
                    },
                    children: [
                        {
                            liAttr: {
                                id: 'createdNodeChild'
                            }
                        }
                    ]
                },
                createdNode, returnedNode;
            el.tree('closeAll');

            el.on('afterCreateNode.tree', function onAfterCreateNode(ev, data) {
                ok(true, 'afterCreateNode fired');
                equal(typeof data.result.obj, 'object', 'afterCreateNode: Node passed');
                ok(el.tree('getNode', data.result.parent) === el.tree('getNode', el), 'afterCreateNode: Parent passed');
                equal(data.result.position, data.result.obj.index(), 'afterCreateNode: Position passed and correct');
            });
            el.on('afterDeleteNode.tree', function onAfterDeleteNode(ev, data) {
                ok(true, 'afterDeleteNode fired');
                ok(returnedNode.is(data.result.obj), 'afterDeleteNode: Node passed and correct');
                ok(el.tree('getNode', data.result.parent) === el.tree('getNode', el), 'afterDeleteNode: Parent passed and correct');
                ok(typeof data.result.previous !== 'undefined', 'afterDeleteNode: Previous passed');
            });

            // position can be "before", "after", "first", "last", "inside" or a numerical index.
            // not async so we expect the node
            returnedNode = el.tree('createNode', parent, nodeJson, 'before', function createNodeBeforeCallback(node) {
                ok(true, 'Callback called');
                createdNode = el.tree('getNode', '#createdNode');
                ok(createdNode, 'Node created');
                ok(node.is(createdNode), 'Correct node passed to callback');
                ok(node.is(el.tree('getPrev', parent)), 'Before: Correct position');
                ok(el.tree('getChildren', createdNode).first().prop('id') === 'createdNodeChild', 'Child created');
            });
            ok(returnedNode.is(el.tree('getNode', '#createdNode')), 'Correct node returned');

            ok(returnedNode.is(el.tree('deleteNode', returnedNode)), 'Delete: Correct return value');
            ok(!el.tree('getNode', '#createdNode'), 'Node deleted from tree');

            el.off('afterCreateNode.tree');
            el.off('afterDeleteNode.tree');

            el.tree('createNode', parent, nodeJson, 'after', function createNodeAfterCallback(node) {
                ok(node.is(el.tree('getNext', parent)), 'After: Correct position');
                el.tree('deleteNode', node);
            });

            el.tree('createNode', parent, nodeJson, 'first', function createNodeFirstCallback(node) {
                ok(node.is(el.tree('getChildren', parent).first()), 'First: Correct position');
                el.tree('deleteNode', node);
            });

            el.tree('createNode', parent, nodeJson, 'last', function createNodeLastCallback(node) {
                ok(node.is(el.tree('getChildren', parent).last()), 'Last: Correct position');
                el.tree('deleteNode', node);
            });

            el.tree('createNode', parent, nodeJson, 'inside', function createNodeInsideCallback(node) {
                ok(node.is(el.tree('getChildren', parent).first()), 'Inside: Correct position');
                el.tree('deleteNode', node);
            });

            el.tree('createNode', parent, nodeJson, '2', function createNode2Callback(node) {
                ok(node.index() === 2 && $.inArray(node, el.tree('getChildren', parent)), 'Numerical: Correct position');
                el.tree('deleteNode', node);
            });

            QUnit.start();
        });
    });

    asyncTest('core.getJson', 3, function testGetJson() {
        el.on('__ready.tree', function onReady() {
            var oldJson = el.tree('getJson'), newJson,
                rootNodes = el.tree('getChildren', el);

            ok(!$.isEmptyObject(oldJson), 'Old Json not empty');
            el.tree('deleteNode', rootNodes.last());
            el.tree('setText', rootNodes.first(), 'renamedNode');

            newJson = el.tree('getJson');
            equal((oldJson.length - 1), newJson.length, 'New json has one element less');
            equal('renamedNode', newJson[0].title, 'New json has the new title');

            QUnit.start();
        });
    });
// this is removed from testing because persistance is currently not implemented
/*
    asyncTest('core.refresh', 3, function testRefresh() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el), oldJson, newJson;
            el.tree('setText', rootNodes.first(), 'renamedNode');
            el.tree('createNode', rootNodes.first(), {
                title: 'createdNode',
                liAttr: {
                    id: 'createdNodeId'
                },
                aAttr: {
                    href: 'http://example.com/'
                },
                data: {
                    a: 'b'
                }
            }, 'before', function createNodeCallback() {
                oldJson = el.tree('getJson');
                ok(oldJson.length !== 0, 'Old Json not empty');
                el.tree('refresh');
                newJson = el.tree('getJson');
                equal(oldJson.length, newJson.length, 'New node present after refresh');
                deepEqual(oldJson, newJson, 'Tree structure preserved');
            });

            QUnit.start();
        });
    });
*/
    asyncTest('core.scrollToNode', 4, function testScrollToNode() {
        el.on('__ready.tree', function onReady() {

            /* @return {Boolean} True if the element is completely visible. */
            var elementVisibleInContainer = function elementVisibleInContainer(el, container) {
                var elRect = el.getBoundingClientRect(),
                    containerRect = container.getBoundingClientRect();

                return (
                    elRect.top >= containerRect.top &&
                    elRect.left >= containerRect.left &&
                    elRect.bottom <= containerRect.bottom &&
                    elRect.right <= containerRect.right
                );
            };
            var children = el.tree('getChildren', el), node,
                firstNode = children.first();

            el.tree('openAll');
            // ensure that node is off screen
            el.css({
                width: '120px',
                height: '80px',
                overflow: 'scroll'
            });
            // get last leaf
            do  {
                node = children.last();
                children = el.tree('getChildren', node);
            } while (children.length !== 0);

            // Test only the nodes text because the node (which includes all its children) may be to long to be visible in the
            // container with the defined size.
            ok(!elementVisibleInContainer(node.find('> a')[0], el[0]), 'Last node not visible at first');
            el.tree('scrollToNode', node);
            ok(elementVisibleInContainer(node.find('> a')[0], el[0]), 'Last node completely visible after scrolling.');

            ok(!elementVisibleInContainer(firstNode.find('> a')[0], el[0]), 'First node not visible now.');
            el.tree('scrollToNode', firstNode);
            ok(elementVisibleInContainer(firstNode.find('> a')[0], el[0]), 'First node completely visible.');

            QUnit.start();
        });
    });

    asyncTest('core.moveNode', 22, function testMoveNode() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el), success,
                firstRootNode = rootNodes.first(),
                lastRootNode = rootNodes.last(),
                children = el.tree('getChildren', rootNodes.first());
            el.tree('closeAll');

            ok(!el.tree('moveNode', rootNodes.first(), children.first()), 'Node cannot be moved into itself');

            el.on('afterMoveNode.tree', function onAfterMoveNode(ev, data) {
                ok(true, 'afterMoveNode fired');
                ok(firstRootNode.is(data.result.obj), 'afterMoveNode: Node passed');
                ok(el.tree('getNode', data.result.parent) === el.tree('getNode', el), 'afterMoveNode: Parent passed');
                equal(data.result.position, data.result.obj.index(), 'afterMoveNode: Position passed and correct');
                ok(el.tree('getNode', data.result.oldParent) === el.tree('getNode', el), 'afterMoveNode: oldParent passed');
                equal(data.result.isMulti, false, 'afterMoveNode: isMulti passed');
                ok(typeof data.result.oldInstance !== 'undefined', 'afterMoveNode: oldInstance passed');
                ok(typeof data.result.newInstance !== 'undefined', 'afterMoveNode: newInstance passed');
            });

            success = el.tree('moveNode', firstRootNode, lastRootNode, 'after', function moveNodeAfterCallback(movedNode, newParent, index) {
                ok(true, 'Callback called');
                ok(movedNode.is(firstRootNode), 'Correct node passed');
                ok(newParent === -1, 'Correct parent passed');
                ok(typeof index === 'number', 'Index passed');
                ok(lastRootNode.is(el.tree('getPrev', movedNode)), 'After: Correct position');
                ok(!movedNode.is(el.tree('getChildren', el).first()), 'Node removed from old position');
            });
            ok(success === true, 'Correct value returned');

            el.off('afterMoveNode.tree');

            el.tree('moveNode', firstRootNode, lastRootNode, 'before', function moveNodeBeforeCallback(movedNode) {
                ok(movedNode.is(el.tree('getChildren', el).first()), 'Before: Correct position');
                // move back to original position
                el.tree('moveNode', firstRootNode, el, 0);
            });

            el.tree('moveNode', firstRootNode, lastRootNode, 'first', function moveNodeFirstCallback(movedNode) {
                ok(movedNode.is(el.tree('getChildren', lastRootNode).first()), 'First: Correct position');
                ok(!movedNode.is(el.tree('getChildren', el).first()), 'Node removed from old position');
                el.tree('moveNode', firstRootNode, el, 0);
            });

            el.tree('moveNode', firstRootNode, lastRootNode, 'last', function moveNodeLastCallback(movedNode) {
                ok(movedNode.is(el.tree('getChildren', lastRootNode).last()), 'Last: Correct position');
                el.tree('moveNode', firstRootNode, el, 0);
            });

            el.tree('moveNode', firstRootNode, lastRootNode, 'inside', function moveNodeInsideCallback(movedNode) {
                ok(movedNode.is(el.tree('getChildren', lastRootNode).first()), 'Inside: Correct position');
                el.tree('moveNode', firstRootNode, el, 0);
            });

            el.tree('moveNode', firstRootNode, lastRootNode, '2', function moveNode2Callback(movedNode) {
                ok(movedNode.index() === 2 && $.inArray(movedNode, el.tree('getChildren', lastRootNode)), 'Numerical: Correct position');
                el.tree('moveNode', firstRootNode, el, 0);
            });

            QUnit.start();
        });
    });

    asyncTest('core.copyNode', 23, function testCopyNode() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el), success, oldCopiedNode,
                firstRootNode = rootNodes.first(),
                lastRootNode = rootNodes.last(),
                children = el.tree('getChildren', rootNodes.first());
            el.tree('closeAll');
            el.tree('setText', firstRootNode, 'NodeToCopy');

            ok(el.tree('copyNode', rootNodes.first(), children.first(), function copyNodeCallback(copiedNode) {
                el.tree('deleteNode', copiedNode);
            }), 'Node can be copied into itself');

            el.on('afterCopyNode.tree', function onAfterCopyNode(ev, data) {
                ok(true, 'afterCopyNode fired');
                ok(typeof data.result.obj !== 'undefined', 'afterCopyNode: Node passed');
                ok(el.tree('getNode', data.result.parent) === el.tree('getNode', el), 'afterCopyNode: Parent passed');
                equal(data.result.position, data.result.obj.index(), 'afterCopyNode: Position passed and correct');
                ok(el.tree('getNode', data.result.oldParent) === el.tree('getNode', el), 'afterCopyNode: oldParent passed');
                equal(data.result.isMulti, false, 'afterCopyNode: isMulti passed');
                ok(typeof data.result.oldInstance !== 'undefined', 'afterCopyNode: oldInstance passed');
                ok(typeof data.result.newInstance !== 'undefined', 'afterCopyNode: newInstance passed');
            });

            success = el.tree('copyNode', firstRootNode, lastRootNode, 'after', function copyNodeAfterCallback(copiedNode, newParent, newNodeIndex, oldNode) {
                ok(true, 'Callback called');
                ok(firstRootNode.is(oldNode), 'Correct node passed');
                ok(!copiedNode.is(oldNode), 'New node is not identical with old node');
                ok(copiedNode.prop('id') !== oldNode.prop('id'), 'New node has got an other id than the old node');
                equal(el.tree('getText', copiedNode), 'NodeToCopy', 'Copied Node has same title.');
                ok(newParent === -1, 'Correct parent passed');
                ok(typeof newNodeIndex === 'number', 'Index passed');
                ok(lastRootNode.is(el.tree('getPrev', copiedNode)), 'After: Correct position');
                oldCopiedNode = copiedNode;
            });
            ok(success, 'copyNode returned correct value');

            el.off('afterCopyNode.tree');

            el.tree('copyNode', firstRootNode, lastRootNode, 'before', function copyNodeBeforeCallback(copiedNode) {
                ok(copiedNode.is(el.tree('getChildren', el).first()), 'Before: Correct position');
                // ok(copiedNode.prop('id') !== oldCopiedNode.prop('id'), 'New node has got an other id than the last copied node');
                // move back to original position
                el.tree('deleteNode', copiedNode);
                el.tree('deleteNode', oldCopiedNode);
            });

            el.tree('copyNode', firstRootNode, lastRootNode, 'first', function copyNodeFirstCallback(copiedNode) {
                ok(copiedNode.is(el.tree('getChildren', lastRootNode).first()), 'First: Correct position');
                el.tree('deleteNode', copiedNode);
            });

            el.tree('copyNode', firstRootNode, lastRootNode, 'last', function copyNodeLastCallback(copiedNode) {
                ok(copiedNode.is(el.tree('getChildren', lastRootNode).last()), 'Last: Correct position');
                el.tree('deleteNode', copiedNode);
            });

            el.tree('copyNode', firstRootNode, lastRootNode, 'inside', function copyNodeInsideCallback(copiedNode) {
                ok(copiedNode.is(el.tree('getChildren', lastRootNode).first()), 'Inside: Correct position');
                el.tree('deleteNode', copiedNode);
            });

            el.tree('copyNode', firstRootNode, lastRootNode, '2', function copyNode2Callback(copiedNode) {
                ok(copiedNode.index() === 2 && $.inArray(copiedNode, el.tree('getChildren', lastRootNode)), 'Numerical: Correct position');
                el.tree('deleteNode', copiedNode);
            });

            QUnit.start();
        });
    });

    asyncTest('core.cut, copy, paste', 14, function testCutCopyPaste() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el), copiedNode, movedNode,
                nodeToCopy = rootNodes.first(),
                targetNode = el.tree('getChildren', rootNodes.last()).last();
            el.tree('setText', nodeToCopy, 'NodeToCopy');

            el.on('afterCopy.tree', function onAfterCopy(ev, data) {
                ok(true, 'afterCopy fired');
                ok(nodeToCopy.is(data.result.obj), 'afterCopy: Correct node passed');
            });
            el.on('afterCut.tree', function onAfterCut(ev, data) {
                ok(true, 'afterCut fired');
                ok(nodeToCopy.is(data.result.obj), 'afterCut: Correct node passed');
            });

            el.tree('copy', nodeToCopy);
            el.tree('paste', targetNode);
            copiedNode = el.tree('getChildren', targetNode).last();
            equal(el.tree('getText', copiedNode), 'NodeToCopy', 'Copied Node has same title.');
            ok(!nodeToCopy.is(copiedNode), 'Copied node isn\'t same object as original node');
            el.tree('deleteNode', copiedNode);

            ok(!el.tree('canPaste'), 'Copy operation finished, canPaste reset');
            ok(!el.tree('paste', targetNode), 'Cannot paste without node selected');

            el.on('afterPaste.tree', function onAfterPaste(ev, data) {
                ok(true, 'afterPaste fired');
                ok(typeof data.result.obj !== 'undefined', 'afterPaste: Parent passed');
                ok(nodeToCopy.is(data.result.nodes), 'afterPaste: Correct node passed');
                ok(typeof data.result.mode !== 'undefined', 'afterPaste: Copy mode passed');
            });

            el.tree('cut', nodeToCopy);
            el.tree('paste', targetNode);
            movedNode = el.tree('getChildren', targetNode).last();
            // rootNodes changed
            rootNodes  = el.tree('getChildren', el);
            ok(nodeToCopy.is(movedNode), 'Moved node equals original node');
            ok(!rootNodes.first().is(movedNode), 'Node removed from old position');

            QUnit.start();
        });
    });

})(jQuery);
