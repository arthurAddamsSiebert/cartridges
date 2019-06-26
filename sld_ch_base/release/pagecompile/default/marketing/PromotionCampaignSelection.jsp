<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCampaignAssignment-SearchCampaigns",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionCampaignSelection.AssignToCampaign.text",null)))}, 4); %><!-- Working Area --><% URLPipelineAction action286 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCampaignAssignment-Dispatch",null)))),null));String site286 = null;String serverGroup286 = null;String actionValue286 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCampaignAssignment-Dispatch",null)))),null);if (site286 == null){  site286 = action286.getDomain();  if (site286 == null)  {      site286 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup286 == null){  serverGroup286 = action286.getServerGroup();  if (serverGroup286 == null)  {      serverGroup286 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCampaignAssignment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CampaignSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue286, site286, serverGroup286,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("PromotionCampaignSelection.AssignToCampaign.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- error messages --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERRORAssignCampaign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ERRORAssignCampaign"),null).equals(context.getFormattedValue("NothingSelected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionCampaignSelection.YouHaveNothingSelectedToAssign.message",null))),
new TagParameter("class","w e s")}, 18); %><% } %><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("PromotionCampaignSelection.TheListShowsAllCampaignsForThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Campaigns") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PromotionCampaignSelection.SelectACampaignAndClickAssignButton.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Campaigns") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail aldi"><% {out.write(localizeISText("PromotionCampaignSelection.CurrentlyThisChannelHasNoCampaignsToAssign.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td align="right" class="w e s">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Promotion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><input type="hidden" name="PromotionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCampaignSelection.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s" width="50" nowrap="nowrap"><% {out.write(localizeISText("PromotionCampaignSelection.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCampaignSelection.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCampaignSelection.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCampaignSelection.Content.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCampaignSelection.StartDate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCampaignSelection.EndDate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCampaignSelection.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Campaigns","Campaign",null)) { %><tr>
<td class="table_bg w e s center top">
<input type="radio" name="CampaignUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Campaign:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %> checked="checked"<% } %> 
/>
</td>
<td class="table_detail e s top">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "marketingobjectdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Object",getObject("Campaign"))}, 76); %></a>&nbsp;
</td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Campaign:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail e s top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CampaignContentAssignmentsTypeSummary", null, "79");} %></td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:StartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:StartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:EndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:EndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s left top"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Campaign:isEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCampaignSelection.Enabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCampaignSelection.Disabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right" class="">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Promotion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><input type="hidden" name="PromotionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><td class="button"><input type="submit" name="assignToCampaign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCampaignSelection.Assign.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCampaignSelection.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table class="pagecursor" width="100%">
<tr>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewPromotionCampaignAssignment-Paging"),
new TagParameter("formName","CampaignSelectionForm"),
new TagParameter("pageable","Campaigns")}, 111); %><!-- EO Page Cursor -->
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>