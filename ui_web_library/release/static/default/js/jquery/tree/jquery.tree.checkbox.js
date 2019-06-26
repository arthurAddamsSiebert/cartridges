/**
 * Adds checkboxes to the tree.
 * <strong>All methods of this class can be called directly on a tree instance</strong>
 *
 * @class checkbox
 * @memberof! jQuery.tree.plugin~
 */
(function ($) {
    'use strict';

    $.tree.plugin('checkbox', {
        __construct: function __construct() {

            // storage for references (used for single selection storing old selected)
            this.checkbox = {};

            this.checkType = this.getSettings(true).checkbox.single ? 'radio' : 'checkbox';

            this.getContainer().addClass('tree-checkbox');

            this.getContainer()
                .on('afterMoveNode.tree, afterCopyNode.tree', function afterNode(e, data) {
                    var oldInstance = data.result.oldInstance,
                        newInstance = data.result.newInstance,
                        oldParent = data.result.oldParent;

                    if (oldInstance && oldParent && $.isFunction(oldInstance._repairCheckEl)) {
                        oldInstance._repairCheckEl(oldParent);
                    }
                    if (newInstance && $.isFunction(newInstance._repairCheckEl)) {
                        newInstance._repairCheckEl(data.result.parent);
                    }
                })
                .on('afterDeleteNode.tree', function afterDeleteNode(ev, data) {
                    this._repairCheckEl(data.result.parent);
                })
                .on('click.tree', 'a', $.proxy(function click(ev) {
                    ev.preventDefault();
                    ev.currentTarget.blur();

                    var obj = this.getNode(ev.currentTarget);
                    this.toggleCheck(obj);
                }, this));
        },
        /**
         * Default configuration.
		 * @property {Boolean} [single=false] set to true to allow only one element to be checked
         * @property {Boolean} threeState If set to false checkboxes will be two-state only, meaning that you will be able to select parent and
         *      children independently and there will be no undetermined state.
         * @property {String} name If the checkbox-name of a node isn't explicitly set, this value will be used as default name
         * @memberOf jQuery.tree.plugin~checkbox~
         */
        defaults: {
            single: false,
            threeState: true,
            name: 'treeSelectedNodes'
        },
        _fn: {
            /**
             * Low level node checking method without checks and repairs
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {jQuery} node tree node to check
             */
            _checkNode: function _checkNode(node) {
                var checkbox = this.__instance.checkbox;

                if (this.getSettings(true).checkbox.single) {
                    if (checkbox._oldChecked) {
                        this.uncheckNode(checkbox._oldChecked);
                    }
                    checkbox._oldChecked = node;
                }

                node.find(' > a > .tree-' + this.checkType)
                    .removeClass('tree-unchecked')
                    .addClass('tree-checked')
                    .children(':' + this.checkType)
                    .prop('checked', true);
                this.__callback({
                    'obj': node
                });
            },
            /**
             * Checks a node. Nodes can only be checked if they are loaded
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             */
            checkNode: function checkNode(obj) {
                var checkbox = this.__instance.checkbox;

                obj = this.getNode(obj);

                if (this.isDisabled(obj) || this.isExcluded(obj)) return;
                if (this.getSettings(true).checkbox.single &&
                        checkbox._oldChecked &&
                        this.isDisabled(checkbox._oldChecked)) {
                    return;
                }

                this._checkNode(obj);
                this._repairCheckEl(obj);
                this.__callback({
                    'obj': obj
                });
            },
            /**
             * Low level node checking method without checks and repairs
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {jQuery} node tree node to uncheck
             */
            _uncheckNode: function _uncheckNode(node) {
                node.find(' > a > .tree-' + this.checkType)
                    .removeClass('tree-checked tree-undetermined')
                    .addClass('tree-unchecked')
                    .children(':' + this.checkType)
                    .prop('checked', false)
                    .prop('undetermined', false);
                this.__callback({
                    'obj': node
                });
            },
            /**
             * Unchecks node, removes undetermined checked state.
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             */
            uncheckNode: function uncheckNode(obj) {
                obj = this.getNode(obj);

                if (this.isDisabled(obj) || this.isExcluded(obj)) return;

                this._uncheckNode(obj);
                this._repairCheckEl(obj);
                this.__callback({
                    'obj': obj
                });
            },
             /**
             * Sets node undetermined. Use if the checked child isn't loaded.
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {jQuery} node tree node
             */
            _setNodeUndetermined: function _setNodeUndetermined(node) {
                node.find(' > a > .tree-' + this.checkType)
                    .removeClass('tree-unchecked')
                    .addClass('tree-undetermined')
                    .children(':' + this.checkType)
                    .prop('undetermined', true);
            },
            /**
             * determines if undetermined child nodes have checkable children
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {jQuery} nodes the nodes that should be checked
             * @return {Boolean} true if the node has checkable children
             */
            _hasCheckableChildren: function _hasCheckableChildren(nodes) {
                var _this = this,
                    hasCheckable, checkableNodes, undeterminedNodes;

                // use this method on all nodes
                if (nodes.length > 1) {
                    hasCheckable = false;
                    $.each(nodes, function () {
                        if (this._hasCheckableChildren($(this))) {
                            hasCheckable = true;
                            return false;
                        }
                    });
                    return hasCheckable;
                }

                // use only loaded nodes, strip excluded, disabled, not checked nodes
                checkableNodes = nodes.find('> ul > li')
                    .filter(function filterExcludedDisabledCheckedNodes() {
                        return !_this.isExcluded(this) && !_this.isDisabled(this) && !_this.isChecked(this);
                    });

                // return if no nodes are left
                if (!checkableNodes.length) return false;

                // get undetermined nodes from checkable nodes
                undeterminedNodes = checkableNodes.filter(function getUndeterminedNodes() {
                    return _this.isUndetermined(this);
                });

                // return true if there are checkable nodes
                if ((checkableNodes.length - undeterminedNodes.length) > 0) return true;

                // test the undetermined nodes
                return this._hasCheckableChildren(undeterminedNodes);
            },
            /**
             * Toggle checked state.
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             */
            toggleCheck: function toggleCheck(obj) {
                var single = this.getSettings(true).checkbox.single,
                    checkUndetermined = false;

                // unchecking of a radiobutton is disabled
                if (single && this.isChecked(obj)) return;

                // some nodes can not leave undetermined state because auf disabled / excluded children, determine action for children
                if (this.isUndetermined(obj)) {
                    checkUndetermined = this._hasCheckableChildren(obj);
                }

                if (this.isUnchecked(obj) || checkUndetermined) {
                    this.checkNode(obj);
                } else {
                    this.uncheckNode(obj);
                }

                this.__callback({
                    obj: obj
                });
            },
            /**
             * Check if a node is checked
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} True if node is checked
             */
            isChecked: function isChecked(obj) {
                var node = this.getNode(obj),
                    checkbox;

                if (!node || node === -1) return false;

                checkbox = node.find(' > a > .tree-' + this.checkType);

                return (checkbox.hasClass('tree-checked') && !checkbox.hasClass('tree-excluded')) ||
                    checkbox.hasClass('tree-included');
            },
            /**
             * Check if a node is not checked. Excluded Nodes are unchecked
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} True if node is not checked
             */
            isUnchecked: function isUnchecked(obj) {
                obj = this.getNode(obj);
                return (!this.isChecked(obj) && !this.isUndetermined(obj)) ||
                    this.isExcluded(obj);
            },
            /**
             * Check if a node has undetermined state
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} True if node is checked
             */
            isUndetermined: function isUndetermined(obj) {
                var node = this.getNode(obj),
                    checkbox;

                if (!node || node === -1) return false;

                checkbox = node.find(' > a > .tree-' + this.checkType);

                return checkbox.hasClass('tree-undetermined') &&
                    !checkbox.hasClass('tree-excluded') &&
                    !checkbox.hasClass('tree-included');
            },
            /**
             * Checks all nodes within a context. If no context given, all nodes within the tree instance get checked.
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} context The node below which all nodes should get checked
             * @param {Boolean} checkDisabled Set to true to also modify disabled check elements
             */
            checkAll: function checkAll(context, checkDisabled) {
                var _this = this,
                    selector = checkDisabled ? '' : ':not(.tree-disabled)',
                    nodes = context ? $(context)
                        .find('.tree-unchecked:not(.tree-excluded)')
                        .closest('li' + selector) :
                        this.getContainer()
                        .find('.tree-unchecked:not(.tree-excluded)')
                        .closest('li' + selector),
                    checkEachNode;

                if (checkDisabled) {
                    checkEachNode = function checkEachNode() {
                        _this._checkNode($(this));
                        _this._repairCheckEl($(this));
                    };
                } else {
                    checkEachNode = function checkEachNode() {
                        _this.checkNode(this);
                    };
                }
                nodes.each(checkEachNode);

                this.__callback({
                    'obj': nodes
                });
            },
            /**
             * Unchecks all nodes within a context. If no context given, all nodes within the tree instance get unchecked.
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} context The node below which all nodes should get unchecked
             * @param {Boolean} uncheckDisabled Set to true to also modify disabled check elements
             */
            uncheckAll: function uncheckAll(context, uncheckDisabled) {
                var _this = this,
                    selector = uncheckDisabled ? '' : ':not(.tree-disabled)',
                    nodes = context ? $(context)
                        .find('.tree-checked:not(.tree-excluded)')
                        .closest('li' + selector) :
                        this.getContainer()
                        .find('.tree-checked:not(.tree-excluded)')
                        .closest('li' + selector),
                    uncheckEachNode;

                if (uncheckDisabled) {
                    uncheckEachNode = function uncheckEachNode() {
                        _this._uncheckNode($(this));
                        _this._repairCheckEl($(this));
                    };
                } else {
                    uncheckEachNode = function uncheckEachNode() {
                        _this.uncheckNode(this);
                    };
                }
                nodes.each(uncheckEachNode);

                this.__callback({
                    'obj': nodes
                });
            },
            /**
             * Sets the checkbox of a node to excluded
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {jQuery} node the node to exclude
             */
            _excludeNode: function _excludeNode(node) {
                node.find(' > a > .tree-' + this.checkType).addClass('tree-excluded');
            },
            /**
             * Sets the checkbox of a node to excluded, if that node isn't disabled
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {*} obj obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             */
            excludeNode: function excludeNode(obj) {
                obj = this.getNode(obj);

                if (this.isDisabled(obj)) return;

                if (this.isIncluded(obj)) {
                    this._clearIncludedState(obj);
                }
                this._excludeNode(obj);
                this._repairCheckEl(obj);

                this.__callback({
                    'obj': obj
                });
            },
            /**
             * Removes the excluded state from the checkbox of a node
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {jQuery} node the node to include
             */
            _clearExcludedState: function _clearExcludedState(node) {
                node.find(' > a > .tree-' + this.checkType).removeClass('tree-excluded');
                if (this.isLeaf(node)) {
                    this.uncheckNode(node);
                }
            },
            /**
             * Removes the excluded state from the checkbox of a node, if that node isn't disabled
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {*} obj obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             */
            clearExcludedState: function clearExcludedState(obj) {
                obj = this.getNode(obj);

                if (this.isDisabled(obj)) return;

                this._clearExcludedState(obj);
                this._repairCheckEl(obj);

                this.__callback({
                    'obj': obj
                });
            },
            /**
             * Checks if a nodes checkbox is excluded
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} True if node is excluded
             */
            isExcluded: function isExcluded(obj) {
                var node = this.getNode(obj);

                return node && node !== -1 && node.find(' > a > .tree-' + this.checkType).hasClass('tree-excluded');
            },
            /**
             * Sets the checkbox of a node to included
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {jQuery} node the node to exclude
             */
            _includeNode: function _includeNode(node) {
                node.find(' > a > .tree-' + this.checkType).addClass('tree-included');
            },
            /**
             * Sets the checkbox of a node to included, if that node isn't disabled
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {*} obj obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             */
            includeNode: function includeNode(obj) {
                obj = this.getNode(obj);

                if (this.isDisabled(obj)) return;

                if (this.isExcluded(obj)) {
                    this._clearExcludedState(obj);
                }
                this._includeNode(obj);
                this._repairCheckEl(obj);

                this.__callback({
                    'obj': obj
                });
            },
            /**
             * Removes the included state from the checkbox of a node
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {jQuery} node the node to include
             */
            _clearIncludedState: function _clearIncludedState(node) {
                node.find(' > a > .tree-' + this.checkType).removeClass('tree-included');
                if (this.isLeaf(node)) {
                    this.checkNode(node);
                }
            },
            /**
             * Removes the included state from the checkbox of a node, if that node isn't disabled
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {*} obj obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             */
            clearIncludedState: function clearIncludedState(obj) {
                obj = this.getNode(obj);

                if (this.isDisabled(obj)) return;

                this._clearIncludedState(obj);
                this._repairCheckEl(obj);

                this.__callback({
                    'obj': obj
                });
            },
            /**
             * Checks if a nodes checkbox is explicitly included
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {Boolean} True if node is excluded
             */
            isIncluded: function isIncluded(obj) {
                var node = this.getNode(obj);

                return node && node !== -1 && node.find(' > a > .tree-' + this.checkType).hasClass('tree-included');
            },
            /**
             * disable parents if all children disabled
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param  {jQuery} node the node to repair the parent nodes for
             */
/*
            _repairParentsDisabledStatus: function _repairParentsDisabledStatus(node) {
                var _this = this,
                    parent = this.getParent(node),
                    siblings, enabledSiblings;

                if (!parent || parent === -1) return;

                siblings = this.getChildren(parent);

                enabledSiblings = siblings.filter(function filterEnabledNodes() {
                    return !_this.isDisabled(this);
                });

                if (enabledSiblings.length === 0 && !this.isDisabled(parent)) {
                    this.disableNode(parent);
                }
            },
*/
            /**
             * Disables a node so that the checked state cannot be modified
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {String} disabledText the text explaining why checking is disabled
             * @param {Boolean} recursive if nodes below obj should also be disabled
             * @return {jQuery | undefined}
             */
            disableNode: function disableNode(obj, disabledText, recursive) {
                if (typeof recursive === 'undefined') {
                    recursive = this.getSettings(true).checkbox.threeState ? true : false;
                }

                this.__callOld(true, obj, disabledText, recursive);

//                this._repairParentsDisabledStatus(obj);

                return this;
            },
            /**
             * Enables a node so that the checked state can be modified. Children of disabled Parents cannot be enabled.
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} recursive if nodes below obj should also be disabled
             * @return {jQuery|undefined}
             */
            enableNode: function enableNode(obj, recursive) {
                var parent;
                if (typeof recursive === 'undefined') {
                    recursive = this.getSettings(true).checkbox.threeState ? true : false;
                }

                if (obj && obj.length === 1) {
                    parent = this.getParent(obj);
                    if (parent && parent !== -1 && this.isDisabled(parent)) return;
                }

                this.__callOld(true, obj, recursive);

                return this;
            },
            /**
             * Fixes the checked state of a node. Also fixes checked state of nodes above that node (e.g. applies
             * the undetermined state to the parent if not all siblings of the current node ar@e checked)
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} node this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} checkDisabled true to also check disabled nodes
             * @param {Boolean} fixingDisabled internal used for tracking if the repair for disabled nodes is done
             * (no further recursion)
             */
            _repairCheckEl: function _repairCheckEl(node, checkDisabled, fixingDisabled) {
                if (this.getSettings(true).checkbox.single) {
                    this._radioRepair(node);
                } else {
                    this._repairCheckbox(node, checkDisabled, fixingDisabled);
                }
            },
            /**
             * Fixes the checked state of all a node. Also fixes checked state of nodes above that node (e.g. applies
             * the undetermined state to the parent if not all siblings of the current node are checked)
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {jQuery} node the tree node
             * @return {*}
             */
            _radioRepair: function _radioRepair(node) {
                var radio, parent, progressiveRender, checkedChildren, settings;

                if (!node || node === -1) {
                    node = this.getContainerUl().children('li');
                }

                if (node.length > 1) {
                    node.each($.proxy(function repairEachNode(index, value) {
                        this._radioRepair($(value));
                    }, this));
                    return;
                }

                radio = node.find(' > a > .tree-radio');
                parent = this.getParent(node);

                if (radio.hasClass('tree-checked')) {
                    if (parent !== -1) {
                        parent.parentsUntil('.tree', 'li')
                            .andSelf()
                            .find(' > a > .tree-radio')
                            .addClass('tree-undetermined')
                            .children(':radio')
                            .prop('undetermined', true);
                    }

                    radio.children(':radio')
                        .prop('checked', true)
                        .prop('undetermined', false);
                    return;
                }

                if (radio.hasClass('tree-unchecked')) {
                    if (parent !== -1) {
                        node.parentsUntil('.tree', 'li')
                            .andSelf()
                            .find(' > a > .tree-radio')
                            .removeClass('tree-undetermined')
                            .children(':radio')
                            .prop('undetermined', false);
                    }

                    radio.children(':radio')
                        .prop('checked', false)
                        .prop('undetermined', false);
                    return;
                }

                settings = this.getSettings(true);
                progressiveRender = (settings.json && settings.json.progressiveRender);

                if (progressiveRender) {
                    checkedChildren = node.find('.tree-radio.tree-checked');
                    if (checkedChildren.length) {
                        radio.addClass('tree-undetermined')
                            .children(':radio')
                            .prop('checked', false)
                            .prop('undetermined', true);
                    }
                }
            },
            /**
             * Fixes the checkbox state of a node and applies the state to its children.
             * Also fixes checked state of nodes above that node (e.g. applies the undetermined state to the parent
             * if not all siblings of the current node are checked)
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} nodes this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} checkDisabled true to also check disabled nodes
             * @param {Boolean} fixingDisabled internal used for tracking if the repair for disabled nodes is done
             * (no further recursion)
             * @return {*}
             */
            _repairCheckbox: function _repairCheckbox(nodes, checkDisabled, fixingDisabled) {
                var fixUp = true,
                    isInit = false,
                    node, checkbox, settings, progressiveRender, parent, originalParent;

                checkDisabled || (checkDisabled = false);

                if (!this.getSettings(true).checkbox.threeState) {
                    return false;
                }

                if (!nodes || nodes === -1) {
                    nodes = this.getContainerUl().children('li');
                }
                if (nodes.length > 1) {
                    nodes.each($.proxy(function repairEachCheckbox(index, value) {
                        this._repairCheckbox($(value), checkDisabled, fixingDisabled);
                    }, this));
                    return;
                }

                node = nodes;
                checkbox = node.find(' > a > .tree-checkbox');

                // set state if none exists (on init)
                if (!fixingDisabled && !checkbox.hasClass('tree-checked') && !checkbox.hasClass('tree-unchecked') && !checkbox.hasClass('tree-undetermined')) {
                    parent = this.getParent(node);
                    if (parent && parent !== -1 && parent.length && parent.find('> a > .tree-undetermined').length === 0) {
                        if (parent.find('> a > .tree-checked').length) {
                            checkbox.addClass('tree-checked');
                        } else {
                            checkbox.addClass('tree-unchecked');
                        }
                        fixUp = false;
                        isInit = true;
                    }
                }

                this._fixCheckboxChildren(node, checkbox, isInit, fixingDisabled);

                // determine state of parent nodes (and check nodes above parent if parent state changed)
                settings = this.getSettings(true);
                progressiveRender = (settings.json && settings.json.progressiveRender);

                while (fixUp) {
                    parent = this.getParent(node);
                    originalParent = parent;

                    if (parent === -1) {
                        // also fix for root nodes
                        parent = node;
                    }
                    if (!parent || !parent.length) return;

                    if (this._fixCheckbox(parent, progressiveRender) || originalParent === -1) {
                        return;
                    }
                    node = parent;
                }
            },
            /**
             * Applys the correct state to the children of the changed node
             * @param {jQuery} node the node to fix
             * @param {jQuery} checkbox checkbox of the node
             * @param {Boolean} isInit Preserves initial state of children
             * @param {Boolean} fixingDisabled internal, if true no further recursion into disabled / excluded nodes
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             */
            _fixCheckboxChildren: function _fixCheckboxChildren(node, checkbox, isInit, fixingDisabled) {
                var _this = this,
                    filterNodes, nodesToCheck, nodesToUncheck, disabledExcludedNodes;
                /**
                 * Removes disabled nodes, on init also children with determined states.
                 * Excluded nodes aren't filtered, so that their checked state is set. So when they get
                 * included again, no additional calculations are needed.
                 * @param  {jQuery}  nodes  the nodes to filter
                 * @param  {Boolean} isInit if nodes with determined state should also be removed
                 * @return {jQuery}         the filtered nodes
                 */
                filterNodes = function filterNodes(nodes, isInit) {
                    nodes = nodes.filter(function filterDisabledNodes() {
                        return !_this.isDisabled(this);
                    });

                    // make sure states of child nodes aren't overwritten on init
                    if (isInit) {
                        nodes = nodes.filter(function filterDeterminedNodes() {
                            return  !_this.isChecked(this) && !_this.isUndetermined(this) && !_this.isUnchecked(this);
                                //!$(this).find('> a > .tree-checkbox').hasClass('.tree-unchecked');
                        });
                    }
                    return nodes;
                };

                // check all children
                if (checkbox.hasClass('tree-checked')) {
                    nodesToCheck = filterNodes(node.find('.tree-checkbox').closest('li'), isInit);
                    this._checkNode(nodesToCheck);

                    // fix disabled nodes down the tree (they may be checked and therefore an uncheck of the current node is not allowed)
                    if (!fixingDisabled) {
                        disabledExcludedNodes = node.find('.tree-checkbox.tree-excluded, .tree-checkbox.tree-included')
                            .closest('li')
                            .add(node.find('.tree-disabled'));

                        if (disabledExcludedNodes.length) {
                            this._repairCheckbox($(disabledExcludedNodes), false, true);
                        }
                    }
                    return;
                }

                // uncheck all children
                if (checkbox.hasClass('tree-unchecked')) {
                    nodesToUncheck = filterNodes(node.find('.tree-checkbox').closest('li'), isInit);
                    this._uncheckNode(nodesToUncheck);

                    // fix disabled nodes down the tree (they may be checked and therefore an uncheck of the current node is not allowed)
                    if (!fixingDisabled) {
                        disabledExcludedNodes = node.find('.tree-checkbox.tree-excluded, .tree-checkbox.tree-included')
                            .closest('li')
                            .add(node.find('.tree-disabled'));

                        if (disabledExcludedNodes.length) {
                            this._repairCheckbox($(disabledExcludedNodes), false, true);
                        }
                    }
                }
            },
            /**
             * Fixes the checkbox state of the passed node by calculating it from its children
             * @param {jQuery} node The node to repair
             * @param {Boolean} progressiveRender If progressive Rendering is used
             * @private
             * @memberOf jQuery.tree.plugin~checkbox~
             * @return {Boolean}
             * <br />true, if fix process is complete,
             * <br />false, if parent needs to be fixed too
             */
            _fixCheckbox: function _fixCheckbox(node, progressiveRender) {
                var _this = this,
                    children, checkbox, checkedNodes, uncheckedNodes, undeterminedNodes, determinedSelects, parent;

                if (this.isChecked(node)) {
                    return true;
                }

                children = node.find(' > ul > li');

                checkedNodes = children.filter(function filterCheckedNodes() {
                    var checkbox = $(this).find(' > a > .tree-checkbox');
                    return ((checkbox.hasClass('tree-checked') && !checkbox.hasClass('tree-excluded')) || checkbox.hasClass('tree-included'))
                            && !checkbox.hasClass('tree-included');
                });

                uncheckedNodes = children.filter(function filterUncheckedNodes() {
                    var checkbox = $(this).find(' > a > .tree-checkbox');
                    return (!((checkbox.hasClass('tree-checked') && !checkbox.hasClass('tree-excluded')) || checkbox.hasClass('tree-included'))
                            && !(checkbox.hasClass('tree-undetermined') && !checkbox.hasClass('tree-excluded') && !checkbox.hasClass('tree-included'))
                            || checkbox.hasClass('tree-excluded'))
                            && !checkbox.hasClass('tree-excluded');
                });

                undeterminedNodes = children.filter(function filterUndeterminedNodes() {
                    var checkbox = $(this).find(' > a > .tree-checkbox');
                    return checkbox.hasClass('tree-undetermined') && !checkbox.hasClass('tree-excluded') && !checkbox.hasClass('tree-included')
                            || checkbox.hasClass('tree-excluded')
                            || checkbox.hasClass('tree-included');
                });

                // on progressive render all children are already loaded and have their states applied while on normal render
                // some siblings don't have states yet
                determinedSelects = checkedNodes.length + uncheckedNodes.length + undeterminedNodes.length;
                if ((progressiveRender && determinedSelects < children.length) || children.length === 0) {
                    return true;
                }

/*
                // uncheck node, loop again if node status changed
                if (uncheckedNodes.length === children.length) {
                    checkbox = node.find(' > a > .tree-checkbox');
                    if (checkbox.hasClass('tree-unchecked')) {
                        return true;
                    }
                    this._uncheckNode(node);
                    return false;
                }

                // check node, loop again if node status changed
                if (checkedNodes.length === children.length) {
                    checkbox = node.find(' > a > .tree-checkbox');
                    if (checkbox.hasClass('tree-checked')) {
                        return true;
                    }
                    this._checkNode(node);
                    return false;
                }
 */

                if (uncheckedNodes.length === children.length) {
                    parent = this.getParent(node);
                    this._uncheckNode(node);
                    if (parent && parent !== -1) {
                        this._fixCheckbox(parent, progressiveRender);
                    }
                    return true;
                }

                // set all parents undetermined
                node.parentsUntil('.tree', 'li')
                    .andSelf()
                    .find(' > a > .tree-checkbox')
                    .removeClass('tree-unchecked')
                    .addClass('tree-undetermined')
                    .children(':checkbox')
                    .prop('undetermined', true);
                return true;
            },
            /**
             * Sets checked and disabled states on tree init. Decorates core.cleanNode.
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @return {jQuery} Cleaned nodes
             */
            cleanNode: function cleanNode(obj) {
                var _this = this,
                    settings = this.getSettings(true);

                obj = this.__callOld();
                this.__instance.checkbox || (this.__instance.checkbox = {});

                obj = obj.each(function cleanEachNode() {
                    var node = $(this),
                        parent = _this.getParent(node),
                        data = node.data('checkbox'),
                        coreData = node.data('core'),
                        css = '',
                        name = settings.checkbox.name,
                        value = '',
                        disabled = '',
                        disabledText = '',
                        checkbox;

                    if (data) {
                        if (data.checked) {
                            if (settings.checkbox.single) {
                                checkbox = _this.__instance.checkbox;
                                if (checkbox._oldChecked) {
                                    _this._uncheckNode(checkbox._oldChecked);
                                    _this._repairCheckEl(checkbox._oldChecked);
                                }
                                _this.__instance.checkbox._oldChecked = node;
                            }
                            css += 'tree-checked ';
                        }

                        css += data.undetermined ? 'tree-undetermined ' : '';
                        css += data.excluded ? 'tree-excluded ' : '';
                        css += data.included ? 'tree-included ' : '';

                        name = typeof data.name !== 'undefined' ? data.name : name;
                        value = typeof data.value !== 'undefined' ? data.value : node.attr('id');

                        if (_this.isDisabled(parent) && settings.checkbox.threeState) {
                            coreData.disabled = true;
                            coreData.disabledText = parent.data('checkbox').disabledText || disabledText;
                        }
                        if (coreData.disabled || settings.core.readOnly) {
                            disabled = ' disabled="disabled" ';

	                        // most are already disabled by core
	                        if (!_this.isDisabled(node)) {
		                        _this.disableNode(node, coreData.disabledText);
	                        } else if (disabledText) {
		                        _this.setDisabledText(node, coreData.disabledText);
	                        }
                        }
                    } else {
                        node.data('checkbox', {});
                    }

                    node.find(' > a > .tree-' + _this.checkType).remove();
                    node.children('a')
                        .prepend('<ins class="tree-icon tree-' + _this.checkType + ' ' + css + '">' +
                            '<input class="tree-checkEl" type="' + _this.checkType + '" ' + disabled + ' name="' + name + '"' +
                            'value="' + value + '" ' + disabled + '/></ins>');
                });

                _this._repairCheckEl(obj, true, true);
                return obj;
            },
            /**
             * Decorates the core getState method with the ability to add ids of checked nodes to the state.
             * @example
             * state.checkbox: {
             *      checked: [id1, id2],
             *      disabled: [
             *          {
             *              id: id1,
             *              text: 'Why it is disabled'
             *          }
             *      ]
             * }
             * @memberOf jQuery.tree.plugin~checkbox~
             * @return {*}
             * @see {@link jQuery.tree.plugin~core~getState}
             */
            getState: function getState() {
                var state = this.__callOld();

                state.checkbox = {
                    checked: [],
                    undetermined: [],
                    excluded: [],
                    included: []
                };

                // add checked nodes
                this.getContainer()
                    .find('.tree-checked')
                    .closest('li')
                    .each(function addEach() {
                        state.checkbox.checked.push(this);
                    });

                // add undetermined nodes
                this.getContainer()
                    .find('.tree-undetermined')
                    .closest('li')
                    .each(function addEach() {
                        state.checkbox.undetermined.push(this);
                    });

                // add excluded nodes
                this.getContainer()
                    .find('.tree-excluded')
                    .closest('li')
                    .each(function addEach() {
                        state.checkbox.excluded.push(this);
                    });

                // add included nodes
                this.getContainer()
                    .find('.tree-included')
                    .closest('li')
                    .each(function addEach() {
                        state.checkbox.included.push(this);
                    });

                return state;
            },
            /**
             * Decorates the core setState method with the ability to restore checked states.
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param state
             * @param callback
             * @return {Boolean}
             * @see {@link jQuery.tree.plugin~core~setState}
             */
            setState: function setState(state, callback) {
                // store disabled state because after __callOld its gone
                var _this = this,
                    disabled = (state && state.core && $.isArray(state.core.disabled)) ?
                        state.core.disabled : {};

                if (this.__callOld()) {
                    if (state.checkbox) {
                        this.uncheckAll();
                        // TODO: create methods:
                        // this.enableAll();
                        // this.includeAll();
                        if ($.isArray(state.checkbox.checked)) {
                            $.each(state.checkbox.checked, function (index, id) {
                                _this.checkNode('#' + id);
                            });
                        }
                        if ($.isArray(state.checkbox.undetermined)) {
                            $.each(state.checkbox.undetermined, function (index, id) {
                                _this._setNodeUndetermined($('#' + id));
                            });
                        }
                        if ($.isArray(state.checkbox.excluded)) {
                            $.each(state.checkbox.excluded, function (index, id) {
                                _this.excludeNode('#' + id);
                            });
                        }
                        if ($.isArray(state.checkbox.included)) {
                            $.each(state.checkbox.included, function (index, id) {
                                _this.includeNode('#' + id);
                            });
                        }
                        $.each(disabled, function (index, value) {
                            var node = _this.getNode('#' + value.id);
                            _this.disableNode(node, value.disabledText, true);

                            // fix checked state for disabled node
                            if (state.checkbox.checked.indexOf(value.id) !== -1) {
                                _this._checkNode(node);
                                _this._repairCheckEl(node, true);
                            } else {
                                _this._uncheckNode(node);
                                _this._repairCheckEl(node, true);
                            }
                            // TODO Set oldTitle
                        });

                        delete state.checkbox;
                        this.setState(state, callback);
                        return false;
                    }
                    return true;
                }
                return false;
            },
            /**
             * Decorates parseJson from core
             * @param {*} nodeJson the input to parse
             * @return {jQuery} - the LI (or UL) node which was produced from the JSON
             * @see {@link jQuery.tree.plugin~core~parseJson}
             */
            parseJson: function parseJson(nodeJson) {
                var node = this.__callOld();

                if (nodeJson.data && nodeJson.data.checkbox) {
                    node.data('checkbox', nodeJson.data.checkbox);
                } else {
                    node.data('checkbox', {});
                }

                return node;
            },
            /**
             * Decorates the core getJson method to add the checked state to the returned json.
             * nodeJson.data.checkbox: {
             *     checked: true,
             *     disabled: true,
             *     disabledText: 'A String'
             * }
             * @memberOf jQuery.tree.plugin~checkbox~
             * @param {*} obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param {Boolean} isCallback do not modify this, tree uses this parameter to keep track of the recursion
             * @return {Object} A json object representing the tree node
             * @see {@link jQuery.tree.plugin~core~getJson}
             */
            getJson: function getJson(obj, isCallback) {
                var nodeJson = this.__callOld(),
                    checkbox;

                obj = typeof obj !== 'undefined' ? this.getNode(obj) : false;

                if (!isCallback) {
                    if (!obj || obj === -1) {
                        obj = this.getContainerUl().children('li');
                    }
                }

                if (isCallback) {
                    checkbox = obj.find('> a > ins > :' + this.checkType);
                    nodeJson.data.checkbox = {};
                    if (this.isChecked(obj)) {
                        nodeJson.data.checkbox.checked = true;
                    }
                    if (this.isUndetermined(obj)) {
                        nodeJson.data.checkbox.undetermined = true;
                    }
                    if (this.isExcluded(obj)) {
                        nodeJson.data.checkbox.excluded = true;
                    }
                    if (this.isIncluded(obj)) {
                        nodeJson.data.checkbox.included = true;
                    }
                    if (checkbox.attr('name') !== this.getSettings(true).checkbox.name) {
                        nodeJson.data.checkbox.name = checkbox.attr('name');
                    }
                    if (checkbox.val() !== obj.attr('id')) {
                        nodeJson.data.checkbox.value = checkbox.val();
                    }
                }
                return nodeJson;
            }
        }
    });
})(jQuery);
