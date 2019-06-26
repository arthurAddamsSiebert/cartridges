<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% {Object temp_obj = (getObject("ApplicationBO:Extension(\"ApplicationBOServiceExtension\"):SharingEnabled")); getPipelineDictionary().put("IsServiceSharingEnabled", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("itemLinkActionPipeline"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("ViewService"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %>
<% } %>

<input type="hidden" name="ServiceConfigurationListType" value="local" />

<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w">
	<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
		<td class="table_header center e s " width="80">
			<a href="javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A','B');" class="tableheader" id="A"><% {out.write(localizeISText("ServiceConfigurationLocalItems.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			<a href="javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A','B');" class="tableheader" id="B" style="display: none;"><% {out.write(localizeISText("ServiceConfigurationLocalItems.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
		</td>
		<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationLocalItems.Configuration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	<% } else { %>
		<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationLocalItems.Configuration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	<% } %>
		<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationLocalItems.ServiceType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationLocalItems.ServiceGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header e s" width="5%"><% {out.write(localizeISText("ServiceConfigurationLocalItems.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
			<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationLocalItems.Sharing.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } %>
	</tr>
	
	<% while (loop("LocalServiceConfigurations:ServiceConfigurationsAndGroups","ServiceEntry",null)) { %>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceEntry:Configurations:ServiceConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
			
			<% while (loop("ServiceEntry:Configurations:ServiceConfigurations","ServiceConfiguration",null)) { %>
				<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
					<td class="e s center">
						<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ServiceConfiguration:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>checked="checked"<% } %>
						/>
						<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
					</td>
				<% } %>
					<td class="table_detail e s">
							<a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("Edit-General",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfiguration:ID"),null)))),null)%>">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
								<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							<% } %>
						</a>
					</td>
					
					<td class="table_detail e s">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(localizeText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null)),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
							<span class="error" title="<%=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationLocalItems.LocalizationKeyIsEmpty.title",null)),null) + context.getFormattedValue(":",null),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">

								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } %>
							</span>
						<% } else { %>
							<% {out.write(localizeISText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } %>
					</td>
					<td class="table_detail e s">
						<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceEntry:Group:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</td>
					<td class="table_detail e s">
						<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationStatus", null, "72");} %>
					</td>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
						<td class="table_detail e s">
							<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("UNSHARED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
									<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/service-shared-mandatory.gif" alt="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" 
										title="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" />
								<% } else { %>
									<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/service-shared.gif" alt="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" 
										title="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" />
								<% } %>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>
								<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_service_used.gif" alt="<% {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} %>" />
							<% } %>
						</td>
					<% } %>
				</tr>
			<% } %>
			
		<% } %>
		
	<% } %>

</table><% printFooter(out); %>