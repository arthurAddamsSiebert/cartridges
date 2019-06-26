/**
 * This plugin makes it possible for tree to use JSON data sources.
 * <strong>All methods of this class can be called directly on a tree instance</strong>
 * @class json
 * @memberof! jQuery.tree.plugin~
 */
(function ($) {
    'use strict';

    $.tree.plugin('json', {
        __construct: function __construct() {
            this.getContainer()
                .on('__afterClose.tree', $.proxy(function afterClose(ev, data) {
                    var node = $(data.result.obj);
                    if (this.getSettings(true).json.progressiveUnload) {
                        var nodeData = node.data('tree') || {};
                        nodeData.children = this.getJson(node)[0].children;
                        node.data('tree', nodeData);

                        node.children('ul').remove();
                    }
                }, this));
        },
        /**
         * Default configuration.
         * @property {Array|Function|Boolean} data Specifies the content to load into the container and convert to a tree. You can also
         *      set this to a function - it will be executed in the tree's scope for every node that needs to be loaded, the function will receive two arguments:<br>
         *      <ol>
         *          <li>the node being loaded</li>
         *          <li>a function to call with the data once your processing is done. This function needs one parameter:</li>
         *          <ol>
         *              <li>
         *                  The json for the node that will be rendered.
         *                  <br />When the json has children defined, the data method will not be triggered again until a child has no children.
         *                  <br />Use { children: true } to display the node as openable, the data method will be triggered again for this node when it is opened.
         *                  <br />Use { children: [] } to indicate that node children exist.
         *              </li>
         *          </ol>
         *      </ol>
         * @property {Object|Function|Boolean} [ajax=false]
         *      <br />The ajax config object is pretty much the same as the jQuery ajax settings object.
         *      You can set the data option to a function, that will be executed in the current tree's scope (this
         *      will be the tree instance) and gets the node about to be open as a parameter (or -1 for initial load).
         *      Whatever you return in the data function will be sent to the server as data (so for example you can send the node's ID).<br />
         *      <br />You can set the url option to a function, that will be executed in the current tree's scope (this
         *      will be the tree instance) and gets the node about to be open as a parameter (or -1 for initial load).
         *      Whatever you return in the url function will be used as the ajax URL (so that you can accommodate pretty paths such as /get_children/node_2).<br />
         *      <br />The error and success functions (if present) also fire in the context of the tree, and if you return
         *      a value in the success function it will be used to populate the tree - this can be useful if you want
         *      to somehow change what the server returned on the client side before it is displayed in the tree
         *      (for example some .NET json implementations require this to work:<br />'success' : function (data) { return data.d; }.
         * @property {Boolean} [progressiveRender=false] If this option is set to true only the visible (open nodes) parts of the returned JSON are converted to DOM nodes,
         *      any hidden parts are saved away and parsed on demand (when a node becomes visible).
         *      <br />This is useful when you have a large nested tree which would result in a heavy DOM.
         * @property {Boolean} [progressiveUnload=false] If this option is set to true when a node is closed its children are removed from the DOM and
         *      saved as metadata on the node itself, on reopen that metadata is used (much like progressive_render).
         * @memberOf jQuery.tree.plugin~json~
         */
        defaults: {
            data: false,
            ajax: false,
            progressiveRender: false, // getJson, data on each node
            progressiveUnload: false
        },
        _fn: {
            /**
             * Decorates parseJson from core.
             * @memberOf jQuery.tree.plugin~json~
             * @param nodeJson
             * @return {*}
             * @see {@link jQuery.tree.plugin~core~parseJson}
             */
            parseJson: function parseJson(nodeJson) {
                var jsonSettings = this.getSettings(true).json;
                if ($.isArray(nodeJson.children)) {
                    if (jsonSettings.progressiveRender) {
                        // add children to data, so that core parseJson can determine which nodes have children
                        nodeJson.data = nodeJson.data || {};
                        nodeJson.data.tree = nodeJson.data.tree || {};
                        nodeJson.data.tree.children = nodeJson.children;
                        nodeJson.children = true;
                    }
                }
                return this.__callOld(true, nodeJson);
            },
            /**
             * Append a node generated from json (data) to another node (dom)
             * @memberOf jQuery.tree.plugin~json~
             * @param dom The node to append to.
             * @param data The json containing the node configuration.
             * @return {Boolean}
             * @private
             */
            _appendJsonData: function _appendJsonData(dom, data) {
                dom = this.getNode(dom);
                if (dom === -1) {
                    dom = this.getContainer();
                }
                data = this.parseJson(data);
                if (!data || !dom.length) {
                    return false;
                }
                if (!dom.children('ul').length) {
                    dom.append('<ul></ul>');
                }
                dom.children('ul').empty().append(data.is('li') ? data : data.children('li'));
                return true;
            },
            /**
             * Overwrites _loadNode from core. Adds lazy loading.
             * @private
             * @memberOf jQuery.tree.plugin~json~
             * @param obj this is used as a jquery selector - can be jQuery object, DOM node, string, etc.
             * @param callback
             * @return {*}
             * @see {@link jQuery.tree.plugin~core~_loadNode}
             */
            _loadNode: function _loadNode(obj, callback) {
                var data = false,
                    jsonSettings = this.getSettings().json;

                obj = this.getNode(obj);
                if (!obj) {
                    return false;
                }

                // root node with data
                if (obj === -1 && this.getContainer().data('tree') && $.isArray(this.getContainer().data('tree').children)) {
                    data = this.getContainer()
                        .data('tree')
                        .children;
                    this.getContainer()
                        .data('tree')
                        .children = null;
                    return callback.call(this, this._appendJsonData(obj, data));
                }

                // normal node with data
                if (obj !== -1 && obj.length && obj.data('tree') && $.isArray(obj.data('tree').children)) {

                    data = obj.data('tree')
                        .children;
                    obj.data('tree')
                        .children = null;
                    return callback.call(this, this._appendJsonData(obj, data));
                }

                // no settings
                if (!jsonSettings.data && !jsonSettings.ajax) {
                    throw 'Neither data nor ajax settings supplied.';
                }

                // data is function
                if ($.isFunction(jsonSettings.data)) {
                    return jsonSettings.data.call(this, obj, $.proxy(function (data) {
                        return callback.call(this, this._appendJsonData(obj, data));
                    }, this));
                }

                // data is set, ajax is not set, or both are set, but we are dealing with root node
                if ((!!jsonSettings.data && !jsonSettings.ajax) || (!!jsonSettings.data && !!jsonSettings.ajax && obj === -1)) {
                    return callback.call(this, this._appendJsonData(obj, jsonSettings.data));
                }

                // data is not set, ajax is set, or both are set, but we are dealing with a normal node
                if ((!jsonSettings.data && !!jsonSettings.ajax) || (!!jsonSettings.data && !!jsonSettings.ajax && obj !== -1)) {
                    jsonSettings.ajax.success = $.proxy(function success(data, text, xhr) {
                        var ajaxSettings = this.getSettings().json.ajax;
                        if ($.isFunction(ajaxSettings.success)) {
                            data = ajaxSettings.success.call(this, data, text, xhr) || data;
                        }
                        callback.call(this, this._appendJsonData(obj, data));
                    }, this);
                    jsonSettings.ajax.error = $.proxy(function error(xhr, text, err) {
                        var ajaxSettings = this.getSettings().json.ajax;
                        if ($.isFunction(ajaxSettings.error)) {
                            ajaxSettings.error.call(this, xhr, text, err);
                        }
                        callback.call(this, false);
                    }, this);
                    if (!jsonSettings.ajax.dataType) {
                        jsonSettings.ajax.dataType = 'json';
                    }
                    if ($.isFunction(jsonSettings.ajax.url)) {
                        jsonSettings.ajax.url = jsonSettings.ajax.url.call(this, obj);
                    }
                    if ($.isFunction(jsonSettings.ajax.data)) {
                        jsonSettings.ajax.data = jsonSettings.ajax.data.call(this, obj);
                    }
                    return $.ajax(jsonSettings.ajax);
                }
            }
        }
    });
})(jQuery);
