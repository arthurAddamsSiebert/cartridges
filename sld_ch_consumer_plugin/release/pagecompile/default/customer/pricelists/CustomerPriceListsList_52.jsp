<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- TEMPLATENAME: customer/pricelists/CustomerPriceListsList_52.isml --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "5");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "6");} %><% {Object temp_obj = ("Price Lists"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null)),
new TagParameter("text",context.getFormattedValue(getObject("CustomerDetails:Name"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("customer.tabs.PriceLists",null)),null))}, 15); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "17");} %><% URLPipelineAction action338 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-Dispatch",null)))),null));String site338 = null;String serverGroup338 = null;String actionValue338 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-Dispatch",null)))),null);if (site338 == null){  site338 = action338.getDomain();  if (site338 == null)  {      site338 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup338 == null){  serverGroup338 = action338.getServerGroup();  if (serverGroup338 == null)  {      serverGroup338 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImplicitePriceListsList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue338, site338, serverGroup338,true)); %><input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>" />
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>) - <% {out.write(localizeISText("CustomerPriceListsList_52.PriceLists.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" align="left" class="table_title2 w e s"><% {out.write(localizeISText("CustomerPriceListsList_52.CustomerSpecificPriceLists.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if one is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","user"),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","unassign"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("CustomerPriceListsList_52.AreYouSureYouWantToUnassignTheSelectedPriceLists.message",null)))}, 33); %> 
<% } %> 
<!-- unassign confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("customer.YouHaveNotSelectedAnyItemsUseTheCheckboxesToSelect.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("CustomerPriceListsList_52.TheFollowingListShowsAllPriceListsThatAreAssigned.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="4" border="0">
<tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.New.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="assignPriceList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PriceListsOfCustomer") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.Unassign.button",null)),null)%>" class="button"/></td> 
<% } %></tr>
</table>
</td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PriceListsOfCustomer") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("value7","ViewCustomerPriceListsList_52-Edit"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerBO"),
new TagParameter("key7","PriceListEditPipeline"),
new TagParameter("mapname","params")}, 78); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","customer/pricelists/CustomerPriceListsColumns_52.isml"),
new TagParameter("configuration","pricelistsofcustomer"),
new TagParameter("datatemplate","customer/pricelists/CustomerPriceListsData_52.isml"),
new TagParameter("pagesizeprefix","ImplicitePriceLists_PageSize"),
new TagParameter("pageable",getObject("PriceListsOfCustomer")),
new TagParameter("id","PriceListsOfCustomerGrid"),
new TagParameter("pageablename","PriceListsOfCustomer"),
new TagParameter("pagenumberprefix","ImplicitePriceLists_PageNumber"),
new TagParameter("params",getObject("params"))}, 88); %><% } else { %><tr>
<td class="table_detail e s"><% {out.write(localizeISText("CustomerPriceListsList_52.ThereAreNoPriceListsAssignedToThisCustomer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% URLPipelineAction action339 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-Dispatch",null)))),null));String site339 = null;String serverGroup339 = null;String actionValue339 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-Dispatch",null)))),null);if (site339 == null){  site339 = action339.getDomain();  if (site339 == null)  {      site339 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup339 == null){  serverGroup339 = action339.getServerGroup();  if (serverGroup339 == null)  {      serverGroup339 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ExplicitPriceListsList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue339, site339, serverGroup339,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" >
<tr>
<td width="100%" align="left" class="table_title2 w e s"><% {out.write(localizeISText("CustomerPriceListsList_52.CustomerSegmentPriceLists.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("CustomerPriceListsList_52.TheFollowingListShowsAllPriceListsThatAreEffective.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table>
<input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>" />
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PriceListsOfCustomerThroughCustomerSegment") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("value7","ViewCustomerPriceListsList_52-Edit"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerBO"),
new TagParameter("key7","PriceListEditPipeline"),
new TagParameter("mapname","params")}, 122); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","customer/pricelists/CustomerPriceListsColumns_52.isml"),
new TagParameter("configuration","pricelistsofcustomerthroughcustomersegment"),
new TagParameter("datatemplate","customer/pricelists/CustomerPriceListsData_52.isml"),
new TagParameter("pagesizeprefix","ExplicitePriceLists_PageSize"),
new TagParameter("pageable",getObject("PriceListsOfCustomerThroughCustomerSegment")),
new TagParameter("id","PriceListsOfCustomerThroughCustomerSegmentGrid"),
new TagParameter("pageablename","PriceListsOfCustomerThroughCustomerSegment"),
new TagParameter("pagenumberprefix","ExplicitePriceLists_PageNumber"),
new TagParameter("params",getObject("params"))}, 128); %> 
<% } else { %><tr>
<td class="table_detail e s"><% {out.write(localizeISText("CustomerPriceListsList_52.ThereAreNoImplicitPriceListAssignments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "145");} %><!-- EO Main Content --><% printFooter(out); %>