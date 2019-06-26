<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceList:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PriceListUserGroups_52.TargetGroup.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)))),
new TagParameter("id",getObject("PriceList:UUID")),
new TagParameter("text",localizeText(context.getFormattedValue("PriceListUserGroups_52.NoName.text",null)))}, 7); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PriceListUserGroups_52.TargetGroup.text11",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)))),
new TagParameter("id",getObject("PriceList:UUID")),
new TagParameter("text",getObject("PriceList:DisplayName"))}, 9); %><% } %><!-- EO Page Navigator -->
<!-- Tabs --><%getPipelineDictionary().put("SelectedTab", "UserGroups");%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PriceListTabs_52", null, "15");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceList:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("PriceListUserGroups_52.NoName.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;</td>
</tr>
</table><% URLPipelineAction action381 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null));String site381 = null;String serverGroup381 = null;String actionValue381 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null);if (site381 == null){  site381 = action381.getDomain();  if (site381 == null)  {      site381 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup381 == null){  serverGroup381 = action381.getServerGroup();  if (serverGroup381 == null)  {      serverGroup381 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PriceListUserGroupForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue381, site381, serverGroup381,true)); %><input type="hidden" name="PriceListUUID" value="<%=context.getFormattedValue(getObject("PriceList:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="4"><% {out.write(localizeISText("PriceListUserGroups_52.CustomerSegments.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteUserGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer segment assignment"),
new TagParameter("cancelbtnname","cancelDeleteUserGroup"),
new TagParameter("okbtnname","deleteUserGroup"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PriceListUserGroups_52.AreYouSureYouWantToUnassignTheSelectedCustomerSegments.message",null)))}, 38); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer segment"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PriceListUserGroups_52.YouHaveNotSelectedAnyItemsUseTheCheckbox.message",null)))}, 45); %><% } %><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("PriceListUserGroups_52.ThePriceListIsAssignedToTheFollowingCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } else { %><td class="table_detail w e s" nowrap="nowrap"><% {out.write(localizeISText("PriceListUserGroups_52.ThereAreNoCustomerSegmentsAssignedToThis.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><tr>
<td align="left" colspan="4" class="s e w">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="newUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListUserGroups_52.Assign.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDeleteUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListUserGroups_52.Unassign.button",null)),null)%>" class="button"/>
</td><% } %></tr>
</table> 
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES")),
new TagParameter("key3","Locale"),
new TagParameter("value3",getObject("CurrentSession:Locale")),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","CustomerSegmentsParams")}, 84); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","pricelist/customersegments/PriceListCustomerSegmentsColumns.isml"),
new TagParameter("configuration","pricelistusergroups"),
new TagParameter("datatemplate","pricelist/customersegments/PriceListCustomerSegmentsData.isml"),
new TagParameter("pageable",getObject("CustomerSegments")),
new TagParameter("id","AssignedCustomerSegments"),
new TagParameter("pageablename","CustomerSegments"),
new TagParameter("params",getObject("CustomerSegmentsParams"))}, 90); %></td>
</tr><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action382 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null));String site382 = null;String serverGroup382 = null;String actionValue382 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null);if (site382 == null){  site382 = action382.getDomain();  if (site382 == null)  {      site382 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup382 == null){  serverGroup382 = action382.getServerGroup();  if (serverGroup382 == null)  {      serverGroup382 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PriceListCustomerListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue382, site382, serverGroup382,true)); %><input type="hidden" name="PriceListUUID" value="<%=context.getFormattedValue(getObject("PriceList:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="4"><% {out.write(localizeISText("PriceListUserGroups_52.Customers.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("unassignCustomer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer assignment"),
new TagParameter("cancelbtnname","cancelUnassignCustomer"),
new TagParameter("okbtnname","confirmUnassignCustomer"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PriceListUserGroups_52.AreYouSureYouWantToUnassignTheSelectedCustomers.message1",null)))}, 120); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer segment"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PriceListUserGroups_52.YouHaveNotSelectedAnyItemsUseTheCheckbox.message1",null)))}, 127); %><% } %><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedCustomers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("PriceListUserGroups_52.ThePriceListIsAssignedToTheFollowingCustomers.table_title_description1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_detail w e s" nowrap="nowrap"><% {out.write(localizeISText("PriceListUserGroups_52.ThereAreNoCustomersAssignedToThisPriceLi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><tr>
<td align="left" colspan="4" class="s e w">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="assignCustomer" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListUserGroups_52.Assign.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedCustomers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="unassignCustomer" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListUserGroups_52.Unassign.button",null)),null)%>" class="button"/>
</td><% } %></tr>
</table> 
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedCustomers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","UsePlainText"),
new TagParameter("key0","Application"),
new TagParameter("value2",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS")),
new TagParameter("key3","Clipboard"),
new TagParameter("value3",getObject("Clipboard")),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","customersParams")}, 166); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","inc/CustomersListColumns_52.isml"),
new TagParameter("configuration","pricelistusergroups"),
new TagParameter("datatemplate","inc/CustomersListData_52.isml"),
new TagParameter("pageable",getObject("AssignedCustomers")),
new TagParameter("id","AssignedCustomers"),
new TagParameter("pageablename","AssignedCustomers"),
new TagParameter("params",getObject("customersParams"))}, 172); %></td>
</tr><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import = "com.intershop.component.foundation.capi.application.Breadcrumb"%><%@page import = "com.intershop.component.foundation.capi.application.ApplicationState"%><%@page import = "com.intershop.beehive.core.capi.request.Session"%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "192");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>