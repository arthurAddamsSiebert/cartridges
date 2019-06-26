<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "4");} %><% {Object temp_obj = ("Price List"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupPriceLists_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)))),
new TagParameter("id","Assign Price List"),
new TagParameter("text",localizeText(context.getFormattedValue("PriceListSelectWizard_52.SelectPriceLists.text",null)))}, 13); %><% URLPipelineAction action377 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPriceListSelectWizard-Dispatch",null)))),null));String site377 = null;String serverGroup377 = null;String actionValue377 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPriceListSelectWizard-Dispatch",null)))),null);if (site377 == null){  site377 = action377.getDomain();  if (site377 == null)  {      site377 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup377 == null){  serverGroup377 = action377.getServerGroup();  if (serverGroup377 == null)  {      serverGroup377 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPriceListSelectWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PriceListsList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue377, site377, serverGroup377,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "16");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("PriceListSelectWizard_52.SelectPriceLists.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- assign if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PriceListSelectWizard_52.YouHaveNotSelectedAnyItemsUseTheCheckbox.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %> 
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PriceListSelectWizard_52.TheListShowsAllPriceListsInThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PriceLists") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("value8","true"),
new TagParameter("value7",getObject("AssignedPriceListIDs")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerSegmentBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerSegmentBO"),
new TagParameter("key7","DisabledPriceLists"),
new TagParameter("key8","UsePlainText"),
new TagParameter("mapname","params")}, 47); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","pricelist/PriceListsColumns_52.isml"),
new TagParameter("configuration","pricelistselection"),
new TagParameter("datatemplate","pricelist/PriceListsData_52.isml"),
new TagParameter("pageable",getObject("PriceLists")),
new TagParameter("id","PriceListsList"),
new TagParameter("pageablename","PriceLists"),
new TagParameter("params",getObject("params"))}, 58); %><tr>
<td align="right" class="e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListSelectWizard_52.OK.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="submit" name="cancelAssign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListSelectWizard_52.Cancel.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr> 
<% } else { %><tr>
<td class="table_detail e s"><% {out.write(localizeISText("PriceListSelectWizard_52.ThereAreCurrentlyNoPriceListsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "83");} %><% printFooter(out); %>