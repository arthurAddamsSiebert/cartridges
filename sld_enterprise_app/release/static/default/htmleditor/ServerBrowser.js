// Copyright (C) 2008 Intershop Communications AG, all rights reserved.
// This file requires: ObjectGlue, CodeBlueprint.

// We need the function constructor to avoid leaking references in older browser versions, hence the evil bit.
// This file is not supposed to use any undeclared variables, because that would pollute global namespace.
// See also: http://code.google.com/p/jslint4java/ and http://www.jslint.com/lint.html

/*jslint evil: true, undef: true */
/*global ActiveXObject, alert, document, top, window, ObjectGlue, CodeBlueprint, tinyMCE, windowFor */

/**
 * Constructor for the server browser
 */
function ServerBrowser(uri, media, links) {
    this.browserTemplate = uri;
    this.mediaBrowserURI = media;
    this.linksBrowserURI = links;
    // Groups: 1-base url, 2-session id, 3-parameters
    var re = /(.*)\/HtmlEditor-\w+(;sid=[^\/?]*)?(?:\?(.*))?/;
    var match = re.exec(this.mediaBrowserURI);
    if (match) {
        var sid = match[2] ? match[2] : "";
        this.searchQueryURI = match[1] + "/ServerBrowser-SearchStaticContent" + sid;
        this.lightboxURI = match[1] + "/ServerBrowser-Lightbox" + sid;
        this.uriParameters = this.parseURIParameters(match[3]);
    } else {
        this.searchQueryURI = "ServerBrowser-SearchStaticContent";
        this.lightboxURI = "ServerBrowser-Lightbox";
    }
}

