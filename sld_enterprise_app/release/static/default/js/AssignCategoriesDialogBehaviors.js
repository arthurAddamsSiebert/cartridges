/*global $:false, bridge: false */
'use strict';

/**
 * opens the modal dialog by its id, when button with name buttonName is clicked and pipeline with path is executed
 * @param id
 * @param buttonName
 * @param path
 * @param loaderImagePath
 */
function assignCategories(id, buttonName) {
	$(buttonName).click(function(){
		$(id).dialog('open'); 
	});
}

/*
 * Initialize the pageselection iframe-bridge to provide a connection
 * between the iframe content and it's parent document.
 */
bridge.register('assignCategories', function registerBridge(iframe) {
	
	var $dialog = $(iframe).closest('.js-dialog');
	
	return {
		/**
		 * States that within the iframe the apply of a selection has happend.
		 */
		applySelectionValues: function applySelectionValues(categories, url) {
			
			if (categories.length > 0) {
				var form = $('#asyncCategoryAssignmentBlock').closest('form'),
				formType = form.attr('name'),
				params = form.serialize() + '&formType=' + formType + '&tree=' + categories.join();
				
				$.get(url, params)
					.done(function (response) {
						$('#asyncCategoryAssignmentBlock').html(response);
						$dialog.dialog('close');
					})
					.fail(function () {
						alert('link creation failed');
					});
			}
			else {
				$dialog.dialog('close');
			}
		}
	};
});