/**
 * Enables keyboard shortcuts. Depends on jQuery.hotkeys (included in tree_utils.js).
 * <strong>All methods of this class can be called directly on a tree instance</strong>
 * @class hotkeys
 * @memberof! jQuery.tree.plugin~
 */
(function ($) {
    'use strict';

    if (typeof $.hotkeys === 'undefined' && (typeof $.treeUtils === 'undefined' || typeof $.treeUtils.hotkeys === 'undefined')) {
        throw 'tree hotkeys: jQuery hotkeys plugin not included.';
    }

    var bound = [];

    /**
     * Calls the registered handler for a keystroke combination
     * @private
     * @memberof jQuery.tree.plugin~hotkeys
     * @param i the pressed keys
     * @param event
     * @return {*} What the event handler returns
     */
    function exec(i, event) {
        var focusedTree = $.tree._focused(),
            tmp;
        if (focusedTree && focusedTree.data && focusedTree.data.hotkeys && focusedTree.data.hotkeys.enabled) {
            tmp = focusedTree.getSettings(true).hotkeys[i];
            if (tmp) {
                return tmp.call(focusedTree, event);
            }
        }
        return true;
    }

    $.tree.plugin('hotkeys', {
        /**
         * Binds the exec method to handle keydown events. Binds handlers to disable / enable hotkeys when tree is locked.
         * @private
         * @memberof jQuery.tree.plugin~hotkeys~
         */
        __construct: function __construct() {
            if (!this.data.ui) {
                throw 'tree hotkeys: tree UI plugin not included.';
            }
            $.each(this.getSettings(true).hotkeys, function bindEachKey(index, value) {
                if (value !== false && $.inArray(index, bound) === -1) {
                    $(document).bind('keydown', index, function (event) {
                        return exec(index, event);
                    });
                    bound.push(index);
                }
            });
            this.getContainer()
                .on('afterLock.tree', $.proxy(function afterLock() {
                    if (this.data.hotkeys.enabled) {
                        this.data.hotkeys.enabled = false;
                        this.data.hotkeys.revert = true;
                    }
                }, this))
                .on('afterUnlock.tree', $.proxy(function afterUnlock() {
                    if (this.data.hotkeys.revert) {
                        this.data.hotkeys.enabled = true;
                    }
                }, this));
            this.enableHotkeys();
        },
        /**
         * Default configuration. Here the keystroke combinations are mapped to actions. New keystroke combinations
         * can be added by defining them here.
         * @memberOf jQuery.tree.plugin~hotkeys~
         */
        defaults: {
            'up': function up() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected || -1;
                this.hoverNode(this.getPrev(node));
                return false;
            },
            'ctrl+up': function ctrlUp() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected || -1;
                this.hoverNode(this.getPrev(node));
                return false;
            },
            'shift+up': function shiftUp() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected || -1;
                this.hoverNode(this.getPrev(node));
                return false;
            },
            'down': function down() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected || -1;
                this.hoverNode(this.getNext(node));
                return false;
            },
            'ctrl+down': function ctrlDown() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected || -1;
                this.hoverNode(this.getNext(node));
                return false;
            },
            'shift+down': function shiftDown() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected || -1;
                this.hoverNode(this.getNext(node));
                return false;
            },
            'left': function left() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected,
                    parent;
                if (node) {
                    if (node.hasClass('tree-open')) {
                        this.closeNode(node);
                    } else {
                        parent = this.getParent(node);
                        if (parent !== -1) {
                            this.hoverNode(this.getParent(node));
                        } else {
                            this.hoverNode(this.getPrev(node));
                        }
                    }
                }
                return false;
            },
            'ctrl+left': function ctrlLeft() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected,
                    parent;
                if (node) {
                    if (node.hasClass('tree-open')) {
                        this.closeNode(node);
                    } else {
                        parent = this.getParent(node);
                        if (parent !== -1) {
                            this.hoverNode(this.getParent(node));
                        } else {
                            this.hoverNode(this.getPrev(node));
                        }
                    }
                }
                return false;
            },
            'shift+left': function shiftLeft() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected,
                    parent;
                if (node) {
                    if (node.hasClass('tree-open')) {
                        this.closeNode(node);
                    } else {
                        parent = this.getParent(node);
                        if (parent !== -1) {
                            this.hoverNode(this.getParent(node));
                        } else {
                            this.hoverNode(this.getPrev(node));
                        }
                    }
                }
                return false;
            },
            'right': function right() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected;
                if (node && node.length) {
                    if (node.hasClass('tree-closed')) {
                        this.openNode(node);
                    } else {
                        this.hoverNode(this.getNext(node));
                    }
                }
                return false;
            },
            'ctrl+right': function ctrlRight() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected;
                if (node && node.length) {
                    if (node.hasClass('tree-closed')) {
                        this.openNode(node);
                    } else {
                        this.hoverNode(this.getNext(node));
                    }
                }
                return false;
            },
            'shift+right': function shiftRight() {
                var node = this.data.ui.hovered || this.data.ui.lastSelected;
                if (node && node.length) {
                    if (node.hasClass('tree-closed')) {
                        this.openNode(node);
                    } else {
                        this.hoverNode(this.getNext(node));
                    }
                }
                return false;
            },
            'space': function space() {
                if (this.data.ui.hovered) {
                    this.data.ui.hovered.children('a:eq(0)')
                        .click();
                }
                return true;
            },
            'ctrl+space': function ctrlSpace(event) {
                event.type = 'click';
                if (this.data.ui.hovered) {
                    this.data.ui.hovered.children('a:eq(0)')
                        .trigger(event);
                }
                return false;
            },
            'shift+space': function shiftSpace(event) {
                event.type = 'click';
                if (this.data.ui.hovered) {
                    this.data.ui.hovered.children('a:eq(0)')
                        .trigger(event);
                }
                return false;
            }
        },
        _fn: {
            /**
             * Enable hotkeys
             * @memberof jQuery.tree.plugin~hotkeys~
             */
            enableHotkeys: function enableHotkeys() {
                this.data.hotkeys.enabled = true;
            },
            /**
             * Disable hotkeys
             * @memberof jQuery.tree.plugin~hotkeys~
             */
            disableHotkeys: function disableHotkeys() {
                this.data.hotkeys.enabled = false;
            }
        }
    });
})(jQuery);
