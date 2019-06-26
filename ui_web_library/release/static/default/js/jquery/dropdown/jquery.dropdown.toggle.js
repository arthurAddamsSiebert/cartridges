/* jshint forin:true, noarg:true, noempty:true, eqeqeq:true, boss:true, undef:true, curly:true, browser:true, jquery:true */
/*
 * jQuery MultiSelect UI Widget FilterToggle Plugin
*
 * based on
 * jQuery MultiSelect UI Widget Filtering Plugin 1.4
 * Copyright (c) 2011 Eric Hynds
 *
 * http://www.erichynds.com/jquery/jquery-ui-multiselect-widget/
 *
 * Depends:
 *   - jQuery UI MultiSelect widget
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 *
*/
(function($){
    $.widget("ish.dropdowntoggle", {
        
        options: {
            label: "Show all available items",
            autoReset: false,
            filterOnCreate: true,
            toggleName: "FilterActive"
        },
        
        _create: function(){
            var self = this,
                opts = this.options,
                instance = (this.instance = $(this.element).data("dropdown")),
                
                // store header; add filter class so the close/check all/uncheck all links can be positioned correctly
                header = (this.header = instance.menu.find(".ui-dropdown-header").addClass("ui-dropdown-hastoggle")),
                
                id = opts.toggleName + Math.floor(Math.random()*Math.pow(2, 30)),
                
                // wrapper elem
                wrapper = (this.wrapper = $('<div class="ui-dropdown-toggle"><input type="checkbox" checked="checked" id="' + id + '" /><label for="' + id + '">'+(opts.label.length ? opts.label : '</label>')+'</div>').prependTo( this.header ));

            // hidden field to store filter state
            this.filterState = $('<input type="hidden" name="' + opts.toggleName + '" value="' + opts.filterOnCreate + '" />').insertBefore(this.element);
            
            // reference to the actual inputs
            this.inputs = instance.menu.find('input[type="checkbox"], input[type="radio"]');
            
            // build the input box
            this.input = wrapper.find("input").bind('click', $.proxy(self._handler, self));
            
            // cache input values for searching
            this.updateCache();
            
            // rewrite internal _toggleChecked fn so that when checkAll/uncheckAll is fired,
            // only the currently filtered elements are checked
            instance._toggleChecked = function(flag, group){
                var $inputs = (group && group.length) ?
                        group :
                        this.labels.find('input'),
                    
                    _self = this,

                    // do not include hidden elems if the menu isn't open.
                    selector = self.instance._isOpen ?
                        ":disabled, :hidden" :
                        ":disabled";

                $inputs = $inputs.not( selector ).each(this._toggleState('checked', flag));
                
                // update text
                this.update();
                
                // figure out which option tags need to be selected
                var values = $inputs.map(function(){
                    return this.value;
                }).get();
                
                // select option tags
                this.element
                    .find('option')
                    .filter(function(){
                        if( !this.disabled && $.inArray(this.value, values) > -1 ){
                            _self._toggleState('selected', flag).call( this );
                        }
                    });
            };
            
            // rebuild cache when dropdown is updated
            var doc = $(document).bind("dropdownrefresh", function(){
                self.updateCache();
                self._handler();
            });

            // automatically reset the widget on close?
            if(this.options.autoReset) {
                doc.bind("dropdownclose", $.proxy(this._reset, this));
            }

            if(opts.filterOnCreate) {
                // workaround because initial click won't remove the checked-attribute
                this.input.removeAttr('checked').click().removeAttr('checked');
            }
        },
        
        _handler: function( e ){
            var checked = this.input.is(':checked'),
                // speed up lookups
                rows = this.rows,
                inputs = this.inputs,
                cache = this.cache,
                instance = this.instance,
                options = this.element.find('option');
            
            if(checked) {
                rows.show();
                this.filterState.val("false");
            }
            else {
                rows.hide();

                this._trigger("filter", e, $.map(cache, function(v, i){
                    if(options.eq(i).data('filtered')) {
                        rows.eq(i).show();
                        return inputs.get(i);
                    }
                    return null;
                }));
                this.filterState.val("true");
            }

            // show/hide optgroups
            this.instance.menu.find(".ui-dropdown-optgroup-label").each(function(){
                var $this = $(this);
                var isVisible = $this.nextUntil('.ui-dropdown-optgroup-label').filter(function(){
                  return $.css(this, "display") !== 'none';
                }).length;
                
                $this[ isVisible ? 'show' : 'hide' ]();
            });

            if (e) e.stopImmediatePropagation();
        },

        _reset: function() {
            if(this.input.is(':checked')) {
                this.input.click();
            }
        },
        
        updateCache: function(){
            // each list item
            this.rows = this.instance.menu.find(".ui-dropdown-checkboxes li:not(.ui-dropdown-optgroup-label)");
            
            // cache
            this.cache = this.element.children().map(function(){
                var self = $(this);
                
                // account for optgroups
                if( this.tagName.toLowerCase() === "optgroup" ){
                    self = self.children();
                }
                
                return self.map(function(){
                    return this.innerHTML.toLowerCase();
                }).get();
            }).get();
        },
        
        widget: function(){
            return this.wrapper;
        },
        
        destroy: function(){
            $.Widget.prototype.destroy.call( this );
            this.wrapper.remove();
        }
    });
})(jQuery);