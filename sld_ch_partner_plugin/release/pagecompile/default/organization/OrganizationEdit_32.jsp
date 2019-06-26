<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Organization:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Organization:DisplayName")); getPipelineDictionary().put("OrgDisplayName", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("Organization:ID")); getPipelineDictionary().put("OrgDisplayName", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEdit_32.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("Organization:UUID")),
new TagParameter("text",getObject("OrgDisplayName"))}, 9); %><!-- Tabs --><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"organization/OrganizationTabs_32", null, "18");} %><!-- Titel and Description --><% URLPipelineAction action137 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Dispatch",null)))),null));String site137 = null;String serverGroup137 = null;String actionValue137 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Dispatch",null)))),null);if (site137 == null){  site137 = action137.getDomain();  if (site137 == null)  {      site137 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup137 == null){  serverGroup137 = action137.getServerGroup();  if (serverGroup137 == null)  {      serverGroup137 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("updateORGConfirm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue137, site137, serverGroup137,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("OrgDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<!-- simple delete confirmation --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametervalue4","UpdateOrganization"),
new TagParameter("parametervalue3",getObject("Organization:UUID")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2","30"),
new TagParameter("subject","organization"),
new TagParameter("cancelbtnname","cancelConfirm"),
new TagParameter("parametervalue1",getObject("CurrentChannel:UUID")),
new TagParameter("parametername2","OrganizationType"),
new TagParameter("parametername3","OrganizationUUID"),
new TagParameter("parametername4","webform_id"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 30); %><% } %><!-- EO simple delete confirmation -->
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateOrganization:OrganizationName:isMissing")).booleanValue() || ((Boolean) getObject("UpdateOrganization:OrganizationName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("OrganizationEdit_32.OrganizationUpdateFailedPleaseProvideAValidNameFor.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AdminAccountDisabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AdminAccountDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_USERS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation_info.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationEdit_32.TheAdminAccountIsCurrentlyDisabled.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AdminAccountEnabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AdminAccountEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_USERS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="notification w e s">
<tr>
<td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt=""></td>
<td width="100%"><% {out.write(localizeISText("OrganizationEdit_32.TheAdminAccountWasEnabled",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationEdit_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Titel and Description --><% URLPipelineAction action138 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Edit",null)))),null));String site138 = null;String serverGroup138 = null;String actionValue138 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Edit",null)))),null);if (site138 == null){  site138 = action138.getDomain();  if (site138 == null)  {      site138 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup138 == null){  serverGroup138 = action138.getServerGroup();  if (serverGroup138 == null)  {      serverGroup138 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Edit",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue138, site138, serverGroup138,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("OrganizationEdit_32.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><input type="hidden" name="OrganizationUUID" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Organization:UUID"),null)),null)%>"/>
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEdit_32.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action139 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Dispatch",null)))),null));String site139 = null;String serverGroup139 = null;String actionValue139 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Dispatch",null)))),null);if (site139 == null){  site139 = action139.getDomain();  if (site139 == null)  {      site139 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup139 == null){  serverGroup139 = action139.getServerGroup();  if (serverGroup139 == null)  {      serverGroup139 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("updateORG");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue139, site139, serverGroup139,true)); %><input name="webform_id" type="hidden" value="UpdateOrganization"/>
<input name="ChannelID" type="hidden" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input name="OrganizationType" type="hidden" value="30"/>
<input name="OrganizationUUID" type="hidden" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/> 
<table border="0" cellspacing="0" cellpadding="0" width="100%"> 
<tr>
<td class="w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateOrganization:OrganizationName:isMissing")).booleanValue() || ((Boolean) getObject("UpdateOrganization:OrganizationName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="UpdateOrganization_OrganizationName"><% {out.write(localizeISText("OrganizationEdit_32.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="UpdateOrganization_OrganizationName"><% {out.write(localizeISText("OrganizationEdit_32.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td>
<table border="0" cellSpacing="0" cellPadding="0">
<tr>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateOrganization:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><input type="text" name="UpdateOrganization_OrganizationName" id="UpdateOrganization_OrganizationName" class="inputfield_en" size="57" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateOrganization:OrganizationName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% } else { %><input type="text" name="UpdateOrganization_OrganizationName" id="UpdateOrganization_OrganizationName" class="inputfield_en" size="57" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% } %></td>
<td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UpdateOrganization:OrganizationState:Value")))).booleanValue() && ((Boolean) (getObject("UpdateOrganization:isSubmitted"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateOrganization:OrganizationState:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %><input type="checkbox" name="UpdateOrganization_OrganizationState" id="UpdateOrganization_OrganizationState" checked="checked" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% } else { %><input type="checkbox" name="UpdateOrganization_OrganizationState" id="UpdateOrganization_OrganizationState" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Organization:State"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %><input type="checkbox" name="UpdateOrganization_OrganizationState" id="UpdateOrganization_OrganizationState" checked="checked" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% } else { %><input type="checkbox" name="UpdateOrganization_OrganizationState" id="UpdateOrganization_OrganizationState" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% } %><% } %></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="UpdateOrganization_OrganizationState"><% {out.write(localizeISText("OrganizationEdit_32.Online.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td> 
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateOrganization:OrganizationID:isMissing")).booleanValue() || ((Boolean) getObject("UpdateOrganization:OrganizationID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label" for="ChannelForm_RepositoryID"><% {out.write(localizeISText("OrganizationEdit_32.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="ChannelForm_RepositoryID"><% {out.write(localizeISText("OrganizationEdit_32.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td width="100%" class="table_detail">
<input type="hidden" name="UpdateOrganization_OrganizationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="text" name="UpdateOrganization_OrganizationID" id="UpdateOrganization_OrganizationID" class="inputfield_en" size="70" maxlength="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/>&nbsp;&nbsp;
</td>
</tr> 
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="UpdateOrganization_OrganizationDescription"><% {out.write(localizeISText("OrganizationEdit_32.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</label></td>
<td class="table_detail"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateOrganization:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %><textarea name="UpdateOrganization_OrganizationDescription" id="UpdateOrganization_OrganizationDescription" rows="5" cols="70" class="inputfield_en" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateOrganization:OrganizationDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea name="UpdateOrganization_OrganizationDescription" id="UpdateOrganization_OrganizationDescription" rows="5" cols="70" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% {String value = null;try{value=context.getFormattedValue(getObject("Organization:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %> 
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="UpdateOrganization_OrganizationPreferredCurrency"><% {out.write(localizeISText("OrganizationEdit_32.PurchaseCurrency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<select class="select inputfield_en" name="UpdateOrganization_OrganizationPreferredCurrency" id="UpdateOrganization_OrganizationPreferredCurrency" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {231}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateOrganization:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateOrganization_OrganizationPreferredCurrency"),null).equals(context.getFormattedValue(getObject("Currencies:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",233,e);}if (_boolean_result) { %>selected="selected"<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Organization:Profile:DataSheet:PreferredCurrency"),null).equals(context.getFormattedValue(getObject("Currencies:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",235,e);}if (_boolean_result) { %>selected="selected"<% } %><% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {237}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="UpdateOrganization_OrganizationPreferredLocale">Language:</label></td>
<td class="table_detail">
<select class="select inputfield_en" name="UpdateOrganization_OrganizationPreferredLocale" id="UpdateOrganization_OrganizationPreferredLocale"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% while (loop("Locales",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {252}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateOrganization:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",253,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateOrganization_OrganizationPreferredLocale"),null).equals(context.getFormattedValue(getObject("Locales:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",254,e);}if (_boolean_result) { %>selected="selected"<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Organization:Profile:DataSheet:PreferredLocale"),null).equals(context.getFormattedValue(getObject("Locales:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",256,e);}if (_boolean_result) { %>selected="selected"<% } %><% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {258}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("AdminAccountDisabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AdminAccountDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_USERS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AdminAccountDisabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AdminAccountDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_USERS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",274,e);}if (_boolean_result) { %><td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input class="button" type="submit" name="enableAdminAccount" value="Enable admin account"/>
</td>
</tr>
</table>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %><td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {290}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input class="button" type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEdit_32.Apply.button",null)),null)%>"/>
</td>
<td class="button">
<input class="button" type="reset" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEdit_32.Reset.button",null)),null)%>"/>
</td>
<td class="button">
<input class="button" type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEdit_32.Delete.button",null)),null)%>"/>
</td>
</tr>
</table>
</td><% } %></tr>
</table><% } %><% out.print("</form>"); %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","OrganizationUUID"),
new TagParameter("pipeline","ViewOrganizationList_32-Paging"),
new TagParameter("currentobject",getObject("UpdateOrganization")),
new TagParameter("parametervalue3","30"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2",getObject("PageSize")),
new TagParameter("parametervalue1",getObject("CurrentChannel:UUID")),
new TagParameter("parametername2","PageSize"),
new TagParameter("parametername3","OrganizationType"),
new TagParameter("pagelocatorname","OrganizationListViewLocator"),
new TagParameter("pagenumber",getObject("PageNumber"))}, 308); %> 
<!-- EO Secondary Buttons -->
<!-- EO Working Area --><% printFooter(out); %>