<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("filter.TargetGroup.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogFilterUUID",null),context.getFormattedValue(getObject("CatalogFilterUUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("CatalogFilter:UUID")),
new TagParameter("text",getObject("CatalogFilter:Name"))}, 3); %><!-- Tabs --><% {Object temp_obj = ("TargetGroup"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("filter/inc/ChannelCatalogFilterTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "7");} %><!-- EO Tabs --><% URLPipelineAction action239 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-Dispatch",null)))),null));String site239 = null;String serverGroup239 = null;String actionValue239 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-Dispatch",null)))),null);if (site239 == null){  site239 = action239.getDomain();  if (site239 == null)  {      site239 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup239 == null){  serverGroup239 = action239.getServerGroup();  if (serverGroup239 == null)  {      serverGroup239 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogFilterUserGroupsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue239, site239, serverGroup239,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s">
<input type="hidden" name="CatalogFilterUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogFilter:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("CatalogFilter:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_title2 w e s" nowrap="nowrap" colspan="4"><% {out.write(localizeISText("ChannelCatalogFilterUserGroupsList_52.CustomerSegments.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Delete Confirmation -->
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","assigned customer"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelCatalogFilterUserGroupsList_52.AreYouSureYouWantToUnassignTheSelectedCustomer.message",null)))}, 26); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","assigned customer"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("filter.YouHaveNotSelectedAnyItemsUseTheCheckboxesToSelect.message",null)))}, 33); %><% } %><% } %></tr> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterUserGroupsList_52.TheCatalogViewIsAssignedToTheFollowingCustomer.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_detail w e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterUserGroupsList_52.ThereAreNoCustomerSegmentsAssignedToThisCatalog.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %> 
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><tr>
<td align="left" colspan="4" class="s e w">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input class="button" type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("filter.Assign.button",null)),null)%>"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><td class="button">
<input class="button" type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("filter.Unassign.button",null)),null)%>"/>
</td><% } %></tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS")),
new TagParameter("key3","RenderLink"),
new TagParameter("value4",getObject("CurrentRequest:Locale")),
new TagParameter("value3","true"),
new TagParameter("key4","Locale"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","CustomerSegmentParams")}, 72); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","filter/customersegments/CatalogFilterCustomerSegmentsSelectionColumns.isml"),
new TagParameter("configuration","catalogfilterusergroups"),
new TagParameter("datatemplate","filter/customersegments/CatalogFilterCustomerSegmentsSelectionData.isml"),
new TagParameter("pageable",getObject("CustomerSegments")),
new TagParameter("id","AssignedCustomerSegments"),
new TagParameter("pageablename","CustomerSegments"),
new TagParameter("params",getObject("CustomerSegmentParams"))}, 78); %></td>
</tr><% } %></table><% out.print("</form>"); %><% URLPipelineAction action240 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-Dispatch",null)))),null));String site240 = null;String serverGroup240 = null;String actionValue240 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-Dispatch",null)))),null);if (site240 == null){  site240 = action240.getDomain();  if (site240 == null)  {      site240 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup240 == null){  serverGroup240 = action240.getServerGroup();  if (serverGroup240 == null)  {      serverGroup240 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogFilterCustomerListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue240, site240, serverGroup240,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "93");} %><input type="hidden" name="CatalogFilterUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogFilter:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_title2 w e s" nowrap="nowrap" colspan="4"><% {out.write(localizeISText("ChannelCatalogFilterUserGroupsList_52.Customers.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("unassignCustomer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer assignment"),
new TagParameter("cancelbtnname","cancelUnassignCustomer"),
new TagParameter("okbtnname","confirmUnassignCustomer"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelCatalogFilterUserGroupsList_52.AreYouSureYouWantToUnassignTheSelectedCustomers.message",null)))}, 103); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer assignment"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("filter.YouHaveNotSelectedAnyItemsUseTheCheckboxesToSelect.message",null)))}, 110); %><% } %></tr><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupCustomers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterUserGroupsList_52.TheCatalogViewIsAssignedToTheFollowingCustomers.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } else { %><td class="table_detail w e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterUserGroupsList_52.ThereAreNoCustomersAssignedToThisCatalogView.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><tr>
<td align="left" colspan="4" class="s e w">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input class="button" type="submit" name="assignCustomer" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("filter.Assign.button",null)),null)%>"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupCustomers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><td class="button">
<input class="button" type="submit" name="unassignCustomer" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("filter.Unassign.button",null)),null)%>"/>
</td><% } %></tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupCustomers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS")),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","customersParams")}, 149); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","inc/CustomersListColumns_52.isml"),
new TagParameter("configuration","catalogfiltercustomerlist"),
new TagParameter("datatemplate","inc/CustomersListData_52.isml"),
new TagParameter("pageable",getObject("TargetGroupCustomers")),
new TagParameter("id","AssignedCustomers"),
new TagParameter("pageablename","TargetGroupCustomers"),
new TagParameter("params",getObject("customersParams"))}, 154); %></td>
</tr><% } %></table>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="backbar_left">
<table cellspacing="0" cellpadding="0" border="0">
<tr> 
<td class="button"><input type="submit" class="button" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("filter.BackToList.button",null)),null)%>" name="backtolist"></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>