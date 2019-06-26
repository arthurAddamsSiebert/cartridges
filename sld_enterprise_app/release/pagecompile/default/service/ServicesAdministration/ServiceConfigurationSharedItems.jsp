<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% {Object temp_obj = (getObject("ApplicationBO:Extension(\"ApplicationBOServiceExtension\"):SharingEnabled")); getPipelineDictionary().put("IsServiceSharingEnabled", temp_obj);} %>
<input type="hidden" name="ApplicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Application:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
<input type="hidden" name="ServiceConfigurationListType" value="shared" />

<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w">

	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("formName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("ServiceConfigurationListForm",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
				<td class="table_header center e s" width="80">
					<a href="javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A1','B1');" class="tableheader" id="A1"><% {out.write(localizeISText("ServiceConfigurationSharedItems.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
					<a href="javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A1','B1');" class="tableheader" id="B1" style="display: none;"><% {out.write(localizeISText("ServiceConfigurationSharedItems.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
				</td>
			<% } else { %>
				<td class="table_header center e s" width="80">
					<a href="javascript:selectAll('ServiceConfigurationSharedListForm','SelectedObjectUUID','A1','B1');" class="tableheader" id="A1"><% {out.write(localizeISText("ServiceConfigurationSharedItems.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
					<a href="javascript:selectAll('ServiceConfigurationSharedListForm','SelectedObjectUUID','A1','B1');" class="tableheader" id="B1" style="display: none;"><% {out.write(localizeISText("ServiceConfigurationSharedItems.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
				</td>
			<% } %>
		<% } %>
		<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationSharedItems.Configuration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationSharedItems.ServiceType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationSharedItems.ServiceGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header e s" width="5%"><% {out.write(localizeISText("ServiceConfigurationSharedItems.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
			<td class="table_header e s"><% {out.write(localizeISText("ServiceConfigurationSharedItems.Sharing.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
				<td class="table_header e s"><div class="center"><% {out.write(localizeISText("ServiceConfigurationSharedItems.Action.center",null,null,null,null,null,null,null,null,null,null,null,null));} %></div></td>
			<% } %>
		<% } %>
	</tr>

	<% while (loop("SharedServiceConfigurations:ServiceConfigurationsAndGroups","ServiceEntry",null)) { %>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceEntry:Configurations:ServiceConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
	
			<% while (loop("ServiceEntry:Configurations:ServiceConfigurations","ServiceConfiguration",null)) { %>
				<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>	
					<td class="e s center">
						<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ServiceConfiguration:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %> checked="checked"<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ServiceConfiguration:ParentSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %> disabled="disabled" readonly="readonly"<% } %>
						/>
						<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					</td>
					
				<% } %>
					<td class="table_detail e s">
						<a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("Edit-General",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfiguration:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("Application:UUID"),null))),null)%>">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
								<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></a>
					</td>
					<td class="table_detail e s">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(localizeText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null)),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
							<span class="error" title="<%=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationSharedItems.LocalizationKeyIsEmpty.title",null)),null) + context.getFormattedValue(":",null),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">

								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } %>
							</span>
						<% } else { %>
							<% {out.write(localizeISText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } %>
					</td>
					<td class="table_detail e s">
						<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceEntry:Group:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</td>
					<td class="table_detail e s">
						<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationStatus", null, "77");} %>
					</td>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
						<td class="table_detail e s">
							<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("UNSHARED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
									<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/service-shared-mandatory.gif" alt="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" 
										title="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" />
								<% } else { %>
									<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/service-shared.gif" alt="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" 
										title="<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" />
								<% } %>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>
								<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_service_used.gif" alt="<% {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
									title="<% {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} %>" />
							<% } %>
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
							<td class="table_detail_status e s center">
								
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("itemLinkActionPipeline"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
									<% {Object temp_obj = ("ViewServiceEdit"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %>
								<% } %>
								
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("showBtnSharedView")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>
									<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("Edit-SharedRule",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfiguration:ID"),null)))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/edit_category.png" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationSharedItems.Edit.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationSharedItems.Edit.title",null)),null)%>" border="0" /></a>
								<% } %>
								
							</td>
						<% } %>
					<% } %>
				</tr>
			<% } %>
		<% } %>
	<% } %>
</table><% printFooter(out); %>