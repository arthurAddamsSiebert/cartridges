<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("ContentSourceDomain"))}, 4); %> 
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSourceDomainID",null),context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSharing.AssignNewChannel.text",null)))}, 7); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ContentSharing.AssignNewChannel.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Create")))).booleanValue() && !((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ContentSharing.YouHaveNotSelectedAnyChannelToCreateAssignmentsFor.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ContentSharing.TheListShowsAllChannelsCurrentlyAvailableWhichAreN.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="5"><% {out.write(localizeISText("ContentSharing.Channels.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action377 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing-Dispatch",null)))),null));String site377 = null;String serverGroup377 = null;String actionValue377 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing-Dispatch",null)))),null);if (site377 == null){  site377 = action377.getDomain();  if (site377 == null)  {      site377 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup377 == null){  serverGroup377 = action377.getServerGroup();  if (serverGroup377 == null)  {      serverGroup377 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentSharing");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue377, site377, serverGroup377,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ChannelsWithoutSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
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
new TagParameter("value9",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSourceDomainID",null),context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null))))),
new TagParameter("value0",getObject("CurrentApplication"))}, 42); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ChannelColumns.isml"),
new TagParameter("configuration","channellistsharecontent"),
new TagParameter("datatemplate","grid/ChannelData.isml"),
new TagParameter("pageable",getObject("ChannelsWithoutSharedContent")),
new TagParameter("id","ChannelListShareContent"),
new TagParameter("pageablename","Channel"),
new TagParameter("params",getObject("params"))}, 54); %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ContentSharing.CurrentlyThereAreNoChannelsAvailableToAssignTheCon.table_detail",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right" class="w e s" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharing.OK.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ChannelsWithoutSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharing.Cancel.button",null)),null)%>" class="button" /></td>
<input name="ContentSourceDomainID" type="hidden" value="<%=context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null)%>"/>
</tr>
</table>
</td>
</tr> 
</table>
<table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>