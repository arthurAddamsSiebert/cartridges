<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPropertiesAssignABTest-PromotionList",null))))),
new TagParameter("id","AssignABTestPromotionList"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignABTestSearchPromotionList_52.PromotionList.text",null)))}, 5); %><% URLPipelineAction action279 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-Dispatch",null)))),null));String site279 = null;String serverGroup279 = null;String actionValue279 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-Dispatch",null)))),null);if (site279 == null){  site279 = action279.getDomain();  if (site279 == null)  {      site279 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup279 == null){  serverGroup279 = action279.getServerGroup();  if (serverGroup279 == null)  {      serverGroup279 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("promotionListMessages");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue279, site279, serverGroup279,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.SelectPromotions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectPromotion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e">
<tr>
<td class="error_icon middle s e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle s " width="100%"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.YouHaveNotSelectedAnyPromotionsUseTheCheckboxesToS.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr> 
<% } %><% } %><tr><td class="table_title_description w e"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.SelectOneOrMorePromotionsToRestrainYourSearchResul.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
</table><% out.print("</form>"); %><% {Object temp_obj = ("ViewPageletPropertiesAssignABTest"); getPipelineDictionary().put("ViewPipeline", temp_obj);} %><% {Object temp_obj = ("PageletUUID"); getPipelineDictionary().put("parametername1", temp_obj);} %><% {Object temp_obj = (getObject("PageletUUID")); getPipelineDictionary().put("parametervalue1", temp_obj);} %><% {Object temp_obj = ("RepositoryUUID"); getPipelineDictionary().put("parametername2", temp_obj);} %><% {Object temp_obj = (getObject("RepositoryUUID")); getPipelineDictionary().put("parametervalue2", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionSearchMask", null, "36");} %><% URLPipelineAction action280 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPropertiesAssignABTest-DispatchContentList",null)))),null));String site280 = null;String serverGroup280 = null;String actionValue280 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPropertiesAssignABTest-DispatchContentList",null)))),null);if (site280 == null){  site280 = action280.getDomain();  if (site280 == null)  {      site280 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup280 == null){  serverGroup280 = action280.getServerGroup();  if (serverGroup280 == null)  {      serverGroup280 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPropertiesAssignABTest-DispatchContentList",null)))),null));out.print("\"");out.print(" name=\"");out.print("promotionList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue280, site280, serverGroup280,true)); %><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="RepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RepositoryUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("PromotionSearchForm:Submitted"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail aldi"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.NoPromotionsWereFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% } %></td>
</tr>
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Promotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header aldi center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('promotionList','SelectedPromotionUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('promotionList','SelectedPromotionUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.StartDate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.EndDate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Promotions","aPromotion",null)) { %><tr>
<td class="table_bg w e s center">
<input type="hidden" name="PromotionUUID" value="<%=context.getFormattedValue(getObject("aPromotion:UUID"),null)%>"/>
<input type="checkbox" name="SelectedPromotionUUID" value="<%=context.getFormattedValue(getObject("aPromotion:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(aPromotion:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %> checked="checked"<% } %> /><input type="hidden" name="promotion" value="<%=context.getFormattedValue(getObject("aPromotion:UUID"),null)%>"/>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:StartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:StartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:EndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("aPromotion:EndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aPromotion:TypeCode")))).booleanValue() && ((Boolean) ((( ((Number) getObject("aPromotion:TypeCode")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.Discount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aPromotion:TypeCode")))).booleanValue() && ((Boolean) ((( ((Number) getObject("aPromotion:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.ReusableCoupons.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aPromotion:TypeCode")))).booleanValue() && ((Boolean) ((( ((Number) getObject("aPromotion:TypeCode")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.UniqueCoupons.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %></td>
<td class="table_detail e s left"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("aPromotion:isEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.Enabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("AssignABTestSearchPromotionList_52.Disabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="hidden" name="ABTestSearch_ABTestName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_ABTestName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_Component" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_Component"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_ComponentID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_ComponentID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_ComponentName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_ComponentName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_EndDate" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_EndDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_Page" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_PageID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_PageID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_PageName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_PageName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_Promotion" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_Promotion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_PromotionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_PromotionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_PromotionName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_PromotionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_StartDate" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_StartDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ABTestSearch_Status" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestSearch_Status"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="UniquePageletSearchID" value="ABTestSerachContentList_52"/>
<input type="submit" name="selectPromotion" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignABTestSearchPromotionList_52.Select.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignABTestSearchPromotionList_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table class="pagecursor" width="100%">
<tr>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewABTestList_52-PromotionListPaging"),
new TagParameter("formName","promotionList"),
new TagParameter("pageable","Promotions")}, 148); %><!-- EO Page Cursor -->
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "158");} %><% printFooter(out); %>