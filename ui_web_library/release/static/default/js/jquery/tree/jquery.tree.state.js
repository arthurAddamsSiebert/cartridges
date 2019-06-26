/**
 * This plugin enables state saving between reloads.
 * <strong>All methods of this class can be called directly on a tree instance</strong>
 * @class state
 * @memberof! jQuery.tree.plugin~
 */
(function ($) {
    'use strict';

    $.tree.plugin('state', {
        /**
         * Restore / save state on startup
         * @private
         * @memberOf jQuery.tree.plugin~state~
         */
        __construct: function __construct() {
            /*
            if (typeof $.treeUtils.storage === 'undefined') {
                throw 'tree state plugin: treeUtils storage helper not included.';
            }
            */

            this.getContainer()
                .on('__loaded.tree', $.proxy(function onLoaded() {
                    this.restoreState();
                }, this))
                .bind('__ready.tree', $.proxy(function onReady() {
                    this.getContainer()
                        .on(this.getSettings(true)
                            .state.events, $.proxy(function saveStateOnEvent() {
                                this.saveState();
                            }, this)
                        );
                }, this));
        },
        /**
         * Default configuration.
         * @memberOf jQuery.tree.plugin~state~
         * @property [key=tree] Name of the tree instance the data is stored by. Pass unique name to work with multiple trees
         * @property events The events  that trigger a saveState
         */
        defaults: {
            key: 'tree',
            events: 'selectNode.tree openNode.tree closeNode.tree deselectNode.tree deselectAll.tree checkNode.tree uncheckNode.tree uncheckAll.tree'
        },
        _fn: {
            /**
             * Saves the state to the defined storage
             * @memberOf jQuery.tree.plugin~state~
             */
            saveState: function saveState() {
                /*
                var s = this.getSettings(true).state;
                $.treeUtils.storage.set(s.key, this.getState());
                */
            },
            /**
             * Restores the state from the defined storage
             * @memberOf jQuery.tree.plugin~state~
             */
            restoreState: function restoreState() {
                /*
                var s = this.getSettings(true).state;
                var k = $.treeUtils.storage.get(s.key);
                if (!!k) {
                    this.setState(k);
                }
                */
            }
        }
    });
})(jQuery);
