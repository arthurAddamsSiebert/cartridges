<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("itemLinkActionPipeline"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("ViewServiceEdit"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %>
<% } %>

<script type="text/javascript">
	function setCheckboxValue(form) {
		var inputs = document.getElementsByTagName("input"); 
		for (var i = 0; i < inputs.length; i++) {  
			if (inputs[i].type == "checkbox") {  
				if (!inputs[i].checked && (inputs[i].disabled != "disabled")) {  
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

<% URLPipelineAction action324 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site324 = null;String serverGroup324 = null;String actionValue324 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site324 == null){  site324 = action324.getDomain();  if (site324 == null)  {      site324 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup324 == null){  serverGroup324 = action324.getServerGroup();  if (serverGroup324 == null)  {      serverGroup324 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("ServiceConfigurationEditConfigurationForm");out.print("\"");out.print(" onsubmit=\"");out.print("setCheckboxValue(this);");out.print("\"");out.print(" id=\"");out.print("ServiceConfigurationEditConfigurationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue324, site324, serverGroup324,true)); %>
	<input type="hidden" name="ServiceConfigurationEditConfigurationForm" value="ServiceParametersForm" />
	<input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
	
	<input type="hidden" name="DeleteJumpTarget" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Configuration",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServiceConfigurationID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
		<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditConfigurationForm:ServiceConfigurationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
	<% } else { %>
		<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditConfigurationForm:ServiceConfigurationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditGeneralForm:ServiceConfigurationID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
	<% } %>
	<table width="100%" border="0" cellSpacing="0" cellPadding="0" class="s
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("ServiceConfiguration:isShared")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %> js-form-disabled<% } %>"
	>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("AssignedParameterGroups"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
			<tr>
				<td class="n e w"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
			</tr>
			<tr>
				<td class="table_detail w e">
					<% {out.write(localizeISText("ServicesEditConfiguration_inc.NoConfigurationForSelectedServiceTypeRequired.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
			<tr>
				<td class="e w"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
			</tr>
		<% } else { %>
			<% {Object temp_obj = ("true"); getPipelineDictionary().put("parameterGroupsEmpty", temp_obj);} %>
			<tr>
				<td class="e w">
					<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<% while (loop("AssignedParameterGroups","ParameterGroup",null)) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ParameterGroup:Empty"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
								<% {Object temp_obj = ("false"); getPipelineDictionary().put("parameterGroupsEmpty", temp_obj);} %>
							<% } %>
							<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ServiceConfigurationParameterGroup.isml", null, "62");} %>
						<% } %>
					</table>
				</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("parameterGroupsEmpty"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
					<td class="table_detail">
						<% {out.write(localizeISText("ServicesEditConfiguration_inc.NoConfigurationForSelectedServiceTypeRequired.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				<% } %>
			</tr>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedParameterGroups")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("parameterGroupsEmpty"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) getObject("ServiceConfiguration:isShared")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
				<tr>
					<td class="e w n" colspan="3">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="right">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button">
												<input name="ConfigurationValidate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditConfiguration_inc.Apply.button",null)),null)%>" />
											</td>
											<td class="button">
												<input name="configuration" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditConfiguration_inc.Reset.button",null)),null)%>" />
											</td>
											<td class="button">
												<input name="confirmDelete" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditConfiguration_inc.Delete.button",null)),null)%>" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			<% } %>
		<% } %>
	</table>
<% out.print("</form>"); %>

<script type="text/javascript">
/*
* toggle visibility of given tbody_elements and in addition enable/disable all inputs which are 
* childs of the (to prevent theses inputs from beeing sent while submit)
*
* inputs are: 
* - the selectBox which did trigger the event
* - an array of arrays containing [[selectableGroupName, [value, value, value]],[selectableGroupName, [value, value, value]]]
*/
function toggleTBodyVisibility(selectBox, idArray) {
	for (i = 0; i < idArray.length; i++)
	{
		var assignments = idArray[i];
		var groupId = assignments[0];
		var valueArray = assignments[1];
		
		var tBody = $("<%=context.getFormattedValue("#",null)%>tbody_" + groupId);
		
		if (tBody != null)
		{
			var visible = (jQuery.inArray( selectBox.value, valueArray));
			
			if (visible == -1) // -1 is not found
			{
				tBody.css('display','none');
				$("<%=context.getFormattedValue("#",null)%>tbody_" + groupId + " :input").attr('disabled', 'disabled');
			}
			else
			{
				tBody.css('display','table-row-group');
				$("<%=context.getFormattedValue("#",null)%>tbody_" + groupId + " :input").removeAttr('disabled');
			}
		}
	}
}
</script><% printFooter(out); %>