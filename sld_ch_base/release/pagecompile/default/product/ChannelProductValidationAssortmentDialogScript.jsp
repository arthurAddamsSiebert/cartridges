<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$('form[name="ProductValidationAssortmentForm"]').on('submit', function(ev){ 
    ev.preventDefault(); 
    $('<%=context.getFormattedValue("#",null)%>applyAssortmentConfiguration').trigger( "click" ); 
    return false;
});

$('<%=context.getFormattedValue("#",null)%>applyAssortmentConfiguration').click(function () {
	var $dialog = $('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentDialog'),
		$ok = $(this),
		$form = $('form[name="ProductValidationAssortmentForm"]'),
		params = $form.serialize(),
		valid = true;
		if($('<%=context.getFormattedValue("#",null)%>AssortmentDiv_com_intershop_component_product_validation_internal_assortment_ProductCategoryAssignmentAssortmentDescriptor').is(":visible"))
	    {
	    	params += getProductCategoryTreeAssortmentData();
	    }
	// disable button once clicked
	$ok.prop('disabled', true);
	// hide label error class
	hideLabelErrors();
		
	$.post('<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentConfiguration-CreateOrUpdateAssortment",null)))),null)%>', params)
		.done(function (response) {
			// this var is used for collecting error container ids of those error containers that should be shown
			var errorContainerIDs = [],
			validationAssortmentNotAvailable = false;
			$.each(response, function (key, value) {
			    if (!validationAssortmentNotAvailable) {
			        if (key == 'ValidationAssortmentConfigurationNotFound') {
			            validationAssortmentNotAvailable = true;
			            return;
			        }
			        var formName = key;
					$(this).each(function (key, value) {
						if (value !== '') {
							valid = false;
							$('label[for="' + formName + '_' + value + '"]').addClass('label_error');
							errorContainerIDs.push(formName + '_' + value + '_ErrorContainer');
						}
					});
			    }
			});
			if (!validationAssortmentNotAvailable) {
			    var firstErrorContainer;
			 	// iterate each error container and check if it should be hidden or shown
				$('.ErrorContainer').each(function () {
					var id = $(this).attr('id');
					if (errorContainerIDs.indexOf(id) == -1) {
						$(this).hide();
					}
					else {
					    if(typeof firstErrorContainer === 'undefined') {
					        firstErrorContainer = $(this);
					    }
						$(this).show();
					}
				});
					
				// if validation is successful, close the dialog
				if (valid) {
					$dialog.dialog('close');
					window.location.href = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Refresh",null)))),null)%>';
				}
				else if (typeof firstErrorContainer != 'undefined')
				{
				    var targetPosition = firstErrorContainer.position();
				 	var scrolPosition = $('.dialog-content').scrollTop() + targetPosition.top;
				 	$('.dialog-content').scrollTop(scrolPosition);    
				}
			} else {
			    $dialog.dialog('close');
			    window.location.href = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("validationAssortmentNotAvailable",null),context.getFormattedValue("true",null)))),null)%>';
			}
			// now enable ok button to make it available for submitting new data
			$ok.prop('disabled', false);
		}
	);
});

// open dialog
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentDialog').on('dialogopen', function() {
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
		$('.assortment_configuration_input').prop('disabled', 'disabled');
	<% } %>
});

// close dialog
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentDialog').on('dialogclose', function() {
	resetFormInputs();
	hideLabelErrors();
	hideErrors();
	hideAllAssortmentDivs();
	// enable assortment type select box
	$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentConfigurationForm_AssortmentType').prop('disabled', false);
});

// reset all form inputs that meet the conditions
function resetFormInputs() {
	$(':input', '<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentForm').each(function (){
		var name = $(this).attr('name');
		var type = $(this).attr('type');
		if (!(type === 'hidden' && name === 'SynchronizerToken')) {
			if (!$(this).is(':checkbox') && !(type === 'button')) {
				$(this).val('');
			}
			$(this).removeAttr('checked').removeAttr('selected');
		}
	});
}

//binds change callback function for assortment type selection box
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentConfigurationForm_AssortmentType').on('change', function (ev) {
	var value = $(this).val();
	if (value === '') {
		// hide all assortment divs
		$('.AssortmentDiv').each(function () {
			$(this).hide();
		});
		return;
	}

	// show the currently active assortment div and enable inputs in it
	var assortmentDescriptorID = '<%=context.getFormattedValue("#",null)%>AssortmentDiv_' + value;
	var assortmentDiv = $(assortmentDescriptorID);
	assortmentDiv.find('input,select').each(function () {
		$(this).prop('disabled', false);
	});
	
	$.ajax({
		cache:false,
		dataType: 'html',
		success: function(data, textStatus, jqXHR) {
			if (data) {					
				// TODO trigger onJSONReady event
				if(data.length > 3)
			    {
				    $(assortmentDiv).html(data);
			    }
				
				assortmentDiv.show();
				
				// TODO trigger onJSONReady event
			} else {
			    window.location.href = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("validationAssortmentNotAvailable",null),context.getFormattedValue("true",null)))),null)%>';
			}
		},
		url: '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentConfiguration-GetValidationAssortmentConfiguration",null)))),null)%>',
		data: $(this).attr('name') + "=" + value
	});

	// disable inactive assortment divs inputs		
	disableInactiveAssortmentDivsInputs(value);
});

//disable inputs of all currently inactive assortment divs and hide the divs
function disableInactiveAssortmentDivsInputs(value) {
	$('.AssortmentDiv').each(function () {
		if (('AssortmentDiv_' + value) !== $(this).attr('id')) {
			$(this).find('input,select').prop('disabled', 'disabled');
			$(this).hide();
		}
	});
}

// hides all assortment divs
function hideAllAssortmentDivs() {
	$('.AssortmentDiv').hide();
}

// enables all elements in the assortment divs
function enableAssortmentDivsElements() {
	$('.AssortmentDiv').find('*').prop('disabled', false);
}

// gets the data for selected categories from the tree
function getProductCategoryTreeAssortmentData()
{
    var formData = '';
    var tree = $('<%=context.getFormattedValue("#",null)%>tree').dynatree('getTree'),
   	treeData = tree.serializeArray(),
   	checkedCategories = []; 
   	
   	for (var i = 0, l = treeData.length; i < l; i++) {
   		var nodeData = tree.getNodeByKey(treeData[i].value).data;
   		// Don't submit a selected node if it is 'root' node (should one exist at all) or if it is disabled.
   		if (treeData[i].value !== "root" && !nodeData.unselectable) {
   			if(treeData[i].value.length > 0) {
   				checkedCategories.push(treeData[i].value);
   			}
   		}	 
   	}
   	formData = '&tree='+ checkedCategories.join();
    return formData;
}

// remove label_error class
function hideLabelErrors() {
	$('label.label_error').removeClass('label_error');
}

// hide errors
function hideErrors() {
	$('.ErrorContainer').hide();
}

// replaces all occurances of find with replace in the given str
function replaceAll(find, replace, str) {
	return str.replace(new RegExp(find, 'g'), replace);
}
</script>
<% printFooter(out); %>