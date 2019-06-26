(function($) {

	KOR.tip = function(selector, mixin) {
		return KOR.Tip.getInstanceOf(selector, mixin);
	};

	KOR.arrowTip = function(selector, mixin) {
		return KOR.ArrowTip.getInstanceOf(selector, mixin);
	};

	KOR.dialog = function(selector, mixin) {
		return KOR.Dialog.getInstanceOf(selector, mixin);
	};

	KOR.tipMenu = function(selector, mixin) {
		return KOR.TipMenu.getInstanceOf(selector, mixin);
	};

	KOR.contextMenu = function(selector, mixin) {
		return KOR.ContextMenu.getInstanceOf(selector, mixin);
	};

	KOR.overlayMixin = {

		showModal: false,
		modalClose: true,
		closeClass: 'kor-overlay-close',
		singletonOverlay: true,
		singletonModal: true,

		modalOpacity: 0.50,

		overlayClass: 'kor-overlay',
		modalClass: 'kor-modal',

		overlayTemplate: 'overlayTemplate',
		modalTemplate:  'modalTemplate',
		imageTemplate: 'overlayImageTemplate',

        onPopulate: null,

		/**
		 * the position of the tip itself. Use any of the following choices "top", "center", "bottom", "left", "right" or combos like "left center"
		 * @public
		 * @type {string}
		 * @default bottom
		 * @example
		 * KOR.tooltip('.tooltip', {
		 * 		tipPosition: 'top'
		 * });
		 */
		overlayPosition: 'bottom',

		/**
		 * the position of the tip's anchor to the target. Use any of the following choices "top", "center", "bottom", "left", "right" or combos like "left center"
		 * @public
		 * @type {string}
		 * @default top
		 * @example
		 * KOR.tooltip('.tooltip', {
		 * 		anchorPosition: 'bottom'
		 * });
		 */
		anchorPosition: 'top',

		/**
		 * the behavior of the tip when it runs off the viewport. Use any of the following choices "flip", "fit", "none"
		 * @public
		 * @type {string}
		 * @default fit
		 * @example
		 * KOR.tooltip('.tooltip', {
		 * 		windowPosition: 'flip'
		 * });
		 */
		windowPosition: 'fit',

		overlayOffset: '0 0',

		overlay: undefined,
		content: undefined,

		/**
		 * @public
		 * @returns {void}
		 * @param {jQuery} node
		 * @param {Event} ev
		 * @example
		 * KOR.tooltip('.tooltip', {
		 * 		show: function(node, ev){
		 *			node.show(300);
		 *		}
		 * });
		 */
        show: function(node, modal, ev) {
            if (node) {
                node.fadeIn(300).addClass(this.activeContentClass);
            }
            if (this.showModal && modal) {
                modal.fadeIn(300).addClass(this.activeContentClass);
            }
            if (ev && ev.target) {
                $(ev.target).addClass(this.activeLabelClass);
            }
        },

		/**
		 * @public
		 * @returns {void}
		 * @param {jQuery} node
		 * @param {Event} ev
		 * @example
		 * KOR.tooltip('.tooltip', {
		 * 		show: function(node, ev){
		 *			node.hide(300);
		 *		}
		 * });
		 */
        hide: function(node, modal, ev) {
            if (node) {
                node.fadeOut(300).removeClass(this.activeContentClass);
            }
            if (this.showModal && modal) {
                modal.fadeOut(300).removeClass(this.activeContentClass);
            }
            if (ev && ev.target) {
                $(ev.target).removeClass(this.activeLabelClass);
            }
        },

		registerEvents: function(){
			var obj = this;
			if(obj.showModal){
				if(obj.modalClose){
					$(document).delegate('[data-comp-id='+obj.uId+'].'+obj.modalClass, 'click', $.proxy(obj, 'hideHandler'));
				}
				if(!obj.constructor.initResize){
					obj.constructor.initResize = true;
					$(window).bind('resize', $.proxy(obj, 'sizeModal'));
				}
			}
            if(obj.closeClass){
				$(document).delegate('[data-comp-id='+obj.uId+'] .'+obj.closeClass, 'click', $.proxy(obj, 'closeClassClickHandler'));
			}

			$(window).bind('resize', $.proxy(obj, 'position'));

			$(document).delegate(obj.selector, obj.NAME+':show', $.proxy(obj, 'showHandler'));
			$(document).delegate(obj.selector, obj.NAME+':hide', $.proxy(obj, 'hideHandler'));
			$(document).delegate('[data-comp-id='+obj.uId+'].'+obj.overlayClass, obj.NAME+':hide', $.proxy(obj, 'hideHandler'));
            $(document).delegate('[data-comp-id='+obj.uId+'].'+obj.overlayClass, obj.NAME+':populate', $.proxy(obj, 'populateHandler'));
		},

        closeClassClickHandler: function(ev){
			ev.preventDefault();
			$(ev.target).closest('[data-comp-type='+this.NAME+']').trigger(this.NAME+':hide');
			return false;
		},

        populateHandler: function(ev, data) {
            this.populate(ev, data);
            this.sizeModal(ev);
        },

		/**
		 * @protected
		 * @param {Event} ev custom event object
		 * @param {Object} custom event data
		 * @returns {void}
		 */
		showHandler: function(ev, data) {
            KOR.log('show');
			var obj = this;

			var modal = obj.getModal(ev);
            var overlay = obj.getOverlay(ev);

            if(modal && overlay){
                obj.showAction(overlay, modal, ev);
            }
            else if(modal && !overlay){
                obj.createOverlay(ev, function(html){
                    obj.showAction(html, modal, ev);
                });
            }
            else if(!modal && overlay){
                obj.createModal(ev, function(html){
                    obj.showAction(overlay, html, ev);
                });
            }
            else if(!modal && !overlay){
                obj.createModal(ev, function(modalHtml){
                    obj.createOverlay(ev, function(overlayHtml){
                        obj.showAction(overlayHtml, modalHtml, ev);
                    });
                });
            }
			return false;
		},

        showAction: function(overlay, modal, ev){
            if(overlay && modal){
                overlay.data('modalNode', modal);
                modal.data('overlayNode', overlay);
            }
            overlay.data(this.NAME+'CurrentTrigger', ev.target);

            this.populate.call(this, ev);
            this.sizeModal.call(this, ev);
            this.show(overlay, modal, ev);
        },

		/**
		 * @protected
		 * @param {Event} ev custom event object
		 * @param {Object} custom event data
		 * @returns {void}
		 */
		hideHandler: function(ev, data) {
			var obj = this;
            KOR.log('hide');
			var modal = obj.getModal(ev);
			var overlay = obj.getOverlay(ev);
			if(overlay && !modal){
				modal = overlay.data('modalNode');
			}
			if(modal && !overlay){
				overlay = modal.data('overlayNode');
			}
			obj.hide(overlay, modal, ev);

			return false;
		},

		/**
		 * @protected
		 * @returns {void}
		 */
		populate: function(ev, data) {
			var obj = this;
			var html;
            if(data){
                html = obj.getHTML(data, ev);
            }else{
                var att = obj.getAttributeValue($(ev.target));
                if(att){
                    html = obj.getHTML(att, ev);
                }
                else if(obj.content){
                    html = obj.getHTML(obj.content, ev);
                }
            }
            if (html) {
                obj.populateOverlay(html, ev);
            } else {
                obj.position(ev);
            }
		},

        getHTML: function(data, ev) {
            if (typeof data === 'function') {
                return data.call(this, ev);
            }
            else if (typeof(data) === 'string') {
                return this.populateString(data, ev);
            }
            return undefined;
        },

		getAttributeValue: function(node){
			return node.attr('data-overlay');
		},

		populateString: function(str, ev){
			if((str.match(/^https?:\/\/.+/) || str.match(/^\.?\.?\/.+/))) {
				if(str.match(/\.(jpg|png|gif)$/)){
					return this.populateImage(str, ev);
				}
				return this.populateAjax(str, ev);
			}
			return str;
		},

		/**
		 * @protected
		 * @returns {void}
		 */
		populateAjax: function(url, ev){
			var obj = this;
			$.get(url, function(data){
				obj.populateOverlay(data, ev);
			});
            return undefined;
		},

		/**
		 * @protected
		 * @returns {void}
		 */
		populateImage: function(url, ev){
			var obj = this;
			KOR.ObjectFactory.getTemplate(this.imageTemplate, function(template){
                var image = new Image();
                image.onload = function(){
                    obj.position.call(obj, ev);
                };
                image.src = url;
                obj.populateOverlay(template.uTemplate({url:url}), ev);
            });
            return undefined;
		},

		populateOverlay: function(html, ev) {
			var obj = this;
			KOR.ObjectFactory.getTemplate(this.overlayTemplate, function(str){
                obj.html = html;
				obj.getOverlay(ev).html($(str.uTemplate(obj)).html());
                obj.html = null;
                obj.position(ev);
                if (html && obj.onPopulate) {
                    obj.onPopulate(html, obj);
                }
			});
        },

		position: function(ev) {
			this.positionOverlayTo($(ev.target), ev);
		},

		positionOverlayTo: function(node, ev) {
			var obj = this;
			var overlay = obj.getOverlay(ev);
			if(overlay && obj.overlayPosition && obj.anchorPosition) {
				if (overlay.css('display') === 'none') {
					var f = true;
					overlay.css( {
						display: 'block',
    					visibility: 'hidden'
					});
				}
				overlay.position( {
					my: obj.overlayPosition,
					at: obj.anchorPosition,
					offset: obj.overlayOffset,
					collision: obj.windowPosition,
					of: node
				});
				if (f) {
					overlay.css( {
						display: 'none',
						visibility: 'visible'
					});
				}
			}
		},

        createModal: function(ev, callback){
			var obj = this;
			if(obj.showModal){
				var node = obj.getCurrentDom(ev.target);
				if(obj.singletonModal){
					if(obj.constructor.modal){
						var modal = obj.constructor.modal;
                        node.data('modalNode', modal);
                        callback(obj.getModal(ev));

					} else {
						if(obj.modal){
							var modal = $(obj.modal);
                            node.data('modalNode', modal);
                            obj.constructor.modal = modal;
                            callback(obj.getModal(ev));

						} else {
                            KOR.log('create modal');
                            $(document.body).uTemplate(obj.modalTemplate, this, 'append', function(){
                                node.data('modalNode', this);
                                obj.constructor.modal = this;
                                callback(obj.getModal(ev));
                            });
						}
					}
				} else {
					if(!obj.modal){
						KOR.log('create modal');
                        $(document.body).uTemplate(obj.modalTemplate, this, 'append', function(){
                            node.data('modalNode', this);
                            callback(obj.getModal(ev));
                        });
					} else {
						var modal = $(obj.modal);
                        node.data('modalNode', modal);
                        callback(obj.getModal(ev));
					}
				}
			} else {
				callback(undefined);
			}
		},

		/*
		 * @protected
		 * @returns {jQuery} a jQuery extended dom node
		 */
		getModal: function(ev) {
			var obj = this;
			if(obj.showModal){
				var node = obj.getCurrentDom(ev.target);
				var modal;
				if(node.length && node.data('modalNode')){
					modal = node.data('modalNode');
				}
				else if(ev && $(ev.target).attr('data-comp-type') === obj.NAME && $(ev.target).hasClass(obj.modalClass)){
					modal = $(ev.target);
				}
				if(modal){
					return modal.attr('data-comp-id', obj.uId).css({opacity: obj.modalOpacity});
				}
			}
			return undefined;
		},

		createOverlay: function(ev, callback) {
			var obj = this;
			var node = obj.getCurrentDom(ev.target);

            KOR.log('set overlay');
			if(obj.singletonOverlay){
				if(obj.constructor.overlay){
					var overlay = obj.constructor.overlay;
                    node.data('overlayNode', overlay);
                    callback(obj.getOverlay(ev));
				} else {
					if(obj.overlay){
						var overlay = $(obj.overlay);
                        node.data('overlayNode', overlay);
                        obj.constructor.overlay = overlay;
                        callback(obj.getOverlay(ev));
					} else {
						KOR.log('create overlay');
                        $(document.body).uTemplate(obj.overlayTemplate, this, 'append', function(){
                            node.data('overlayNode', this);
                            obj.constructor.overlay = this;
                            callback(obj.getOverlay(ev));
                        });
                    }
				}
			} else {
				if(!obj.overlay){
					KOR.log('create overlay');
                    $(document.body).uTemplate(obj.overlayTemplate, this, 'append', function(){
                        node.data('overlayNode', this);
                        callback(obj.getOverlay(ev));
                    });
                } else {
					var overlay = $(obj.overlay);
                    node.data('overlayNode', overlay);
                    callback(obj.getOverlay(ev));
				}
			}
		},

		/**
		 * @protected
		 * @returns {jQuery} a jQuery extended dom node
		 */
		getOverlay: function(ev) {
			var obj = this;
			var node = obj.getCurrentDom(ev.target);

			if(node.length && node.data('overlayNode')) {
				return node.data('overlayNode').attr('data-comp-id', obj.uId);
			}
			else if(ev && ev.target !== window && $(ev.target) && $(ev.target).attr('data-comp-type') === obj.NAME && $(ev.target).hasClass(obj.overlayClass)){
				return $(ev.target).attr('data-comp-id', obj.uId);
			}
			return undefined;
		},

		sizeModal: function(ev){
			var obj = this;
			var doc = $(document);
			if (obj.showModal) {
				$('.'+obj.modalClass).css({
					height: '0px',
					width:  '0px'
				});
				$('.'+obj.modalClass).css({
					height: doc.height(),
					width:  doc.width()
				});
			}
		}
	};

	KOR.menuMixin = {

		bodyClose: true,
		escClose: true,
		overlayHeaderClass: 'kor-overlay-header',
		overlayContentClass: 'kor-overlay-content',

		overlayTemplate: 'menuOverlayTemplate',

		registerEvents: function(){
			this._super();

			if(this.bodyClose){
				$(document).delegate('body', 'click', $.proxy(this, 'closeHandler'));
			}
			if(this.escClose) {
				$(window).bind('keypress', $.proxy(this, 'escHandler'));
			}
		},

		toggleHandler: function(ev){
            KOR.log('toggle');
			ev.preventDefault();
			var obj = this;
			var target = obj.getCurrentDom(ev.target);
			var node = target.data('overlayNode');
			if (node && node.data(obj.NAME+'CurrentTrigger') === target[0] && node.css('display') !== 'none') {
				target.trigger(obj.NAME+':hide', obj);
			} else {
				target.trigger(obj.NAME+':show', obj);
			}
			return false;
		},

		closeHandler: function(ev) {
			var obj = this;
			if($(ev.target).closest('[data-comp-type='+obj.NAME+']').length || $(ev.target).attr('data-comp-type='+obj.NAME) ){
				return;
			}

			$('[data-comp-id='+obj.uId+'].'+obj.overlayClass).each(function(){
				var node = $(this);
				if(node.css('display') !== 'none'){
					node.trigger(obj.NAME+':hide');
                    KOR.log('close');
				}
			});
		},

		escHandler: function(ev, data) {
			var obj = this;
			var code = (ev.keyCode ? ev.keyCode : ev.which);
			if(code === 27){
				obj.closeHandler(ev);
			}
		},

		getAttributeValue: function(node){
			if(node.attr('data-overlay')){
				return node.attr('data-overlay');
			} else if(node.attr('href') && (node.attr('href').match(/^https?:\/\/.+/) || node.attr('href').match(/^\.?\.?\/.+/))) {
				return node.attr('href');
			} else if(node.attr('data-overlay-container')) {
				return $('#' + node.attr('data-overlay-container')).html();
			}
			return undefined;
		}
	};

	KOR.Tip = KOR.createClass(KOR.UI, KOR.overlayMixin, {

		NAME: 'tip',

		followCursor: false,
		menu: false,

		hideDelay: 250,
		showDelay: 250,

		inOverlay: false,

		registerEvents: function(){
			var obj = this;
			obj._super();

			$(document).delegate(obj.selector, 'mouseenter', $.proxy(obj, 'mouseenterHandler'));
			$(document).delegate(obj.selector, 'mouseleave', $.proxy(obj, 'mouseleaveHandler'));
			if (obj.followCursor) {
				$(document).delegate(obj.selector, 'mousemove', $.proxy(obj, 'followHandler'));
			}
			if (obj.menu) {
				$(document).delegate('[data-comp-id='+obj.uId+'].'+ obj.overlayClass , 'mouseenter', $.proxy(obj, 'mouseenterOverlayHandler'));
				$(document).delegate('[data-comp-id='+obj.uId+'].' + obj.overlayClass, 'mouseleave', $.proxy(obj, 'mouseleaveOverlayHandler'));
			}
		},

		/*
		 * @protected
		 * @param {Event} ev mouseenter event object
		 * @returns {void}
		 */
		mouseenterHandler: function(ev) {
			var obj = this;
			var node = $(ev.currentTarget);
			$(ev.target).doTimeout(obj.uId, obj.showDelay, function() {
				node.trigger(obj.NAME+':show', obj);
			});
		},

		/*
		 * @protected
		 * @param {Event} ev mouseleave event object
		 * @returns {void}
		 */
		mouseleaveHandler: function(ev) {
			var obj = this;
			var node = $(ev.currentTarget);
			$(ev.target).doTimeout(obj.uId, obj.hideDelay, function() {
				if(!obj.menu || obj.inOverlay === false){
					node.trigger(obj.NAME+':hide', obj);
				}
			});
		},

		mouseenterOverlayHandler: function(ev) {
			this.inOverlay = true;
		},

		mouseleaveOverlayHandler: function(ev) {
			this.inOverlay = false;
			this.mouseleaveHandler(ev);
		},

		/*
		 * @protected
		 * @param {Event} ev mousemove event object
		 * @returns {void}
		 */
		followHandler: function(ev) {
			var obj = this;
			obj.getOverlay(ev).position({
				my: obj.overlayPosition,
				at: obj.anchorPosition,
				offset: obj.overlayOffset,
				collision: obj.windowPosition,
				of: ev
			});
		}
	});

	KOR.ArrowTip = KOR.createClass(KOR.Tip, {
		NAME: 'arrow-tip',
		arrowClass: 'kor-tip-arrow',
		arrowOffset: 0,

		overlayTemplate: 'arrowTipOverlayTemplate',

		positionOverlayTo: function(node, ev) {
			var obj = this;
			var overlay = obj.getOverlay(ev);
			var arrow = $('.' + obj.arrowClass, overlay);
			if(overlay && obj.overlayPosition && obj.anchorPosition) {
				if (overlay.css('display') === 'none') {
					var f = true;
					overlay.css({
						display: 'block',
						visibility: 'hidden'
					});
				}

				overlay.position({
					my: obj.overlayPosition,
					at: obj.anchorPosition,
					offset: obj.overlayOffset,
					collision: obj.windowPosition,
					of: node
				});

				/* Rewrite to set overlay offset instead of repositioning */
				if(obj.overlayPosition.split(' ')[0] === 'left'){
					overlay.css('left', parseInt(overlay.css('left'))+arrow.width());
				}else if(obj.overlayPosition.split(' ')[0] === 'right'){
					overlay.css('left', parseInt(overlay.css('left'))-arrow.width());
				}else if(obj.overlayPosition === 'top' || obj.overlayPosition.split(' ')[1] === 'top'){
					overlay.css('top', parseInt(overlay.css('top'))+arrow.height());
				}else if(obj.overlayPosition === 'bottom' || obj.overlayPosition.split(' ')[1] === 'bottom'){
					overlay.css('top', parseInt(overlay.css('top'))-arrow.height());
				}

				arrow.position({
					my: obj.overlayPosition,
					at: obj.anchorPosition,
					offset: obj.arrowOffset,
					collision: obj.windowPosition,
					of:  node
				});


				if (f) {
					overlay.css( {
						display: 'none',
						visibility: 'visible'
					});
				}
			}
		}
	});

	KOR.TipMenu = KOR.createClass(KOR.UI, KOR.overlayMixin, KOR.menuMixin, {

		NAME: 'tipMenu',

		registerEvents: function(){
			var obj = this;
			obj._super();
			$(document).delegate(obj.selector, 'click', $.proxy(obj, 'toggleHandler'));
		}
	});




	KOR.ContextMenu = KOR.createClass(KOR.UI, KOR.overlayMixin, KOR.menuMixin, {

		NAME: 'contextMenu',

		registerEvents: function(){
			var obj = this;
			obj._super();
			$(document).delegate(obj.selector, 'contextmenu', $.proxy(obj, 'toggleHandler'));
		}
	});




	KOR.Dialog = KOR.createClass(KOR.TipMenu, {

		NAME: 'dialog',

		showModal: true,
		fixedPosition: true,
		overlayPosition: 'center',
		anchorPosition: 'center',

		position: function(ev) {
			var overlay = this.getOverlay(ev);
			if(overlay && this.overlayPosition && this.anchorPosition) {

                if(this.fixedPosition){
                    overlay.css({
						position:'fixed',
						top: ($(window).height()/2) - (overlay.height()/2),
                        left: ($(window).width()/2) - (overlay.width()/2)
					});
                } else {
                    this.positionOverlayTo(window, ev);

                    // set max-height, max-width and overflow
                    var wnd = $(window);
                    overlay.find('.sfe-generic-wrapper').css({
                    	'max-height': wnd.innerHeight() - 58,
                    	'max-width': wnd.innerWidth(),
                    	'overflow': 'auto'
                    });

                    if(parseInt(overlay.css('top')) < 0){
                        overlay.css('top', '0px');
                    }
                    if(parseInt(overlay.css('left')) < 0){
                        overlay.css('left', '0px');
                    }
                }
			}
		}
	});

})(jQuery);
