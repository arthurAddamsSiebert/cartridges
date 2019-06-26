<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/Modules", null, "4");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HidePromotions"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HidePromotions",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("true",null))),null)%>" class="table_opened"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.Promotions.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HidePromotions",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("false",null))),null)%>" class="table_closed"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.Promotions.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HidePromotions"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% URLPipelineAction action609 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchPromotion",null)))),null));String site609 = null;String serverGroup609 = null;String actionValue609 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchPromotion",null)))),null);if (site609 == null){  site609 = action609.getDomain();  if (site609 == null)  {      site609 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup609 == null){  serverGroup609 = action609.getServerGroup();  if (serverGroup609 == null)  {      serverGroup609 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchPromotion",null)))),null));out.print("\"");out.print(" name=\"");out.print("CampaignPromotionAssignmentsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue609, site609, serverGroup609,true)); %><input type="hidden" name="CampaignUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmRemovePromotion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignPromotionAssignmentsList_52.ObjectAssignments.subject",null))),
new TagParameter("cancelbtnname","cancelRemovePromotion"),
new TagParameter("okbtnname","removePromotion"),
new TagParameter("type","mda")}, 29); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignPromotionAssignmentsList_52.ObjectAssignments.subject",null))),
new TagParameter("type","mdea")}, 31); %><% } %><% } %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PromotionPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><td class="table_header e s center" nowrap="nowrap" width="80">
<div id="divAssignedContentA">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CampaignPromotionAssignmentsForm','SelectedObjectUUID','divAssignedContentA','divAssignedContentB');" class="tableheader"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="divAssignedContentB" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CampaignPromotionAssignmentsForm','SelectedObjectUUID','divAssignedContentA','divAssignedContentB');" class="tableheader"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap" width="50%"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="30%"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("PromotionPageable","aPromotion",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><td class="table_bg e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(aPromotion:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %> checked="checked"<% } %> />
</td><% } %><td class="table_detail e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("aPromotion:UUID"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "marketingobjectdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Object",getObject("aPromotion"))}, 77); %></a>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.Promotion.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> /
<% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionList-GetPromotionTypes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionID",null),context.getFormattedValue(getObject("aPromotion:ID"),null)))),null), null, null, "82");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr><% } %><% } else { %><tr><td class="table_detail e s"><% {out.write(localizeISText("CampaignPromotionAssignmentsList_52.CurrentlyThereAreNoObjectsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><tr>
<td class="e w s" width="100%" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newPromotion" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignPromotionAssignmentsList_52.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="assignPromotion" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignPromotionAssignmentsList_52.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PromotionPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmRemovePromotion" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignPromotionAssignmentsList_52.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr><% } %><tr>
<td> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td> 
<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pagesizeprefix","PageSizePromotion_"),
new TagParameter("pageable","PromotionPageable"),
new TagParameter("pagenumberprefix","PageNumberPromotion_"),
new TagParameter("variablepagesize","true")}, 119); %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr> 
</table>
</td>
</tr> 
</table><% out.print("</form>"); %><% } %> 
<% printFooter(out); %>