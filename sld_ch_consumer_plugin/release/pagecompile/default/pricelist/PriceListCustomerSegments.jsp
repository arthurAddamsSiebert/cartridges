<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action379 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null));String site379 = null;String serverGroup379 = null;String actionValue379 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null);if (site379 == null){  site379 = action379.getDomain();  if (site379 == null)  {      site379 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup379 == null){  serverGroup379 = action379.getServerGroup();  if (serverGroup379 == null)  {      serverGroup379 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PriceListCustomerSegmentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue379, site379, serverGroup379,true)); %><input type="hidden" name="PriceListUUID" value="<%=context.getFormattedValue(getObject("PriceList:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title2 w e n" colspan="4"><% {out.write(localizeISText("PriceListCustomerSegments.CustomerSegments.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteUserGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer segment assignment"),
new TagParameter("cancelbtnname","cancelDeleteUserGroup"),
new TagParameter("okbtnname","deleteUserGroup"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PriceListCustomerSegments.AreYouSureYouWantToUnassignCustomerSeg.message",null)))}, 18); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer segment"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PriceListCustomerSegments.YouHaveNotSelectedAnyItemsUseTheCheckbox.message",null)))}, 25); %><% } %><% } %><tr>
<td class="table_title_description w e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedUserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {out.write(localizeISText("PriceListCustomerSegments.ThePriceListIsAssignedToTheCustomerSeg.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("PriceListCustomerSegments.ThereAreNoCustomerSegmentsAssigned.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><tr>
<td align="left" colspan="4" class="s e w">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="newUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListCustomerSegments.Assign.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedUserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDeleteUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListCustomerSegments.Unassign.button",null)),null)%>" class="button"/>
</td> 
<% } %></tr>
</table> 
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedUserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES")),
new TagParameter("key3","RenderLink"),
new TagParameter("value3","true"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","customerSegmentsParams")}, 62); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","inc/UserGroupsColumns_52.isml"),
new TagParameter("configuration","pricelistusergroups"),
new TagParameter("datatemplate","inc/UserGroupsData_52.isml"),
new TagParameter("pageable",getObject("AssignedUserGroups")),
new TagParameter("id","AssignedUserGroups"),
new TagParameter("pageablename","AssignedUserGroups"),
new TagParameter("params",getObject("customerSegmentsParams"))}, 68); %></td>
</tr><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>