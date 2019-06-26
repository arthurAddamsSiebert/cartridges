/*global $:false, bridge: false */
'use strict';

/**
 * open a modal dialog when the button is clicked
 * 
 * @param id dialog's id
 * @param buttonName
 */
function addEditingReason(id, buttonName) {
    $(buttonName).click(function(){
        $(id).dialog('open'); 
    });
}

/*
 * Initialize the pageselection iframe-bridge to provide a connection
 * between the iframe content and it's parent document.
 */
bridge.register('addEditingReason', function registerBridge(iframe) {
    
    var $dialog = $(iframe).closest('.js-dialog');
    
    return {
        /**
         * States that within the iframe the apply of a selection has happend.
         */
        applySelectionValues: function applySelectionValues(reasonText, url) {
            
            var form = $('form[name="setStatus"]');
            if(form.attr('name') === undefined)
            {
                form = $('#lockInfoSection').closest('form');
            }
            var formType = form.attr('name');
            var params = form.serialize() + '&formType=' + formType + '&ReasonText=' + reasonText;

            $.post(url, params)
                .done(function (response) {
                    $('#lockInfoSection').html(response);
                    $dialog.dialog('close');
                })
                .fail(function () {
                    alert('link creation failed');
                });
        }
    };
});