/* prototype */
ServerBrowser.extend(null, {

    ///// Instance properties

    /**
     * Encapsulates control functions
     */
    controls: {

        ID_UPLOAD_BUTTON: 'uploadButton',
        ID_NEW_FOLDER_BUTTON: 'newFolderButton',
        ID_RENAME_BUTTON: 'renameButton',
        ID_DELETE_BUTTON: 'deleteButton',

        /**
         * Enables or disables the given control
         *
         * @param win    The window
         * @param node    The element to change state
         * @param state    The new state, true for disabled, false for enabled
         */
        setEnabled: function(win, node, state) {
            if (typeof node === "string") {
                node = win.document.getElementById(node);
            }
            if (node) {
                if (state === false) {
                    node.disabled = true;
                } else {
                    node.disabled = false;
                    node.removeAttribute("disabled");
                }
            }
        },

        /**
         * Enables or disables the leaf dependent controls
         *
         * @param win    The window
         * @param state    true|false
         */
        setEnabledForLeaf: function(win, state)
        {
            this.setEnabled(win, this.ID_RENAME_BUTTON, state);
            this.setEnabled(win, this.ID_DELETE_BUTTON, state);
        },

        /**
         * Enables or disables the control dependent controls
         *
         * @param win    The window
         * @param state    true|false
         */
        setEnabledForNode: function(win, state)
        {
            this.setEnabled(win, this.ID_NEW_FOLDER_BUTTON, state);
            this.setEnabled(win, this.ID_UPLOAD_BUTTON, state);
            this.setEnabled(win, this.ID_RENAME_BUTTON, state);
            this.setEnabled(win, this.ID_DELETE_BUTTON, state);
        }

    },

    /**
     * Encapsulates treeView functions
     */
    treeView: {

        ID_FOLDERTREE: "folder_tree",
        CLASS_SUBFOLDERLIST: "subfolder_list",
        CLASS_SELECTED: "selected",
        CLASS_NODETITLE: "node_title",

        /**
         * returns the div inside the node with the class "subfolder_list"
         *
         * @param win    The window
         * @param node    The node to get the subfolder div for
         *
         * @return the subfolder div element or null in case there is none.
         */
        getSubfolderDiv: function(win, node)
        {
            var tags = node.childNodes;
            for (var i = 0; i<tags.length; i++) {
                if (tags[i].className.indexOf(this.CLASS_SUBFOLDERLIST)>=0)
                {
                    return tags[i];
                }
            }
            return;
        },

        /**
         * checks and returns whether the given node is the selected node
         *
         *  @param win    The window
         *  @param node    The node to check selection for
         *
         *  @return true|false
         */
        isSelected: function(win, node)
        {
            var tags = node.childNodes;
            for (var i = 0; i<tags.length; i++) {
                if (tags[i].className.indexOf(this.CLASS_NODETITLE)>=0)
                {
                    return tags[i].className.indexOf("selected")>=0;
                }
            }
            return false;
        },

        /**
         * returns the id of the selected element in the node tree
         *
         * @param win    The window
         * @param node    The node to get the selection for
         *
         * @return the id of the selected element or null in case the
         *         selection is not in the node's subtree
         */
        getSelectedIdFor: function(win, node)
        {
            var tags;
            // handle root separate
            if (node.id == this.ID_FOLDERTREE) {
                tags = node.childNodes;
            } else {
                var subfolderDiv = this.getSubfolderDiv(win, node);
                // check if it is the selected node
                if (node && (this.isSelected(win, node))) {
                    return subfolderDiv.id;
                } else if (subfolderDiv) {
                    tags = subfolderDiv.childNodes;
                } else {
                    return;
                }
            }

            // Walk through the tree.
            for (var i = 0; i<tags.length; i++) {
                var sel = this.getSelectedIdFor(win, tags[i]);
                if (sel) {
                    return sel;
                }
            }
            return;
        },

        /**
         * returns the id of the selected element
         *
         * @param win    The window
         * @return returns the id of the selected element inside the tree view
         *         or null in case there is no selection
         */
        getSelectedId: function(win) {

            var folderTree = win.document.getElementById(this.ID_FOLDERTREE);
            return this.getSelectedIdFor(win, folderTree);
        }
    },

    createCallback: function() {
        return this.openBrowser.closureFor(this);
    },

    command: function(ev, name) {
        var f = this["command" + name];
        if (typeof f === "function") {
            f.apply(this, arguments);
        } else {
            alert("Not implemented: " + name);
        }
        ObjectGlue.stopPropagation(ev);
    },

    commandDelete: function(ev, cmd, win) {
        var selectedUri = win.serverBrowserSelectedURI;
        var url = win.document.getElementById("params.server_browser");
        if (!url || !selectedUri) {
            return;
        }
        if (selectedUri.lastIndexOf("/") + 1 == selectedUri.length) {
            url = url.getAttribute("deleteFolderPipeline");
        } else {
            url = url.getAttribute("deleteImagePipeline");
        }
        if (!url) { 
            return;
        }
        var name = this.getBasename(selectedUri);
        tinyMCE.activeEditor.windowManager.open({
            url: url + "?" + this.encodePostData({
                ContextURI: selectedUri,
                OldName: name
            }),
            width: 440,
            height: 145,
            inline: true,
            resizable: false
        }, {
            server_browser: this,
            refresh: this.refreshParent.closureFor(this, win)
        });
    },

    commandRefresh: function(ev, cmd, win) {
        this.refresh(win);
    },

    commandRename: function(ev, cmd, win) {
        var contextUri = win.serverBrowserContextURI;
        var selectedUri = win.serverBrowserSelectedURI;
        var url = win.document.getElementById("params.server_browser");
        if (!url || !contextUri || !selectedUri) {
            return;
        }
        if (selectedUri.lastIndexOf("/") + 1 == selectedUri.length) {
            url = url.getAttribute("renameFolderPipeline");
            contextUri = this.getParentID(selectedUri);
        } else {
            url = url.getAttribute("renameImagePipeline");
        }
        if (!url) {
            return;
        }
        var name = this.getBasename(selectedUri);
        tinyMCE.activeEditor.windowManager.open({
            url: url + "?" + this.encodePostData({
                ContextURI: contextUri,
                NewName: name,
                OldName: name
            }),
            width: 470,
            height: 200,
            inline: true,
            resizable: false
        }, {
            server_browser: this,
            refresh: this.refreshParent.closureFor(this, win)
        });
    },

    refresh: function(win) {
        var state = win.refresh_state;
        if (!(state && state.src)) {
            return;
        }
        win.document.getElementById("busy_shield").style.display = "block";
        this.sendRequest(state.src, this._reload.closureFor(this), {
            src: state.src,
            win: win
        }, state.arg);
    },

    getParentID: function(uri) {
        if (uri) {
            var slash = uri.lastIndexOf('/', uri.length - 2);
            if (slash != -1) {
                return uri.substring(0, slash + 1);
            }
        }
    },

    getBasename: function(uri) {
        if (uri) {
            var end = uri.length;
            var slash = uri.lastIndexOf('/');
            if (slash + 1 == end) {
                end = slash;
                slash = uri.lastIndexOf('/', slash - 1);
            }
            if (slash != -1) {
                return uri.substring(slash + 1, end);
            }
        }
    },

    refreshParent: function(win) {
        var parentID = this.getParentID(win.serverBrowserSelectedURI);
        if (!parentID) {
            return;
        }
        var node = win.document.getElementById(parentID);
        if (node) {
            node = node.parentNode;
        }
        if (!node) {
            return;
        }
        var src = node.getAttribute("src");
        if (!src) {
            return;
        }
        win.serverBrowserSelectedURI = parentID;
        win.document.getElementById("selected_uri").value = "";
        win.document.getElementById("selected_alt").value = "";
        win.document.getElementById("selected_alt").title = "";
        win.document.getElementById("selected_lb").value = "";
        win.document.getElementById("busy_shield").style.display = "block";
        this.sendRequest(src, this._reload.closureFor(this), {
            src: src,
            win: win
        });
    },

    commandSearch: function(event, cmd, query, type) {
        var src = this.searchQueryURI;
        var node = ObjectGlue.getTarget(event);
        var win = windowFor(node);
        var selectedId = this.treeView.getSelectedId(win);
        if (win && src) {
            win.refresh_state = {
                src: src + "?" + this.encodePostData({
                    OrganizationDomainId: this.uriParameters.OrganizationDomainId,
                    LocaleId: this.uriParameters.LocaleId,
                    Query: query,
                    Type: type
                    //Selection: selectedId
                }),
                arg: this.createParameters({
                    Query: query,
                    Version: 2
                })
            };
            this.refresh(win);
        }
    },

    commandNewFolder: function(event, cmd, win) {
        var url = win.document.getElementById("params.server_browser");
        url = url ? url.getAttribute("folderPipeline") : null;
        if (!url) {
            return;
        }
        tinyMCE.activeEditor.windowManager.open({
            url: url + "?" + this.encodePostData({
                    OrganizationDomainId: this.uriParameters.OrganizationDomainId,
                    LocaleId: this.uriParameters.LocaleId,
                    ContextURI: win.serverBrowserContextURI
            }),
            width: 520,
            height: 180,
            inline: true,
            resizable: false
        }, {
            server_browser: this,
            refresh: this.refresh.closureFor(this, win)
        });
    },

    commandUpload: function(event, cmd, win) {
        var url = win.document.getElementById("params.server_browser");
        url = url ? url.getAttribute("uploadPipeline") : null;
        if (!url) {
            return;
        }
        tinyMCE.activeEditor.windowManager.open({
            url: url + "?" + this.encodePostData({ ContextURI: win.serverBrowserContextURI }),
            width: 560,
            height: 255,
            inline: true,
            resizable: false
        }, {
            server_browser: this,
            refresh: this.refresh.closureFor(this, win)
        });
    },

    openBrowser: function(field_name, url, type, win) {
        tinyMCE.activeEditor.windowManager.open({
            url: this.browserTemplate,
            width: 740,
            height: 520,
            inline: true,
            resizable: false
        }, {
            server_browser: this,
            target_window: win,
            target_name: field_name,
            target_type: type
        });
    },

    createParameters: function(o) {
        var n, result = {};
        if (this.uriParameters) {
            for (n in this.uriParameters) {
                if (this.uriParameters.hasOwnProperty(n)) {
                    result[n] = this.uriParameters[n];
                }
            }
        }
        if (o) {
            for (n in o) {
                if (o.hasOwnProperty(n)) {
                    result[n] = o[n];
                }
            }
        }
        return result;
    },

    encodePostData: function(data) {
        if (!data) {
            return "";
        } else if (typeof data === "string") {
            return data;
        } else {
            var result = [];
            for (var n in data) {
                if (data.hasOwnProperty(n)) {
                    result.push(String(n) + "=" + encodeURIComponent(data[n]));
                }
            }
            result = result.join("&");
            return result;
        }
    },

    sendRequest: function(url, fun, opt, data) {
        var request = this.createXMLHttpRequest();
        var showError = this.showError.closureFor(this);
        request.open(data ? "POST" : "GET", url, true);
        request.onreadystatechange = function() {
            if (request.readyState == 4) {
                request.onreadystatechange = new Function(); // allow GC
                if (request.status == 200) {
                    fun(request, opt);
                } else {
                    showError(request.responseText);
                }
            }
        };
        var content = this.encodePostData(data);
        if (content) {
            request.setRequestHeader("Content-Length", content.length);
            request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        }
        request.send(content);
    },

    /**
     * loads the serverproser for a specified xml content
     *
     * @param win    The window
     * @param xml    The xml content containing the serverbrowser content
     * @param src    ?
     */
    _onload: function (win, xml, src) {
        if (!xml) {
            win.server_browser = this;
            var node, notifyClosure = this.notifyChange.closureFor(this);
            if (win.document.body.addEventListener) {
                win.document.body.addEventListener("DOMMouseScroll", notifyClosure, false);
                win.document.body.addEventListener("mousewheel", notifyClosure, false);
                node = win.document.getElementById("entry_list");
                node.addEventListener("scroll", notifyClosure, false);
                node.addEventListener("resize", notifyClosure, false);
            } else if (win.document.body.attachEvent) {
                win.document.body.attachEvent("onmousewheel", notifyClosure);
                node = win.document.getElementById("entry_list");
                node.attachEvent("onscroll", notifyClosure);
                // Trident does not service resize event, user is bound to enter after drag.
                win.document.documentElement.attachEvent("onmouseenter", notifyClosure);
            } else {
                win.document.body.onmousewheel = notifyClosure;
                node = win.document.getElementById("entry_list");
                node.onscroll = notifyClosure;
                // Trident does not service resize event, user is bound to enter after drag.
                win.document.documentElement.onmousenter = notifyClosure;
            }
            var type = win.tinyMCEPopup.getWindowArg('target_type');
            var title = win.document.getElementById("title."+type);
            // if (title) {
            //    tinyMCE.activeEditor.windowManager.setTitle(title.innerHTML, win.tinyMCEPopup.id);
            // }
            this.sendRequest(type == "file" ? this.linksBrowserURI : this.mediaBrowserURI,
                this._reload.closureFor(this), { win: win });
            return;
        }
        for (var n = xml.firstChild; n; n = n.nextSibling) {
            if (n.nodeName == "collection") {
                this.addItems(win, n, src);
            } else if (n.nodeName == "libraries") {
                this.addChildren(win, n, src);
            }
        }
        win.document.getElementById("busy_shield").style.display = "none";
    },

    _reload: function(xhr, opt) {
        if (xhr.responseXML && xhr.responseXML.nodeType == 9) {
            this._onload(opt.win, xhr.responseXML, opt.src);
        } else {
            this.showError(xhr.responseText);
        }
    },

    addItems: function(win, xml, src) {
        for (var n = xml.firstChild; n; n = n.nextSibling) {
            if (n.nodeName == "items") {
                this.addChildren(win, n, src);
                return;
            }
        }
    },

    /**
     * Adds elements in the tree and content view
     *
     * @param win    The window
     * @param xml    The xml containing the content to add
     * @param src    ?
     */
    addChildren: function(win, xml, src) {
        var parent = null;
        var folders = [];
        var resources = [];
        var selected = null;
        var searchfolder = win.document.getElementById("folder_searchresult");
        var disconnected_searchfolder = false;
        for (var n = xml.firstChild; n; n = n.nextSibling) {
            var o = this.parseNode(n);
            if (n.nodeName == "collection" || n.nodeName == "library") {
                var folderBluePrint = new CodeBlueprint(win, "blueprint.folder");
                if (!parent) {
                    if (src && src.indexOf(this.searchQueryURI)>=0)
                    {
                        // in case of the elements added are result of a search
                        parent = win.document.getElementById("folder_searchresult"); //searchfolder;
                        parent = this.findFolderNode(parent, src, n.id);
                        if (parent.id=="folder_searchresult")
                        {
                            parent = win.document.getElementById("folder_searchresult_sublist"); //searchfolder;
                        }
                        selected = parent;
                        if (o.id && parent.id == o.id) {
                            // Already present.
                            continue;
                        } else
                        {
                            if (o)
                            {
                                selected = o.id;
                            }
                            folders.push(folderBluePrint.getInnerHTML(parent));
                        }
                    }
                    else
                    {
                        parent = win.document.getElementById("folder_tree");
                        // Try to find the parent library or folder.
                        parent = this.findFolderNode(parent, src, n.id);
                        selected = parent;
                        if (o.title == "[..]") {
                            // Skip the synthetic parent node.
                            continue;
                        }
                        if (parent.id == "folder_tree") {
                            // Append new libraries.
                            parent.removeChild(searchfolder);
                            disconnected_searchfolder = true;
                            folders.push(folderBluePrint.getInnerHTML(parent));
                            selected = src ? o.id : null;
                        } else if (o.id && parent.id == o.id) {
                            // Already present.
                            continue;
                        }
                    }
                }
                folderBluePrint.append(folders, o);
            } else if (n.nodeName == "resource") {
                var resourceBluePrint = new CodeBlueprint(win, "blueprint.leaf");
                resourceBluePrint.append(resources, this.adjustLeaf(o));
            } else if (n.nodeName == "paging") {
                this.addPaging(win, o, n);
                break;
            }
        }

        // Force redraw to take place in JS thread, otherwise Trident will corrupt the tree display.
        folders = folders.join("");
        resources = resources.join("");

        var that = this;
        win.setTimeout(function(){
            if (parent && (src || folders)) {
                if (folders.length > 0) {
                    parent.style.display = "";
                }
                parent.innerHTML = folders;
                if (parent && (parent.id == "folder_tree") && disconnected_searchfolder) {
                    parent.appendChild(searchfolder);
                }
                if (parent && (parent.id == "folder_searchresult_sublist")) {
                    if (searchfolder.className.indexOf("closed") != -1) {
                        searchfolder.className = "server_browser_node opened";
                    }
                }

                if (folders.length === 0) {
                    /*
                     * Trident re-flows the div with text-height, even when empty.
                     * This is ugly, so we hide empty sub-trees.
                     */
                    parent.style.display = "none";
                }
            }
            var list = win.document.getElementById("entry_list");
            list.scrollTop = 0;
            list.scrollState = "";
            if ((resources.length === 0) && src && (src.indexOf(that.searchQueryURI)>=0)) {
                list.innerHTML = "<div class=\"server_browser_leaf\">No items found for your search</div>";
            }
            else {
                list.innerHTML = resources;
            }

            win.setTimeout(function(){
                if (typeof selected === "string") {
                    selected = win.document.getElementById(selected);
                }
                if (!selected) {
                    that.selectFolder(null, parent.firstChild, true);
                }
                if (selected && selected.id != "folder_tree") {
                    that.changeFolderSelection(win, selected.parentNode);
                }
                that.afterChange(win);
            }, 40);
        }, 10);
    },

    subfolderRe: /\bsubfolder_list\b/,

    findFolderNode: function(node, uri, id) {
        if (!uri) {
            return node;
        }
        if (id) {
            var idNode = node.ownerDocument.getElementById(id);
            if (idNode && this.subfolderRe.test(idNode.className)) {
                return idNode;
            }
        }
        var tags = node.getElementsByTagName("DIV");
        for (var i = tags.length; --i >= 0;) {
            if (tags[i].getAttribute("src") == uri) {
                tags = tags[i].childNodes;
                for (var j = tags.length; --j >= 0;) {
                    if (tags[j].nodeName == "DIV" && this.subfolderRe.test(tags[j].className)) {
                        node = tags[j];
                        break;
                    }
                }
                break;
            }
        }
        return node;
    },

    addPaging: function(win, paging, xml) {
        win.document.getElementById("paging_title").innerHTML = paging.title;
        // The document loaded from the XHR is not indexed by ID, so we have to use our own indexing.
        var buttons = {};
        buttons[paging.firstPageId] = this.setPagingIcon(win, "iconFirst", paging.iconFirst);
        buttons[paging.previousPageId] = this.setPagingIcon(win, "iconPrevious", paging.iconPrevious);
        buttons[paging.nextPageId] = this.setPagingIcon(win, "iconNext", paging.iconNext);
        buttons[paging.lastPageId] = this.setPagingIcon(win, "iconLast", paging.iconLast);
        for (var n = xml.nextSibling; n; n = n.nextSibling) {
            if (n.nodeName == "collection") {
                var id = n.getAttribute("id");
                if (id && buttons[id]) {
                    buttons[id].setAttribute("uri", this.parseNode(n).uri);
                    buttons[id].disabled = "";
                }
            }
        }
    },

    setPagingIcon: function(win, iconId, src) {
        if (!iconId) {
            return;
        }
        var icon = win.document.getElementById(iconId);
        if (icon) {
            icon.src = src ? src : icon.getAttribute("src");
            return icon;
        }
    },

    disablePageButtons: function(win) {
        win.document.getElementById("paging_title").innerHTML = "";
        this.setPagingIcon(win, "iconFirst").disabled = "disabled";
        this.setPagingIcon(win, "iconPrevious").disabled = "disabled";
        this.setPagingIcon(win, "iconNext").disabled = "disabled";
        this.setPagingIcon(win, "iconLast").disabled = "disabled";
    },

    /**
     * Returns an object with properties for all attributes and child elements of the given xml node.
     *
     * @param xml The xml node to parse.
     * @return An object with properties set from the xml node.
     */
    parseNode: function(xml) {
        var result = {};

        if (xml.attributes) {
            for (var i = xml.attributes.length; --i >= 0;) {
                var name = xml.attributes[i].nodeName;
                result[name] = xml.getAttribute(name);
            }
        }
        for (var n = xml.firstChild; n; n = n.nextSibling) {
            if (n.firstChild && n.firstChild.nodeType == 3) {
                result[n.nodeName] = n.firstChild.nodeValue;
            }
        }
        return result;
    },

    parseURIParameters: function(s) {
        var result = {};
        var re = /&?([^=]+)(?:=([^&]+)?)?/g;
        for (var match; !!(match = re.exec(s));) {
            result[match[1]] = match[2] ? match[2] : 1;
        }
        return result;
    },

    adjustLeaf: function(o) {
        o.src = this.findFallback(o.src, o.uri);
        o.preview = this.findFallback(o.preview, o.icon);
        o.encoded = this.findFallback(o.encodeduri, o.uri, o.src);
        o.description = this.findFallback(o.description, o.title);
        return o;
    },

    switchPage: function(win, node) {
        if (node.disabled) {
            return;
        }
        var src = node ? node.getAttribute("uri") : null;
        if (win && src) {
            win.document.getElementById("busy_shield").style.display = "block";
            this.sendRequest(src, this._reload.closureFor(this), {
                win: win
            });
        }
    },

    nodeTitleRe: /\bnode_title\b/,

    changeFolderSelection: function(win, node) {
        var divs = win.document.getElementById("folder_tree").getElementsByTagName("DIV");
        for (var i = divs.length; --i >= 0;) {
            var scan = divs[i];
            if (scan.className) {
                var k = scan.className.indexOf(" selected");
                if (k != -1 && scan.parentNode != node) {
                    scan.className = scan.className.substring(0, k);
                } else if (k == -1 && scan.parentNode == node && this.nodeTitleRe.test(scan.className)) {
                    scan.className = scan.className + " selected";
                }
            }
        }
        var readonly = node.getAttribute("readonly");
        if (readonly=="true")
        {
            this.controls.setEnabledForNode(win, false);
        }
        else
        {
            var contextUri = this.getFolderURI(node);
            if (contextUri) {
                win.serverBrowserContextURI = contextUri;
                this.controls.setEnabled(win, this.controls.ID_UPLOAD_BUTTON);
                this.controls.setEnabled(win, this.controls.ID_NEW_FOLDER_BUTTON);
                var parent = this.getParentID(contextUri);
                if (parent) {
                    parent = win.document.getElementById(parent);
                }
                // a root navigation element in the tree view can not be deleted or renamed
                this.controls.setEnabled(win, this.controls.ID_RENAME_BUTTON, parent ? true : false);
                this.controls.setEnabled(win, this.controls.ID_DELETE_BUTTON, parent ? true : false);
            } else {
                // elements without context uri cannot be changed
                win.serverBrowserContextURI = null;
                this.controls.setEnabledForNode(win, false);
            }
        }
    },

    decodeURIParameter: function(s) {
        if (s) {
            // decodeURIComponent does not interpret + as per specification.
            s = s.replace(/[+]/g, " ");
            s = decodeURIComponent(s);
        }
        return s;
    },

    getContextURI: function(src) {
        var q = src.indexOf('?');
        if (q != -1) {
            src = this.parseURIParameters(src.substring(q + 1));
            if (src) {
                if (src.ContextURI) {
                    return this.decodeURIParameter(src.ContextURI);
                }
                if (src.URI) {
                    return this.decodeURIParameter(src.URI);
                }
            }
        }
    },

    getFolderURI: function(node) {
        var result;
        for (var scan = node.firstChild; scan && !result; scan = scan.nextSibling) {
            if (scan.tagName == "DIV" && scan.className == "subfolder_list") {
                result = scan.getAttribute("id");
            }
        }
        if (!result) {
            result = this.getContextURI(node.getAttribute("src"));
        }
        return result;
    },

    selectFolder: function(ev, node, open) {
        ObjectGlue.stopProcessing(ev);
        if (!node || node.disabled) {
            return;
        }
        var src = node.getAttribute("src");
        var win = windowFor(node);
        win.document.getElementById("selected_lb").innerHTML = "";
        if (win && src) {
            var uri = node.getAttribute("uri");
            if (uri && uri != src) {
                // Folder with its own resource URI.
                win.document.getElementById("selected_uri").value = uri;
                var selected_alt = win.document.getElementById("selected_alt");
			    selected_alt.value = node.getAttribute("description");
				selected_alt.title = selected_alt.value;               
				
                var desc = node.getAttribute("description2");
                if (desc) {
                    var elem = win.document.getElementById("selected_lb");
                    elem.innerHTML = "(" + desc + ")";
                }
            }
            var contextUri = this.getFolderURI(node);
            if (contextUri) {
                win.serverBrowserSelectedURI = contextUri;
            }
            if (open && node.className.indexOf("closed") != -1) {
                node.className = "server_browser_node opened";
            }
            win.refresh_state = {
                src: src
            };
            this.refresh(win);
        }
    },

    toggleFolder: function(ev, node) {
        ObjectGlue.stopProcessing(ev);
        if (!node || node.disabled) {
            return;
        }
        if (node.className.indexOf("opened") != -1) {
            node.className = "server_browser_node closed";
            var subs = node.getElementsByTagName("DIV");
            for (var i = subs.length; --i >= 0;) {
                var className = subs[i].className;
                if (className.indexOf("selected") != -1) {
                    this.selectFolder(ev, node);
                    break;
                }
            }
        } else if (node.className.indexOf("closed") != -1) {
            node.className = "server_browser_node opened";
            // Cannot determine if sub-folders are recent, refresh.
            this.selectFolder(ev, node);
        }
    },

    openLeaf: function(ev, win, node) {
        ObjectGlue.stopProcessing(ev);
        ObjectGlue.getTarget(ev).blur();
        if (ev && (ev.detail >= 2 || ev.type == "dblclick")) {
            return;
        }
        this.selectLeaf(ev, win, node);
        var src = node.getAttribute("src");
        var aTagContent = node.lastChild.innerHTML;
        var add = "";
        if(src.indexOf("?") == -1) {
            // in case url rewrite is enabled the '?' doesn't exist
            if(aTagContent.indexOf(".link") > -1) {
                add = "&MimeType=text/html";
            }
        }
        else {
            add = "&MimeType=text/html";
        }
        var w = win.open(this.lightboxURI + "?URI=" + encodeURIComponent(src) + add,
            "ServerBrowser_Lightbox", "height=100,left=" + ev.screenX +
            ",location=yes,menubar=no,status=no,toolbar=no,top=" + ev.screenY +
            ",width=100,resizable=yes,scrollbars=yes", true);
        // Help finding window location.
        win.lightBoxPosition = { x: ev.screenX, y: ev.screenY };
    },

    selectLeaf: function(ev, win, node) {
        if (ev && (ev.detail >= 2 || ev.type == "dblclick")) {
            var selected_uri = win.document.getElementById("selected_uri");
            var selected_alt = win.document.getElementById("selected_alt");
            this.applyValue(win, selected_uri.value, selected_alt.value);
            return;
        }
        for (var scan = node.parentNode.firstChild; scan; scan = scan.nextSibling) {
            if (scan.className) {
                var i = scan.className.indexOf(" selected");
                if (i != -1) {
                    scan.className = scan.className.substring(0, i);
                }
            }
        }
        if (win) {
            node.className = node.className + " selected";
            win.serverBrowserSelectedURI = this.getContextURI(node.getAttribute("img"));
            win.document.getElementById("selected_uri").value = node.getAttribute("encoded");
            win.document.getElementById("selected_alt").value = node.getAttribute("description");
            win.document.getElementById("selected_alt").title = node.getAttribute("description");
            var desc = node.getAttribute("description2");
            if (desc) {
                var elem = win.document.getElementById("selected_lb");
                elem.innerHTML = "(" + desc + ")";
            }
            var readonly = node.getAttribute("readonly");
            this.controls.setEnabledForLeaf(win, (readonly=='true')? false: true);
        }
        else
        {
            this.controls.setEnabledForLeaf(win, false);
        }
    },

    applyValue: function(win, uri, alt, ssl) {
        if (uri) {
            var target = win.tinyMCEPopup.getWindowArg('target_window');
            var id = win.tinyMCEPopup.getWindowArg('target_name');
            if (ssl) {
                var end = uri.lastIndexOf("[/ismediaobject]");
                if (end == -1) {
                    end = uri.lastIndexOf("[/islink]");
                }
                if (end > 0) {
                    end = uri.lastIndexOf("|", end);
                    if (end > 0) {
                        uri = uri.substring(0, end) + "|kupussl|true" + uri.substring(end);
					                    }
				} else {
					// for storefront links append the ssl-parameter
					uri = uri + "?ssl=true";
				}
            }
            target = target.document.getElementById(id);
            target.value = uri;
            if (typeof target.onchange === "function") {
                target.onchange();
            }
            if (alt && target.form && target.form.alt) {
                target.form.alt.value = alt;
            }
        }
        win.tinyMCEPopup.close();
    },

    notifyChange: function(ev) {
        this.queueChange(windowFor(ObjectGlue.getTarget(ev)));
    },

    queueChange: function(win) {
        if (!win.notifyTimeout) {
            var t = this;
            win.notifyTimeout = win.setTimeout(function() {
                win.notifyTimeout = null;
                t.afterChange(win);
            }, 200);
        }
    },

    afterChange: function(win) {
        var doc = win.document;
        if (!doc) {
            // Originating document not found.
            return;
        }
        var list = doc.getElementById("entry_list");
        if (!list) {
            // No list to update.
            return;
        }
        var state = String(doc.body.clientWidth) + "x" + String(doc.body.clientHeight);
        if (win.bodyState != state) {
            win.bodyState = state;
            var n = doc.getElementById("toolbar_area").clientWidth - 210;  // ori: 208
            if (n != list.clientWidth) {
                list.style.width = n + "px";
                var box = doc.getElementById("control_area");
                n = doc.getElementById("toolbar_area").clientWidth;
                if (n != box.clientWidth) {
                    box.style.width =  n + "px";
                }
                state = "dirty";
            }
            n = doc.documentElement.clientHeight - 95;
            if (n != list.clientHeight) {
                list.style.height = n + "px";
                var tree = doc.getElementById("folder_tree");
                n = doc.documentElement.clientHeight - 99;
                if (n != tree.clientHeight) {
                    tree.style.height =  n + "px";
                }
                state = "dirty";
            }
            if (state == "dirty") {
                this.queueChange(win);
                return;
            }
        }
        var top = list.scrollTop - 100;
        var bottom = list.scrollTop + list.clientHeight;
        state = "top:" + top + ",bottom:" + bottom + ",width:" + list.clientWidth;
        if (list.scrollState == state) {
            return;
        } else {
            list.scrollState = state;
        }
        for (var node = list.firstChild; node; node = node.nextSibling) {
            if (node.nodeType != 1 || node.tagName != "DIV") {
                continue;
            }
            var pos = node.offsetTop;
            if (pos < top) {
                continue;
            } else if (pos > bottom) {
                break;
            } else {
                for (var child = node.firstChild; child; child = child.nextSibling) {
                    if (child.className == "leaf_frame") {
                        if (!child.style.backgroundImage) {
                            child.style.backgroundImage = "url(" + node.getAttribute("img") + ")";
                        }
                        break;
                    }
                }
            }
        }
    },

    showError: function(text) {
        if (typeof text === "string" && /<\s*body/i.test(text)) {
            top.document.documentElement.innerHTML = text;
        } else {
            alert("Error: " + text);
        }
    },

    /**
     * Find the first non-null and non-undefined value in the list of parameters.
     * @param value... variable list of value parameters.
     */
    findFallback: function(/* value... */) {
        for (var i = 0; i < arguments.length; i++) {
            var v = this.trimString(arguments[i]);
            if (v) {
                return v;
            }
        }
    },

    /**
     * Trim a string, removing all leading and trailing white space.
     * @param s string to trim.
     * @return trimmed string.
     */
    trimString: function(s) {
        return (typeof s === "string") ? s.replace(/^\s+|\s+$/g, "") : s;
    }

});

