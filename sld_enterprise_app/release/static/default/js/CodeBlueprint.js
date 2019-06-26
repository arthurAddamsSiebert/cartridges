// Copyright (C) 2008 Intershop Communications AG, all rights reserved.
// This file requires: ObjectGlue.

function CodeBlueprint(win, id) {
    this.window = win;
    this.id = id;
};

CodeBlueprint.extend(null, {

    /**
     * Flatten a DOM node, returning its source code. Unfortunately, the innerHTML property is not useable because
     * some browser implementations return invalid HTML on this property. This function currenty supports only
     * element, attribute, and text nodes. All other nodes are ignored and evaluate to empty.
     *
     * @param node
     *     DOM node or node list to flatten.
     * @param buffer
     *     Array of strings where to append flattened node strings.
     *     If not provided, this function will return a single string.
     * @return
     *     The buffer, if provided, otherwise a single string with the flattened node contents.
     */
    flatten: function(node, buffer) {
        if (!node) {
            return buffer ? buffer : "";
        }
        var b;
        if (buffer) {
            b = buffer;
        } else {
            b = [];
        }
        var scan;
        switch(node.nodeType) {
        case undefined:
            if (node.length) {
                // Node list mode, just iterate over it and return.
                for (var i = 0; i < node.length; i++) {
                    this.flatten(node[i], b);
                }
            }
            return buffer ? buffer : b.join("");
        case 1: // ELEMENT_NODE
            b.push("<");
            b.push(node.nodeName);
            scan = node.attributes;
            if (scan) {
                for (var i = 0; i < scan.length; i++) {
                    var attr = scan[i];
                    if (attr.specified !== false) {
                        b.push(" ");
                        this.flatten(attr, b);
                    }
                }
            }
            scan = node.firstChild;
            b.push(">");
            break;
        case 2: // ATTRIBUTE_NODE
            b.push(node.nodeName);
            b.push("=\"");
            break;
        case 7: // PROCESSING_INSTRUCTION_NODE
            b.push("<?");
            b.push(node.target);
            b.push(" ");
            break;
        case 8: // COMMENT_NODE
            b.push("<!--");
            break;
        default: // Document or fragment.
            scan = node.firstChild;
            break;
        }
        switch(node.nodeType) {
        case 2: // ATTRIBUTE_NODE
            b.push(this.coerce(node.value));
            break;
        case 3: // TEXT_NODE
        case 8: // COMMENT_NODE
            b.push(this.coerce(node.data));
            break;
        case 7: // PROCESSING_INSTRUCTION_NODE
            b.push(node.data);
            break;
        }
        while (scan) {
            this.flatten(scan, b);
            scan = scan.nextSibling;
        }
        switch(node.nodeType) {
        case 1: // ELEMENT_NODE
            b.push("</");
            b.push(node.nodeName);
            b.push(">");
            break;
        case 2: // ATTRIBUTE_NODE
            b.push("\"");
            break;
        case 7: // PROCESSING_INSTRUCTION_NODE
            b.push("?>");
            break;
        case 8: // COMMENT_NODE
            b.push("-->");
            break;
        }
        return buffer ? buffer : b.join("");
    },
    
    getInnerHTML: function(node) {
        if (node) {
            return this.flatten(node.childNodes);
        }
    },

    getCode: function() {
        if (!this.window._blueprintCache) {
            this.window._blueprintCache = {};
        }
        var result = this.window._blueprintCache[this.id];
        if (!result) {
            var node = this.window.document.getElementById(this.id);
            if (node) {
                result = this.getInnerHTML(node);
            } else {
                result = "<strong style=\"color: red;\">BLUEPRINT MISSING: " + this.id + "</strong>";
            }
            result = result.split("@");
            this.window._blueprintCache[this.id] = result;
        }
        return result;
    },

    /**
     * Replace all matches of re in s with the result of f(). Argument 0 to f
     * is the matched text, and all following arguments are matched groups,
     * if there are any present in re.
     */
    rereplace: function(s, re, f) {
        var a, r;
        for (var i = re.lastIndex; r = re.exec(s); i = re.lastIndex) {
            if (a) {
                a.push(s.substring(i, r.index), f.apply(this, r));
            } else {
                a = [ s.substring(i, r.index), f.apply(this, r) ];
            }
            if (!re.global) {
                break;
            }
        }
        if (a) {
            a.push(s.substring(i));
            return a.join("");
        } else {
            return s;
        }
    },
    
    entityre: /[<>&'"]/g,

    /** Coerce an object to string, but treat zero/null/false/undefined as empty string. */
    coerce: function(o) {
        return o ? this.rereplace(String(o), this.entityre, function(s) {
            switch(s) {
            case "<": return "&lt;";
            case ">": return "&gt;";
            case "&": return "&amp;";
            case "'": return "&apos;";
            case "\"": return "&quot;";
            default: throw new Error("invalid input: '" + s + "'");
            }
        }) : "";
    },

    /** Append the expansion of this blueprint to the given string array. */
    append: function(a, o) {
        var code = this.getCode();
        for (var i = 0; i < code.length; i++) {
            a.push(i & 1 ? this.coerce(o[code[i]]) : code[i]);
        }
        return a;
    },
    
    /** Compute the string expansion of this blueprint. */
    expand: function(o) {
        return this.append([], o).join("");
    }

});
