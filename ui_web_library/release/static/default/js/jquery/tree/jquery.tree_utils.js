/*
 File: Helper functions
 This file includes some functions that enable CSS manipulations, contextmenus, XSLT transformations and drag'n'drop.
 All of those work independently of tree.
 */
(function ($) {
    'use strict';

    /*
     Variable: $.treeUtils
     *object* Holds all helper objects.
     */
    $.treeUtils = {};

    /*
     Group: Miscellaneous
     Various small snippets.
     */

    /**
     * Makes it possible to remove an item (or a group of items) form an array.
     * http://ejohn.org/blog/javascript-array-remove/
     * @example
     * Call
     * $.treeUtils.arrayRemove(['a', 'b', 'c'], 1);
     * Return
     * ['a', 'c']
     */
    $.treeUtils.arrayRemove = function arrayRemove(array, from, to) {
        var rest = array.slice((to || from) + 1 || array.length);
        array.length = from < 0 ? array.length + from : from;
        array.push.apply(array, rest);
        return array;
    };

    /**
     * Collects all attributes from a DOM node.
     */
    $.treeUtils.attributes = function attributes(node, withValues) {
        node = $(node)[0];
        var attr = withValues ? {} : [];
        $.each(node.attributes, function eachAttribute(i, v) {
            if ($.inArray(v.nodeName.toLowerCase(), ['style', 'contenteditable', 'hasfocus', 'tabindex']) !== -1) {
                return;
            }
            if (v.nodeValue !== null && $.trim(v.nodeValue) !== '') {
                if (withValues) {
                    attr[v.nodeName] = v.nodeValue;
                } else {
                    attr.push(v.nodeName);
                }
            }
        });
        return attr;
    };

    /**
     * Some elements have an ID that has characters used in CSS notation, e.g. an point. To find these elements with jQuery,
     * the selector needs to be escaped first.
     * @param  {String} selector The jQuery selector
     * @return {String}
     */
    $.treeUtils.escapeSelector = function escapeSelector(selector) {
        return selector.replace(/(:|\.)/g, '\\$1');
    };


    (function () {
        var scrollbarWidth;
        /**
         * Gets the width of the scrollbar
         */
        $.treeUtils.getScrollbarWidth = function getScrollbarWidth() {
            var textarea1, textarea2;
            if (!scrollbarWidth) {
                if (/msie/.test(navigator.userAgent.toLowerCase())) {
                    textarea1 = $('<textarea cols="10" rows="2"></textarea>')
                        .css({
                            position: 'absolute',
                            top: -1000,
                            left: 0
                        })
                        .appendTo('body');
                    textarea2 = $('<textarea cols="10" rows="2" style="overflow: hidden;"></textarea>')
                        .css({
                            position: 'absolute',
                            top: -1000,
                            left: 0
                        })
                        .appendTo('body');
                    scrollbarWidth = textarea1.width() - textarea2.width();
                    textarea1.add(textarea2)
                        .remove();
                } else {
                    textarea1 = $('<div></div>')
                        .css({
                            width: 100,
                            height: 100,
                            overflow: 'auto',
                            position: 'absolute',
                            top: -1000,
                            left: 0
                        })
                        .prependTo('body')
                        .append('<div></div>')
                        .find('div')
                        .css({
                            width: '100%',
                            height: 200
                        });
                    scrollbarWidth = 100 - textarea1.width();
                    textarea1.parent().remove();
                }
            }
            return scrollbarWidth;
        };
    })();

    /**
     * Copy of the John Resig's fork of http://github.com/tzuryby/hotkeys for consistency
     */
    if (typeof $.hotkeys === 'undefined') {
        (function () {
            $.treeUtils.hotkeys = {
                version: '0.8',

                specialKeys: {
                    8: 'backspace',
                    9: 'tab',
                    13: 'return',
                    16: 'shift',
                    17: 'ctrl',
                    18: 'alt',
                    19: 'pause',
                    20: 'capslock',
                    27: 'esc',
                    32: 'space',
                    33: 'pageup',
                    34: 'pagedown',
                    35: 'end',
                    36: 'home',
                    37: 'left',
                    38: 'up',
                    39: 'right',
                    40: 'down',
                    45: 'insert',
                    46: 'del',
                    96: '0',
                    97: '1',
                    98: '2',
                    99: '3',
                    100: '4',
                    101: '5',
                    102: '6',
                    103: '7',
                    104: '8',
                    105: '9',
                    106: '*',
                    107: '+',
                    109: '-',
                    110: '.',
                    111: '/',
                    112: 'f1',
                    113: 'f2',
                    114: 'f3',
                    115: 'f4',
                    116: 'f5',
                    117: 'f6',
                    118: 'f7',
                    119: 'f8',
                    120: 'f9',
                    121: 'f10',
                    122: 'f11',
                    123: 'f12',
                    144: 'numlock',
                    145: 'scroll',
                    191: '/',
                    224: 'meta'
                },

                shiftNums: {
                    '`': '~',
                    '1': '!',
                    '2': '@',
                    '3': '#',
                    '4': '$',
                    '5': '%',
                    '6': '^',
                    '7': '&',
                    '8': '*',
                    '9': '(',
                    '0': ')',
                    '-': '_',
                    '=': '+',
                    ';': ': ',
                    '\'': '"',
                    ',': '<',
                    '.': '>',
                    '/': '?',
                    '\\': '|'
                }
            };
            /**
             *
             * @param handleObj
             * @param {String} handleObj.data Space separated keys
             * @param {Function} handleObj.handler the method to be executed
             */
            function keyHandler(handleObj) {
                // Only care when a possible input has been specified
                if (typeof handleObj.data !== 'string') {
                    return;
                }

                var origHandler = handleObj.handler,
                    keys = handleObj.data.toLowerCase().split(' ');

                // wrap the original handler in a method that normalizes pressed keys
                handleObj.handler = function handler(event) {
                    // Don't fire in text-accepting inputs that we didn't directly bind to
                    if (this !== event.target && (/textarea|select/i.test(event.target.nodeName) || event.target.type === 'text')) {
                        return;
                    }

                    // Keypress represents characters, not special keys
                    var special = event.type !== 'keypress' && $.treeUtils.hotkeys.specialKeys[event.which],
                        character = String.fromCharCode(event.which).toLowerCase(),
                        modifier = '',
                        possible = {};

                    // check combinations (alt|ctrl|shift+anything)
                    if (event.altKey && special !== 'alt') {
                        modifier += 'alt+';
                    }

                    if (event.ctrlKey && special !== 'ctrl') {
                        modifier += 'ctrl+';
                    }

                    // TODO: Need to make sure this works consistently across platforms
                    if (event.metaKey && !event.ctrlKey && special !== 'meta') {
                        modifier += 'meta+';
                    }

                    if (event.shiftKey && special !== 'shift') {
                        modifier += 'shift+';
                    }

                    if (special) {
                        possible[modifier + special] = true;

                    } else {
                        possible[modifier + character] = true;
                        possible[modifier + $.treeUtils.hotkeys.shiftNums[character]] = true;

                        // '$' can be triggered as 'Shift+4' or 'Shift+$' or just '$'
                        if (modifier === 'shift+') {
                            possible[$.treeUtils.hotkeys.shiftNums[character]] = true;
                        }
                    }

                    for (var i = 0, l = keys.length; i < l; i++) {
                        if (possible[keys[i]]) {
                            return origHandler.apply(this, arguments);
                        }
                    }
                };
            }

            $.each(['keydown', 'keyup', 'keypress'], function eachEvent() {
                $.event.special[this] = {
                    add: keyHandler
                };
            });
        })();
    }
})(jQuery);
