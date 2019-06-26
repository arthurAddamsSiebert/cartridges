<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--PromotionActionList_52.isml-->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionActionList_52.ProcessPromotionSearchResultStep1SelectAction.text",null))),
new TagParameter("id","Select Action")}, 6); %><% URLPipelineAction action580 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null));String site580 = null;String serverGroup580 = null;String actionValue580 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null);if (site580 == null){  site580 = action580.getDomain();  if (site580 == null)  {      site580 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup580 == null){  serverGroup580 = action580.getServerGroup();  if (serverGroup580 == null)  {      serverGroup580 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue580, site580, serverGroup580,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2"><% {out.write(localizeISText("PromotionActionList_52.Step1SelectAction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionListFormSubmitted"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PromotionActionList_52.YouHaveNotSelectedAnActionSelectAnActionAndThenClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="w e s table_title_description" colspan = "2" nowrap="nowrap"><% {out.write(localizeISText("PromotionActionList_52.Step1SelectPromotionProcessingActionNextStepsDepend.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="8"> 
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignPromotionToTargetAffiliates",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignPromotionToTargetAffiliates" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignPromotionToTargetAffiliates"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionActionList_52.AssignPromotionsToTargetGroupAffiliates.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignPromotionToCustomerSegments",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignPromotionToCustomerSegments" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignPromotionToCustomerSegments"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionActionList_52.AssignPromotionsToCustomerSegments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignPromotionToTargetGroupConsumers",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignPromotionToTargetGroupConsumers" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignPromotionToTargetGroupConsumers"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionActionList_52.AssignPromotionsToTargetGroupCustomers.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeletePromotions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="DeletePromotions" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="DeletePromotions"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionActionList_52.DeletePromotions.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("ExportPromotions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="ExportPromotions" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="ExportPromotions"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionActionList_52.ExportPromotions.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</tr>
</td>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="PromotionSearch_PromotionName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionSearch_PromotionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ActionListFormSubmitted" value="true"/>
<input type="hidden" name="SelectedMenuItem" value="ChannelPromotions"/>
<input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionActionList_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionActionList_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>