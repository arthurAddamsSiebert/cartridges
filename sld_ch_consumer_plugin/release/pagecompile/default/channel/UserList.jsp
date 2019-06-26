<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-ShowCustomerApprovalList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.RegistrationAndReminderPreferences.text",null)))}, 4); %><%@ page import = "java.util.Calendar" %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "8");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "9");} %><% URLPipelineAction action9 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-Dispatch",null)))),null));String site9 = null;String serverGroup9 = null;String actionValue9 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-Dispatch",null)))),null);if (site9 == null){  site9 = action9.getDomain();  if (site9 == null)  {      site9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup9 == null){  serverGroup9 = action9.getServerGroup();  if (serverGroup9 == null)  {      serverGroup9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue9, site9, serverGroup9,true)); %><input name="webform-id" type="hidden" value="UserList"/>
<input type="hidden" name="SearchType" value="simple"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AddApproverButtonName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddApproverButtonName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("UserList.SelectRecipientsOfCustomerApprovalRequests.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("UserList.UseTheSearchToFindBackOfficeUsersYouWantToAssignTo.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("UserList.RecipientOfCustomerApprovalSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("UserList.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="SearchTerm" id="SearchTerm" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserList.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr>
<td class="table_header e s center" width="1">
<input type="checkbox" name="js-massSelection" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.SelectAll.input",null)),null)%>" />
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.LastName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("UserList.FistName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.UserID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="70" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Login.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="70" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Email.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Users","User",null)) { %><tr>
<td class="e s center">
<input type="checkbox" name="SelectedUserUUID" value="<%=context.getFormattedValue(getObject("User:UUID"),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserListClipboard:contains(User:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %> checked="checked"<% } %>
/>
<input type="hidden" name="UserUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("User:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("User:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("User:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("User:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("User:BasicCredentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("User:Email"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td class="table_detail w e s" colspan="5"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTerm"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% {out.write(localizeISText("UserList.NoResultsFoundForYourSearchNameOrIDI0CheckTheSpell.table_detail",null,null,encodeString(context.getFormattedValue(getObject("SearchTerm"),null)),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_ch_consumer_plugin.ThereAreCurrentlyNoRecipientsOfCustomerApprovalReq",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
</td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("SearchTerm")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Users"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 119); %><% } %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("UserList.Back.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %> 
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="<%=context.getFormattedValue(context.getFormattedValue(getObject("AddApproverButtonName"),null),null)%>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Add.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserList.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td><% } %></tr>
</table><% out.print("</form>"); %><script type="text/javascript">
$(document).delegate('input[name=js-massSelection]', 'change', function(ev) { 
$('[name=SelectedUserUUID]').prop('checked', $(this).prop('checked') || false).trigger('change');
});
</script><% printFooter(out); %>