////////////////////////////////////////////////////////////
// Decide on a DOM and XmlHTTPRequest implementation to use.
do {
    if (window.XMLHttpRequest && window.DOMParser &&
        document.implementation && document.implementation.createDocument) {
        ServerBrowser.prototype.createXMLHttpRequest = new Function(
            "return new XMLHttpRequest();");
        ServerBrowser.prototype.parseXMLString = new Function("text",
            "return new DOMParser().parseFromString(text, \"text/xml\");");
        break;
    }
    try {
        var http = new ActiveXObject("MSXML2.XmlHttp");
        var dom2 = new ActiveXObject("MSXML2.DOMDocument");
        ServerBrowser.prototype.createXMLHttpRequest = new Function(
            "return new ActiveXObject(\"MSXML2.XmlHttp\");");
        ServerBrowser.prototype.parseXMLString = new Function("text",
            "var result = new ActiveXObject(\"MSXML2.DOMDocument\");" +
            "result.async = \"false\";" +
            "result.loadXML(text);" +
            "return result;");
        break;
    } catch (e) {}
    try {
        var http = new ActiveXObject("Microsoft.XmlHttp");
        var dom2 = new ActiveXObject("Microsoft.DOMDocument");
        ServerBrowser.prototype.createXMLHttpRequest = new Function(
            "return new ActiveXObject(\"Microsoft.XmlHttp\");");
        ServerBrowser.prototype.parseXMLString = new Function("text",
            "var result = new ActiveXObject(\"Microsoft.DOMDocument\");" +
            "result.async = \"false\";" +
            "result.loadXML(text);" +
            "return result;");
        break;
    } catch (e) {}
    try {
        var http = new ActiveXObject("MSXML.XmlHttp");
        var dom2 = new ActiveXObject("MSXML.DOMDocument");
        ServerBrowser.prototype.createXMLHttpRequest = new Function(
            "return new ActiveXObject(\"MSXML.XmlHttp\");");
        ServerBrowser.prototype.parseXMLString = new Function("text",
            "var result = new ActiveXObject(\"MSXML.DOMDocument\");" +
            "result.async = \"false\";" +
            "result.loadXML(text);" +
            "return result;");
        break;
    } catch (e) {}
    try {
        var http = new ActiveXObject("MSXML3.XmlHttp");
        var dom2 = new ActiveXObject("MSXML3.DOMDocument");
        ServerBrowser.prototype.createXMLHttpRequest = new Function(
            "return new ActiveXObject(\"MSXML3.XmlHttp\");");
        ServerBrowser.prototype.parseXMLString = new Function("text",
            "var result = new ActiveXObject(\"MSXML3.DOMDocument\");" +
            "result.async = \"false\";" +
            "result.loadXML(text);" +
            "return result;");
        break;
    } catch (e) {}
} while (false);