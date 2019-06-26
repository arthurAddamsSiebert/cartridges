function createAdvancedEditor(config) {
    if (config.language != 'en' && config.language != 'de') config.language = 'en';
    
    tinyMCE.init({
        setup: function (ed) {
			// create a copy of the current config object to be used by the function called by the timeout
			var configCopy = jQuery.extend({}, config);
			ed.on('init', function(ed) {
				setTimeout(function() {
					setEditorEnabled(configCopy);
					setActiveControl("setadvanced",configCopy.id);
				},300);
			});
			ed.on('change', function () {
                tinyMCE.triggerSave();
            });
            setupDialogModeHandler(config.id, ed);
            // setupSubmitIfDirty(ed);
        },
        
        force_p_newlines: false,
        forced_root_block: '',
        theme: "intershop",
        skin: "intershop",
        language: config.language,
        mode: "exact",
        elements: config.id,
        file_browser_callback: new ServerBrowser(config.uri, config.media, config.links).createCallback(),
        relative_urls: false,
        remove_script_host: true,
        content_css: config.styleSheet,
        templates: config.templateURL,
        static_url_mapping_prefix: config.staticURLMappingPrefix,
        img_advtab: true,
        resize: "both",
        
        // full
        plugins: "compat3x,link,pagebreak,layer,table,save,image,insertdatetime,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,template,-staticmedialink,hr,emoticons,charmap,textcolor,anchor,code",
        menubar: "file edit insert format table",
        toolbar1: "undo redo | bold italic underline | bullist numlist | formatselect | fontselect | fontsizeselect",
        toolbar2: "link unlink | image media | alignleft aligncenter alignright alignjustify | outdent indent | charmap anchor code | forecolor backcolor | fullscreen",
        
        schema: "html5",
        valid_children: "+a[h1|h2|h3|h4|h5|h6|p|div]",
        //most of these elements are added as possible children of svg tag
        extended_valid_elements: "@[id|class|style|title],+a[href|target|download|rel|hreflang|type|accesskey|tabindex|name|onclick],+button[id|name|title|onclick|class],+ol,+ul,+li,+span,+svg[*],+defs[*],+pattern[*],+desc[*],+metadata[*],+g[*],+mask[*],+path[*],+line[*],+marker[*],+rect[*],+circle[*],+ellipse[*],+polygon[*],+polyline[*],+linearGradient[*],+radialGradient[*],+stop[*],+image[*],+view[*],+text[*],+textPath[*],+title[*],+tspan[*],+glyph[*],+symbol[*],+switch[*],+use[*]",
        entity_encoding: "raw"
    });
}
