<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionID",null),context.getFormattedValue(getObject("PromotionBO:PromotionID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomerSegments.AssignCustomerSegments.text",null)))}, 5); %><% URLPipelineAction action542 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-Dispatch",null)))),null));String site542 = null;String serverGroup542 = null;String actionValue542 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-Dispatch",null)))),null);if (site542 == null){  site542 = action542.getDomain();  if (site542 == null)  {      site542 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup542 == null){  serverGroup542 = action542.getServerGroup();  if (serverGroup542 == null)  {      serverGroup542 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("TargetGroupUserGroupsSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue542, site542, serverGroup542,true)); %><input type="hidden" name="PromotionUUID" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("PromotionUUID"),null)),null)%>"/>
<input type="hidden" name="PromotionID" value="<%=context.getFormattedValue(getObject("PromotionBO:PromotionID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.AssignCustomerSegments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.YouHaveNotSelectedAnyCustomerSegmentSelectAtLeastOne.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2" width="100%"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.TheListShowsAllCustomerSegmentsCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("LocaleInformation")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("AssignedCustomerSegments")),
new TagParameter("value8",getObject("SortDirection")),
new TagParameter("value7",getObject("SortBy")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","AssignedCustomerSegments"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING")),
new TagParameter("key6","LocaleInformation"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("PromotionBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","PromotionBO"),
new TagParameter("key7","SortBy"),
new TagParameter("key8","SortDirection"),
new TagParameter("mapname","params")}, 43); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","marketing/PromotionTargetGroupSelectCustomerSegmentsColumns.isml"),
new TagParameter("configuration","customersegmentlist"),
new TagParameter("datatemplate","marketing/PromotionTargetGroupSelectCustomerSegmentsData.isml"),
new TagParameter("pageable",getObject("CustomerSegments")),
new TagParameter("id","CustomerUserList"),
new TagParameter("pageablename","CustomerSegments"),
new TagParameter("params",getObject("params"))}, 54); %><% } else { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.ThereAreCurrentlyNoCustomerSegmentsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomerSegments.Assign.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomerSegments.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>