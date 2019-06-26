<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Working Area -->

<script type="text/javascript">
	function setCheckboxValue() {
		var form = document.ServiceParametersForm;
		var inputs = document.getElementsByTagName("input"); 
		for (var i = 0; i < inputs.length; i++) {  
			if (inputs[i].type == "checkbox") {  
				if (!inputs[i].checked) {  
					var checkboxAsHidden = document.createElement('input');
					checkboxAsHidden.type = 'hidden';
					checkboxAsHidden.name = inputs[i].name;
					checkboxAsHidden.value = 'false';
					form.appendChild(checkboxAsHidden);
				}
			}
		}
	}
</script>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","false"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceNewWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewServiceNewWizard-UpdateConfigurationValues",null))))),
new TagParameter("wizard","true"),
new TagParameter("id","NewServiceConfiguration3"),
new TagParameter("text",localizeText(context.getFormattedValue("ServicesNewWizardStep3.Step3ConfigurationSettings.text",null)))}, 23); %>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="table_title n e w s">
			<% {out.write(localizeISText("ServicesNewWizardStep3.CreateService0ConfigurationSettings.table_title",null,null,encodeString(context.getFormattedValue(getObject("ServiceDefinitionTitle"),null)),null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("FormFieldsRequired"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("FormFieldsInvalid"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
		<tr>
			<td class="error_box e w s">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%">		
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("FormFieldsRequired"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("ServicesNewWizardStep3.PleaseFillOutAllRequiredFieldsAndClickOnNextAgain.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("FormFieldsInvalid")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("ServicesNewWizardStep3.TheFollowingEntriesAreInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								<div id="InvalidFields"></div>
							<% }} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	
	<tr>
		<td class="table_title_description e w">
			<% {out.write(localizeISText("ServicesNewWizardStep3.Step3Of4NextStepSharingRuleSelection.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>


<% URLPipelineAction action325 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceNewWizard-Dispatch",null)))),null));String site325 = null;String serverGroup325 = null;String actionValue325 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceNewWizard-Dispatch",null)))),null);if (site325 == null){  site325 = action325.getDomain();  if (site325 == null)  {      site325 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup325 == null){  serverGroup325 = action325.getServerGroup();  if (serverGroup325 == null)  {      serverGroup325 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceNewWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("AddNewWizzardFormStep3:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue325, site325, serverGroup325,true)); %>
	<input type="hidden" name="AddNewWizzardFormStep3" value="ServiceParametersForm" />
	<% {Object temp_obj = ("true"); getPipelineDictionary().put("isOrganizationUserPermission", temp_obj);} %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesNewWizardStep3_inc", null, "63");} %>
	
	<table border="0" cellspacing="0" cellpadding="0" width="100%" >
		<tr>
			<td class="n e w s">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input name="step2_update" class="button" type="submit" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesNewWizardStep3.Previous.button",null)),null)%>"/>
									</td>
								</tr>
							</table>
						</td>
						<td align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="hidden" name="DefaultButton" value="step3_validate"/>
										<input name="step3_validate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesNewWizardStep3.Next.button",null)),null)%>&nbsp;&gt;&gt;"/>
										
									</td>
									<td class="button">
										<input name="cancel" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesNewWizardStep3.Cancel.button",null)),null)%>"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<script type="text/javascript">
$(function(){
	$(".select").change(function() {
		$("form[name='<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep3:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>']").attr("action","<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceNewWizard-UpdateConfigurationSettings",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value,"JavaScript");out.write(value);} %>").submit();
	});
})
</script>
<% printFooter(out); %>