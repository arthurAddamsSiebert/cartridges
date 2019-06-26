<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","newCampaign"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CampaignTargetGroup_52.TargetGroup.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null)))),
new TagParameter("id",getObject("Campaign:UUID")),
new TagParameter("text",getObject("Campaign:DisplayName"))}, 5); %><!-- Campaign Details Heading --><% URLPipelineAction action535 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchGeneral",null)))),null));String site535 = null;String serverGroup535 = null;String actionValue535 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchGeneral",null)))),null);if (site535 == null){  site535 = action535.getDomain();  if (site535 == null)  {      site535 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup535 == null){  serverGroup535 = action535.getServerGroup();  if (serverGroup535 == null)  {      serverGroup535 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchGeneral",null)))),null));out.print("\"");out.print(" name=\"");out.print("CampaignTargetGroupFormGeneral");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue535, site535, serverGroup535,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/CampaignDetailsHeadingInc", null, "10");} %><% out.print("</form>"); %><!-- Tabs --><% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SelectedTab"),
new TagParameter("value","TargetGroup")}, 14); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/CampaignTabs_52", null, "15");} %><!-- EO Tabs --><% URLPipelineAction action536 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchCustomerSegment",null)))),null));String site536 = null;String serverGroup536 = null;String actionValue536 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchCustomerSegment",null)))),null);if (site536 == null){  site536 = action536.getDomain();  if (site536 == null)  {      site536 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup536 == null){  serverGroup536 = action536.getServerGroup();  if (serverGroup536 == null)  {      serverGroup536 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchCustomerSegment",null)))),null));out.print("\"");out.print(" name=\"");out.print("CampaignTargetGroupCustomerSegmentsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue536, site536, serverGroup536,true)); %><input type="hidden" name="CampaignUUID" value="<%=context.getFormattedValue(getObject("Campaign:UUID"),null)%>"/>
<input type="hidden" name="CampaignID" value="<%=context.getFormattedValue(getObject("CampaignBO:ID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- delete error message and delete confirmation for the campaign as a whole --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Campaign:isEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CampaignTargetGroup_52.UnableToDeleteTheCampaignBecauseItIsEnabledDisable.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else { %><!-- delete confirmation--><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignTargetGroup_52.Campaign.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 38); %><% } %><% } %><tr>
<td width="100%" class="table_title2 w e s" colspan="4"><% {out.write(localizeISText("CampaignTargetGroup_52.CustomerSegments.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- simple delete confirmation-->
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteCustomerSegment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignTargetGroup_52.CustomerSegmentAssignment.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteCustomerSegment"),
new TagParameter("okbtnname","deleteCustomerSegment"),
new TagParameter("type","mda")}, 51); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignTargetGroup_52.CustomerSegment.subject",null))),
new TagParameter("type","mdea")}, 53); %><% } %><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("CampaignTargetGroup_52.SelectOneOrMoreCustomerSegmentsAsTargetGroupsForThis.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("CampaignTargetGroup_52.ClickAssignToAssignOneOrMoreCustomerSegmentsUseThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("CurrentRequest:Locale")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","LocaleInformation"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING")),
new TagParameter("mapname","params")}, 72); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","marketing/CampaignTargetGroupCustomerSegmentsColumns.isml"),
new TagParameter("configuration","customersegmentlist"),
new TagParameter("datatemplate","marketing/CampaignTargetGroupCustomerSegmentsData.isml"),
new TagParameter("pageable",getObject("CustomerSegments")),
new TagParameter("id","CustomerSegmentList"),
new TagParameter("pageablename","CustomerSegments"),
new TagParameter("params",getObject("params"))}, 76); %></td>
</tr><% } else { %><tr>
<td width="100%" class="table_detail w e n s"><% {out.write(localizeISText("CampaignTargetGroup_52.ThereAreCurrentlyNoCustomerSegmentsAssignedToThisCampaign.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("CampaignTargetGroup_52.ClickAssignToAssignCustomerSegments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newCustomerSegment" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignTargetGroup_52.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDeleteCustomerSegment" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignTargetGroup_52.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table> 
</td>
</tr><% } %></table><% out.print("</form>"); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="8" alt="" border="0"/></div><% URLPipelineAction action537 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchAffiliate",null)))),null));String site537 = null;String serverGroup537 = null;String actionValue537 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchAffiliate",null)))),null);if (site537 == null){  site537 = action537.getDomain();  if (site537 == null)  {      site537 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup537 == null){  serverGroup537 = action537.getServerGroup();  if (serverGroup537 == null)  {      serverGroup537 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-DispatchAffiliate",null)))),null));out.print("\"");out.print(" name=\"");out.print("AffiliateUserGroupsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue537, site537, serverGroup537,true)); %><input type="hidden" name="CampaignUUID" value="<%=context.getFormattedValue(getObject("Campaign:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 aldi" colspan="4"><% {out.write(localizeISText("CampaignTargetGroup_52.Affiliates.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- simple delete confirmation-->
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteAffiliateGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignTargetGroup_52.AffiliateGroupAssignment.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteAffiliateGroup"),
new TagParameter("okbtnname","deleteAffiliateGroup"),
new TagParameter("type","mda")}, 136); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignTargetGroup_52.AffiliateGroupAssignment.subject",null))),
new TagParameter("type","mdea")}, 138); %><% } %><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("CampaignTargetGroup_52.SelectOneOrMoreAffiliatePartnersOrProgramsAsTarget.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><% {out.write(localizeISText("CampaignTargetGroup_52.ClickAssignToAssignOneOrMoreAffiliatePartnersOrPro.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupAffiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><td class="table_header n e s" width="75">
<div id="divAffiliateUserGroupsA">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('AffiliateUserGroupsForm','SelectedObjectUUID','divAffiliateUserGroupsA','divAffiliateUserGroupsB');" class="tableheader"><% {out.write(localizeISText("CampaignTargetGroup_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="divAffiliateUserGroupsB" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('AffiliateUserGroupsForm','SelectedObjectUUID','divAffiliateUserGroupsA','divAffiliateUserGroupsB');" class="tableheader"><% {out.write(localizeISText("CampaignTargetGroup_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("CampaignTargetGroup_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("CampaignTargetGroup_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("CampaignTargetGroup_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("TargetGroupAffiliates",null,null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %><td class="e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("TargetGroupAffiliates:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("TargetGroupAffiliates:UUID"),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(TargetGroupAffiliates:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td><% } %><td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TargetGroupAffiliates:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %><% {out.write(localizeISText("CampaignTargetGroup_52.NoDisplayNameGiven.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("TargetGroupAffiliates:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("TargetGroupAffiliates:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TargetGroupAffiliates:AffiliatePartner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %><% {out.write(localizeISText("CampaignTargetGroup_52.ProgramOfPartner.table_detail",null,null,encodeString(context.getFormattedValue(getObject("TargetGroupAffiliates:AffiliatePartner:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CampaignTargetGroup_52.AffiliatePartner.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td width="100%" class="table_detail w e n s"><% {out.write(localizeISText("CampaignTargetGroup_52.ThereAreCurrentlyNoAffiliatePartnersOrProgramsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { %><% {out.write(localizeISText("CampaignTargetGroup_52.ClickAssignToAssignAffiliates.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newAffiliateGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignTargetGroup_52.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupAffiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",233,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDeleteAffiliateGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignTargetGroup_52.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupAffiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",242,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","TargetGroupAffiliates")}, 245); %><!-- End Page Cursor --><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "250");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>