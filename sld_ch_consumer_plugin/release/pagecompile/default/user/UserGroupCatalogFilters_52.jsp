<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("customer.tabs.CatalogViews",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupCatalogFilters_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null))))),
new TagParameter("id","ConsumerGroup/Detail"),
new TagParameter("text",getObject("CustomerSegmentBO:Name(CurrentSession:Locale)"))}, 5); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)))),null)%>"><% {out.write(localizeISText("customer.tabs.General","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupUsers_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)))),null)%>"><% {out.write(localizeISText("customers.title","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupPriceLists_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)))),null)%>"><% {out.write(localizeISText("customer.tabs.PriceLists","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("customer.tabs.CatalogViews","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
<!-- EO Tabs --><% URLPipelineAction action299 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupCatalogFilters_52-Dispatch",null)))),null));String site299 = null;String serverGroup299 = null;String actionValue299 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupCatalogFilters_52-Dispatch",null)))),null);if (site299 == null){  site299 = action299.getDomain();  if (site299 == null)  {      site299 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup299 == null){  serverGroup299 = action299.getServerGroup();  if (serverGroup299 == null)  {      serverGroup299 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupCatalogFilters_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue299, site299, serverGroup299,true)); %><input type="hidden" name="CustomerSegmentID" value="<%=context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)%>" />
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSegmentBO:Name(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("UserGroupCatalogFilters_52.CatalogViews.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="information w e s">
<tr>
<td class="information e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation_info.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupCatalogFilters_52.StandardCustomerSegmentationServiceNeeded",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupCatalogFilters_52.StandardCustomerSegmentationServiceNeeded",null)),null)%>" border="0" align="middle"/></td>
<td class="information" width="100%"><% {out.write(localizeISText("UserGroupCatalogFilters_52.PleaseNoteThatIfStandardCustomerSegmentationServiceIsNotEnabled.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<!-- delete confirmation if one is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("UserGroupCatalogFilters_52.User.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","unassign"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("UserGroupCatalogFilters_52.AreYouSureYouWantToUnassignTheSelectedCatalogViews.message",null)))}, 40); %><% } %><!-- unassign confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UserGroupCatalogFilters_52.YouHaveNotSelectedAnyItems.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("UserGroupCatalogFilters_52.ListShowsAllCatalogViews.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %> 
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupCatalogFilters_52.New.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="selectCatalogFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupCatalogFilters_52.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CatalogFilters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupCatalogFilters_52.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CatalogFilters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortBy")),
new TagParameter("key2","UsePlainText"),
new TagParameter("value5",getObject("CustomerSegmentBO")),
new TagParameter("value8",getObject("CurrentRequest")),
new TagParameter("value7",getObject("SortDirection")),
new TagParameter("value2",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CATALOG_VIEWS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("key5","CustomerSegmentBO"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")),
new TagParameter("key6","SortBy"),
new TagParameter("key3","Clipboard"),
new TagParameter("value4",getObject("CurrentChannel")),
new TagParameter("value3",getObject("Clipboard")),
new TagParameter("key4","CurrentChannel"),
new TagParameter("key7","SortDirection"),
new TagParameter("key8","CurrentRequest"),
new TagParameter("mapname","params")}, 86); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","catalogview/CatalogViewsColumns_52.isml"),
new TagParameter("configuration","catalogfiltersofcustomersegment"),
new TagParameter("datatemplate","catalogview/CatalogViewsData_52.isml"),
new TagParameter("pageable",getObject("CatalogFilters")),
new TagParameter("id","CalalogFiltersOfCustomerGrid"),
new TagParameter("pageablename","CalalogFilters"),
new TagParameter("params",getObject("params"))}, 97); %><% } else { %><tr>
<td class="table_detail e s"><% {out.write(localizeISText("UserGroupCatalogFilters_52.NoCatalogViewsAssignedToThisCustomerSegment.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "114");} %><% printFooter(out); %>