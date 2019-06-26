/**
 * This plugin enables selecting, deselecting and hovering tree items.
 * <strong>All methods of this class can be called directly on a tree instance</strong>
 * @class ui
 * @memberof! jQuery.tree.plugin~
 */
(function ($) {
    'use strict';

    $.tree.plugin('ui', {
        /**
         * Registers event handlers to listen to every click on the tree
         * @private
         * @memberOf jQuery.tree.plugin~ui~
         */
        __construct: function __construct() {
            this.data.ui.selected = $();
            this.data.ui.hovered = null;
            this.data.ui.lastSelected = false;

            this.getContainer()// TODO: configurable event (click/dblclick/etc)
                .on('click.tree', 'a', $.proxy(function onClick(ev, data) {
                	if (ev.currentTarget && $(ev.currentTarget).attr('href') !== '#') return;	
                    ev.preventDefault();
                    ev.currentTarget.blur();
                    var uiSettings = this.getSettings(true).ui;
                    if (data) {
                        if (uiSettings.selectMultipleModifier !== 'on' && uiSettings.selectMultipleModifier !== false && data[uiSettings.selectMultipleModifier + 'Key']) {
                            ev[uiSettings.selectMultipleModifier + 'Key'] = data[uiSettings.selectMultipleModifier + 'Key'];
                        }
                        if (uiSettings.selectRangeModifier !== 'on' && uiSettings.selectRangeModifier !== false && data[uiSettings.selectRangeModifier + 'Key']) {
                            ev[uiSettings.selectRangeModifier + 'Key'] = data[uiSettings.selectRangeModifier + 'Key'];
                        }
                    }
                    var obj = this.getNode(ev.currentTarget),
                        isSelected = this.isSelected(obj),
                        isMultiple = uiSettings.selectMultipleModifier === 'on' || (uiSettings.selectMultipleModifier !== false && ev && ev[uiSettings.selectMultipleModifier + 'Key']),
                        isRange = uiSettings.selectRangeModifier === 'on' || (uiSettings.selectRangeModifier !== false && ev && ev[uiSettings.selectRangeModifier + 'Key'] && this.data.ui.lastSelected && this.data.ui.lastSelected[0] !== obj[0] && this.data.ui.lastSelected.parent()[0] === obj.parent()[0]);

                    switch (!0) {
                    case (isRange && this.data.ui.lastSelected !== false):
                        this.selectRange(obj);
                        break;
                    case (isRange && this.data.ui.lastSelected === false):
                        this.selectNode(obj);
                        break;
                    case (isSelected && isMultiple):
                        this.deselectNode(obj);
                        break;
                    default:
                        this.selectNode(obj, isMultiple);
                        break;
                    }
                }, this))
                .on('mouseenter.tree', 'a', $.proxy(function onMouseEnter(ev) {
                    this.hoverNode(ev.target);
                }, this))
                .on('mouseleave.tree', 'a', $.proxy(function onMouseLeave(ev) {
                    this.dehoverNode(ev.target);
                }, this))
                .on('afterDeleteNode.tree', $.proxy(function afterDeleteNode(ev, data) {
                    var o = this.getNode(data.result.obj),
                        nodes = (o && o.length) ? o.find('a.tree-clicked') : $(),
                        that = this;
                    nodes.each(function () {
                        that.deselectNode(this);
                    });
                }, this))
                .on('afterMoveNode.tree', $.proxy(function afterMoveNode(ev, data) {
                    // TODO data.result.cy and .oc don't exist anymore. check intention / remove
                    if (data.result.cy) {
                        data.result.oc.find('a.tree-clicked')
                            .removeClass('tree-clicked');
                    }
                }, this));
        },
        /**
         * Default configuration.
         * @property {String} selectMultipleModifier The special key used to make a click add to the selection and not replace it ('ctrl', 'shift', 'alt', 'meta').
         *      You can also set this to 'on' making every click add to the selection.
         * @property {String} selectRangeModifier The special key used to make a click expand a range from the last selected item ('ctrl', 'shift', 'alt', 'meta').
         *      Note that the last clicked element should be a sibling of the currently clicked element so that a range will be created (same as common file explorers).
         * @property {Boolean} disableNestedSelection If false, all nodes can be selected. <br />
         *      If true
         *      <ul>
         *          <li>parents of selected nodes cannot be selected</li>
         *          <li>children of selected nodes cannot be selected</li>
         *          <li>All other nodes can be selected</li>
         *      </ul>

         * @memberOf jQuery.tree.plugin~ui~
         * @see {@link jQuery.treeUtils.hotkeys} for a list of available keys
         */
        defaults: {
            selectMultipleModifier: 'ctrl',
            selectRangeModifier: 'shift',
            disableNestedSelection: true
        },
        _fn: {
            /**
             * Decorates the core getNode method with handling for returning the selected nodes if no obj given
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} allowMultiple
             * @return {jQuery}
             * @see {@link jQuery.tree.plugin~core~getNode}
             */
            getNode: function getNode(obj, allowMultiple) {
                if (typeof obj === 'undefined' || obj === null) {
                    return allowMultiple ? this.data.ui.selected : this.data.ui.lastSelected;
                }
                return this.__callOld();
            },
            /**
             * Adds an css class to the hovered node
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @memberof jQuery.tree.plugin~ui~
             * @return {undefined|Boolean}
             */
            hoverNode: function hoverNode(obj) {
                obj = this.getNode(obj);
                if (!obj || !obj.length || this.isLoading(obj)) {
                    return false;
                }
                if (!obj.hasClass('tree-hovered')) {
                    this.dehoverNode();
                }
                this.data.ui.hovered = obj.children('a')
                    .addClass('tree-hovered')
                    .parent();
                this.scrollToNode(obj);
                this.__callback({
                    'obj': obj
                });
            },
            /**
             * Removes the hover css class
             * @memberof jQuery.tree.plugin~ui~
             * @return {undefined|Boolean} False if obj wasn't found
             */
            dehoverNode: function dehoverNode() {
                var obj = this.data.ui.hovered,
                    p;
                if (!obj || !obj.length) {
                    return false;
                }
                p = obj.children('a')
                    .removeClass('tree-hovered')
                    .parent();
                if (this.data.ui.hovered[0] === p[0]) {
                    this.data.ui.hovered = null;
                }
                this.__callback({
                    'obj': obj
                });
            },
            /**
             * Checks if a node is hovered
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} If the node is selected
             */
            isHovered: function isHovered(obj) {
                this.getNode(obj);
                if (!obj || !obj.length) {
                    return false;
                }
                return obj.is(this.data.ui.hovered);
            },
            /**
             * Adds a node to the selection, opens parent nodes (if selection wasn't triggered by an user)
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} keepOldSelection
             * @return {Boolean}
             *  <ul>
             *      <li>True If selection was successful</li>
             *      <li>False if obj wasn't found</li>
             *  </ul>
             */
            selectNode: function selectNode(obj, keepOldSelection) {
                var that = this;
                obj = this.getNode(obj);
                if (obj === -1 || !obj || !obj.length || this.isLoading(obj)) {
                    return false;
                }

                // check configuration
                if (!keepOldSelection) {
                    this.deselectAll();
                } else if (this.getSettings(true).ui.disableNestedSelection) {
                    var selectedChildren = obj.children('ul').find('a.tree-clicked:eq(0)'),
                        selectedParents = obj.parentsUntil('.tree', 'li').children('a.tree-clicked:eq(0)');
                    if (selectedParents.length || selectedChildren.length) {
                        return false;
                    }
                }

                // select node, open parents
                obj.each(function eachNode() {
                    var node = $(this);
                    obj.children('a').addClass('tree-clicked');
                    that.data.ui.lastSelected = node;
                    that.data.ui.selected = that.data.ui.selected.add(node);
                    // this.scrollToNode(obj.eq(0));
                    node.parents('.tree-closed').each(function openEachNode() {
                        that.openNode(this, false, 0);
                    });
                });

                this.__callback({
                    'obj': obj
                });
                return true;
            },
            /**
             * Removes a node from selected nodes
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {undefined|Boolean} False if obj wasn't found
             */
            deselectNode: function deselectNode(obj) {
                obj = this.getNode(obj);
                if (!obj || !obj.length) {
                    return false;
                }
                if (this.isSelected(obj)) {
                    obj.children('a')
                        .removeClass('tree-clicked');
                    this.data.ui.selected = this.data.ui.selected.not(obj);
                    if (this.data.ui.lastSelected.get(0) === obj.get(0)) {
                        this.data.ui.lastSelected = this.data.ui.selected.eq(0);
                    }
                    this.__callback({
                        'obj': obj
                    });
                }
            },
            /**
             * Deselects all nodes.
             * nodes of the whole tree instance get deselected.
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} [context=tree] The context in which selection should be removed
             */
            deselectAll: function deselectAll(context) {
                var ret;
                if (context) {
                    ret = $(context).find('a.tree-clicked').removeClass('tree-clicked').parent();
                    this.data.ui.selected = this.getContainer().find('a.tree-clicked');
                } else {
                    ret = this.getContainer().find('a.tree-clicked').removeClass('tree-clicked').parent();
                    this.data.ui.selected = $();
                }
                this.data.ui.lastSelected = false;
                this.__callback({
                    'obj': ret
                });
            },
            /**
             * Checks if a node is selected
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} If the node is selected
             */
            isSelected: function isSelected(obj) {
                return this.data.ui.selected.index(this.getNode(obj)) >= 0;
            },
            /**
             * Gets selected nodes
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} context
             * @return {jQuery} Selected Nodes
             */
            getSelected: function (context) {
                return context ? $(context).find('a.tree-clicked').parent() : this.data.ui.selected;
            },
            /**
             * Select a range of nodes. Note that the last clicked element should be a sibling of the currently
             * clicked element so that a range will be created (same as common file explorers).
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} obj All nodes between this node and startNode get selected
             * @param {*} startNode All nodes between this node and obj get selected
             * @param {Boolean} keepOldSelection Add items to selection instead of replacing old selection
             * @return {Boolean}
             */
            selectRange: function selectRange(obj, startNode, keepOldSelection) {
                var that = this,
                    index, singleNode;
                obj = this.getNode(obj);
                if (!startNode) {
                    singleNode = true;
                    startNode = this.data.ui.lastSelected;
                }
                startNode = this.getNode(startNode);
                if (obj === -1 || !obj || !obj.length || this.isLoading(obj)) {
                    return false;
                }
                if (startNode === -1 || !startNode || !startNode.length || this.isLoading(startNode)) {
                    return false;
                }

                if (!keepOldSelection) {
                    this.deselectAll();
                }
                index = (obj.index() < startNode.index());
                startNode.addClass('tree-last-selected');
                obj = obj[index ? 'nextUntil' : 'prevUntil']('.tree-last-selected')
                    .andSelf()
                    .add('.tree-last-selected');
                startNode.removeClass('tree-last-selected');
                if (!index) {
                    obj = Array.prototype.reverse.apply(obj);
                }
                if (!obj.length) {
                    return false;
                }
                obj.each(function selectEachNode() {
                    that.selectNode(this, true);
                });
                if (singleNode) {
                    this.data.ui.lastSelected = startNode;
                }
                this.__callback({
                    'obj': obj
                });
                return true;
            },
            /**
             * Decorates the core cleanNode method with the ability to remove selections.
             * @memberof jQuery.tree.plugin~ui~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {jQuery} The cleaned nodes
             * @see {@link jQuery.tree.plugin~core~cleanNode}
             */
            cleanNode: function cleanNode(obj) {
                obj = this.__callOld();
                var that = this;
                return obj.each(function cleanEachNode() {
                    var node = $(this),
                        treeData = node.data('tree');
                    node.find('.tree-clicked').removeClass('tree-clicked');
                    // TODO why does the node get selected but selection store is cleared? use deselect instead?
                    if (treeData && treeData.selected) {
                        setTimeout(function selectEachNode() {
                            that.selectNode(node);
                        }, 0);
                        delete treeData.selected;
                    }
                });
            },
            /**
             * Decorates the core getState method with the ability to add selected items to the state.
             * @memberof jQuery.tree.plugin~ui~
             * @return {Object} State of the tree
             * @see {@link jQuery.tree.plugin~core~getState}
             */
            getState: function getState() {
                var state = this.__callOld();
                state.selected = [];
                this.data.ui.selected.each(function storeEachSelectedNodeId() {
                    state.selected.push(this.id);
                });
                return state;
            },
            /**
             * Decorates the core setState method with the ability to select nodes when tree is restored. Doesn't restore
             * hover.
             * @memberof jQuery.tree.plugin~ui~
             * @param {Object} state
             * @param {Function} callback
             * @return {Boolean}
             * @see {@link jQuery.tree.plugin~core~setState}
             */
            setState: function setState(state, callback) {
                if (this.__callOld()) {
                    if (state.selected) {
                        var that = this;
                        this.deselectAll();
                        $.each(state.selected, function restoreEachSelection(index, value) {
                            that.selectNode(document.getElementById(value));
                        });
                        delete state.selected;
                        this.setState(state, callback);
                        return false;
                    }
                    return true;
                }
                return false;
            },
            /**
             * Decorates the core getJson method to add the selected property to the returned json.
             * @memberof jQuery.tree.plugin~ui~
             * @param {Object} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} isCallback do not modify this, tree uses this parameter to keep track of the recursion
             * @return {Object} A json object representing the tree node
             * @see {@link jQuery.tree.plugin~core~getJson}
             */
            getJson: function getJson(obj, isCallback) {
                var node = this.__callOld();
                if (isCallback) {
                    if (this.isSelected(obj)) {
                        node.data.tree.selected = true;
                    }
                }
                return node;
            }
        }
    });
})(jQuery);
