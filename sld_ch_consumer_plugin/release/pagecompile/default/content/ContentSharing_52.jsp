<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("ContentSourceDomain"))}, 4); %> 
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSourceDomainID",null),context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSharing_52.AssignNewApplication.text",null)))}, 7); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("ContentSharing_52.AssignNewApplication.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Create")))).booleanValue() && !((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ContentSharing_52.YouHaveNotSelectedAnyApplicationToCreateAssignment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ContentSharing_52.TheListShowsAllApplicationsCurrentlyAvailableWhich.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="5"><% {out.write(localizeISText("ContentSharing_52.Applications.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action283 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-Dispatch",null)))),null));String site283 = null;String serverGroup283 = null;String actionValue283 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-Dispatch",null)))),null);if (site283 == null){  site283 = action283.getDomain();  if (site283 == null)  {      site283 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup283 == null){  serverGroup283 = action283.getServerGroup();  if (serverGroup283 == null)  {      serverGroup283 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentSharing");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue283, site283, serverGroup283,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ApplicationsWithoutSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("key0","Application"),
new TagParameter("value7",getObject("ChannelTypes")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT_SHARING")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","SelectedItemsName"),
new TagParameter("value4","ObjectUUID"),
new TagParameter("value3","SelectedObjectUUID"),
new TagParameter("key4","AvailableItemsName"),
new TagParameter("key7","ChannelTypes"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 42); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ApplicationColumns.isml"),
new TagParameter("configuration","applistsharecontent"),
new TagParameter("datatemplate","grid/ApplicationData.isml"),
new TagParameter("pageable",getObject("ApplicationsWithoutSharedContent")),
new TagParameter("id","AppListShareContent"),
new TagParameter("pageablename","App"),
new TagParameter("params",getObject("params"))}, 52); %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ContentSharing_52.CurrentlyThereAreNoApplicationsAvailableToAssign.table_detail",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right" class="w e s" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharing_52.OK.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ApplicationsWithoutSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharing_52.Cancel.button",null)),null)%>" class="button" /></td>
<input name="ContentSourceDomainID" type="hidden" value="<%=context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null)%>"/>
</tr>
</table>
</td>
</tr> 
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>