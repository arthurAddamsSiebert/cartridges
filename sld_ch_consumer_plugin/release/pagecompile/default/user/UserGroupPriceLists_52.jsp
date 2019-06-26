<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("customer.tabs.PriceLists",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupPriceLists_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null))))),
new TagParameter("id","ConsumerGroup/Detail"),
new TagParameter("text",getObject("CustomerSegmentBO:Name(CurrentSession:Locale)"))}, 5); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)))),null)%>"><% {out.write(localizeISText("customer.tabs.General","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupUsers_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)))),null)%>"><% {out.write(localizeISText("customers.title","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("customer.tabs.PriceLists","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupCatalogFilters_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("UserGroup:ID"),null)))),null)%>"><% {out.write(localizeISText("customer.tabs.CatalogViews","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td> 
</tr>
</table>
<!-- EO Tabs --><% URLPipelineAction action286 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupPriceLists_52-Dispatch",null)))),null));String site286 = null;String serverGroup286 = null;String actionValue286 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupPriceLists_52-Dispatch",null)))),null);if (site286 == null){  site286 = action286.getDomain();  if (site286 == null)  {      site286 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup286 == null){  serverGroup286 = action286.getServerGroup();  if (serverGroup286 == null)  {      serverGroup286 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupPriceLists_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue286, site286, serverGroup286,true)); %><input type="hidden" name="CustomerSegmentID" value="<%=context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)%>">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSegmentBO:Name(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("customer.tabs.PriceLists","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="information w e s">
<tr>
<td class="information e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation_info.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupPriceLists_52.StandardCustomerSegmentationServiceNeeded",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupPriceLists_52.StandardCustomerSegmentationServiceNeeded",null)),null)%>" border="0" align="middle"/></td>
<td class="information" width="100%"><% {out.write(localizeISText("UserGroupPriceLists_52.PleaseNoteTheStandardCustomerSegmentationService.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr> 
<!-- delete confirmation if one is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("UserGroupPriceLists_52.User.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","unassign"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("UserGroupPriceLists_52.AreYouSureYouWantToUnassignTheSelectedPriceLists.message",null)))}, 39); %><% } %><!-- unassign confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UserGroupPriceLists_52.HaveNotSelectedAnyItems.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("UserGroupPriceLists_52.TheFollowingListShowsAllPriceLists.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupPriceLists_52.New.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="selectPriceList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupPriceLists_52.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PriceLists") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupPriceLists_52.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PriceLists") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("value7","ViewUserGroupPriceLists_52-Edit"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerSegmentBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerSegmentBO"),
new TagParameter("key7","PriceListEditPipeline"),
new TagParameter("mapname","params")}, 85); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","pricelist/PriceListsColumns_52.isml"),
new TagParameter("configuration","pricelistsofcustomersegment"),
new TagParameter("datatemplate","pricelist/PriceListsData_52.isml"),
new TagParameter("pageable",getObject("PriceLists")),
new TagParameter("id","PriceLIstsOfCustomerGrid"),
new TagParameter("pageablename","PriceLists"),
new TagParameter("params",getObject("params"))}, 95); %><% } else { %><tr>
<td class="table_detail e s"><% {out.write(localizeISText("UserGroupPriceLists_52.ThereAreNoPriceListsAssignedToThisCustomerSegment.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "112");} %><% printFooter(out); %>