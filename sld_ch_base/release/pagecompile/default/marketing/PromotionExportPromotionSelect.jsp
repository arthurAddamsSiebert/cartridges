<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportPromotions-ListPromotions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ExportUUID",null),context.getFormattedValue(getObject("PromotionExport:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionExportPromotionSelect.AssignPromotions.text",null)))}, 5); %><% URLPipelineAction action312 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportPromotions-Dispatch",null)))),null));String site312 = null;String serverGroup312 = null;String actionValue312 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportPromotions-Dispatch",null)))),null);if (site312 == null){  site312 = action312.getDomain();  if (site312 == null)  {      site312 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup312 == null){  serverGroup312 = action312.getServerGroup();  if (serverGroup312 == null)  {      serverGroup312 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportPromotions-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("promotionListMessages");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue312, site312, serverGroup312,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionExport:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("PromotionExportPromotionSelect.AssignPromotions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assignPromotion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("okbtnname","Finish"),
new TagParameter("type","mae2")}, 13); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoElements",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"> 
<% {out.write(localizeISText("PromotionExportPromotionSelect.YouHaveNotSelectedAnyPromotions.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PromotionExportPromotionSelect.TheListShowsTheAllPromotionsFoundByYourSearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% out.print("</form>"); %><% {Object temp_obj = ("ViewPromotionExportPromotions"); getPipelineDictionary().put("ViewPipeline", temp_obj);} %><% {Object temp_obj = ("ExportUUID"); getPipelineDictionary().put("parametername3", temp_obj);} %><% {Object temp_obj = (getObject("PromotionExport:UUID")); getPipelineDictionary().put("parametervalue3", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionSearchMask", null, "44");} %><% URLPipelineAction action313 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportPromotions-Dispatch",null)))),null));String site313 = null;String serverGroup313 = null;String actionValue313 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportPromotions-Dispatch",null)))),null);if (site313 == null){  site313 = action313.getDomain();  if (site313 == null)  {      site313 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup313 == null){  serverGroup313 = action313.getServerGroup();  if (serverGroup313 == null)  {      serverGroup313 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportPromotions-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("promotionList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue313, site313, serverGroup313,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="selectedType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("selectedType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("PromotionSearchForm:Submitted"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><input type="hidden" name="ExportUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("PromotionExportPromotionSelect.NoPromotionsWereFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionExportPromotionSelect.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %> 
<% {Object temp_obj = ("ViewPromotionExportPromotions-Sort"); getPipelineDictionary().put("SortingPipeline", temp_obj);} %><% {Object temp_obj = ("ExportUUID"); getPipelineDictionary().put("SortingKey", temp_obj);} %><% {Object temp_obj = (getObject("ExportUUID")); getPipelineDictionary().put("SortingValue", temp_obj);} %><% {Object temp_obj = ("promotionList"); getPipelineDictionary().put("FormID", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionsListInc", null, "85");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="Assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionExportPromotionSelect.OK.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionExportPromotionSelect.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table class="pagecursor" width="100%">
<tr>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewPromotionExportPromotions-Paging"),
new TagParameter("formName","promotionList"),
new TagParameter("pageable","Promotions")}, 106); %><!-- EO Page Cursor -->
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>