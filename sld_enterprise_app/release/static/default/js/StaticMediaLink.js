// Copyright (C) 2009 Intershop Communications AG, all rights reserved.

(function() {
    tinymce.create('tinymce.plugins.StaticMediaLink', {
        
        doSaveContent: function(o) {
            // Convert intermediate to encoded form.
            if (o && o.content) {
                o.content = o.content.replace(
                    /(["'])([^?"']+)\?((?:isstatic|isfile):\/[^"']+)(["'])/ig,
                    "$1https://./?[ismediaobject]$3|$2[/ismediaobject]$4");
            };
        },

        doSetContent: function(o) {
            if ((!(o && (o.load || o.save))) || typeof tinymce.activeEditor === 'undefined') return;
            // Fix image src attributes: separate content URI from static link.
            tinymce.each(tinymce.activeEditor.dom.select('img'), function(n) {
                var src = n.getAttribute("data-mce-src") || n.getAttribute("src");
                // Check if the separation was already done, or src attribute missing altogether. 
                if (!src || src.indexOf("[ismediaobject]") == -1) return;

                // Detect link syntax and split into URI and SRC parts.
                var uri, match = /\[ismediaobject\](.*)\[\/ismediaobject\]/.exec(src);
                if (match && match.length) {
                    // Split up encoded URL from saved content.
                    match = /^((?:isstatic|isfile):\/[^|]+)\|([^|]+)/.exec(match[1]);
                    if (match && match.length == 3) {
                        uri = match[1];
                        src = match[2];
                        // If found, set SRC for edit view, and MCE_SRC for component save.
                        if (uri && src) {
                            n.setAttribute("src", tinymce.activeEditor.documentBaseURI.toAbsolute(src));
                            n.setAttribute("mce_src", src + "?" + uri);
                        }
                    }
                }
            }, this);
        },

        init: function(ed) {
            this.editor = ed;
            ed.on('SetContent', this.doSetContent, this);
            ed.on('SaveContent', this.doSaveContent, this);
            ed.on('SaveContent', this.doSetContent, this);
            if (!ed.settings.urlconverter_callback) {
                ed.settings.urlconverter_callback = this.urlConverterCallback;
            }
        },
        
        /**
         * This URL converter callback is limited to one specific configuration: relative URLs off, but
         * remove script host. With this setting, generated URLs are site-relative absolute paths. The
         * stock converter function has two drawbacks, which we need to work around:
         * 1. If the path contains an @ character anywhere, everything before it is treated as authority.
         * 2. Host equality disregards authority, scheme and port numbers.
         * Also, we try to avoid allocating a couple of object instances on each invocation.
         */
        urlConverterCallback: function(u, n, s) {
            var ed = this, s = ed.settings;
            if (!(u && s && s.convert_urls)) {
                return u;
            } else if (s.relative_urls) {
                // Relative URLs requested, fall back to stock function.
                return ed.documentBaseURI.toRelative(u);
            } else if(s.remove_script_host) {
                // Match a resolved link to managed content media.
            	var urlMappingStatic = ed.getParam("static_url_mapping_prefix", "/INTERSHOP/static");
                // $1:site $2:unit $3:app-id $4:locale $5:path
                urlMappingStatic = urlMappingStatic.replace("/", "\/");
				var m = u.match("^" + urlMappingStatic + "\/[^/?]+\/([^/?]+)\/([^/?]+)\/([^/?]+)\/([^/?]+)\/([^?]*)$"); 
                if (m) {
                    if (m[4] == "media") {
                        // Re-write links to managed content images. We're walking a very fine line here:
                        // This assumes that the resource servlet makes the unit take precedence over the
                        // request domain, and allows backing up over the locale to another folder.
                        return u + "?isstatic://./?" + m[2] + ":/../media/" + m[5];
                    } else {
                        // Re-write links to static images.
                        return u + "?isfile://" + m[1] + "/"+ m[2] + "/" + m[3] + "/" + m[4] + "/" + m[5];
                    }
                } else if (u.lastIndexOf("/", 0) == 0) {
                    // Already site-relative.
                    return u;
                }
                // Match all up to the end of the host name in the current base URL.
                var b = ed.documentBaseURI.getURI().match(/^[^:\/]+:\/\/[^/]+/);
                if (b && u.lastIndexOf(b[0], 0) == 0) {
                    // Common case: cut off all before path
                    return u.substring(b[0].length);
                } else {
                    // Uncommon: relative URL, fall back to stock function.
                    return ed.documentBaseURI.toAbsolute(u, true);
                }
            } else {
                // All-absolute URLs requested, fall back to stock function.
                return ed.documentBaseURI.toAbsolute(u);
            }
        },

        getInfo: function() {
            return {
                longname : 'StaticMediaLink', version : "1.0",
                author : 'Intershop Communications AG',
                authorurl : 'http://www.intershop.com',
                infourl : 'http://www.intershop.com/web-content-management'
            };
        }
    });

    tinymce.PluginManager.add('staticmedialink', tinymce.plugins.StaticMediaLink);
})();
