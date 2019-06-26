/*global QUnit: true, module: true, asyncTest: true, ok: true */
(function ($) {
    'use strict';

    var el;

    // ---------------- Progessive Render ------------------------------------------------------
    module('API Checkbox Multiselection, Progressive Render', {
        setup: function setup() {
            el = $('<div class="element"></div>').appendTo('body');
            el.tree({
                core: {
                    animation: 0
                },
                plugins: ['json', 'checkbox', 'themes'],
                json: {
                    data: window.demoData,
                    progressiveRender: true
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

    // mostly copied from static render
    asyncTest('Progressive Render: checkNode, unchecknode, isChecked, isUndetermined', 11, function testProgressiveRenderChecking() {
        el.on('__loaded.tree', function onReady() {
            var node = el.tree('getNode', '#Node0');

            el.tree('getChildren', node, function getChildrenCallback(parent, children) {
                var firstChild = children.first();

                ok(!el.tree('isChecked', firstChild), 'Node not checked');

                el.on('afterCheckNode.tree', function onAfterCheckNode(ev, data) {
                    ok(true, 'afterCheckNode fired');
                    ok(firstChild.is(data.result.obj), 'afterCheckNode: Correct node passed');
                    ok(children.length > 1, 'there are enough nodes for this test');
                    ok(el.tree('isChecked', firstChild), 'First child checked');
                    ok(el.tree('isUndetermined', node), 'Node undetermined');
                    el.off('afterCheckNode.tree');
                    el.tree('getChildren', firstChild, function getChildrenCallback(child, grandChildren) {
//                        ok(el.tree('isChecked', grandChildren.first()), 'First grandchild checked');

                        children.each(function checkEachNode() {
                            el.tree('checkNode', this);
                        });
                        ok(el.tree('isChecked', children.last()), 'Last child checked');
//                        ok(el.tree('isChecked', node), 'Node checked');

                        el.tree('uncheckNode', firstChild);
                        ok(!el.tree('isChecked', firstChild), 'First child not checked');

                        ok(el.tree('isUndetermined', node), 'Node undetermined');

                        el.tree('uncheckAll');
                        ok(!el.tree('isChecked', node), 'Nodes unchecked');
                        ok(!el.tree('isUndetermined', node), 'Node not undetermined');

                        QUnit.start();
                    });
                });

                el.tree('checkNode', firstChild);
            });
        });
    });

    // mostly copied from static render
    asyncTest('Progressive Render: disableCheckbox, enableCheckbox, isCheckboxDisabled', 7, function testProgressiveRenderDisabling() {
        el.on('__loaded.tree', function onReady() {
            var node = el.tree('getNode', '#Node0');

            ok(!el.tree('isDisabled', node), 'Checkbox not disabled');

            el.tree('disableNode', node);

            ok(el.tree('isDisabled', node), 'Checkbox disabled');

            el.tree('getChildren', node, function getChildrenCallback(parent, children) {
                var firstChild = children.first();

                ok(el.tree('isDisabled', firstChild), 'Childs checkbox disabled');

                el.tree('getChildren', firstChild, function getChildrenCallback(child, grandChildren) {
                    ok(el.tree('isDisabled', grandChildren.first()), 'Child of disabled checkbox is disabled');

                    el.tree('enableNode', firstChild);

                    ok(el.tree('isDisabled', firstChild), 'Childs checkbox still disabled');

                    el.tree('enableNode', node);

                    ok(!el.tree('isDisabled', node), 'Checkbox enabled');

                    children.each(function disableEachChild() {
                        el.tree('disableNode', this);
                    });

                    ok(el.tree('isDisabled', firstChild), 'Childs checkbox disabled');
//                    ok(el.tree('isDisabled', node), 'Parent disabled if all children disabled');

                    QUnit.start();
                });
            });
        });
    });

    asyncTest('Progressive Render: checked and disabled', 16, function testProgressiveCheckedAndDisabled() {
        el.on('__loaded.tree', function onReady() {
            el.tree('getChildren', el, function getChildrenCallback(treeRoot, rootNodes) {
                var firstRootNode = rootNodes.first();

                el.tree('getChildren', firstRootNode, function getChildrenCallback(firstRootNode, children) {
                    var firstChild = children.first(),
                        lastChild = children.last();

                    // disabled and checked
                    $.each(children, function checkAllChildren() {
                        el.tree('checkNode', this);
                    });
                    el.tree('disableNode', lastChild);

//                    ok(el.tree('isChecked', firstRootNode), 'Root node checked when all children checked');

                    el.tree('uncheckNode', firstChild);

                    ok(el.tree('isUndetermined', firstRootNode), 'Root node undetermined when not all children checked');

                    el.tree('checkNode', firstChild);

//                    ok(el.tree('isChecked', firstRootNode), 'Root node checked when all children checked');

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
        });
    });

})(jQuery);
