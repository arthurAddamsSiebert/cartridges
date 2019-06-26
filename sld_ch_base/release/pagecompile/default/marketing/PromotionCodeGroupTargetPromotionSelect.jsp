<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetPromotionSelection-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCodeGroupID",null),context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionCodeGroupTargetPromotionSelect.AssignPromotions.text",null)))}, 5); %><!-- Working Area -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("PromotionCodeGroupTargetPromotionSelect.AssignPromotions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PromotionCodeGroupTargetPromotionSelect.YouHaveNotSelectedAnyPromotion.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGroupTargetPromotionSelect.TheListShowsAllPromotionsOfThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
<% {out.write(localizeISText("PromotionCodeGroupTargetPromotionSelect.PromotionsWhichAreAlreadyAssignedToTheCodeGroupHave.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Promotion Search Mask --><% {Object temp_obj = ("ViewPromotionCodeGroupTargetPromotionSelection"); getPipelineDictionary().put("ViewPipeline", temp_obj);} %><% {Object temp_obj = ("PromotionCodeGroupID"); getPipelineDictionary().put("parametername1", temp_obj);} %><% {Object temp_obj = (getObject("PromotionCodeGroup:ID")); getPipelineDictionary().put("parametervalue1", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionSearchMask", null, "50");} %><!-- EO Promotion Search Mask --><% URLPipelineAction action243 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetPromotionSelection-Dispatch",null)))),null));String site243 = null;String serverGroup243 = null;String actionValue243 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetPromotionSelection-Dispatch",null)))),null);if (site243 == null){  site243 = action243.getDomain();  if (site243 == null)  {      site243 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup243 == null){  serverGroup243 = action243.getServerGroup();  if (serverGroup243 == null)  {      serverGroup243 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetPromotionSelection-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionsSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue243, site243, serverGroup243,true)); %><input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {Object temp_obj = ("ViewPromotionCodeGroupTargetPromotionSelection-Sort"); getPipelineDictionary().put("SortingPipeline", temp_obj);} %><% {Object temp_obj = ("PromotionCodeGroupID"); getPipelineDictionary().put("SortingKey", temp_obj);} %><% {Object temp_obj = (getObject("PromotionCodeGroup:ID")); getPipelineDictionary().put("SortingValue", temp_obj);} %><% {Object temp_obj = ("PromotionsSelectionForm"); getPipelineDictionary().put("FormID", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionsListInc", null, "64");} %><% } else { %> 
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr> 
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("PromotionCodeGroupTargetPromotionSelect.ThereAreCurrentlyNoPromotionsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table><% } %> 
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetPromotionSelect.Assign.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetPromotionSelect.Cancel.button",null)),null)%>" class="button"/></td> 
</tr>
</table> 
</td> 
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table class="pagecursor" width="100%">
<tr>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewPromotionCodeGroupTargetPromotionSelection-Paging"),
new TagParameter("formName","PromotionsSelectionForm"),
new TagParameter("pageable","Promotions")}, 93); %><!-- EO Page Cursor -->
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area -->
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>