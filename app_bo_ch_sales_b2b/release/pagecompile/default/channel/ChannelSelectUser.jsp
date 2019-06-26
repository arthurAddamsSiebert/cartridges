<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "3");} %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagersSelection-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue("CustomerBO:ID",null))))),
new TagParameter("wizard","true"),
new TagParameter("id","CustomerAccountManagerList"),
new TagParameter("text",localizeText(context.getFormattedValue("channel.ChannelSelectUser.select.account.manager.text",null)))}, 6); %><!-- Main Content --><% URLPipelineAction action20 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagersSelection-Dispatch",null)))),null));String site20 = null;String serverGroup20 = null;String actionValue20 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagersSelection-Dispatch",null)))),null);if (site20 == null){  site20 = action20.getDomain();  if (site20 == null)  {      site20 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup20 == null){  serverGroup20 = action20.getServerGroup();  if (serverGroup20 == null)  {      serverGroup20 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagersSelection-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue20, site20, serverGroup20,true)); %><input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("CustomerBO:ID"),null)),null)%>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td class="table_title s"><% {out.write(localizeISText("customer.user.list.select.accountmanager.selecttext","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoSelectionError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="18" height="16" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("customer.user.list.select.missing_selection","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RepositoryAccountManagerBOs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr><td nowrap="nowrap">RepositoryAccountManagerBOs is defined</td></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("RepositoryAccountManagerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><tr><td nowrap="nowrap">RepositoryAccountManagerBOs has <% {String value = null;try{value=context.getFormattedValue(getObject("RepositoryAccountManagerBOs:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> elements</td></tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AccountManagerBOsPagable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentChannelPermissionMap"),
new TagParameter("key2","Clipboard"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap")),
new TagParameter("key3","CustomerAccountManagerBOs"),
new TagParameter("value3",getObject("CustomerAccountManagerBOs")),
new TagParameter("mapname","AccountManagersParams")}, 41); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","channel/ChannelSelectUserColumns.isml"),
new TagParameter("configuration","customeraccountmanagerlist"),
new TagParameter("datatemplate","channel/ChannelSelectUserData.isml"),
new TagParameter("pageable",getObject("AccountManagerBOsPagable")),
new TagParameter("id","AccountManagersOfCustomer"),
new TagParameter("pageablename","AccountManagerBOsPagable"),
new TagParameter("params",getObject("AccountManagersParams"))}, 46); %><% } else { %><tr>
<td class="w e s center top">&nbsp;</td>
<td class="table_detail e s top"><% {out.write(localizeISText("customer.user.list.all_assigned","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AccountManagerBOsPagable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assignAccountManager" value="<% {out.write(localizeISText("customer.user.list.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<% {out.write(localizeISText("customer.user.list.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td><% } else { %><td>&nbsp;</td>
<td class="button"><input type="submit" name="cancel" value="<% {out.write(localizeISText("customer.user.list.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>