<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/Modules", null, "3");} %><script language="JavaScript" type="text/javascript"><!--
function toogleTimeFrame(checked)
{
var StartDate = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:StartDate:StartDateDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
var StartTime = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:StartDate:StartDateTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
var EndDate = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:EndDate:EndDateDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
var EndTime = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:EndDate:EndDateTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
var CalendarButtons = $('[onclick^="popCalendar"]');
// Is radio "activate content at the following time"
if ($(checked).val() == 1) {
// Activate content at the following time
StartDate.prop('disabled', false);
StartTime.prop('disabled', false);
EndDate.prop('disabled', false);
EndTime.prop('disabled', false);
CalendarButtons.prop('disabled', false);
dateInputTest();
}else{
StartDate.prop('disabled', true);
StartTime.prop('disabled', true);
EndDate.prop('disabled', true);
EndTime.prop('disabled', true);
CalendarButtons.prop('disabled', true);
$('[name="updateActivation"]').prop('disabled', false);
}
}
function dateInputTest() {
var StartDate = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:StartDate:StartDateDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
var StartTime = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:StartDate:StartDateTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
var EndDate = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:EndDate:EndDateDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
var EndTime = $('[name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:EndDate:EndDateTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]');
if (StartDate.val() !== '' && StartTime.val() !== '' && EndDate.val() !== '' && EndTime.val() !== '') {
$('[name="updateActivation"]').prop('disabled', false);
}else{
$('[name="updateActivation"]').prop('disabled', true);
}
}
$(function() {
$(document).on('keyup', '[name^="PromotionContentActivation"]', dateInputTest);
toogleTimeFrame( $('[type="radio"]:checked') );
});
--></script>
<!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PromotionContent.Content.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContent-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))))),
new TagParameter("id",getObject("Promotion:UUID")),
new TagParameter("text",getObject("Promotion:DisplayName"))}, 69); %><!-- Promotion Details Heading --><% URLPipelineAction action261 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContent-DispatchGeneral",null)))),null));String site261 = null;String serverGroup261 = null;String actionValue261 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContent-DispatchGeneral",null)))),null);if (site261 == null){  site261 = action261.getDomain();  if (site261 == null)  {      site261 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup261 == null){  serverGroup261 = action261.getServerGroup();  if (serverGroup261 == null)  {      serverGroup261 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContent-DispatchGeneral",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionContentFormGeneral");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue261, site261, serverGroup261,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionDetailsHeadingInc", null, "73");} %><% out.print("</form>"); %><!-- Tabs --><% {Object temp_obj = ("Content"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionTabsInc", null, "78");} %><!-- EO Tabs -->
<!-- incompleteness check--><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionIncompletenessMessage", null, "82");} %><!-- end incompleteness check--><% URLPipelineAction action262 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContent-Dispatch",null)))),null));String site262 = null;String serverGroup262 = null;String actionValue262 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContent-Dispatch",null)))),null);if (site262 == null){  site262 = action262.getDomain();  if (site262 == null)  {      site262 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup262 == null){  serverGroup262 = action262.getServerGroup();  if (serverGroup262 == null)  {      serverGroup262 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionContent-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionContentActivation:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue262, site262, serverGroup262,true)); %><input type="hidden" name="ProcessType" value="New"/>
<input type="hidden" name="PromotionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e table_title_description"><% {out.write(localizeISText("PromotionContent.TheListShowsCurrentContentAssignments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale n e w">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("PromotionContent.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionContent.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Error Handling for Content Activation --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionContentActivation:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box n e w">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("PromotionContent.ChangesCouldNotBeApplied.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionContentActivation:StartDate:isError(\"error.datetime\")")).booleanValue() || ((Boolean) getObject("PromotionContentActivation:StartDate:isError(\"error.dependson\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionContent.TheStartDateIsNotInTheCorrectFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionContentActivation:StartDate:isError(\"error.content.startdate\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionContent.TheContentStartDateMustBeBeforeOrEquals.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionContentActivation:EndDate:isError(\"error.datetime\")")).booleanValue() || ((Boolean) getObject("PromotionContentActivation:EndDate:isError(\"error.dependson\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionContent.TheEndDateIsNotInTheCorrectFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionContentActivation:EndDate:isError(\"error.content.enddate\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionContent.TheContentEndDateMustBeEqualsToOrAfter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionContentActivation:EndDate:isError(\"error.dateafter\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionContent.TheStartDateMustBeBeforeTheEndDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %></td>
</tr>
</table><% } %><!-- EO Error Handling for Content Activation -->
<!-- Content Activation -->
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="aldi">
<colgroup>
<col width="15%" />
<col width="85%" />
</colgroup>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="label_radio">
<label class="label label_radio"><% {out.write(localizeISText("PromotionContent.ContentActivation.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="fielditem">
<input onclick="toogleTimeFrame(this);" class="inputfield_en" type="radio" id="promotionDate" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:Type:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("PromotionContentActivation:Type:FormattedValue"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>&nbsp;<label for="promotionDate"><% {out.write(localizeISText("PromotionContent.UsePromotionStartAndEndDate.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="fielditem">
<input onclick="toogleTimeFrame(this);" class="inputfield_en" type="radio" id="definedDate" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:Type:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionContentActivation:Type:FormattedValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>&nbsp;<label for="definedDate"><% {out.write(localizeISText("PromotionContent.ActivateContentAtTheFollowingTime.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td>
<table width="100%" border="0" cellspacing="2" cellpadding="0">
<colgroup>
<col width="5%" />
<col width="5%" />
<col width="90%" />
</colgroup>
<tr>
<td>&nbsp;</td><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("PromotionContentActivation:StartDate:StartDateTime:Value")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("PromotionContentActivation:StartDate:StartDateDay:QualifiedName")),
new TagParameter("DateString",getObject("PromotionContentActivation:StartDate:StartDateDay:Value")),
new TagParameter("TimeInputFieldName",getObject("PromotionContentActivation:StartDate:StartDateTime:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AssignedPromotionsList.StartDate.link",null))),
new TagParameter("DateObject",getObject("PromotionContentActivation:StartDate:Value")),
new TagParameter("Invalid",getObject("PromotionContentActivation:StartDate:Invalid"))}, 185); %></tr>
<tr>
<td>&nbsp;</td><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("PromotionContentActivation:EndDate:EndDateTime:Value")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("PromotionContentActivation:EndDate:EndDateDay:QualifiedName")),
new TagParameter("DateString",getObject("PromotionContentActivation:EndDate:EndDateDay:Value")),
new TagParameter("TimeInputFieldName",getObject("PromotionContentActivation:EndDate:EndDateTime:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("ChannelShortLinkList.EndDate.link",null))),
new TagParameter("DateObject",getObject("PromotionContentActivation:EndDate:Value")),
new TagParameter("Invalid",getObject("PromotionContentActivation:EndDate:Invalid"))}, 198); %></tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="fielditem">
<input onclick="toogleTimeFrame(this);" class="inputfield_en" type="radio" id="contentDate" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionContentActivation:Type:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="2"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionContentActivation:Type:FormattedValue"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>&nbsp;<label for="contentDate"><% {out.write(localizeISText("PromotionContent.UseThePublishingStartAndEndDateOfContent.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %><tr>
<td colspan="3" class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateActivation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionContent.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="resetActivation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionContent.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Content Activation -->
<!-- Assignments --><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","PageletUUID"),
new TagParameter("value0",getObject("Pagelet:UUID")),
new TagParameter("mapname","Parameters")}, 252); %><% processOpenTag(response, pageContext, "pageletpromotionassignments", new TagParameter[] {
new TagParameter("ContextTypeName","promotion"),
new TagParameter("Locale",getObject("SelectedLocale")),
new TagParameter("CurrentChannelPermissionMap",getObject("CurrentChannelPermissionMap")),
new TagParameter("PageFlag","true"),
new TagParameter("selectedMenuItem","OnlineMarketing"),
new TagParameter("ContextPipeline","ViewPromotionContent-Dispatch"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("GetPipeline","ViewPromotionContent-GetContextObject")}, 253); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</td>
</tr>
</table><% processOpenTag(response, pageContext, "pageletpromotionassignments", new TagParameter[] {
new TagParameter("ContextTypeName","promotion"),
new TagParameter("Locale",getObject("SelectedLocale")),
new TagParameter("CurrentChannelPermissionMap",getObject("CurrentChannelPermissionMap")),
new TagParameter("PageFlag","false"),
new TagParameter("selectedMenuItem","OnlineMarketing"),
new TagParameter("ContextPipeline","ViewPromotionContent-Dispatch"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("GetPipeline","ViewPromotionContent-GetContextObject")}, 271); %><!-- EO Assignments --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "283");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PromotionContentActivation:Type:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
<!--
$(function()
{
toogleTimeFrame(false);
});
-->
</script><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>