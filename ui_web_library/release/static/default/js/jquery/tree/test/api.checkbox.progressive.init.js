/*global QUnit: true, module: true, asyncTest: true, ok: true */
(function ($) {
    'use strict';

    // the flexible setup is necessary because mostly config options are tested
    var config = {
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

    // ---------------- Progessive Render ------------------------------------------------------
    module('API Checkbox Init Progressive Render');

    asyncTest('checked nodes', 3, function testInitWithChecked() {
        var customConfig = $.extend(true, {}, config),
            customDemoData = window.createChildren('Node', 0);

        customDemoData[0].data = {
            checkbox: {
                checked: true
            }
        };
        customDemoData[1].open = true;
        customDemoData[1].children[0].open = true;
        customDemoData[1].children[0].data = {
            checkbox: {
                checked: true
            }
        };
        customConfig.json.data = customDemoData;

        customConfig.json.progressiveRender = true;
        customConfig.json.progressiveUnload = false;

        var el = setup(customConfig);
        el.on('__loaded.tree', function onLoaded() {

            el.tree('getChildren', el, function getChildrenCallback(treeRoot, rootNodes) {
                var firstRootNode = rootNodes.first(),
                    secondRootNode = rootNodes.eq(1);

                el.tree('getChildren', firstRootNode, function getChildrenCallback(firstRootNode, children) {
                    var firstChild = children.first();

                    el.tree('getChildren', firstChild, function getChildrenCallback(firstChild, grandChildren) {

                        ok(el.tree('isChecked', firstRootNode), 'First root node checked');
//                        ok(el.tree('isChecked', children.first()), 'First child checked');
//                        ok(el.tree('isChecked', grandChildren.first()), 'First grandchild checked');

                        ok(el.tree('isChecked', el.tree('getChildren', rootNodes.eq(1)).first()), 'Child checked');
                        ok(el.tree('isUndetermined', secondRootNode), 'Root node undetermined');

                        teardown(el);
                        QUnit.start();

                    });
                });
            });
        });
    });


    asyncTest('disabled nodes', 6, function testInitWithDisabled() {
        var customConfig = $.extend(true, {}, config),
            customDemoData = window.createChildren('Node', 0),
            disabledText = 'Node disabled for testing';

        customDemoData[0].data = {
            core: {
                disabled: true,
                disabledText: disabledText
            }
        };
        customDemoData[1].children[0].data = {
            core: {
                disabled: true,
                disabledText: disabledText
            }
        };
        customConfig.json.data = customDemoData;

        customConfig.json.progressiveRender = true;
        customConfig.json.progressiveUnload = false;

        var el = $('<div class="element"></div>').appendTo('body');

        el.on('__loaded.tree', function onLoaded() {

            el.tree('getChildren', el, function getChildrenCallback(treeRoot, rootNodes) {
                var firstRootNode = rootNodes.first(),
                    secondRootNode = rootNodes.eq(1);

                el.tree('getChildren', firstRootNode, function getChildrenCallback(firstRootNode, children) {
                    var firstChild = children.first();

                    el.tree('getChildren', firstChild, function getChildrenCallback(firstChild, grandChildren) {

                        el.tree('getChildren', secondRootNode, function getChildrenCallback(secondRootNode, secondChildren) {

                            ok(el.tree('isDisabled', firstRootNode), 'First root node disabled');
                            ok(el.tree('isDisabled', children.first()), 'First child disabled');
                            ok(el.tree('isDisabled', grandChildren.first()), 'First grandchild disabled');

                            ok(el.tree('isDisabled', secondChildren.first()), 'Child disabled');
                            ok(!el.tree('isDisabled', secondChildren.last()), 'Other children enabled');
                            ok(!el.tree('isDisabled', secondRootNode), 'Root node enabled');

                            teardown(el);
                            QUnit.start();
                        });
                    });
                });
            });
        });

        el.tree(customConfig);
    });

    asyncTest('disabled and checked nodes', 10, function testInitWithDisabledChecked() {
        var customConfig = $.extend(true, {}, config),
            customDemoData = window.createChildren('Node', 0),
            disabledText = 'Node disabled for testing';

        // child node disabled and checked, parent disabled
        customDemoData[0].data = {
            core: {
                disabled: true,
                disabledText: disabledText
            }
        };
        customDemoData[0].children[0].data = {
            checkbox: {
                checked: true
            }
        };

        // child disabled and checked, parent not disabled
        customDemoData[1].children[0].children[0].data = {
            core: {
                disabled: true,
                disabledText: disabledText
            },
            checkbox: {
                checked: true
            }
        };

        // all children checked, one disabled
        $.each(customDemoData[1].children[1].children, function checkEachNodeOnInit() {
            this.data = {
                checkbox: {
                    checked: true
                }
            };
        });
        customDemoData[1].children[1].children[0].data = {
            core: {
                disabled: true,
                disabledText: disabledText
            },
            checkbox: {
                checked: true
            }
        };

        // all children checked, except disabled
        $.each(customDemoData[1].children[2].children, function checkEachNodeOnInit() {
            this.data = {
                checkbox: {
                    checked: true
                }
            };
        });
        customDemoData[1].children[2].children[0].data = {
            core: {
                disabled: true,
                disabledText: disabledText
            },
            checkbox: {
                checked: false
            }
        };
        customConfig.json.data = customDemoData;

        var el = setup(customConfig);
        el.on('__loaded.tree', function onLoaded() {

            el.tree('getChildren', el, function getChildrenCallback(treeRoot, rootNodes) {
                var firstRootNode = rootNodes.first(),
                    secondRootNode = rootNodes.eq(1);

                el.tree('getChildren', firstRootNode, function getChildrenCallback(firstRootNode, children) {

                    el.tree('getChildren', children.first(), function getChildrenCallback(firstChild, grandChildren) {

                        el.tree('getChildren', secondRootNode, function getChildrenCallback(secondRootNode, secondChildren) {

                            el.tree('getChildren', secondChildren.first(), function getChildrenCallback(irrelevant, firstGrandChildren) {

                                el.tree('getChildren', secondChildren.eq(1), function getChildrenCallback(irrelevant, secondGrandChildren) {

                                    el.tree('getChildren', secondChildren.eq(2), function getChildrenCallback(irrelevant, thirdGrandChildren) {

                                        // child node disabled and checked, parent disabled
                                        ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');
                                        ok(el.tree('isChecked', children.first()), 'First child checked');
                                        ok(el.tree('isUnchecked', children.last()), 'Last child not checked');
//                                        ok(el.tree('isChecked', grandChildren.first()), 'First grandchild checked');

                                        // child disabled and checked, parent not disabled
                                        ok(el.tree('isChecked', firstGrandChildren.first()), 'Grandchild checked');
                                        ok(el.tree('isUndetermined', secondChildren.first()), 'First child node undetermined');

                                        // all children checked, one disabled
                                        ok(el.tree('isChecked', secondGrandChildren.last()), 'Last grandchild checked');
                                        ok(el.tree('isChecked', secondGrandChildren.first()), 'first disabled grandchild checked');
  //                                      ok(el.tree('isChecked', secondChildren.eq(1)), 'Second child node checked');


                                        // all children checked, except disabled
                                        ok(el.tree('isUndetermined', secondChildren.eq(2)), 'Third child node undetermined');
                                        ok(el.tree('isUnchecked', thirdGrandChildren.first()), 'first disabled grandchild not checked');
                                        ok(el.tree('isChecked', thirdGrandChildren.last()), 'Last grandchild checked');

                                        teardown(el);
                                        QUnit.start();
                                    });
                                });
                            });
                        });
                    });
                });
            });
        });
    });

    asyncTest('excluded and checked', 10, function testStaticCheckedAndExcluded() {
        var customConfig = $.extend(true, {}, config),
            customDemoData = window.createChildren('Node', 0);

        // child node disabled and checked, parent disabled
        customDemoData[0].data = {
            checkbox: {
                excluded: true
            }
        };
        customDemoData[0].children[0].data = {
            checkbox: {
                checked: true
            }
        };
        customDemoData[1].data = {
            checkbox: {
                checked: true
            }
        };
        customDemoData[1].children[0].data = {
            checkbox: {
                excluded: true
            }
        };

        customConfig.json.data = customDemoData;

        var el = setup(customConfig);
        el.on('__loaded.tree', function onLoaded() {

            el.tree('getChildren', el, function getChildrenCallback(treeRoot, rootNodes) {
                var firstRootNode = rootNodes.first(),
                    secondRootNode = rootNodes.eq(1);

                el.tree('getChildren', firstRootNode, function getChildrenCallback(firstRootNode, children) {
                    var firstChild = children.first();

                    el.tree('getChildren', secondRootNode, function getChildrenCallback(secondRootNode, secondChildren) {
                        var secondRootFirstChild = secondChildren.first(),
                            secondRootLastChild = secondChildren.last();

                        ok(el.tree('isExcluded', firstRootNode), 'First root node excluded');
                        ok(el.tree('isChecked', firstChild), 'First child of first root node checked');

                        el.tree('clearExcludedState', firstRootNode);

                        ok(el.tree('isChecked', firstChild), 'First child of first root node checked');
                        ok(el.tree('isUndetermined', firstRootNode), 'First root node undetermined');

                        ok(el.tree('isExcluded', secondRootFirstChild), 'First child of second root excluded');

                        ok(el.tree('isChecked', secondRootLastChild), 'Last child of second root checked');
                        ok(el.tree('isUndetermined', secondRootNode), 'Second root node undetermined');

                        el.tree('clearExcludedState', secondRootFirstChild);

                        ok(!el.tree('isExcluded', secondRootFirstChild), 'First child of second root included');
                        ok(el.tree('isChecked', secondRootFirstChild), 'First child of second root checked because all children checked');
                        ok(el.tree('isChecked', secondRootNode), 'Second root node checked');

                        teardown(el);
                        QUnit.start();
                    });
                });
            });
        });
    });



})(jQuery);
