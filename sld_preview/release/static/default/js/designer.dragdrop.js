var designer = designer || {};
/*
 * Design View drag and drop functionality
 */
designer.dragdrop = {

    /*
     * set some drag and drop configurations
     */
    iframeSelector: '#siteContent',
    dropTargetClass: 'layoutFrame',
    highlightedElmentsFilter: ['Slot', 'Placeholder'],

    /*
     * prepare storefront with drop targets
     */
    prepareStorefrontWithDropTargets: function() {
        var $iframeContent = $(this).contents();

        //Add storefront editing specific CSS to the iframe document head.
        $iframeContent.find('head').append($('<link type="text/css" rel="stylesheet" href="'+ KOR.SFE.storefrontCSS +'">'));

        designer.dragdrop.initDropzones($iframeContent);
        designer.dragdrop.insertDropTargets($iframeContent);
        designer.dragdrop.addDropTargetHTML($iframeContent);
        designer.dragdrop.setDropTargetVisibility('init');
    },

    /*
     * handle the component assignment creation
     */
    createComponent: function(targetContextObjectUUID, targetContextObjectType, pageletName, definitionQualifiedName, pageletTemplateUUID, configData, alternateCreationURL) {
        $('#waitingOverlay').show();
        var $createComponentForm = $('#createComponentForm');
        var synchronizerToken = $createComponentForm.find('input[name="SynchronizerToken"]').val();
        var creationURL = alternateCreationURL ? alternateCreationURL : $createComponentForm.attr('action');
        var creationData = {
            SynchronizerToken               : synchronizerToken,
            ContextObjectUUID               : targetContextObjectUUID,
            ContextObjectType               : targetContextObjectType,
            PageletName                     : pageletName
        };
        if (definitionQualifiedName) {
            $.extend(creationData, {PageletDefinitionQualifiedName: definitionQualifiedName});
        }
        if (pageletTemplateUUID) {
            $.extend(creationData, {PageletTemplateUUID: pageletTemplateUUID});
        }
        if (configData) {
            $.extend(creationData, JSON.parse(configData.replace(/'/g,'\"')));
        }
        $.ajax({
            method: 'POST',
            url: creationURL,
            data: creationData,
            dataType: 'json',
            success: function(data, status) {
                $('#waitingOverlay').hide();
                $.cookie('sfe-application-state-new-assignment-id', data.assignmentId, {path: KOR.SFE.cookiePath});
                $(designer.dragdrop.iframeSelector).contents()[0].location.reload();
            },
            error: function(jqXHR, status, error) {
                $('#waitingOverlay').hide();
                if (jqXHR.responseJSON) {
                    KOR.showCreationErrorDialog(jqXHR.responseJSON.errorMessage, jqXHR.responseJSON.error);
                } else {
                    KOR.showCreationErrorDialog();
                }
            }
        });
    },

    /*
     * set the draggable data to the dataTransfer object with fallback
     */
    setTransferData: function(dataTransfer, draggable) {
        // if setting arbitrary data to the dataTransfer object does work
        try {
            dataTransfer.setData('component-name', draggable.data('component-name'));
            if (draggable.data('component-type')) {
                dataTransfer.setData('component-type', draggable.data('component-type'));
            }
            if (draggable.data('component-template')) {
                dataTransfer.setData('component-template', draggable.data('component-template'));
            }
            if (draggable.data('component-config')) {
                dataTransfer.setData('component-config', draggable.data('component-config'));
            }
            if (draggable.data('component-creationurl')) {
                dataTransfer.setData('component-creationurl', draggable.data('component-creationurl'));
            }
        }
        // else (Microsoft Edge/IE) use a the designer.dragdrop.transferData to store this information
        catch (e) {
            designer.dragdrop.transferData = {};
            designer.dragdrop.transferData['component-name'] = draggable.data('component-name');
            if (draggable.data('component-type')) {
                designer.dragdrop.transferData['component-type'] = draggable.data('component-type');
            }
            if (draggable.data('component-template')) {
                designer.dragdrop.transferData['component-template']= draggable.data('component-template');
            }
            if (draggable.data('component-config')) {
                designer.dragdrop.transferData['component-config'] = draggable.data('component-config');
            }
            if (draggable.data('component-creationurl')) {
                designer.dragdrop.transferData['component-creationurl']= draggable.data('component-creationurl');
            }
        }
    },

    /*
     * get the draggable data from the dataTransfer object with fallback
     */
    getTransferData: function(dataTransfer) {
        var transferData = {};
        try {
            if (dataTransfer.getData('component-name')) {
                transferData['component-name'] = dataTransfer.getData('component-name');
                transferData['component-type'] = dataTransfer.getData('component-type');
                transferData['component-template'] = dataTransfer.getData('component-template');
                transferData['component-config'] = dataTransfer.getData('component-config');
                transferData['component-creationurl'] = dataTransfer.getData('component-creationurl');
            } else {
                transferData = designer.dragdrop.transferData;
            }
        }
        catch (e) {
            transferData = designer.dragdrop.transferData;
        }
        return transferData;
    },

    /*
     * basic Drag and Drop functionality
     */
    initDraggables: function(document) {

        document.on('dragstart', '[draggable=true]', function(event) {
            var dataTransfer = event.originalEvent.dataTransfer;
            designer.dragdrop.setTransferData(dataTransfer, $(this));
            dataTransfer.effectAllowed = 'link';
            // show the drop targets
            designer.dragdrop.setDropTargetVisibility('on');
            // remove inspect highlight
            $('.sfe-highlight-overlay', $(designer.dragdrop.iframeSelector).contents()).remove();
        });

        document.on('dragend', '[draggable=true]', function(event) {
            designer.dragdrop.setDropTargetVisibility('init');
        });
    },

    initDropzones: function(document) {

        document.on('dragenter', '[data-dropzone]', function(event) {
            event.preventDefault();
            $(this).addClass('valid-dropzone');
        });

        document.on('dragover', '[data-dropzone]', function(event) {
            event.preventDefault();
            $(this).addClass('valid-dropzone');
        });

        document.on('dragleave', '[data-dropzone]', function(event) {
            event.preventDefault();
            $(this).removeClass('valid-dropzone');
        });

        document.on('drop', '[data-dropzone]', function(event) {
            event.preventDefault();
            $(this).removeClass('valid-dropzone');
            var droppable = $(this);
            var dataTransfer = designer.dragdrop.getTransferData(event.originalEvent.dataTransfer);
            designer.dragdrop.createComponent(droppable.data('context-object-id'), droppable.data('context-object-type'), dataTransfer['component-name'], dataTransfer['component-type'], dataTransfer['component-template'], dataTransfer['component-config'], dataTransfer['component-creationurl']);
        });
    },

    /*
     * go through the sfe comments and create the relevant drop target DOM elements
     */
    insertDropTargets: function($iframeContent) {
        var sfeComments = this.getSFEComments($iframeContent.find('body')[0]);
        sfeComments = this.filterSFEComments(sfeComments, this.highlightedElmentsFilter);
        for (var i = sfeComments.length - 1; i >= 0; i--) {
            var sfeJSON = this.getSFECommentJSON(sfeComments[i]);
            var payloadJSON = this.getSFEPayloadJSON(sfeJSON.suffixPayload);
            // if the comment is an opening comment (it has a JSON payload) proceed
            if (payloadJSON) {
                var nextJSON = this.getSFECommentJSON(sfeComments[i+1]);
                // if the opening comment is followed by a fitting closing comment (same id) proceed
                // this way we only handle the inner most slots/placeholders
                if (sfeJSON.id === nextJSON.id) {
                    var dropTargetElement = this.createDropTargetElement(payloadJSON.renderObject.id, payloadJSON.renderObject.type, payloadJSON.displayName);
                    this.placeDropTargetElement(sfeComments[i], dropTargetElement);
                }
            }
        }
    },

    /*
     * create the drop target element
     */
    createDropTargetElement: function(contextObjectUUID, contextObjectType, contextObjectName) {
        return $('<div class="' + this.dropTargetClass + '" data-context-object-id="' + contextObjectUUID + '" data-context-object-type="' + contextObjectType + '" data-context-object-name="' + contextObjectName + '"></div>')[0];
    },

    /*
     * place the drop target element at a suitable place in the iframes DOM
     */
    placeDropTargetElement: function(openingCommentNode, dropTargetElement) {
        if (openingCommentNode.parentNode.nodeName.match('DIV|HEADER|FOOTER')) {
            openingCommentNode.parentNode.insertBefore(dropTargetElement, openingCommentNode);
            var aSibling = openingCommentNode.nextSibling;
            dropTargetElement.appendChild(openingCommentNode);
            while (aSibling !== null) {
                var nextSibling = aSibling.nextSibling;
                dropTargetElement.appendChild(aSibling);
                if (aSibling.sfeId == openingCommentNode.sfeId) {
                    aSibling = null;
                } else {
                    aSibling = nextSibling;
                }
            }
        } else {
            $(openingCommentNode).closest('div').wrapInner(dropTargetElement);
        }
    },

    /*
     * enrich the drop targets with some visualization HTML
     */
    addDropTargetHTML: function($iframeContent) {
        $iframeContent.find('.' + this.dropTargetClass).each(function() {
            var contextObjectName = $(this).data('context-object-name').split('@');
            var contextObjectLabel = contextObjectName[0];
            var contextObjectSource = contextObjectName[1];
            var htmlString = '';
            htmlString += '<div class="contentMarkerBackground"></div>';
            htmlString += '<div class="contentMarkerMenu">';
            htmlString += '<span class="contentLabel" ' + ((contextObjectSource) ? 'data-placement="top" data-toggle="tooltip" title="' + contextObjectSource + '"' : '') + '>' + contextObjectLabel + '</span>';
            htmlString += '</div>';
            $(this).append(htmlString);
        });
    },

    /*
     * handle the drop target visibility
     */
    setDropTargetVisibility: function(mode) {
        var $iframeContent = $(this.iframeSelector).contents();
        switch (mode.toLowerCase()) {
            case 'on':
                $iframeContent.find('.' + this.dropTargetClass).addClass('visible').attr('data-dropzone', 'true');
                break;
            case 'off':
                $iframeContent.find('.' + this.dropTargetClass).removeClass('visible').removeAttr('data-dropzone');
                break;
            case 'init':
                if ($.cookie('sfe-layout-mode') === 'on') {
                    $(document).trigger('layoutMode:on');
                } else {
                    $(document).trigger('layoutMode:off');
                }
                break;
            case 'bind':
                $(document).on('layoutMode:on', function() {
                    designer.dragdrop.setDropTargetVisibility('on');
                });
                $(document).on('layoutMode:off', function() {
                    designer.dragdrop.setDropTargetVisibility('off');
                });
                break;
            default:
                console.log('no setDropTargetVisibility mode defined');
        }
    },

    /*
     * recursive function to get all 'sfe' comments for the given node
     */
    getSFEComments: function(node) {
        var sfeComments = [];
        for (var i = 0; i < node.childNodes.length; i++) {
            var childNode = node.childNodes[i];
            if (childNode.nodeType === 8 && childNode.nodeValue.startsWith('sfe')) {
                sfeComments.push(childNode);
            } else {
                sfeComments.push.apply(sfeComments, this.getSFEComments(childNode));
            }
        }
        return sfeComments;
    },

    /*
     * filter out all sfe comments not matching the renderObject.type given as filter
     */
    filterSFEComments: function(sfeComments, filter) {
        var filteredComments = [];
        var ignoreIDs = new Map();
        for (var i = 0; i < sfeComments.length; i++) {
            var sfeJSON = this.getSFECommentJSON(sfeComments[i]);
            var payloadJSON = this.getSFEPayloadJSON(sfeJSON.suffixPayload);
            if (payloadJSON) {
                // handle an opening comment
                if (filter.indexOf(payloadJSON.renderObject.type) < 0) {
                    ignoreIDs.set(sfeJSON.id, true);
                    continue;
                }
                filteredComments.push(sfeComments[i]);
            } else {
                // handle a closing comment
                if (ignoreIDs.has(sfeJSON.id)) {
                    continue;
                }
                filteredComments.push(sfeComments[i]);
            }
        }
        return filteredComments;
    },

    /*
     * parse a given sfe comment into JSON
     */
    getSFECommentJSON: function(sfeComment) {
        if (sfeComment.nodeValue.startsWith('sfe')) {
            return JSON.parse(sfeComment.nodeValue.replace('sfe:',''));
        }
        return null;
    },

    /*
     * parse a given sfe comment payload into JSON
     */
    getSFEPayloadJSON: function(sfePayload) {
        if (sfePayload.startsWith('{') && sfePayload.endsWith('[')) {
            return JSON.parse(sfePayload.concat(']}').replace(/'/g,'\"'));
        }
        return null;
    }
};

/*
 * initialize the drag and drop functionality for Design View on page load
 */
$(function() {
    // init the dragging functionality for draggable elements
    designer.dragdrop.initDraggables($(document));
    // bind the drop target visibility handling to the 'layoutMode:on/layoutMode:off' events
    designer.dragdrop.setDropTargetVisibility('bind');
    // bind the drag and drop functionality to the custom 'designer:pageContentLoad' event
    $(designer.dragdrop.iframeSelector).on('designer:pageContentLoad', designer.dragdrop.prepareStorefrontWithDropTargets);
});
