<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("ContentSourceDomain"))}, 4); %> 
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharingList-ReEntry",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSourceDomainID",null),context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null))))),
new TagParameter("text",getObject("contentRepositoryDisplayName"))}, 7); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ContentSharingList.ContentSharing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("contentRepositoryDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% URLPipelineAction action379 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharingList-Dispatch",null)))),null));String site379 = null;String serverGroup379 = null;String actionValue379 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharingList-Dispatch",null)))),null);if (site379 == null){  site379 = action379.getDomain();  if (site379 == null)  {      site379 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup379 == null){  serverGroup379 = action379.getServerGroup();  if (serverGroup379 == null)  {      serverGroup379 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharingList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentSharingList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue379, site379, serverGroup379,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input name="ContentSourceDomainID" type="hidden" value="<%=context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT_SHARING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ContentSharingList.DeleteAllSelectedChannelAssignments.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharingList.OK.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharingList.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ContentSharingList.YouHaveNotSelectedAnyChannelAssignmentsToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ContentSharingList.TheListShowsAllChannelsTheContentFrom0IsSharedWith.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT_SHARING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentSharingList.ClickNewToAddChannelsToTheListUseTheCheckboxesAndT.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="5"><% {out.write(localizeISText("ContentSharingList.Channels.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ChannelsWithSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ContentSharingList.CurrentlyTheContentFrom0IsNotAssignedToAnyChannel.table_detail",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT_SHARING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentSharingList.ClickNewToCreateAnAssignment.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 79); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT_SHARING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader" data-for="ChannelListContentSharing">
<thead>
<tr>
<th align="left">
<table width="100%" border="0" cellspacing="4" cellpadding="0" class="w e s" >
<tr> 
<td class="button"><input type="submit" name="New" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharingList.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="ConfirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharingList.Delete.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ChannelsWithSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td width="100%">&nbsp;</td>
</tr>
</table>
</th>
</tr>
</thead>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ChannelsWithSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6","ObjectUUID"),
new TagParameter("key2","UserPermissionForViewChannel"),
new TagParameter("value5","SelectedObjectUUID"),
new TagParameter("value8",getObject("SortDirection")),
new TagParameter("key0","Application"),
new TagParameter("value7",getObject("SortBy")),
new TagParameter("value2",getObject("CurrentUserPermissionMap:SLD_VIEW_SALES_CHANNELS")),
new TagParameter("key5","SelectedItemsName"),
new TagParameter("value1",getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT_SHARING")),
new TagParameter("key6","AvailableItemsName"),
new TagParameter("key3","Clipboard"),
new TagParameter("value4",getObject("ChannelTypes")),
new TagParameter("value3",getObject("Clipboard")),
new TagParameter("key4","ChannelTypes"),
new TagParameter("key9","SortingUrl"),
new TagParameter("key7","SortBy"),
new TagParameter("key8","SortDirection"),
new TagParameter("mapname","params"),
new TagParameter("value9",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharingList-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSourceDomainID",null),context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null))))),
new TagParameter("value0",getObject("CurrentApplication"))}, 98); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ChannelColumns.isml"),
new TagParameter("configuration","channellistcontentsharing"),
new TagParameter("datatemplate","grid/ChannelData.isml"),
new TagParameter("pageable",getObject("ChannelsWithSharedContent")),
new TagParameter("id","ChannelListContentSharing"),
new TagParameter("pageablename","Channels"),
new TagParameter("params",getObject("params"))}, 110); %><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "124");} %><% printFooter(out); %>