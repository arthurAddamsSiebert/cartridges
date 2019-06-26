/*global QUnit: true, module: true, asyncTest: true, ok: true, equal: true */
(function ($) {
    'use strict';

    var el;

    // TODO: Write test for not loaded nodes when implementation is finished

    // ---------------- Singleselection ------------------------------------------------------
    // Since single selection has no impact on child nodes, so progressive render doesn't need testing;
    // neither does disabling of nodes
    module('API Checkbox Singleselection, Static Render', {
        setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree({
                core: {
                    animation: 0
                },
                plugins: ['json', 'checkbox', 'themes'],
                json: {
                    data: window.demoData,
                    progressiveRender: false
                },
                checkbox: {
                    single: true,
                    threeState: true,
                    name: 'treeSelectedNodes'
                }
            });
        },
        teardown: function teardown() {
            el.off('.tree');
            $.tree.__destruct(el);
            el.remove();
        }
    });

    asyncTest('checkNode, unchecknode, isChecked, isUndetermined, isUnchecked, uncheckAll', 14, function testSingleSelectionCheck() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                children = el.tree('getChildren', node),
                firstChild = children.first(),
                lastChild = children.last(),
                grandChildren;

            ok(!el.tree('isChecked', firstChild), 'Node not checked');
            el.on('afterCheckNode.tree', function onAfterCheckNode(ev, data) {
                ok(true, 'afterCheckNode fired');
                ok(firstChild.is(data.result.obj), 'afterCheckNode: Correct node passed');
                ok(children.length > 1, 'there are enough nodes for this test');
//                ok(el.tree('isChecked', firstChild), 'First child checked');
                ok(el.tree('isUndetermined', node), 'Node undetermined');
                grandChildren = el.tree('getChildren', children);
                ok(el.tree('isUnchecked', grandChildren.first()), 'First grandchild not checked');
                el.off('afterCheckNode.tree');

                children.each(function checkEachNode() {
                    el.tree('checkNode', this);
                });

                ok(el.tree('isChecked', lastChild), 'Last child checked');
                ok(el.tree('isUnchecked', firstChild), 'First child not checked');
                ok(el.tree('isUndetermined', node), 'Node undetermined');


                el.tree('uncheckNode', lastChild);
                ok(el.tree('isUnchecked', lastChild), 'Last child not checked');
                ok(el.tree('isUnchecked', node), 'Node no longer undetermined');

                el.tree('checkNode', lastChild);
                el.tree('uncheckAll');
                ok(el.tree('isUnchecked', node), 'Node unchecked');

                QUnit.start();
            });
            el.on('afterUncheckNode.tree', function onAfterUncheckNode(ev, data) {
                ok(true, 'afterUncheckNode fired');
                ok(firstChild.is(data.result.obj), 'afterCheckNode: Correct node passed');
                el.off('afterUncheckNode.tree');
            });

            el.tree('checkNode', firstChild);
        });
    });

    // ---------------- Multiselection ------------------------------------------------------
    module('API Checkbox Multiselection, Static Render', {
        setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree({
                core: {
                    animation: 0
                },
                plugins: ['json', 'checkbox', 'themes'],
                json: {
                    data: window.demoData,
                    progressiveRender: false
                },
                checkbox: {
                    single: false,
                    threeState: true,
                    name: 'treeSelectedNodes'
                }
            });
        },
        teardown: function teardown() {
            el.off('.tree');
            $.tree.__destruct(el);
            el.remove();
        }
    });

    asyncTest('Static Render: checkNode, unchecknode, isChecked, isUndetermined, uncheckAll', 13, function testStaticRenderChecking() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                children = el.tree('getChildren', node),
                firstChild = children.first(),
                grandChildren;

            ok(!el.tree('isChecked', firstChild), 'Node not checked');
            el.on('afterCheckNode.tree', function onAfterCheckNode(ev, data) {
                ok(true, 'afterCheckNode fired');
                ok(firstChild.is(data.result.obj), 'afterCheckNode: Correct node passed');
                ok(children.length > 1, 'there are enough nodes for this test');
                ok(el.tree('isChecked', firstChild), 'First child checked');
                ok(el.tree('isUndetermined', node), 'Node undetermined');
                grandChildren = el.tree('getChildren', children);
                ok(el.tree('isChecked', grandChildren.first()), 'First grandchild checked');
                el.off('afterCheckNode.tree');

                children.each(function checkEachNode() {
                    el.tree('checkNode', this);
                });
                ok(el.tree('isChecked', children.last()), 'Last child checked');
//                ok(el.tree('isChecked', node), 'Node checked');

                el.tree('uncheckNode', firstChild);
                ok(el.tree('isUnchecked', firstChild), 'First child not checked');
                ok(el.tree('isUndetermined', node), 'Node undetermined');

                el.tree('uncheckAll');
                ok(el.tree('isUnchecked', node), 'Nodes unchecked');

                QUnit.start();
            });
            el.on('afterUncheckNode.tree', function onAfterUncheckNode(ev, data) {
                ok(true, 'afterUncheckNode fired');
                ok(firstChild.is(data.result.obj), 'afterCheckNode: Correct node passed');
                el.off('afterUncheckNode.tree');
            });

            el.tree('checkNode', firstChild);
        });
    });

    // TODO test title
    asyncTest('Static Render: disableNode, enableNode, isDisabled', 12, function testStaticRenderDisabling() {
        el.on('__ready.tree', function onReady() {
            var node = el.tree('getNode', '#Node0'),
                children = el.tree('getChildren', node),
                firstChild = children.first(),
                disabledText = 'A disabled Node',
                grandChildren;

            el.on('afterEnableNode.tree', function onAfterEnableCheckbox(ev, data) {
                ok(true, 'afterEnableNode fired');
                ok(node.is(data.result.obj), 'afterEnableNode: Correct node passed');
                el.off('afterEnableNode.tree');
            });
            el.on('afterDisableNode.tree', function onAfterDisableCheckbox(ev, data) {
                ok(true, 'afterDisableNode fired');
                ok(node.is(data.result.obj), 'afterDisableNode: Correct node passed');
                el.off('afterDisableNode.tree');
            });

            ok(!el.tree('isDisabled', node), 'Checkbox not disabled');

            el.tree('disableNode', node, disabledText);

            ok(el.tree('isDisabled', node), 'Checkbox disabled');
            ok(el.tree('isDisabled', firstChild), 'Childs checkbox disabled');
            equal(el.tree('getJson', node)[0].data.core.disabledText, disabledText, 'Correct text set to disabled node');
            // TODO test disabledText of child nodes when requirements clear

            grandChildren = el.tree('getChildren', firstChild);
            ok(el.tree('isDisabled', grandChildren.first()), 'Child of disabled checkbox is disabled');

            el.tree('enableNode', firstChild);

            ok(el.tree('isDisabled', firstChild), 'Childs checkbox still disabled');

            el.tree('enableNode', node);

            ok(!el.tree('isDisabled', node), 'Checkbox enabled');

            children.each(function disableEachChild() {
                el.tree('disableNode', this);
            });

            ok(el.tree('isDisabled', firstChild), 'Childs checkbox disabled');
//            ok(el.tree('isDisabled', node), 'Parent disabled if all children disabled');


            QUnit.start();
        });
    });

    asyncTest('Static Render: checked and disabled', 16, function testStaticCheckedAndDisabled() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                children = el.tree('getChildren', firstRootNode),
                firstChild = children.first(),
                lastChild = children.last();

            // disabled and checked
            $.each(children, function checkAllChildren() {
                el.tree('checkNode', this);
            });
            el.tree('disableNode', lastChild);

//            ok(el.tree('isChecked', firstRootNode), 'Root node checked when all children checked');

            el.tree('uncheckNode', firstChild);

            ok(el.tree('isUndetermined', firstRootNode), 'Root node undetermined when not all children checked');

            el.tree('checkNode', firstChild);

//            ok(el.tree('isChecked', firstRootNode), 'Root node checked when all children checked');

            el.tree('uncheckNode', firstRootNode);

            ok(el.tree('isUndetermined', firstRootNode), 'Root node undetermined when all children except disabled unchecked');
            ok(el.tree('isUnchecked', firstChild), 'Child not checked after unchecking parent with disabled children');
            ok(el.tree('isChecked', lastChild), 'Disabled node kept checked status');

            el.tree('checkNode', firstRootNode);

            ok(el.tree('isChecked', firstRootNode), 'Root node checked when all children including disabled checked');
            ok(el.tree('isChecked', firstChild), 'Child checked after checking parent with disabled and checked children');
            ok(el.tree('isChecked', lastChild), 'Disabled node kept checked status');

            // disabled and unchecked
            el.tree('enableNode', lastChild);
            el.tree('uncheckNode', lastChild);
            el.tree('disableNode', lastChild);

            ok(el.tree('isUndetermined', firstRootNode), 'Root node undetermined when all children except disabled checked');

            el.tree('uncheckNode', firstChild);

            ok(el.tree('isUndetermined', firstRootNode), 'Root node undetermined when not all children checked');

            el.tree('checkNode', firstChild);

            ok(el.tree('isUndetermined', firstRootNode), 'Root node undetermined when all children except disabled checked (after repair)');

            el.tree('checkNode', firstRootNode);

            ok(el.tree('isUndetermined', firstRootNode), 'Root node undetermined when not all children checked');
            ok(el.tree('isChecked', firstChild), 'Child checked after checking parent with disabled and unchecked children');
            ok(el.tree('isUnchecked', lastChild), 'Disabled node kept unchecked status');

            el.tree('uncheckNode', firstRootNode);

            ok(el.tree('isUnchecked', firstRootNode), 'Root node unchecked when no children checked');
            ok(el.tree('isUnchecked', firstChild), 'Child checked after checking parent with disabled and unchecked children');
            ok(el.tree('isUnchecked', lastChild), 'Disabled node kept unchecked status');

            QUnit.start();
        });
    });

    asyncTest('excluded and checked', 18, function testStaticCheckedAndExcluded() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                children = el.tree('getChildren', firstRootNode),
                firstChild = children.first(),
                lastChild = children.last(),
                grandChildren = el.tree('getChildren', firstChild),
                firstGrandChild = grandChildren.first(),
                tempChildren = rootNodes,
                leaf, leafParent;

            // excluded and unchecked -> cleared and checked
            el.tree('excludeNode', firstChild);

            ok(el.tree('isExcluded', firstChild), 'First child excluded');
            ok(el.tree('isUnchecked', firstChild), 'First child not checked');

            el.tree('checkNode', firstRootNode);

            ok(el.tree('isChecked', lastChild), 'Last child checked');
            ok(el.tree('isChecked', firstGrandChild), 'child of excluded Node checked');
            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');

            el.tree('uncheckNode', firstRootNode);

            ok(el.tree('isUnchecked', lastChild), 'Last child not checked');
            ok(el.tree('isUnchecked', firstGrandChild), 'first grandchild not checked');
            ok(el.tree('isUndetermined', firstRootNode), 'First root node not checked');

            el.tree('checkNode', firstRootNode);
            el.tree('clearExcludedState', firstChild);

            ok(el.tree('isExcluded', firstChild) === false, 'First child cleared');
            ok(el.tree('isChecked', firstChild), 'First child checked (state restored) because all children checked');
            ok(el.tree('isChecked', firstRootNode), 'First root node checked');

            // undetermined excluded -> cleared and unchecked
            el.tree('uncheckNode', firstGrandChild);
            el.tree('excludeNode', firstChild);
            el.tree('uncheckNode', firstRootNode);
            el.tree('clearExcludedState', firstChild);

            ok(el.tree('isExcluded', firstChild) === false, 'First child included after undetermined exclude');
            ok(el.tree('isUnchecked', firstChild), 'First child unchecked after undetermined exclude');

            // test for leaf
            // get last leaf of grandChildren
            do  {
                leaf = tempChildren.last();
                tempChildren = el.tree('getChildren', leaf);
            } while (tempChildren.length !== 0);

            leafParent = el.tree('getParent', leaf);
            el.tree('checkNode', leafParent);
            el.tree('excludeNode', leaf);

            ok(el.tree('isExcluded', leaf), 'Leaf Excluded');
//            ok(el.tree('isUndetermined', leafParent), 'Parent of leaf undetermined');

            el.tree('clearExcludedState', leaf);

            ok(el.tree('isExcluded', leaf) === false, 'Leaf Included');
            ok(el.tree('isUnchecked', leaf), 'Leaf Unchecked');
//            ok(el.tree('isUndetermined', leafParent), 'Parent of leaf undetermined');

            // every child excluded
            children.each(function excludeEachNode() {
                el.tree('excludeNode', this);
            });

            el.tree('uncheckAll');

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined when all children unchecked and excluded');

            el.tree('checkAll');

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined when all children checked and excluded');

            QUnit.start();
        });
    });

    asyncTest('included and checked', 20, function testStaticCheckedAndIncluded() {
        el.on('__ready.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                children = el.tree('getChildren', firstRootNode),
                firstChild = children.first(),
                lastChild = children.last(),
                grandChildren = el.tree('getChildren', firstChild),
                firstGrandChild = grandChildren.first(),
                tempChildren = rootNodes,
                leaf, leafParent;

            // included and checked -> cleared and unchecked
            el.tree('checkNode', firstRootNode);
            el.tree('includeNode', firstChild);

            ok(el.tree('isIncluded', firstChild), 'First child included');
            ok(el.tree('isChecked', firstChild), 'First child checked');

            el.tree('uncheckNode', firstRootNode);

            ok(el.tree('isUnchecked', lastChild), 'Last child unchecked');
            ok(el.tree('isUnchecked', firstGrandChild), 'child of included Node unchecked');
            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');

            el.tree('checkNode', firstRootNode);

            ok(el.tree('isChecked', lastChild), 'Last child checked');
            ok(el.tree('isChecked', firstGrandChild), 'first grandchild checked');
            ok(el.tree('isUndetermined', firstRootNode), 'First root node not checked');

            el.tree('uncheckNode', firstRootNode);
            el.tree('clearIncludedState', firstChild);

            ok(el.tree('isIncluded', firstChild) === false, 'First child cleared');
            ok(el.tree('isUnchecked', firstChild), 'First child unchecked (state restored) because all children unchecked');
            ok(el.tree('isUnchecked', firstRootNode), 'First root node unchecked');

            // undetermined included -> cleared and checked
            el.tree('checkNode', firstGrandChild);
            el.tree('includeNode', firstChild);
            el.tree('checkNode', firstRootNode);
            el.tree('clearIncludedState', firstChild);

            ok(el.tree('isIncluded', firstChild) === false, 'First child cleared after undetermined include');
            ok(el.tree('isChecked', firstChild), 'First child checked after undetermined include');

            // test for leaf
            // get last leaf of grandChildren
            do  {
                leaf = tempChildren.last();
                tempChildren = el.tree('getChildren', leaf);
            } while (tempChildren.length !== 0);

            leafParent = el.tree('getParent', leaf);
            el.tree('uncheckNode', leafParent);
            el.tree('includeNode', leaf);

            ok(el.tree('isIncluded', leaf), 'Leaf Included');
            ok(el.tree('isUndetermined', leafParent), 'Parent of leaf undetermined');

            el.tree('clearIncludedState', leaf);

            ok(el.tree('isIncluded', leaf) === false, 'Leaf cleared');
            ok(el.tree('isChecked', leaf), 'Leaf checked');
            ok(el.tree('isUndetermined', leafParent), 'Parent of leaf undetermined');

            // every child included
            children.each(function includeEachNode() {
                el.tree('includeNode', this);
            });

            el.tree('uncheckAll');

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined when all children unchecked and included');

            el.tree('checkAll');

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined when all children checked and included');

            QUnit.start();
        });
    });

    asyncTest('getJson', 3, function testGetJson() {
        el.on('__ready.tree', function onReady() {
            var oldJson = el.tree('getJson'), newJson,
                rootNodes = el.tree('getChildren', el);

            ok(!$.isEmptyObject(oldJson), 'Old Json not empty');
            el.tree('disableNode', rootNodes.last());
            el.tree('checkNode', rootNodes.first());
            // TODO exclude nodes
            newJson = el.tree('getJson');
            equal(newJson[newJson.length - 1].data.core.disabled, true, 'New json has disabled state');
            equal(newJson[0].data.checkbox.checked, true, 'New json has checked state');

            // TODO excluded

            QUnit.start();
        });
    });

    asyncTest('toggleNode', 13, function testToggleNode() {
        el.on('__loaded.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                children = el.tree('getChildren', firstRootNode),
                firstChild = children.first(),
                grandChildren = el.tree('getChildren', firstChild),
                firstGrandChild = grandChildren.first(),
                secondGrandChild = grandChildren.eq(1),
                thirdGrandChild = grandChildren.eq(2);

            // toggle from unchecked to checked
            ok(el.tree('isUnchecked', firstRootNode), 'First root node not checked initially');

            el.tree('toggleCheck', firstRootNode);

            ok(el.tree('isChecked', firstRootNode), 'First root node checked after toggle');

            // toggle from checked to unchecked
            el.tree('toggleCheck', firstRootNode);

            ok(el.tree('isUnchecked', firstRootNode), 'First root node not checked after toggle');

            // toggle from undetermined to checked
            el.tree('checkNode', firstGrandChild);
            el.tree('disableNode', firstGrandChild);

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');

            el.tree('toggleCheck', firstRootNode);

            ok(el.tree('isChecked', firstRootNode), 'First root node checked after toggle');

            // toggle from checked to undetermined
            el.tree('toggleCheck', firstRootNode);

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined after toggle');

            // toggle from unchecked to undetermined
            el.tree('enableNode', firstGrandChild);
            el.tree('uncheckNode', firstGrandChild);
            el.tree('disableNode', firstGrandChild);

            ok(el.tree('isUnchecked', firstRootNode), 'First root node not checked');

            el.tree('toggleCheck', firstRootNode);

//            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined after toggle');

            // toggle from undetermined to unchecked
            el.tree('toggleCheck', firstRootNode);

            ok(el.tree('isUnchecked', firstRootNode), 'First root node not checked after toggle');

            // toggle from undetermined unchecked to undetermined checked
            el.tree('checkNode', secondGrandChild);
            el.tree('disableNode', secondGrandChild);

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');

            el.tree('toggleCheck', firstRootNode);

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');
            ok(el.tree('isChecked', thirdGrandChild), 'Third grandchild checked');

            // toggle from undetermined checked to undetermined unchecked
            el.tree('toggleCheck', firstRootNode);

            ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');
            ok(el.tree('isUnchecked', thirdGrandChild), 'Third grandchild unchecked');

            QUnit.start();
        });
    });
