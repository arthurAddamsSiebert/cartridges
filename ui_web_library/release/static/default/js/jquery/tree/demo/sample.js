/*jshint devel: true */
(function () {
    'use strict';

    // depth and childcount of demoData
    var maxDepth = 4,
        childCount = 4;

    // create demoData
    function createChildren(name, depth) {
        ++depth;
        var children = [], i, node;
        for (i = 0; i < childCount; i++) {
            node = {
                title: name + i,
                liAttr: {
                    id: name + i
                }
            };
            if (depth < maxDepth) {
                node.children = createChildren(name + i, depth);
            }
            children.push(node);
        }
        return children;
    }
    var demoData = createChildren('Node', 0);

    // opened nodes
    demoData[0].open = true;
    demoData[0].children[0].data = {
        core: {
            disabled: true,
            disabledText: 'Disabled due to maintance work'
        }
    };
    demoData[0].children[1].open = true;
    demoData[0].children[1].data = {
        checkbox: {
            checked: true
        }
    };
    if(maxDepth > 2) {
        demoData[0].children[1].children[1].data = {
            core: {
                disabled: true,
                disabledText: 'Disabled for like no reason'
            },
            checkbox: {
                checked: true
            }
        };
    }
    demoData[2].children[1].data = {
        checkbox: {
            checked: true
        }
    };

    // initialize trees
    $(function () {
        var staticLoading = window.location.search.indexOf('staticLoading') > 0;

        $('#simple').tree({
            plugins: ['themes', 'json', 'ui'],
            core: {
                animation: 100
            },
            json: {
                data: demoData,
                progressiveRender: !staticLoading
            }
        });

        $('#hotkeys').tree({
            plugins: ['themes', 'json', 'ui', 'hotkeys'],
            core: {
                animation: 100
            },
            json: {
                data: demoData,
                progressiveRender: !staticLoading
            }
        });

        $('#checkboxes').tree({
            plugins: ['themes', 'json', 'ui', 'hotkeys', 'checkbox'],
            core: {
                animation: 100
            },
            json: {
                data: demoData,
                progressiveRender: !staticLoading
            },
            checkbox: {
                single: false
            }
        });

        $('#radios').tree({
            plugins: ['themes', 'json', 'ui', 'hotkeys', 'checkbox'],
            core: {
                animation: 100
            },
            json: {
                data: demoData,
                progressiveRender: !staticLoading
            },
            checkbox: {
                single: true
            }
        });

        var el = $('#menu');
        if (console && console.time) console.time('tree');
        el.on('__loaded.tree', function __loaded() {
            if (console && console.timeEnd) console.timeEnd('tree');
        });
        el.tree({
            plugins: ['themes', 'json', 'ui', 'hotkeys', 'checkbox', 'menu'],
            core: {
                animation: 100
            },
            json: {
                data: demoData,
                progressiveRender: !staticLoading
            },
            checkbox: {
                single: false
            },
            menu: {
                menuThreshold: 0,
                items: [
                    {
                        cssClass: 'exclude',
                        render: 'Exclude',
                        click: function clickAction1(args) {
                            args.data.treeInstance.excludeNode(args.data.node);


                        }
                    },
                    {
                        cssClass: 'exclude',
                        render: 'Clear Excluded State',
                        click: function clickAction1(args) {
                            args.data.treeInstance.clearExcludedState(args.data.node);
                        }
                    },
                    {
                        cssClass: 'include',
                        render: 'Include',
                        click: function clickAction1(args) {
                            args.data.treeInstance.includeNode(args.data.node);


                        }
                    },
                    {
                        cssClass: 'include',
                        render: 'Clear included state',
                        click: function clickAction1(args) {
                            args.data.treeInstance.clearIncludedState(args.data.node);
                        }
                    }
                ]
            }
        });
    });
})();
