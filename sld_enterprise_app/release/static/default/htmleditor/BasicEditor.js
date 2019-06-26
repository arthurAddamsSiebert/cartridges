function createBasicEditor(config) {
    if (config.language != 'en' && config.language != 'de') config.language = 'en';
    
    tinyMCE.init({
        setup: function (ed) {
            // create a copy of the current config object to be used by the function called by the timeout
            var configCopy = jQuery.extend({}, config);
            ed.on('init', function(ed) {
                setTimeout(function() {
                    setEditorEnabled(configCopy);
                    setActiveControl("setbasic",configCopy.id);
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
        
        //basic
        plugins: "compat3x,pagebreak,layer,table,save,hr,image,link,emoticons,insertdatetime,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,template,-staticmedialink,charmap,anchor",
        menubar: "",
        toolbar: "undo redo | bold italic underline | bullist numlist | alignleft aligncenter alignright alignjustify | link unlink image | fullscreen",
        
        schema: "html5",
        valid_children: "+a[h1|h2|h3|h4|h5|h6|p|div]",
        //most of these elements are added as possible children of svg tag
        extended_valid_elements: "@[id|class|style|title],+a[href|target|download|rel|hreflang|type|accesskey|tabindex|name|onclick],+button[id|name|title|onclick|class],+ol,+ul,+li,+span,+svg[*],+defs[*],+pattern[*],+desc[*],+metadata[*],+g[*],+mask[*],+path[*],+line[*],+marker[*],+rect[*],+circle[*],+ellipse[*],+polygon[*],+polyline[*],+linearGradient[*],+radialGradient[*],+stop[*],+image[*],+view[*],+text[*],+textPath[*],+title[*],+tspan[*],+glyph[*],+symbol[*],+switch[*],+use[*]",
        entity_encoding: "raw"
    });
}