/* State tests for checkbox fail because of unfinished implementation
    asyncTest('getState, setState', 10, function testToggleNode() {
        el.on('__loaded.tree', function onReady() {
            var rootNodes = el.tree('getChildren', el),
                firstRootNode = rootNodes.first(),
                children = el.tree('getChildren', firstRootNode),
                firstChild = children.first(),
                secondChild = children.eq(1),
                thirdChild = children.eq(2),
                secondRootNode = rootNodes.eq(1),
                secondChildren =  el.tree('getChildren', secondRootNode),
                secondFirstChild = secondChildren.first(),
                secondSecondChild = secondChildren.eq(1),
                secondThirdChild = secondChildren.eq(2),
                thirdGrandChild = el.tree('getChildren', secondSecondChild).first(),
                state, disabled;

            el.tree('checkNode', firstChild);
            el.tree('disableNode', secondChild);
            el.tree('excludeNode', thirdChild);

            state = el.tree('getState');

            ok($.inArray(firstChild.prop('id'), state.checkbox.checked) !== -1, 'checked node in state');
            disabled = $(state.core.disabled).filter(function filterDisabledNodes() {
                return this.id === secondChild.prop('id');
            });
            ok(disabled.length === 1, 'Child of disabled node in state');
            ok($.inArray(thirdChild.prop('id'), state.checkbox.excluded) !== -1, 'excluded node in state');

            state = {
                core: {
                    disabled: [{
                        id: secondSecondChild.prop('id')
                    }]
                },
                checkbox: {
                    checked: [secondFirstChild.prop('id')],
                    excluded: [secondThirdChild.prop('id')]
                }
            };

            el.tree('setState', state, function setStateCallback() {

                // old states removed
                ok(el.tree('isUnchecked', firstChild), 'Checked state removed');
                ok(el.tree('isDisabled', secondChild) === false, 'disabled state removed');
                ok(el.tree('isExcluded', thirdChild) === false, 'excluded state removed');

                // new states set
                ok(el.tree('isChecked', secondFirstChild), 'Checked state set');
                ok(el.tree('isDisabled', secondSecondChild), 'disabled state set');
                ok(el.tree('isDisabled', thirdGrandChild), 'disabled state also set for children');
                ok(el.tree('isExcluded', secondThirdChild), 'Excluded state set');
            });

            QUnit.start();
        });
    });
*/

})(jQuery);
