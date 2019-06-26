// Copyright (C) 2008 Intershop Communications AG, all rights reserved.

(function() {
    tinymce.create('tinymce.plugins.Hide', {
        init : function(ed, url) {
            this.editor = ed;
            ed.addCommand('mceHide', this.hide, this);
            ed.addButton('hide', {title : 'hide.hide_desc', cmd : 'mceHide'});
        },

        getInfo : function() {
            return {
                longname : 'Hide', version : "1.0",
                author : 'Intershop Communications AG',
                authorurl : 'http://www.intershop.com',
                infourl : 'http://www.intershop.com/e_commerce_software/products/enfinity/content_channel/'
            };
        },

        hide : function() {
            var e = this.editor;
            window.setTimeout(function() {
                var ta = e.getElement();
                e.remove();
                if (ta.form.reset.click) {
                    ta.form.reset.click();
                } else if (ta.form.reset) {
                    ta.form.reset();
                }
            }, 0);
        }
    });

    tinymce.PluginManager.add('hide', tinymce.plugins.Hide);
    tinyMCE.addI18n({en: {
        hide: {
            hide_desc:"Hide HTML Editor"
        }
    }});
})();
