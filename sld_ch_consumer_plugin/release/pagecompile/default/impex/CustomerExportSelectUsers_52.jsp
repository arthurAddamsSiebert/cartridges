<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExport_52-Back",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("OnlyB2C",null),context.getFormattedValue(getObject("OnlyB2C"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","Customer/Export/SelectCustomers"),
new TagParameter("text",localizeText(context.getFormattedValue("CustomerExportSelectUsers_52.CustomerExportStep1SelectCustomers",null)))}, 3); %><% URLPipelineAction action451 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExport_52-Dispatch",null)))),null));String site451 = null;String serverGroup451 = null;String actionValue451 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExport_52-Dispatch",null)))),null);if (site451 == null){  site451 = action451.getDomain();  if (site451 == null)  {      site451 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup451 == null){  serverGroup451 = action451.getServerGroup();  if (serverGroup451 == null)  {      serverGroup451 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerExport_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CustomerList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue451, site451, serverGroup451,true)); %><% {Object temp_obj = ("CustomerID"); getPipelineDictionary().put("AllCustomersIDs", temp_obj);} %><% {Object temp_obj = ("SelectedObjectUUID"); getPipelineDictionary().put("SelectedCustomersIDs", temp_obj);} %><% {Object temp_obj = (getObject("CustomersSelection")); getPipelineDictionary().put("SelectedCustomerClipboard", temp_obj);} %><input type="hidden" name="CustomersSelectionName" value="SelectedCustomers"/><% {Object temp_obj = ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))); getPipelineDictionary().put("isEditable", temp_obj);} %><% {Object temp_obj = ("true"); getPipelineDictionary().put("hideLinks", temp_obj);} %><% {Object temp_obj = ("true"); getPipelineDictionary().put("onlyCustomers", temp_obj);} %><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e n">
<tr>
<td width="100%" class="table_title s"><% {out.write(localizeISText("CustomerExportSelectUsers_52.CustomerExportStep1SelectCustomers",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CustomerSearchMessages", null, "20");} %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("CustomerExportSelectUsers_52.ListShowsAllCustomersUsers.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<!-- Simple and advanced search --><% {Object temp_obj = ("true"); getPipelineDictionary().put("isCustomersAdvancedSearchAvailable", temp_obj);} %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersSearchForm", null, "30");} %></td>
</tr>
</table><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersSearchResultList", null, "35");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="hidden" name="OnlyB2C" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OnlyB2C"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SelectConfiguration" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerExportSelectUsers_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("SearchResult") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerExportSelectUsers_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>