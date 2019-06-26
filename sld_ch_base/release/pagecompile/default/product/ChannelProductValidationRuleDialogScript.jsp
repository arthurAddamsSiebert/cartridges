<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$('<%=context.getFormattedValue("#",null)%>applyRuleConfiguration').click(function () {
	var $dialog = $('<%=context.getFormattedValue("#",null)%>ProductValidationDialog'),
		$ok = $(this),
		$form = $('form[name="ProductValidationRuleForm"]'),
		params = $form.serialize(),
		valid = true;
		
	// disable button once clicked
	$ok.prop('disabled', true);
	// hide label error class
	hideLabelErrors();

	$.post('<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleConfiguration-CreateOrUpdateRule",null)))),null)%>', params)
		.done(function (response) {
			// this var is used for collecting error container ids of those error containers that should be shown
			var errorContainerIDs = [],
			validationRuleNotAvailable = false;
			$.each(response, function (key, value) {
			    if (!validationRuleNotAvailable) {
			        if (key === 'ValidationRuleConfigurationNotFound') {
				        validationRuleNotAvailable = true;
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
			
			if (!validationRuleNotAvailable) {
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
					window.location.href = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null)))),null)%>';
				}
				else if (typeof firstErrorContainer != 'undefined')
				{
				    var targetPosition = firstErrorContainer.position();
				 	var scrolPosition = $('.dialog-content').scrollTop() + targetPosition.top;
				 	$('.dialog-content').scrollTop(scrolPosition);    
				}
			} else {
			    $dialog.dialog('close');
			    window.location.href = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("validationRuleNotAvailable",null),context.getFormattedValue("true",null)))),null)%>';
			}
			// now enable ok button to make it available for submitting new data
			$ok.prop('disabled', false);
		});
});

// open dialog
$('<%=context.getFormattedValue("#",null)%>ProductValidationDialog').on('dialogopen', function () {
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
		$('.rule_configuration_input').prop('disabled', true);
	<% } %>
});

// close dialog
$('<%=context.getFormattedValue("#",null)%>ProductValidationDialog').on('dialogclose', function () {
	resetFormInputs();
	hideAllRuleDivs();
	enableRuleDivsElements();
	hideLabelErrors();
	hideErrors();
	// enable rule type select box
	$('<%=context.getFormattedValue("#",null)%>ValidationRuleConfigurationForm_RuleType').prop('disabled', false);
});

// binds change callback function for rule type selection box
$('<%=context.getFormattedValue("#",null)%>ValidationRuleConfigurationForm_RuleType').on('change', function (ev) {
	var value = $(this).val();
	if (value === '') {
		// hide all rule divs
		$('.RuleDescriptorDiv').each(function () {
			$(this).hide();
		});
		return;
	}

	// show the currently active rule div and enable inputs in it
	var ruleDescriptorID = '<%=context.getFormattedValue("#",null)%>RuleDescriptorDiv_' + value;
	var ruleDiv = $(ruleDescriptorID);
	ruleDiv.find('input,select').each(function () {
		$(this).prop('disabled', false);
	});
	ruleDiv.show();

	// disable inactive rule divs inputs		
	disableInactiveRuleDivsInputs(value);
});

// reset all form inputs that meet the conditions
function resetFormInputs() {
	$(':input', '<%=context.getFormattedValue("#",null)%>ProductValidationRuleForm').each(function () {
		var name = $(this).attr('name');
		var type = $(this).attr('type');
		if (!((type === 'hidden' && (name === 'SynchronizerToken' || name === 'AllLocales' || name === 'AllCurrencies')) || type === 'button')) {
			if (!$(this).is('input:checkbox')) {
				$(this).val('');
			}
			$(this).removeAttr('checked').removeAttr('selected');
		}
	});

	$('<%=context.getFormattedValue("#",null)%>assignedLocales').children().empty();
}

// disable inputs of all currently inactive rule divs and hide the divs
function disableInactiveRuleDivsInputs(value) {
	$('.RuleDescriptorDiv').each(function () {
		if (('RuleDescriptorDiv_' + value) !== $(this).attr('id')) {
			$(this).find('input,select').prop('disabled', 'disabled');
			$(this).hide();
		}
	});
}

// hides all rule divs
function hideAllRuleDivs() {
	$('.RuleDescriptorDiv').hide();
}

// enables all elements in the rule divs
function enableRuleDivsElements() {
	$('.RuleDescriptorDiv').find('*').prop('disabled', false);
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