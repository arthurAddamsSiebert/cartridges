<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroupUserGroupSelection_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionTargetGroupSelectUserGroups_52.AssignCustomerSegments.table_title",null)))}, 5); %><% URLPipelineAction action555 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestCustomerSegmentsSelection-Dispatch",null)))),null));String site555 = null;String serverGroup555 = null;String actionValue555 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestCustomerSegmentsSelection-Dispatch",null)))),null);if (site555 == null){  site555 = action555.getDomain();  if (site555 == null)  {      site555 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup555 == null){  serverGroup555 = action555.getServerGroup();  if (serverGroup555 == null)  {      serverGroup555 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestCustomerSegmentsSelection-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("TargetGroupUserGroupsSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue555, site555, serverGroup555,true)); %><input type="hidden" name="ABTestUUID" value="<%=context.getFormattedValue(getObject("ABTest:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectUserGroups_52.AssignCustomerSegments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ABTestCustomerSegmentsSelection.YouHaveNotSelectedAnyCustomerSegmentSelectAtLeastO.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegmentBOsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2" width="100%"><% {out.write(localizeISText("ABTestCustomerSegmentsSelection.TheListShowsAllCustomerSegmentsCustomerSegmentsWhi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS")),
new TagParameter("key3","AssignedCustomerSegmentBOs"),
new TagParameter("value4",getObject("CurrentSession:Locale")),
new TagParameter("value3",getObject("AssignedCustomerSegmentBOs")),
new TagParameter("key4","Locale"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","CustomerSegmentsParams")}, 37); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","marketing/customersegments/ABTestCustomerSegmentsSelectionColumns.isml"),
new TagParameter("configuration","abtestcustomersegmentsselect"),
new TagParameter("datatemplate","marketing/customersegments/ABTestCustomerSegmentsSelectionData.isml"),
new TagParameter("pageable",getObject("CustomerSegmentBOsPageable")),
new TagParameter("id","CustomerSegments"),
new TagParameter("pageablename","CustomerSegmentBOsPageable"),
new TagParameter("params",getObject("CustomerSegmentsParams"))}, 44); %><% } else { %> 
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("ABTestTargetGroupSelectUserGroups_52.ThereAreCurrentlyNoCustomerSegmentsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %> 
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegmentBOsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RecycleBinProductList_52.OK.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("catalogs.channelreview.button.canceldelete",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>