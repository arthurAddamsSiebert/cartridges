// Copyright (C) 2008 Intershop Communications AG, all rights reserved.

/**
 * Return a closure that will call this function on the given context object.
 */
Function.prototype.closureFor = function(o) {
    var f = this;
    if (arguments.length == 1) {
        return function() { f.apply(o, arguments); };
    } else {
        var args = [];
        for (var i = 1; i < arguments.length; i++) {
            args.push(arguments[i]);
        }
        return function() { f.apply(o, args); };
    }
};

/**
 * Extend a class with a supertype, prototype, and class properties. All parameters are optional.
 * @param s the supertype.
 * @param p the instance properties.
 * @param c the class properties. 
 */
Function.prototype.extend = function(s, p, c) {
    function override(a, b) {
        for (var n in a) {
            b[n] = a[n];
        }
    }
    
    if (c) override(c, this);
    if (s) this.prototype = new s();
    if (p) override(p, this.prototype);
};

function ObjectGlue() {
}

ObjectGlue.extend(null, null, {
    stopPropagation: function(ev) {
        if (ev.stopPropagation) {
            ev.stopPropagation();
        } else {
            ev.cancelBubble = true;
        }
    },
    
    preventDefault: function(ev) {
        if (ev.preventDefault) {
            ev.preventDefault();
        } else {
            ev.returnValue = false;
        }
    },
    
    stopProcessing: function(ev) {
    	if (ev != null) {
    		this.stopPropagation(ev);
    		this.preventDefault(ev);
    	}	
    },
    
    getTarget: function(ev) {
        if (ev.target) {
            return ev.target;
        }
        if (ev.srcElement) {
            return ev.srcElement;
        }
    }
});

/** Find the window for a node or document. */
function windowFor(node) {
    if (node.self) {
        return node;
    }
    if (node.ownerDocument) {
        node = node.ownerDocument;
    }
    if (node.defaultView) {
        return node.defaultView;
    }
    if (node.parentWindow) {
        return node.parentWindow;
    }
}
