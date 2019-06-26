/*jshint devel: true */
(function () {
    'use strict';

    function getParameterByName(name) {
        var match = (new RegExp('[?&]' + name + '=([^&]*)')).exec(window.location.search);
        return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
    }

    // depth and childcount of demoData
    var maxDepth = getParameterByName('depth') || 6,
        childCount = getParameterByName('children') || 4;

    $('#depth').val(maxDepth);
    $('#children').val(childCount);
    $('#reload').on('click', function reload() {
        var type = window.location.search.indexOf('staticLoading') > 0 ? 'staticLoading' : 'progressive';
        window.location.href = '?' + type + '&depth=' + $('#depth').val() + '&children=' + $('#children').val();
    });

    // create demoData
    var count = 0;
    function createChildren(name, depth) {
        ++depth;
        var children = [],
            x = Math.floor(0.25 * childCount + Math.random() * 0.75 * childCount + 1),
            i, node;
        for (i = 0; i < x; i++) {
            count++;
            node = {
                title: name + i,
                liAttr: {
                    id: name + i
                }
            };
            if (depth < maxDepth) {
                if (depth < 2 || Math.random() > 0.5) {
                    node.children = createChildren(name + i, depth);
                }

            }
            children.push(node);
        }
        return children;
    }

    if (console && console.time) console.time('data');
    var demoData = createChildren('Node', 0);
    if (console && console.time) console.timeEnd('data');
    $('h1').after('using ' + count + ' nodes');

    // initialize trees
    $(function () {
        var staticLoading = window.location.search.indexOf('staticLoading') > 0;

        var el = $('#menu');

        // time measurements
        if (console && console.time) console.time('tree');
        el.on('__loaded.tree', function __loaded() {
            if (console && console.timeEnd) console.timeEnd('tree');

            el.on('beforeOpenNode.tree', function onBeforeOpenNode() {
                if (console && console.time) console.time('openNode');
            });
            el.on('afterOpenNode.tree', function onAfterOpenNode() {
                if (console && console.time) console.timeEnd('openNode');
            });

            el.on('beforeCloseNode.tree', function onCloseOpenNode() {
                if (console && console.time) console.time('closeNode');
            });
            el.on('afterCloseNode.tree', function onAfterCloseNode() {
                if (console && console.time) console.timeEnd('closeNode');
            });
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
                        cssClass: 'Exclude',
                        render: 'Exclude',
                        click: function clickAction1(args) {
                            args.data.treeInstance.excludeNode(args.data.node);
                        }
                    },
                    {
                        cssClass: 'Include',
                        render: 'Include',
                        click: function clickAction1(args) {
                            args.data.treeInstance.clearExcludedState(args.data.node);
                        }
                    }
                ]
            }
        });
    });
})();
