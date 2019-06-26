(function($) {
	/**
	 * KOR library facade extentions
	 * shortcut methods off the static KOR namespace for opening and hiding The Login and Detail Dialogs.
	 */
	/**
	 * triggers a show event on the dom element anchor of the login dialog.
	 */
	KOR.showLoginDialog = function() {
		$('input[name=LoginForm_Password]').val('').removeClass('kor-error').siblings('span.kor-error').remove();
		loginAnchor.trigger('dialog:show');
	};
	/**
	 * triggers a hide event on the dom element anchor of the login dialog.
	 */
	KOR.hideLoginDialog = function() {
		loginAnchor.trigger('dialog:hide');
	};
	/**
	 * triggers a show event on the dom element anchor of the Detail dialog.
	 * also sets the title of the dialog and the source url to be used in the detail dialog iframe
	 */
	KOR.showDetailDialog = function(title, src) {
		detailDialog.title = title;
		detailDialog.src = "{{}}{{}}DialogMode={{}}".uInject(src, src.indexOf('?') > -1 ? '&' : '?', KOR.SFE.channelID);
		detailAnchor.trigger('dialog:show');
	};
	/**
	 * triggers a hide event on the dom element anchor of the Detail dialog.
	 */
	KOR.hideDetailDialog = function() {
		detailAnchor.trigger('dialog:hide');
	};
	/**
	 * triggers a show event on the dom element anchor of the error dialog.
	 */
	KOR.showErrorDialog = function() {
		errorAnchor.trigger('dialog:show');
	};
	/**
	 * triggers a hide event on the dom element anchor of the error dialog.
	 */
	KOR.hideErrorDialog = function() {
		errorAnchor.trigger('dialog:hide');
	};
	/**
	 * triggers a show event on the dom element anchor of the creation error/info dialog.
	 */
	KOR.showCreationErrorDialog = function(errorMessage, error) {
		errorCreationAnchor.trigger('dialog:show');
		if (!errorMessage) {
			errorMessage = $('.sfe-dialog-content').data('default-message');
		}
		$('.sfe-dialog-content p').html(errorMessage);
		$('.sfe-dialog-content').attr('title', error);
		// center dialog
		errorCreationAnchor.trigger('dialog:show');
	};
	/**
	 * triggers a hide event on the dom element anchor of the creation error dialog.
	 */
	KOR.hideCreationErrorDialog = function() {
		errorCreationAnchor.trigger('dialog:hide');
	};
	/**
	 * triggers a show event on the dom element anchor of the preview error dialog.
	 */
	KOR.showErrorPreviewDialog = function() {
		errorPreviewAnchor.trigger('dialog:show');
	};
	/**
	 * triggers a hide event on the dom element anchor of the preview error dialog.
	 */
	KOR.hideErrorPreviewDialog = function() {
		errorPreviewAnchor.trigger('dialog:hide');
	};

	/**
	 * KOR library Data Factory extentions
	 */
	$.extend(KOR.namespace('KOR.ObjectFactory'), {
		/**
		 * gets externalized string values for a key from the 'KOR.extStrings' object.
		 * accepts optional arguments that are injected in order into the value string.
		 * uses uInject methods variable placeholders {{}}
		 * uses a callback pattern.
		 */
		getExtString: function() {
			args = $.makeArray(arguments);
			uri = args.shift();
			callback = args.pop();
			callback(KOR.extStrings[uri].uInject(
				args.length === 1 && $.type(args[0]) === 'array' ? args[0] : args));
		},
		/**
		 * gets a template string for a key from the 'KOR.templates' object.
		 * uses a callback pattern as well as a synchronous retrieval if no callback parameter is present
		 */
		getTemplate: function(id, callback) {
			return callback ? callback(KOR.templates[id]) : KOR.templates[id];
		},
		/**
		 * builds the private comments object of Component comments
		 * sends a complete json object of the page component structure to the callback function
		 */
		getComponentTree: function(callback) {
			var jsonString = [];
			$.each(getComments(sitePanel.document), function() {
				if (this.data.match(/^sfe\:\{.*\}$/)) {

					var obj = $.parseJSON(this.data.replace('sfe:', ''));

					this.sfeId = obj.id;
					if (comments[obj.id]) {
						this.sfeEnd = true;
					} else {
						this.sfeBegin = true;
						comments[obj.id] = [];
					}
					comments[obj.id].push(this);
					if (obj.prefixPayload) jsonString.unshift(obj.prefixPayload);
					if (obj.suffixPayload) jsonString.push(obj.suffixPayload);
				}
			});
			jsonString = jsonString.join('');
			if ($.trim(jsonString) === '') {
				// show error dialog if 'Empty Component Tree'
				KOR.showErrorDialog();
				return;
			}

			var json = "";
			json = (jsonString.substring(0, jsonString.length - 1));
			json = json.replace(/'/g,"\"");			// Replace all ' with "
			json = json.replace(/(},])/g, '}]');	// Replace all },] with }]
			json = "[" + json + "]";

			var obj = $.parseJSON(json);
			callback(obj);

		}
	});

	/**
	 * private functions
	 *
	 * Event Handlers
	 */

	function toggleInspectorHandler(ev) {
		ev.preventDefault();
		if (inInspectorMode) {
			exitInspectorMode();
		} else {
			enterInspectorMode();
		}
	}

	function toggleLayoutMode(event) {
		if (event === 'init') {
			if ($.cookie('sfe-layout-mode') === 'on') {
				$(layoutButtonSelector).addClass('on');
			}
		} else {
			var layoutButton = $(this);
			if (layoutButton.hasClass('on')) {
				layoutButton.removeClass('on');
				$.cookie('sfe-layout-mode', 'off');
				$(document).trigger('layoutMode:off');
			} else {
				layoutButton.addClass('on');
				$.cookie('sfe-layout-mode', 'on');
				$(document).trigger('layoutMode:on');
			}
		}
	}

	function resizeHandler(ev) {
		sizeSiteFrame();
		sizePalette();
	}

	function displayViewableArea() {
		$('.viewable-area-display').html($(siteContentSelector).width() + " x " + $(siteContentSelector).height());
	}

	function componentProxyToTreeClickHandler(ev) {
		ev.preventDefault();
		var link = $(ev.currentTarget);
		var params = link.attr('href').split('?')[1].uQueryStringToHash();

		$.each(currentTreeNode.next('ul').find('>li>a[data-component-id]'), function() {
			var node = $(this);
			var compId = node.attr('data-component-id');
			var compObj = componentDetailObject[compId];
			if (params.AssignmentUUID && compObj.pageletAssignmentUUID && params.AssignmentUUID === compObj.pageletAssignmentUUID) {
				currentComponentId = compId;
				setOverlay();
				setDetail(compId);
				return false;
			} else if (params.PageletUUID && compObj.id && params.PageletUUID === compObj.id) {
				currentComponentId = compId;
				setOverlay();
				setDetail(compId);
				return false;
			}

		});
		currentComponentId = null;
		setOverlay();
		setDetailByLinkParameters(params);
		return false;
	}

	function stopDraggingHandler(ev) {
		$(document).off('mousemove', mouseMovePanelResizeHandler);
		siteContentOverlay.hide();
	}

	function controlPanelSplitHandler(ev) {
		$(document).on('mousemove', null, 'control-panel-split', mouseMovePanelResizeHandler);
	}

	function controlPanelResizeHandler(ev) {
		$(document).on('mousemove', null, 'control-panel-height', mouseMovePanelResizeHandler);
	}

	function paletteResizeHandler(ev) {
		$(document).on('mousemove', null, 'palette-width', mouseMovePanelResizeHandler);
	}

	function mouseMovePanelResizeHandler(ev) {
		siteContentOverlay.show(); // prevents interference from the iframe
		unFocus(); // prevents text selection
		if (ev.data === 'palette-width') {
		    if ($('#component-palette').width() === 0) {
				return;
			}
			sizePalette(ev.pageX);
			displayViewableArea();
			initDisplayDevice();
			return;
		}
		if (ev.data === 'control-panel-split') {
			if (ev.pageX > 240 && ev.pageX < $(window).width() - 340) {
				var width = dividerSelector.parent().width();
				var percent = Math.round(ev.pageX / width * 100);
				$.cookie('sfe-application-state-ew-percent', percent, {path: KOR.SFE.cookiePath});
				setSizeEWPanels(percent);
			}
			return;
		}
		if (ev.data === 'control-panel-height') {
			showControlPanel();
			setControlPanelHeight(KOR.$(controlPanelSelector).height() - (ev.pageY - KOR.$(controlPanelSelector).offset().top) + 20);
			sizePalette();
			displayViewableArea();
			initDisplayDevice();
			return;
		}
	}

	// Prevent text selection on mouse drag
	function unFocus() {
		if (document.selection) {
			document.selection.empty();
		} else {
			window.getSelection().removeAllRanges();
		}
	}

	function loginDialogClickHandler(ev) {
		ev.preventDefault();
		$('#sfe-login-dialog-form').trigger('focus').trigger('submit');
	}

	function clickProxyHandler(ev) {
		ev.preventDefault();
		ev.stopPropagation();
		document.getElementById($(ev.target).attr('data-sfe-actionbutton')).click();
	}

	function formActionClickHandler(ev) {
		var field = $(this);
		var form = field.closest('form');
		var actionField = form.find('.kor-form-action');
		if (!actionField.length) {
			actionField = $('<input type="hidden" class="kor-form-action" />');
			form.append(actionField);
		}
		if (field.hasClass('sfe-action-inline')) {
			form.attr('data-sfe-action', 'inline');
		} else if (field.hasClass('sfe-action-dialog')) {
			form.attr('data-sfe-action', 'dialog');
		}

		if (field.hasClass('sfe-layout-change')) {
			actionField.addClass('sfe-layout-change');
		} else {
			actionField.removeClass('sfe-layout-change');
		}

		actionField.attr('name', field.attr('name')).attr('value', field.attr('value'));

		window.saveScrollPosition($(editPanelContainerSelector));
	}

	function hideControlPanelHandler(ev) {
		ev.preventDefault();
		setControlPanelHeight(controlPanelCloseHeight);
		sizePalette();
	}

	function showControlPanelHandler(ev) {
		ev.preventDefault();
		setControlPanelHeight(lastControlPanelHeight || controlPanelDefaultHeight);
		sizePalette();
	}

	function componentClickHandler(ev) {
		var compId;
		ev.preventDefault();
		ev.stopPropagation();
		if($(ev.target).attr('data-component-id')) {
			compId = $(ev.target).attr('data-component-id');
		}
		else {
			compId = $(ev.target).closest('[data-component-id]').attr('data-component-id');
		}

		if (compId === currentComponentId && getOverlay().css('display') === 'block') {
			compId = null;
		}
		currentComponentId = compId;
		setOverlay(250);
		setDetail(compId);
	}

	function detailFormSubmitHandler(ev) {
		var form = $(ev.currentTarget);

		//insert hidden field for sfe identification
		if (!form.find('input[name=sfe]').length) {
			form.append('<input type="hidden" name="sfe" value="true" />');
		}

		if (form.find('input.kor-form-action[name=Copy]').length) {
			updateDetailPanel = false;
		}

		if (form.attr('data-sfe-action') === 'inline') {
			return detailFormInline(form, ev);
		} else if (form.attr('data-sfe-action') === 'dialog') {
			return detailFormDialog(form, ev);
		}
		return undefined;
	}

	function inlineAnchorClickHandler(ev) {
		ev.preventDefault();
		var url = $(ev.target).attr('href');
		showDetailLoader();
		$.ajax({
			url: url,
			complete: function() {
				hideDetailLoader();
			},
			success: function(html) {
				KOR.log('section update from anchor');
				setDetailCallback(html);
			}
		});
		return false;
	}

	function dialogAnchorClickHandler(ev) {
		ev.preventDefault();
		var target = $(ev.target);
		var url = target.attr('href');
		var title = target.attr('title');
		KOR.showDetailDialog(title, url);
		return false;
	}

	function disableClickHandler(ev) {
		ev.preventDefault();
		return false;
	}

	function contentPageLoadHandler(ev) {

		sizeSiteFrame(ev);

		var appurl = sitePanel.location.href;
		// test a real URL was loaded in iframe, do nothing for 'about:blank' (initial state of the iframe)
		if (/^(https?):\/\//i.test(appurl)) {

			// persist the current location to cookie
			$.cookie('sfe-application-state-app-url_' + KOR.SFE.contentRepoUUID, appurl, {
				path: KOR.SFE.cookiePath
			});

			//empty dom pointers to previous page
			overlay = null;
			inspector = null;
			comments = {};
			componentDetailObject = {};

			//check if storefront editing functionality is available
			if (KOR.$(controlPanelSelector).length > 0) {
				//register events for inspector functionality
				$(sitePanel.document).on('click', inspectorClickHandler);
				$(sitePanel.document).on('mousemove', moveInspectorHandler);

				//build the component tree and set the application state
				KOR.ObjectFactory.getComponentTree(setApplicationState);
			}

			// trigger the custom 'designer:pageContentLoad' event once the iframe content is loaded (the preview content)
			$(siteContentSelector).trigger('designer:pageContentLoad');

			siteContentOverlay.hide();
		}
	}

	function reloadDetailPanelHandler(ev) {
		if ($(ev.target).attr('href') !== undefined) {
			ev.preventDefault();
			loadDetailPanel($(ev.target).attr('href'));
		}
	}

	function inspectorClickHandler(ev) {
		if (inInspectorMode && inspectorPreviewing) {
			ev.preventDefault();
			currentComponentId = inspectorPreviewing;
			setOverlay(250);
			setDetail(inspectorPreviewing);
			if (ev.target.nodeName == 'VIDEO') {
				ev.target.pause();
			}
		}
	}

	function moveInspectorHandler(ev) {
		if (inInspectorMode) {
			var target = ev.target || ev;
			if (target.sfeId && target.sfeBegin) {
				setInspector(target.sfeId);
			} else if (target.previousSibling) {
				moveInspectorHandler(target.previousSibling);
			} else if (target.parentNode) {
				moveInspectorHandler(target.parentNode);
			} else {
				setInspector();
			}
		}
	}

	function applicationResetHandler(ev) {
		ev.preventDefault();
		window.location = KOR.SFE.URLS.applicationReset;
	}

	function hideDetailDialogLoader() {
		$('#sfe-dialog-iframe').css('display', 'block');
		$('.sfe-detail-dialog-loader').css('display', 'none');
	}

	function showDetailDialogLoader() {
		$('#sfe-dialog-iframe').css('display', 'none');
		$('.sfe-detail-dialog-loader').css('display', 'block');
	}

	function detailDialogPopulateHandler(ev) {
		var obj = this;
		if (!obj._initshow) {
			obj._initshow = true;
			$('#sfe-dialog-iframe').on('load', function(ev) {
				hideDetailDialogLoader();
				detailDialogFrameLoadHandler(ev, obj);
			});
		}
		showDetailDialogLoader();
		$('.sfe-dialog-loader').css('display', 'block');
		$('#sfe-dialog-title').html(obj.title);
		$('#sfe-dialog-iframe').attr('src', obj.src);
		obj.position(ev);
	}

	function detailDialogFrameLoadHandler(ev, obj) {
		var win = frames['sfe-dialog-iframe'];
		var doc = $(win.document.body);

		//close dialog and forward content to detail panel
		var detailPanelContent = doc.find('#editPanelResponse');
		if (detailPanelContent.length) {
			KOR.hideDetailDialog();
			setDetailPanels(detailPanelContent.parent().html());
			updateDetailPanel = false;
			sitePanel.location.reload();
			return;
		}

		//resize and position iframe
		$(ev.target).css({
			height: doc.height()
			//width: doc.width()
		});
		obj.position({
			target: detailAnchor
		});
		$(window).resize();

		//cancel botton hijacking in dialog
		$('[value=Cancel]', doc).on('click', function(ev) {
			ev.preventDefault();
			ev.stopPropagation();
			KOR.hideDetailDialog();
		});

		//set frame reload flag for on exit of dialog
		doc.on('click', '.sfe-layout-change', function() {
			reloadSiteFrameOnWizardExit = true;
		});

		//dialog hidden field addition
		doc.on('submit', 'form', function() {
			var form = $(this);
			if (!form.find('.sfe-dialog-mode').length) {
				form.append('<input type="hidden" class="sfe-dialog-mode" name="DialogMode" value="{{}}" />'.uInject(KOR.SFE.channelID));
			}
		});

		//in dialog link handling
		doc.on('click', 'a', function(ev) {
			var link = $(this);
			if (link.attr('href').indexOf('javascript:') > -1) {} else {
				var linkParts = link.attr('href').split("#");
				link.attr('href', "{{}}{{}}DialogMode={{}}".uInject(linkParts[0], linkParts[0].indexOf('?') > -1 ? '&' : '?', KOR.SFE.channelID) + ((linkParts[1] !== undefined) ? "#" + linkParts[1] : ""));
			}
		});

		//redefine pop calendar
		var cal = win.popUpCalendar;
		win.popUpCalendar = function() {
			cal.apply(this, arguments);
			$('#calendar', doc).position({
				my: 'left',
				at: 'right',
				of: arguments[0],
				collision: 'fit'
			});
		};
	}

	function detailDialogHideHandler() {
		if (reloadSiteFrameOnWizardExit) {
			reloadSiteFrameOnWizardExit = false;
			sitePanel.location.reload();
		}
		this._super.apply(this, arguments);
	}

	function loginIsAjaxSuccessHandler(data) {
		return !isLogInMarkup(data);
	}

	function loginAjaxSuccessHandler() {
		this._super();
		KOR.hideLoginDialog();
		runFailedAuthentationStack();
	}

	function loginAjaxFailureHandler() {
		this._super();
		KOR.ObjectFactory.getExtString('fieldFailureInvalidPassword', function(str) {
			$('input[name=LoginForm_Password]').addClass('kor-error').after('<span class="kor-error">{{}}</span>'.uInject(str));
		});
	}

	function treeToggleHandler(node, ev) {
		ev.preventDefault();
		ev.stopPropagation();
		$(ev.target).toggleClass('sfe-closed sfe-open');
		node.toggle(250, function() {
			var nextNode = $(this);
			if (nextNode.css('display') === 'block') {
				var treeId = nextNode.children('li').children('[data-component-tree-id]').attr('data-component-tree-id');
				$.cookie('sfe-application-state-tree-id_' + KOR.SFE.contentRepoUUID, treeId, {
					path: KOR.SFE.cookiePath
				});
				nextNode.children('li').each(function() {
					var n = $(this);
					if (n.attr('data-type') === 'Slot') {
						n.children('[data-component-id]').children('.sfe-closed').trigger('click');
					}
				});
			}
		});
	}

	function treeDropActionHandler(ev) {
		var target = this.replacedElement;
		if (this.replacedElement && this.dragElement[0] !== this.replacedElement[0]) {
			if (target.attr('data-assignment-id')) {
				var source = $(ev.target).siblings('.' + this.dragActiveClass);
				var url = "{{}}{{}}AssignmentUUID={{}}&TargetAssignmentUUID={{}}".uInject(
					KOR.SFE.URLS.moveAssignment,
					KOR.SFE.URLS.moveAssignment.indexOf('?') > -1 ? '&' : '?',
					source.attr('data-assignment-id'),
					target.attr('data-assignment-id')
				);

				$.get(url, function() {
					var treeId = target.find('[data-component-tree-id]').attr('data-component-tree-id');
					$.cookie('sfe-application-state-tree-id_' + KOR.SFE.contentRepoUUID, treeId, {
						path: KOR.SFE.cookiePath
					});
					sitePanel.location.reload();
				});
			}
		}
		this._super(ev);
	}

	/**
	 *private getters
	 */

	function getComments(el) { // this is the recursive function
		var comments = [],
			len = el.childNodes.length;
		if (len) {
			for (var i = 0; i < len; i++) {
				comments = comments.concat(getComments(el.childNodes[i]));
			}
		} else if (el.nodeType === 8) {
			comments[len] = el;
		}
		return comments;
	}

	function getOverlay() {
		overlay = $('.sfe-highlight-overlay', sitePanel.document.body);
		if (!overlay.length) {
			$(sitePanel.document.body).append(KOR.ObjectFactory.getTemplate(componentOverlayTemplate).uTemplate({}));
			overlay = $('.sfe-highlight-overlay', sitePanel.document.body);
			overlay.on('click', function(ev) {
				currentComponentId = null;
				setOverlay(250);
				setDetail(null);
			});
		}
		return overlay;
	}

	function getInspector() {
		inspector = $('.sfe-inspector-overlay', sitePanel.document.body);
		if (!inspector.length) {
			$(sitePanel.document.body).append(KOR.ObjectFactory.getTemplate(componentInspectorTemplate).uTemplate({}));
			inspector = $('.sfe-inspector-overlay', sitePanel.document.body);
		}
		return inspector;
	}

	function getOverlayDimensions(k) {
		k = k || currentComponentId;
		var x = [],
			y = [],
			h = [],
			w = [];
		getComponentDomArray(k).each(function() {
			var node = $(this);
			var offset = node.offset();
			x.push(offset.left);
			y.push(offset.top);
			h.push(offset.top + node.outerHeight());
			w.push(offset.left + node.outerWidth());
		});

		return x.length && y.length && w.length && h.length ? {
			height: Math.max.apply(this, h) - Math.min.apply(this, y),
			width: Math.max.apply(this, w) - Math.min.apply(this, x),
			left: Math.min.apply(this, x),
			top: Math.min.apply(this, y)
		} : undefined;
	}

	function getComponentDomArray(k) {
		k = k || currentComponentId;
		var dom = $();
		var nodes = comments[k];
		if (nodes && nodes.length === 2) {
			var node = nodes[0];
			while (node) {
				if (node.nodeType === 1 && node.tagName.toLowerCase() !== 'script' && $(node).css('display') !== 'none') {
					dom = dom.add(node);
				} else if (node === nodes[1]) {
					return dom;
				}
				node = node.nextSibling;
			}
		}
		return dom;
	}

	/**
	 * Private Setters
	 */

	function setOverlay(duration) {

		//clear all tree highlights
		$('[data-component-id]', KOR.$(componentTreeSelector)).removeClass(activeComponentAnchorClass);
		$('[data-inspector-opened=true]', KOR.$(componentTreeSelector)).attr('data-inspector-opened', false);

		if (currentComponentId) {
			//highlight tree node
			highlightSelectedComponentInTree();

			//set active component location
			if (componentDetailObject[currentComponentId]) {
				//set the treeId of the current Component
				var treeId = componentDetailObject[currentComponentId].treeId;
				$.cookie('sfe-application-state-component-id_' + KOR.SFE.contentRepoUUID, treeId, {
					path: KOR.SFE.cookiePath
				});
			}

			exitInspectorMode();
			positionOverlay(duration);
		} else {
			$.cookie('sfe-application-state-component-id_' + KOR.SFE.contentRepoUUID, null, {
				path: KOR.SFE.cookiePath
			});
			hideOverlay(duration);
		}
	}

	function setDetailPanels(html) {
		// remove any tinyMCE instance before deleting its respective DOM element
		tinyMCE.remove();
		var dom = document.createElement('div');
		dom.innerHTML = html;
		dom = $(dom);
		dom.find('.sfe-removed').remove();
		KOR.$(componentDetailSectionsSelector).html(dom.find('#editTabs').html());
		KOR.$(componentDetailLinksSelector).html(dom.find('#editLinks').html());
		KOR.$(componentDetailContentSelector).html(dom.find('#editContainer').html());
		KOR.$(componentDetailCommandsSelector).html(dom.find('#editControls').html());
		//get disable status for revert button in design view from hidden revert button in BO template
		if ($(componentDetailContentSelector).find('.cpo-action-start-revert').attr('disabled') === 'disabled') {
			KOR.$(componentDetailCommandsSelector).find('a[data-sfe-actionbutton*="sfe-start-revert"]').addClass('disabled-button');
		}
		$(dom).remove();
		loadTinyMCE();
		renderDetailTips();
		renderDataButtons();
		//diable storefront editing if prefernce SFEReadonlyIfFuture is 'true' and preview date is 'Fixed'
		var previewReadonly = $('#preview_readonly_if_future').val();
		var previewFixedDateFlag = $('.sfe-preview-pca-datetime-make-fixed').is(':checked');
		if (previewReadonly === 'true' && previewFixedDateFlag) {
			setDisableForEditContainer(componentDetailContentSelector);
			setDisableForEditControls(componentDetailCommandsSelector);
			switchComponentDragDrop();
		}
		window.restoreScrollPosition($(editPanelContainerSelector));
	}

	function setDisableForEditContainer(e) {
		$(e + ' :input').attr('disabled', 'disabled');
	}

	function setDisableForEditControls(e) {
		$(e + ' ul li').off('click');
		$(e + ' ul li a').addClass('disabled-button');
	}

	function switchComponentDragDrop() {
		$('.sfe-container-tree-level-link').children("span").removeClass('drag-controller');
	}

	function setSizeEWPanels(percent) {
		KOR.$(treePanelSelector).width(percent - 1 + '%');
		KOR.$(detailPanelSelector).width(100 - percent + '%');
	}

	function setUIState() {
		//panel size persistance
		var ewPercent = $.cookie('sfe-application-state-ew-percent');
		if (ewPercent) {
			setSizeEWPanels(ewPercent);
		}
		var nsPx = $.cookie('sfe-application-state-ns-px');
		if (nsPx) {
			setControlPanelHeight(nsPx);
		} else {
			sizeComponentTree();
		}
		sizePalette('init');
		toggleLayoutMode('init');
	}

	function setInspector(k) {
		var dims = getOverlayDimensions(k);
		var ov = getInspector();
		KOR.log('overlay dims: ', dims);
		if (k && dims) {
			ov.filter('.sfe-inspector-top').css({
				top: dims.top,
				left: dims.left,
				width: dims.width
			});
			ov.filter('.sfe-inspector-bottom').css({
				top: dims.top + dims.height - 2,
				left: dims.left,
				width: dims.width
			});
			ov.filter('.sfe-inspector-left').css({
				top: dims.top,
				left: dims.left,
				height: dims.height
			});
			ov.filter('.sfe-inspector-right').css({
				top: dims.top,
				left: dims.left + dims.width - 2,
				height: dims.height
			});
			ov.css({
				display: 'block'
			});
		} else {
			ov.css({
				display: 'none'
			});
		}

		if (inspectorPreviewing !== k) {
			setComponentInTree(k);
		}
		inspectorPreviewing = k;
	}

	function setDetailByLinkParameters(params) {
		if (params) {
			var url = "{{}}&type=Pagelet&{{}}".uInject(KOR.SFE.URLS.editing, KOR.toQueryString(params));
			loadDetailPanel(url);
		} else {
			setDetailPanels("");
		}
	}

	function setDetail(detailId) {

		KOR.log('loading detail id: ', detailId);
		var detailObject = componentDetailObject[detailId];
		KOR.log('found detail object: ', detailObject);

		if (detailObject) {
			var url = "{{}}&{{}}".uInject(KOR.SFE.URLS.editing, KOR.toQueryString(detailObject));
			KOR.log('editing url: ', url);

			loadDetailPanel(url, function() {
				setDetail(detailId);
			});
		} else {
			setDetailPanels("");
		}
	}

	function setDetailCallback(html, failStackFn) {
		if (isLogInMarkup(html)) {
			handleUnauthorizedState(failStackFn);
			return;
		}
		if (isErrorMessage(html)) {
			setDetailPanels('<div><div id="editContainer">' + html + '</div></div>');
			return;
		}
		setDetailPanels(html);
	}

	function handleUnauthorizedState(failStackFn) {
		failedAuthentationStack.push(failStackFn);
		KOR.showLoginDialog();
		setDetailPanels("");
	}

	function setControlPanelHeight(n) {
		if ($(window).height() - KOR.$(headerPanelSelector).height() - n >= 0) {
			$.cookie('sfe-application-state-ns-px', n, {
				path: KOR.SFE.cookiePath
			});
			if (n > controlPanelCloseHeight) {
				lastControlPanelHeight = n;
				showControlPanel();
			} else if (n <= controlPanelCloseHeight) {
				n = controlPanelCloseHeight;
				hideControlPanel();
			}
			KOR.$(controlPanelSelector).height(n);
			sizeEditingPanel();
			sizeComponentTree();
			positionOverlay();
		}
	}

	function addLocaleParamToDetailPanelUrl(url) {
		if (currentLocale) {
			//remove existing LocaleId parameter if present
			url = url.replace(/&?LocaleId=.*?(&|$)/, '');
			//add new LocaleId parameter
			if (url.indexOf('?') > -1) {
				url = url.replace('?', '?LocaleId={{}}&'.uInject(currentLocale));
			} else {
				url += '?LocaleId={{}}'.uInject(currentLocale);
			}
		}
		return url;
	}

	function setApplicationState(data) {
		var compId;
		componentTree = data;
		//render tree html
		renderComponentTree();

		// highlight proper component
		if ($.cookie('sfe-application-state-new-assignment-id') || $.cookie('sfe-application-state-component-id_' + KOR.SFE.contentRepoUUID)) {
			// check if a new component was created that should be selected
			if ($.cookie('sfe-application-state-new-assignment-id')) {
				currentComponentId = $('[data-assignment-id="' + $.cookie('sfe-application-state-new-assignment-id') + '"] > a').data('component-id');
				currentDetailPanelUrl = null;
				$.cookie('sfe-application-state-new-assignment-id', null, {path: KOR.SFE.cookiePath});
			} else {
				compId = $(componentTreeSelector + " [data-component-tree-id='{{}}']".uInject($.cookie('sfe-application-state-component-id_' + KOR.SFE.contentRepoUUID))).attr('data-component-id');
				// make sure the component still exists. if not look for its parent slot
				if (!compId && currentSlotTreeId) {
					compId = $(componentTreeSelector + " [data-component-tree-id='{{}}']".uInject(currentSlotTreeId)).attr('data-component-id');
				}
				currentComponentId = compId;
			}
			setOverlay();
			if (loadInitDetailPanel) {
				loadDetailPanel(loadInitDetailPanel);
			} else {
				if (updateDetailPanel) {
					if (currentDetailPanelUrl && currentComponentId) {
						loadDetailPanel(currentDetailPanelUrl);
					} else {
						setDetail(currentComponentId || componentTree[0].id);
					}
				}
			}
			setComponentInTree(currentComponentId);
		} else {
			currentComponentId = (componentTree && componentTree[0]) ? componentTree[0].id : null;
			setOverlay();
			if (updateDetailPanel) {
				setDetail(currentComponentId);
			}
		}

		//open the tree to the right area
		if ($.cookie('sfe-application-state-tree-id_' + KOR.SFE.contentRepoUUID)) {
			compId = $(componentTreeSelector + " [data-component-tree-id='{{}}']".uInject($.cookie('sfe-application-state-tree-id_' + KOR.SFE.contentRepoUUID))).attr('data-component-id');
			if (!compId && currentSlotTreeId) {
				var compTreeNode = $(componentTreeSelector + " [data-component-tree-id='{{}}']".uInject(currentSlotTreeId));
				compId = compTreeNode.attr('data-component-id');
				var firstChild = compTreeNode.next('ul').find('>li>a[data-component-id]');
				if (firstChild.length) {
					compId = firstChild.attr('data-component-id');
				}
			}
			setComponentInTree(compId);
		}

		updateDetailPanel = true;
		loadInitDetailPanel = null;
	}

	function setComponentInTree(k) {
		//reset tree
		removeInspectorTree();

		if (k) {
			//display uls up the tree
			var anchor = $('[data-component-id="{{}}"]'.uInject(k), KOR.$(componentTreeSelector));
			if (inInspectorMode) {
				anchor.addClass('sfe-inspector-preview');
			}
			anchor.parentsUntil(componentTreeSelector).each(function() {
				var node = $(this);
				if (this.tagName.toLowerCase() === 'ul') {
					if (node.css('display') !== 'block') {
						node.css({
							'display': 'block'
						});
						if (inInspectorMode) {
							node.attr('data-inspector-opened', true);
						}
						//open the arrow pointers
						node.prev('[data-component-id]').children('.sfe-closed').removeClass('sfe-closed').addClass('sfe-open');
					}
				}
			});

			//scroll into center of view
			KOR.$(componentTreeContainerSelector).scrollTop(0);
			KOR.$(componentTreeContainerSelector).scrollLeft(0);
			var anchorOffset = anchor.offset();
			var treeOffset = KOR.$(componentTreeContainerSelector).offset();
			var offsetTop = anchorOffset.top - (treeOffset.top + ((KOR.$(componentTreeContainerSelector).height() / 2) - (anchor.height() / 2)));
			var offsetLeft = anchorOffset.left - (treeOffset.left + ((KOR.$(componentTreeContainerSelector).width() / 2) - (anchor.width() / 2)));
			KOR.$(componentTreeContainerSelector).scrollTop(offsetTop);
			KOR.$(componentTreeContainerSelector).scrollLeft(offsetLeft);
		}
	}

	/**
	 * private boolean methods
	 */

	function isLogInMarkup(html) {
		return html && html !== '' && html.indexOf(sessionTimeoutMarkupIdentifier) !== -1;
	}

	function isErrorMessage(html) {
		return html && html !== '' && html.indexOf(errorMarkupIdentifier) !== -1;
	}

	function isFormErrorMessage(html) {
		return html && html !== '' && html.indexOf(formErrorMarkupIdentifier) !== -1;
	}

	/**
	 * private show methods
	 */

	function showDetailLoader() {
		if (!detailLoader) {
			KOR.ObjectFactory.getTemplate(loaderTemplate, function(str) {
				detailLoader = $(str);
				$(document.body).append(detailLoader);
				showDetailLoaderAction();
			});
		} else {
			showDetailLoaderAction();
		}
	}

	function showDetailLoaderAction() {
		detailLoader.css({
			display: 'block',
			visibility: 'hidden'
		});
		detailLoader.position({
			my: 'center center',
			at: 'center center',
			of: componentDetailSelector
		});
		detailLoader.css({
			display: 'none',
			visibility: 'visible'
		});
		detailLoader.fadeIn(250);
	}

	function showControlPanel() {
		KOR.$(controlPanelCollapseSelector).addClass(openedControlPanelClassName).removeClass(closedControlPanelClassName);
		KOR.$(controlPanelHideOnCloseSelector).css('visibility', 'visible');
	}

	/**
	 * private hide methods
	 */

	function hideDetailLoader() {
		if (detailLoader) {
			detailLoader.fadeOut(250);
		}
	}

	function hideControlPanel() {
		KOR.$(controlPanelCollapseSelector).removeClass(openedControlPanelClassName).addClass(closedControlPanelClassName);
		KOR.$(controlPanelHideOnCloseSelector).css('visibility', 'hidden');
	}

	function hideOverlay(duration) {
		getOverlay().fadeOut(duration || 0, function() {
			$(this).css({
				opacity: 0
			});
		});
	}

	function togglePaletteHandler(ev) {
		ev.preventDefault();
		$(this).toggleClass('collapsed');
		if ($(this).hasClass('collapsed')) {
			sizePalette('hide');
		} else {
			sizePalette('show');
		}
		displayViewableArea();
		initDisplayDevice();
	}

	/**
	 * private render methods
	 */

	function renderComponentTree() {
		KOR.$(componentTreeSelector).html(KOR.ObjectFactory.getTemplate(componentTreeTemplate).uTemplate({
			componentTree: componentTree,
			componentDetailObject: componentDetailObject,
			componentTreeItemTemplate: KOR.ObjectFactory.getTemplate(componentTreeItemTemplate)
		}));
	}

	function renderDetailTips() {
		KOR.$(componentDetailContentSelector).find('td.fielditem2').each(function() {
			var node = $(this);
			var tip = node.next('td').next('td.table_detail');
			if (tip.length && $.trim(tip.html()) !== '') {
				node.html('<span data-overlay="{{}}" class="sfe-tip">{{}}</span>'.uInject(tip.html(), node.html()));
				tip.html('');
			}
		});
	}

	function renderDataButtons() {
		if (currentTreeNode && componentDetailObject) {
			var links = {};
			var parentCategory = currentTreeNode.closest('[data-type="Catalog Category"]');
			var parentProduct = currentTreeNode.closest('[data-type="Product"]');

			if (parentCategory.length) {
				var cat = componentDetailObject[parentCategory.find('[data-component-id]').attr('data-component-id')];
				if (cat) links.categoryLink = KOR.SFE.URLS.backofficeEditing + '&CatalogCategoryID=' + cat.id;
			}

			if (parentProduct.length) {
				var product = componentDetailObject[parentProduct.find('[data-component-id]').attr('data-component-id')];
				if (product) links.productLink = KOR.SFE.URLS.backofficeEditing + '&ProductID=' + product.id;
			}

			if (links.productLink || links.categoryLink) {
				$('.sfe-links').uTemplate(dataLinkTemplate, links);
			}
		}
	}

	/**
	 * private action methods
	 */

	function enterInspectorMode() {
		KOR.$(inspectorButtonSelector).addClass(inspectorButtonOnClassName);
		inInspectorMode = true;
	}

	function exitInspectorMode() {
		KOR.$(inspectorButtonSelector).removeClass(inspectorButtonOnClassName);
		inInspectorMode = false;
		getInspector().css('display', 'none');
		removeInspectorTree();
	}

	function removeInspectorTree() {
		$('[data-inspector-opened=true]', KOR.$(componentTreeSelector)).each(function() {
			var node = $(this);
			node.attr('data-inspector-opened', false).css({
				display: 'none'
			});
			node.prevAll('.sfe-open').removeClass('sfe-open').addClass('sfe-closed');
		});
		$('.sfe-inspector-preview', KOR.$(componentTreeSelector)).removeClass('sfe-inspector-preview');
	}

	function sizeEditingPanel() {
		KOR.$(editPanelContainerSelector).height(
			KOR.$(controlPanelSelector).height() - KOR.$(editPanelContainerSelector).position().top - parseInt(KOR.$(editPanelControlsSelector).css('height'))
		);
	}

	function sizeComponentTree() {
		KOR.$(componentTreeSelector).height(
			KOR.$(controlPanelSelector).height() - KOR.$(componentTreeSelector).position().top - parseInt(KOR.$(componentTreeSelector).css('padding-bottom'))
		);
		sizeSiteFrame();
	}

	function sizePalette(mode) {
		var $componentPalette = $('#component-palette'),
			paletteDefaultWidth = 400,
			paletteMinWidth = 200,
			paletteMaxWidth = $(window).width() - 300,
			savedWidth = null;

		// width handling
		if (typeof mode === 'number') {
			var width = mode;
			if (width < paletteMinWidth) {
				width = paletteMinWidth;
			}
			if (width >= paletteMinWidth && width <= paletteMaxWidth) {
				$componentPalette.width(width);
				// save the changed palette width to a cookie
				$.cookie('sfe-application-state-palette-width', $componentPalette.width(), {path: KOR.SFE.cookiePath});
				if (paletteCollapse.hasClass('collapsed')) {
					paletteCollapse.removeClass('collapsed');
					paletteResizer.removeClass('collapsed');
					$.cookie('sfe-application-state-palette-collapsed', null, {path: KOR.SFE.cookiePath});
				}
			}
		} else if (mode === 'init') {
			if ($.cookie('sfe-application-state-palette-collapsed') === 'true') {
				$componentPalette.width(0);
				paletteCollapse.addClass('collapsed');
				paletteResizer.addClass('collapsed');
			} else {
				savedWidth = $.cookie('sfe-application-state-palette-width') || paletteDefaultWidth;
				if (savedWidth > paletteMaxWidth) {
					savedWidth = paletteMaxWidth;
				}
				$componentPalette.width(savedWidth);
			}
		} else if (mode === 'hide') {
            paletteResizer.addClass('collapsed');
			$componentPalette.width(0);
			// save the palette collapse state to a cookie
			$.cookie('sfe-application-state-palette-collapsed', true, {path: KOR.SFE.cookiePath});
		} else if (mode === 'show') {
            paletteResizer.removeClass('collapsed');
			savedWidth = $.cookie('sfe-application-state-palette-width') || paletteDefaultWidth;
			if (savedWidth > paletteMaxWidth) {
				savedWidth = paletteMaxWidth;
			}
			$componentPalette.width(savedWidth);
			// remove the palette collapse state cookie
			$.cookie('sfe-application-state-palette-collapsed', null, {path: KOR.SFE.cookiePath});
		}
		// hide tab title for small sizes
		if ($componentPalette.width() < 370) {
			$componentPalette.find('.tab-title').hide();
		} else {
			$componentPalette.find('.tab-title').show();
		}
		viewableArea.width($(window).width() - $componentPalette.outerWidth(true) - paletteResizer.outerWidth(true) - 1);

		// height handling
		$componentPalette.height(viewableArea.height());
		$('#component-palette-content').height(viewableArea.height() - $('#component-palette-head').outerHeight(true));
		paletteResizer.height(viewableArea.height());
	}

	function sizeSiteFrame(ev) {
		var displayDevice = $('#preview_displaydevice_select');
		var storefrontIFrame = KOR.$(siteContentSelector);

		viewableArea.height($(window).height() - KOR.$(headerPanelSelector).outerHeight() - ((KOR.$(controlPanelSelector).length !== 0) ? KOR.$(controlPanelSelector).outerHeight() : 3));

		if (displayDevice.val() === null || displayDevice.val() === 'BROWSER') {
			storefrontIFrame.removeClass('nonBrowserDefined');
			storefrontIFrame.height(viewableArea.height());
			storefrontIFrame.width('100%');
			viewableArea.removeClass('nonBrowserDefined');
		} else {
			storefrontIFrame.addClass('nonBrowserDefined');
			storefrontIFrame.width($('#widthbox').val());
			storefrontIFrame.height($('#heightbox').val());
			viewableArea.addClass('nonBrowserDefined');
		}
		displayViewableArea();
		initDisplayDevice();
		sizePreviewLayer();
	}

	function loadTinyMCE() {
		$('textarea.sfe-html-editor').each(function() {

			createEditor._config.id = $(this).attr('id');
			if (!createEditor._config.id) {
				createEditor._config.id = 'sfe-'.uId();
				$(this).attr('id', createEditor._config.id);
			}
			createEditor(createEditor._config);
		});
	}

	function loadDetailPanel(url, failStackFn) {
		showDetailLoader();

		$.cookie('sfe-application-state-panel-url_' + KOR.SFE.contentRepoUUID, url, {
			path: KOR.SFE.cookiePath
		});
		currentDetailPanelUrl = url;

		var urlWithParameters = url.split("?");
		var urlString = urlWithParameters[0];
		var urlParameters = "";
		if (urlWithParameters[1] !== null) {
			urlParameters = urlWithParameters[1];
		}
		$.ajax({
			url: addLocaleParamToDetailPanelUrl(urlString),
			type: "POST",
			data: urlParameters,
			complete: function() {
				hideDetailLoader();
			},
			success: function(html) {
				KOR.log('section update: ');
				setDetailCallback(html, failStackFn);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				if (errorThrown == 'Unauthorized') {
					handleUnauthorizedState(failStackFn);
				}
			}
		});
	}

	function positionOverlay(duration) {
		var dims = getOverlayDimensions();
		var ov = getOverlay();
		if (ov && dims) {
			ov.css({
				display: 'block'
			});

			var obj = $.extend(dims, {
				opacity: 0.5
			});
			if (duration) {
				ov.animate(obj, duration);
			} else {
				ov.css(obj);
			}

			obj = {
				scrollTop: dims.top - $(sitePanel).height() / 2 + dims.height / 2,
				scrollLeft: dims.left - $(sitePanel).width() / 2 + dims.width / 2
			};
			if (duration) {
				$(sitePanel.document.documentElement).animate(obj, duration);
				$(sitePanel.document.body).animate(obj, duration);
			} else {
				sitePanel.document.documentElement.scrollTop = obj.scrollTop;
				sitePanel.document.documentElement.scrollLeft = obj.scrollLeft;
				sitePanel.document.body.scrollTop = obj.scrollTop;
				sitePanel.document.body.scrollLeft = obj.scrollLeft;
			}
		} else {
			hideOverlay(duration);
		}
	}

	function runFailedAuthentationStack() {
		$.each(failedAuthentationStack, function(index, fn) {
			fn();
		});
		failedAuthentationStack = [];
	}

	function detailFormInline(form, ev) {
		ev.preventDefault();
		showDetailLoader();
		// trigger the tinyMCE value synchronization manually since it is not doing it automatically in some IE versions
		if (tinyMCE.isIE) {
			tinyMCE.triggerSave();
		}
		$.ajax({
			url: form.attr('action'),
			type: 'post',
			data: form.serialize(),
			complete: function() {
				hideDetailLoader();
			},
			success: function(html) {
				KOR.log('section update from form: ');

				//reload site frame if no errors and calls for a layout change
				if (!isFormErrorMessage(html)) {
					if (form.find('.kor-form-action').hasClass('sfe-layout-change')) {
						updateDetailPanel = false;
						if (currentComponentId !== null) {
							$.cookie('sfe-application-state-component-id_' + KOR.SFE.contentRepoUUID, componentDetailObject[currentComponentId].treeId, {
								path: KOR.SFE.cookiePath
							});
						} else {
							$.cookie('sfe-application-state-component-id_' + KOR.SFE.contentRepoUUID, null, {
								path: KOR.SFE.cookiePath
							});
						}
						sitePanel.location.reload();
					}
				}
				setDetailCallback(html);
			}
		});
		return false;
	}

	function detailFormDialog(form, ev) {
		ev.preventDefault();
		var title = $('.kor-form-action').val();
		var src = form.attr('action') + '?' + form.serialize();
		KOR.showDetailDialog(title, src);
		return false;
	}

	function highlightSelectedComponentInTree() {
		if (currentComponentId) {
			//set the current tree node
			currentTreeNode = $('[data-component-tree-id="{{}}"]'.uInject(componentDetailObject[currentComponentId].treeId), KOR.$(componentTreeSelector));
			currentTreeNode.addClass(activeComponentAnchorClass);

			//set the current slot treeId that the current component resides in
			if (componentDetailObject[currentComponentId].type !== 'Slot') {
				var currentSlotTreeNode = currentTreeNode.closest('ul').prev('[data-component-id]');
				var compObj = componentDetailObject[currentSlotTreeNode.attr('data-component-id')];
				if (compObj && compObj.type === "Slot") {
					currentSlotTreeId = compObj.treeId;
				} else {
					currentSlotTreeId = null;
				}
			}
		}
	}

	/**
	 * Preview configuration functionality
	 */

	function togglePreviewLayer() {
		var previewLayer = $('#sfe-configure-layer');
		var previewTab = $('#design-preview');

		previewLayer.slideToggle();
		if (previewTab.hasClass('active')) {
			cancelPreviewLayer(previewLayer);
		}

		previewTab.toggleClass('active');
	}

	function hidePreviewLayer() {
		$('#sfe-configure-layer').css({
			display: 'none'
		});
		$('#design-preview').removeClass('active');
	}

	function sizePreviewLayer() {
		$('#sfe-configure-layer').css('max-height', $(window).height() - $('#masthead-wrapper').height() - 10);
	}

	function showPreviewLayerLoader() {
		$('.sfe-preview-loading').css({
			display: 'block'
		});
	}

	function hidePreviewLayerLoader() {
		$('.sfe-preview-loading').css({
			display: 'none'
		});
	}

	/*
	 * START: form default reset
	 */

	function cancelPreviewLayer(previewLayer) {
		var form = $('form[data-form-default-check]', previewLayer);
		form.each(function() {
			this.reset();
		});
	}

	$(document).on('reset', 'form[data-form-default-check]', function(e) {
		var form = $(e.currentTarget);
		setFormDefault(form);
		return false;
	});

	function setFormDefault(el) {
		$('[data-set-form-default-function]', el).each(function() {
			var fName = $(this).data("set-form-default-function");
			var fn = new Function("term", "return " + fName + "(term);");
			fn(el);
		});
	}

	/*
	 * END: form default reset
	 */

	/*
	 * START: system default reset
	 */

	function getSystemDefaultResetter() {
		return $("#sfe-configure-layer-system-default-reset");
	}

	function updateSystemDefaultResetter(el) {
		var systemDefaultResetter = getSystemDefaultResetter();

		if (isSystemDefault(el)) {
			systemDefaultResetter.attr("disabled", "disabled");
		} else {
			systemDefaultResetter.removeAttr("disabled");
		}
	}

	function setSystemDefault(el) {
		$('[data-set-system-default-function]', el).each(function() {
			var fName = $(this).data("set-system-default-function");
			var fn = new Function("term", "return " + fName + "(term);");
			fn(el);
		});
	}

	function isSystemDefault(el) {
		var isSystemDefault = true;

		$('[data-is-system-default-function]', el).each(function() {
			var fName = $(this).data("is-system-default-function");
			var fn = new Function("term", "return " + fName + "(term);");

			if (!fn(el)) {
				isSystemDefault = false;
			}
		});

		return isSystemDefault;
	}

	$(document).on('change', 'form[data-system-default-check]', function(e) {
		var el = $(e.currentTarget);

		updateSystemDefaultResetter(el);
	});

	$(document).on('click', '#sfe-configure-layer-system-default-reset', function(e) {
		var el = $(e.currentTarget);
		var form = el.parents('form');

		setSystemDefault(form);
		form.submit();
	});
	/*
	 * END: system default reset
	 */

	/*
	 * START: fullsite preview trigger
	 */
	$(document).on('click', 'a[data-fullsite-preview]', function(e) {
		var hrefPreview = $(e.target).attr('data-fullsite-preview');
		var currentlyShownHref = document.getElementById("siteContent").contentWindow.location.href;

		if ((currentlyShownHref !== null) && (/^(https?):\/\//i.test(currentlyShownHref))) {
			hrefPreview = hrefPreview + "&PreviewTargetURL=" + encodeURIComponent(currentlyShownHref);
		} else {
			hrefPreview = hrefPreview + "&PreviewTargetURL=" + encodeURIComponent($("#sfe-preview-target-url-field").data("default-value"));
		}

		var viewableAreaHeight = viewableArea.height(); // ??
		var viewableAreaWidth = viewableArea.width(); // ??
		window.open(hrefPreview, '_blank', 'menubar=1,location=1,resizable=1,scrollbars=1,status=1,toolbar=1, width=' + viewableAreaWidth + ', height=' + viewableAreaHeight);
		return false;
	});
	/*
	 * END: fullsite preview trigger
	 */

	function refreshPreviewSummaryLayer() {
		var layer = $('#sfe-preview-summary-layer');
		var previewSummaryRefreshUrl = layer.data('refreshurl');
		if (previewSummaryRefreshUrl !== null) {
			$.ajax({
				type: 'GET',
				url: previewSummaryRefreshUrl,
				success: function(html) {
					var tmpDOM = document.createElement('div');
					tmpDOM.innerHTML = html;
					layer.replaceWith($(tmpDOM).find('#sfe-preview-summary-layer'));
				},
				error: function() {
					KOR.showErrorPreviewDialog();
				}
			});
		}
	}

	function loadPreview(successFct) {
		var configurationPreviewURL = $('#sfe-configure-layer-configuration-url').val();
		if (configurationPreviewURL !== null) {
			$.ajax({
				type: 'POST',
				url: configurationPreviewURL,
				data: $("input[name^='transferablePrefix_']").serialize(),
				success: function() {
					successFct.call();
					refreshPreviewSummaryLayer();
				},
				error: function() {
					KOR.showErrorPreviewDialog();
				}
			});
		} else {
			successFct.call();
		}
	}
	// make loadPreview available by event "loadPreview" at the body
	$('body').on('loadPreview', function(event, successFct) {
		successFct = successFct || $.noop;
		loadPreview(successFct);
	});

	function submitPreviewForm(successFn) {
		if (typeof successFn !== 'function') {
			successFn = function(html) {
				$('#design-preview').removeClass('active');
				document.getElementById("siteContent").contentWindow.location.href = $('#sfe-preview-target-url-field').val();
			};
		}

		var form = $('#PreviewWebform');
		var layer = $('#sfe-configure-layer');
		$('#sfe-preview-target-url-field').val(document.getElementById("siteContent").contentWindow.location.href);

		showPreviewLayerLoader();
		$.ajax({
			type: 'POST',
			data: form.serialize(),
			url: form.attr('action'),
			success: function(html) {
				var tmpDOM = document.createElement('div');
				tmpDOM.innerHTML = html;
				layer.replaceWith($(tmpDOM).find('#sfe-configure-layer'));

				if (FormValid) {
					currentLocale = $(KOR.SFE.localeSwitchSelector).val();
					loadPreview(successFn);
				} else if ($('#sfe-configure-layer').is(':hidden')) {
					togglePreviewLayer();
					if (!$('#design-preview').hasClass('active')) $('#design-preview').addClass('active');
				}
			},
			error: function() {
				KOR.showErrorPreviewDialog();
			}
		});
		return false;
	}
	// make submitPreviewForm available by event "submitPreviewForm" at the body
	$('body').on('submitPreviewForm', function(event, successFct) {
		submitPreviewForm(successFct);
	});

	function refreshPreviewForm() {
		var form = $(this);
		var layer = $('#sfe-configure-layer');
		$('#sfe-preview-target-url-field').val(document.getElementById("siteContent").contentWindow.location.href);

		var url = form.attr('action').replace("EditView-Update", "EditView-ChangeApplication");

		showPreviewLayerLoader();
		$.ajax({
			type: 'POST',
			data: form.serialize(),
			url: url,
			success: function(html) {
				html = $(html);
				var div = html.filter('div');
				var other = html.not(div);
				layer.empty().append(div.children()).append(other);
				initDisplayDevice();

				if ($('#sfe-configure-layer').is(':hidden')) {
					togglePreviewLayer();
				}
			},
			error: function() {
				KOR.showErrorPreviewDialog();
			}
		});
		return false;
	}

	function previewPageVariant() {
		var targetUrlField = $('#sfe-preview-target-url-field');
		targetUrlField.val(document.getElementById("siteContent").contentWindow.location.href);
		$.ajax({
			type: 'GET',
			url: this.href, //source must be a link
			success: function(html) {
				$('#sfe-transferable-layer').replaceWith(html);
				loadPreview(function(html) {
					$('#design-preview').removeClass('active');
					document.getElementById("siteContent").contentWindow.location.href = targetUrlField.val();
				});
			},
			error: function() {
				KOR.showErrorPreviewDialog();
			}
		});
		return false;
	}

	/**
	 * private variables
	 *
	 * resizing functionality
	 */
	//var hash = KOR.getLocationHash(),
	var activeComponentAnchorClass = 'sfe-active',
		body = $('body'),
		closedControlPanelClassName = 'sfe-panel-collapse-closed',
		comments = {},
		componentDetailObject = {},
		componentDetailSelector = '#sfe-panel-edit',
		componentDetailSectionsSelector = '#sfe-panel-edit .sfe-tabs',
		componentDetailLinksSelector = '#sfe-panel-edit .sfe-links',
		componentDetailContentSelector = '#sfe-container-edit .sfe-generic-wrapper',
		componentDetailCommandsSelector = '#sfe-panel-edit-controls .sfe-button-bar',
		componentTreeSelector = '#sfe-container-tree',
		componentTreeContainerSelector = '#sfe-container-tree',
		slotOverlayTemplate = 'slotOverlayTemplate',
		componentOverlayTemplate = 'componentOverlayTemplate',
		componentInspectorTemplate = 'componentInspectorTemplate',
		componentTreeTemplate = 'componentTreeTemplate',
		componentTreeItemTemplate = 'componentTreeItemTemplate',
		componentTree = null,
		controlPanelHideOnCloseSelector = '#sfe-panel-edit .sfe-tabs, #sfe-panel-edit .sfe-links, .sfe-control-bar>span',
		controlPanelResizer = $('.sfe-control-bar-resizer'),
		controlPanelSelector = '#sfe-control-panel',
		controlPanelDefaultHeight = 200,
		controlPanelCloseHeight = 40,
		controlPanelCollapseSelector = '.sfe-panel-collapse-button',
		editPanelContainerSelector = '#sfe-container-edit',
		editPanelControlsSelector = '#sfe-panel-edit-controls',
		currentComponentId = null,
		currentTreeNode = null,
		currentDetailPanelUrl = null,
		currentSlotTreeId = null,
		dataLinkTemplate = 'dataLinkTemplate',
		detailAnchor = $('<a class="kor-detail-dialog"></a>').appendTo(body),
		detailLoader = null,
		detailPanelSelector = '#sfe-panel-edit',
		dividerSelector = $('#sfe-panel-divider'),
		errorMarkupIdentifier = '<!-- BEGIN TEMPLATE application/Error -->',
		failedAuthentationStack = [],
		formErrorMarkupIdentifier = 'class="error_box',
		errorAnchor = $('<a class="kor-error-dialog"></a>').appendTo(body),
		errorCreationAnchor = $('<a class="kor-error-creation-dialog"></a>').appendTo(body),
		errorPreviewAnchor = $('<a class="kor-error-preview-dialog"></a>').appendTo(body),
		headerPanelSelector = '#masthead',
		inspector = null,
		inInspectorMode = false,
		inspectorPreviewing = null,
		inspectorButtonOnClassName = 'sfe-inspector-button-on',
		inspectorButtonSelector = '.sfe-inspector-button',
		layoutButtonSelector = '.sfe-layout-button',
		lastControlPanelHeight = null,
		lastPaletteWidth = null,
		loaderTemplate = 'loaderTemplate',
		loadInitDetailPanel = ($.cookie('sfe-application-state-panel-url_' + KOR.SFE.contentRepoUUID) || null),
		loginAnchor = $('<a class="kor-login-dialog"></a>').appendTo(body),
		openedControlPanelClassName = 'sfe-panel-collapse-opened',
		overlay = null,
		reloadSiteFrameOnWizardExit = false,
		sessionTimeoutMarkupIdentifier = '<div id="login"',
		siteContentSelector = '#siteContent',
		sitePanel = frames['siteContent'],
		viewableArea = $('#viewable-area'),
		currentLocale = null,
		treePanelSelector = '#sfe-panel-tree',
		updateDetailPanel = true,
		paletteResizer = $('#palette-resizer'),
		paletteCollapse = $('.palette-collapse'),
		siteContentOverlay = $('#siteContentOverlay'),
		waitingOverlay = $('#waitingOverlay');

	/**
	 * KOR UI Component setup
	 */

	//editing error dialog
	KOR.dialog('.kor-error-dialog', {
		modalOpacity: 0.75,
		content: null,
		modalClose: false,
		singletonOverlay: false,
		overlayTemplate: 'errorDialogOverlayTemplate'
	});

	//creation error dialog
	KOR.dialog('.kor-error-creation-dialog', {
		modalOpacity: 0.75,
		content: null,
		modalClose: false,
		singletonOverlay: false,
		overlayTemplate: 'errorCreationDialogOverlayTemplate'
	});

	//preview error dialog
	KOR.dialog('.kor-error-preview-dialog', {
		modalOpacity: 0.75,
		content: null,
		modalClose: false,
		singletonOverlay: false,
		overlayTemplate: 'errorPreviewDialogOverlayTemplate'
	});

	//detail dialog
	var detailDialog = (KOR.createClass(KOR.Dialog, {
		modalOpacity: 0.75,
		fixedPosition: false,
		singletonOverlay: false,
		overlayTemplate: 'dialogIframeOverlayTemplate',
		populate: detailDialogPopulateHandler,
		hide: detailDialogHideHandler
	})).getInstanceOf('.kor-detail-dialog');

	//login dialog
	KOR.dialog('.kor-login-dialog', {
		modalOpacity: 0.75,
		content: null,
		singletonOverlay: false,
		overlayTemplate: 'loginDialogOverlayTemplate'
	});

	//detail tooltips
	KOR.tip('.sfe-tip', {
		overlayOffset: "0 -7px"
	});

	//login validation
	KOR.Validator.LogInAjaxForm = KOR.createClass(KOR.Validator.Form, {
		ajaxSubmit: true,
		isAjaxSuccess: loginIsAjaxSuccessHandler,
		ajaxSuccess: loginAjaxSuccessHandler,
		ajaxFailure: loginAjaxFailureHandler
	});

	KOR.validator('#sfe-login-dialog-form', {
		formClassObject: 'LogInAjaxForm'
	});

	//tree ui component
	(KOR.createClass(KOR.Treemenu, {
		viewSelector: '.sfe-toggle-view',
		toggle: treeToggleHandler,
		dragSelector: '[data-assignment-id]',
		dropAction: treeDropActionHandler
	})).getInstanceOf('.sfe-component-tree');

	/**
	 *
	 *
	 * Display Device Selection in Preview Configuration Panel
	 *
	 *
	 */

	$(document).on('change', '#preview_displaydevice_select', function(e) {
		var selected = $(this).find('option:selected');
		var width = selected.data('display-device-width');
		var height = selected.data('display-device-height');

		if ($(this).val() === "BROWSER") {
			$('#widthbox').val(viewableArea.width());
			$('#heightbox').val(viewableArea.height());
		} else if ($(this).val() === "MANUAL") {
			$('#widthbox').val(width);
			$('#heightbox').val(height);
		} else {
			$('#widthbox').val(width);
			$('#heightbox').val(height);
		}
	});

	$(document).on('keypress', '#widthbox', function(e) {
		$('#preview_displaydevice_select option[value="MANUAL"]').attr("selected", "selected");
	});

	$(document).on('keypress', '#heightbox', function(e) {
		$('#preview_displaydevice_select option[value="MANUAL"]').attr("selected", "selected");
	});

	function initDisplayDevice() {
		if ($('#preview_displaydevice_select').val() === 'BROWSER') {
			$('#widthbox').val(viewableArea.width());
			$('#heightbox').val(viewableArea.height());
		}
	}

	/**
	 *
	 *
	 * Designer init Setup Section
	 *
	 *
	 */

	$(siteContentSelector).on('load', contentPageLoadHandler);

	//load site iframe with site url
	loadPreview(function() {
		$(siteContentSelector).attr('src', KOR.SFE.URLS.application);
	});

	//set the initial state for the ui
	//check if storefront editing functionality is available
	if (KOR.$(controlPanelSelector).length > 0) {
		setUIState();
		//else fit only the preview iframe size
	} else {
		sizeSiteFrame();
	}

	// show the size of the iframe
	displayViewableArea();

	// set display device to browser size if required
	initDisplayDevice();

	///**
	// * Event Registration
	// */
	$(window).on('resize', resizeHandler);
	$(document).on('mouseup', stopDraggingHandler);

	/**
	 * delegated events that effect ui changes
	 */
	////toggle control panel events
	$(document).on('click', ' .' + closedControlPanelClassName, showControlPanelHandler);
	$(document).on('click', ' .' + openedControlPanelClassName, hideControlPanelHandler);

	////turns inspector on and off
	$(document).on('click', inspectorButtonSelector, toggleInspectorHandler);
	// turns layout mode on and off
	$(document).on('click', layoutButtonSelector, toggleLayoutMode);

	// resize handler
	dividerSelector.on('mousedown', controlPanelSplitHandler);
	controlPanelResizer.on('mousedown', controlPanelResizeHandler);

	// palette handler
	paletteResizer.on('mousedown', paletteResizeHandler);
	paletteCollapse.on('click', togglePaletteHandler);

	//login dialog submit handler
	$(document).on('click', '#sfe-login-dialog-button', loginDialogClickHandler);
	//enable the revert button for changes in inputs of config params
	$(componentDetailCommandsSelector).on("cpo-change", function(){
		$('a[data-sfe-actionbutton*="sfe-start-revert"]').removeClass('disabled-button');
	});

	/**
	 * preview panel toggle date/time input visbility
	 */
	$(document).on('change', '.sfe-preview-pca-datetime-make-fixed', function() {
		$('.sfe-preview-pca-datetime').show();
		$('#fixed_date_time_radio').removeClass("last");
	});
	$(document).on('change', '.sfe-preview-pca-datetime-make-current', function() {
		$('.sfe-preview-pca-datetime').hide();
		$('#fixed_date_time_radio').addClass("last");
	});

	/**
	 * delegated events that cause ajax events or url reloads
	 */
	//hijax handler for inline actions
	$(document).on('submit', componentDetailContentSelector + ' form', detailFormSubmitHandler);
	//anchor hijax for inline links or dialog links
	$(document).on('click', 'a.sfe-action-inline', inlineAnchorClickHandler);
	$(document).on('click', 'a.sfe-action-dialog', dialogAnchorClickHandler);
	$(document).on('click', 'a.sfe-action-disable, button.sfe-action-disable, input.sfe-action-disable', disableClickHandler);
	//section a tag hijax
	$(document).on('click', componentDetailSectionsSelector, reloadDetailPanelHandler);
	//highlights and loads component into details panel
	$(document).on('click', '[data-component-id]', componentClickHandler);
	//hijack compoment links in slots and open it in the tree
	$(document).on('click', '#sfe-container-edit .sfe-action-totree', componentProxyToTreeClickHandler);
	//external form action triggers
	$(document).on('click', '[data-sfe-actionbutton]', clickProxyHandler);
	//form action hidden field for inline and dialog actions
	$(document).on('click', 'button.sfe-action-inline, button.sfe-action-dialog, input.sfe-action-inline, input.sfe-action-dialog', formActionClickHandler);
	//empty the cookies and reload the application
	$(document).on('click', '.sfe-reset-button', applicationResetHandler);
	//toggle preview layer
	$(document).on('click', '#design-preview', togglePreviewLayer);
	//close preview layer
	$(document).on('click', '#sfe-configure-layer-cancel', togglePreviewLayer);
	//submit preview configuration
	$(document).on('submit', '.sfe-configuration-layer-form', submitPreviewForm);
	// change preview configuration
	$(document).on('refresh', '.sfe-configuration-layer-form', refreshPreviewForm);
	//register page variant preview
	$(document).on('click', '.sfe-preview-pagelet', previewPageVariant);
})(jQuery);


// legacy Back Office function

function selectAll(formName, partOfFormElementName, selectLayerID, clearLayerID) {
	var formElements = document.forms[formName].elements;
	var select = true;
	if (document.getElementById(selectLayerID).style.display === "none") {
		select = false;
	}
	for (var i = 0; i < formElements.length; i++) {
		if ((-1 !== formElements[i].name.indexOf(partOfFormElementName)) &&
			(formElements[i].disabled === false) &&
			((formElements[i].type === "checkbox") ||
				(formElements[i].type === "radio"))) {
			formElements[i].checked = select;
		}
	}
	if (select) {
		document.getElementById(selectLayerID).style.display = "none";
		document.getElementById(clearLayerID).style.display = "block";
	} else {
		document.getElementById(selectLayerID).style.display = "block";
		document.getElementById(clearLayerID).style.display = "none";
	}
}
