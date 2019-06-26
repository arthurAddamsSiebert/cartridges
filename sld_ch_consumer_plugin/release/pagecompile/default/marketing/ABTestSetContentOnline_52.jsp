<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content -->
<script type="text/javascript">
<!--
$(function() {
$('[data-datefield-toggle]').click(function() {
toggleDateFields();
});
});
$(document).ready(function() {
toggleDateFields();
});
function toggleDateFields() {
$('[data-datefield-toggle]').each(function() {
var type = $(this).attr('data-datefield-toggle');
if ($(this).attr('checked') == 'checked') {
$('.dateinput-'+type+' input, .dateinput-'+type+' select, .dateinput-'+type+' button').removeAttr("disabled");
} else {
$('.dateinput-'+type+' input, .dateinput-'+type+' select, .dateinput-'+type+' button').attr("disabled", "disabled"); 
}
});
};
//-->
</script><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("id","SetContentOnline"),
new TagParameter("text",localizeText(context.getFormattedValue("ABTestSetContentOnline_52.breadcrumb",null)))}, 30); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>moment/moment.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>date.format/date.format.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>DatePeriod.js<% out.print("</waplacement>"); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi w100"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.table_title",null)),null)%></td>
</tr>
<tr>
<td class="table_title_description w e s"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.table_title_description",null)),null)%></td>
</tr>
</table><% URLPipelineAction action560 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));String site560 = null;String serverGroup560 = null;String actionValue560 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null);if (site560 == null){  site560 = action560.getDomain();  if (site560 == null)  {      site560 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup560 == null){  serverGroup560 = action560.getServerGroup();  if (serverGroup560 == null)  {      serverGroup560 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ABTestSetContentOnlineForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue560, site560, serverGroup560,true)); %><input type="hidden" name="ABTestUUID" value="<%=context.getFormattedValue(getObject("ABTest:UUID"),null)%>"/>
<input type="hidden" name="ABTestGroupUUID" value="<%=context.getFormattedValue(getObject("ABTestGroup:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- keep content confirmation--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("apply")))).booleanValue() && !((Boolean) ((hasLoopElements("GeneralForm:InvalidParameters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((hasLoopElements("FormErrorMap:KeySet:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","ABTestGroup"),
new TagParameter("cancelbtnname","cancelApply"),
new TagParameter("okbtnname","confirmApply"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ABTestSetContentOnline_52.ConfirmApply.message",null)))}, 58); %></table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GeneralForm:InvalidParameters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% while (loop("GeneralForm:InvalidParameters","param",null)) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box">
<tr>
<td class="error_icon e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15"
alt="" border="0" /></td>
<td class="error" width="100%">&quot;<% {String value = null;try{value=context.getFormattedValue(getObject("param:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&quot; <%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.invalidparameter_suffix.error",null)),null)%> <%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.invalidparameter_msg.error",null)),null)%></td>
</tr>
</table>
</td>
</tr><% } %><% } %><% {Object temp_obj = (getObject("FormErrorMap:KeySet:Iterator")); getPipelineDictionary().put("FormErrors", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FormErrors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% while (loop("FormErrors","key",null)) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box">
<tr>
<td class="error_icon e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15"
alt="" border="0" /></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("key"),null).equals(context.getFormattedValue("PublishedFromDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("FormErrorMap:get(key)"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.missingPublishFrom_content.error",null)),null)%><% {Object temp_obj = ("true"); getPipelineDictionary().put("ItemErrorDateFrom", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("key"),null).equals(context.getFormattedValue("PublishedToDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("FormErrorMap:get(key)"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.missingPublishTo_promotion.error",null)),null)%><% {Object temp_obj = ("true"); getPipelineDictionary().put("ItemErrorDateTo", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FormErrorMap:get(key)"),null).equals(context.getFormattedValue("error.dateafter",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.invalidDatePeriodFromAfterTo.error",null)),null)%><% } else { %>
&quot;<% {String value = null;try{value=context.getFormattedValue(getObject("key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&quot; is invalid. Please enter a valid value to continue.
<% }}} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><!-- end error handling -->
<tr>
<td> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 w e s" colspan="4"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.customerSegments.title",null)),null)%></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><tr>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.customerSegments.name",null)),null)%></td>
<td class="table_header e s"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.customerSegments.description",null)),null)%></td>
<td class="table_header e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.customerSegments.type",null)),null)%></td>
</tr><% while (loop("CustomerGroups","CustomerGroup",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerGroup:isFix"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.customerSegments.type.default",null)),null)%><% } else { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.customerSegments.type.user",null)),null)%><% } %></td>
</tr><% } %></tr><% } else { %><tr>
<td class="table_detail w e s" width="100%" ><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.no_CustomerSegments.msg",null)),null)%></td>
</tr><% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 w e s" colspan="4"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.affiliates.title",null)),null)%></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Affiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.affiliates.name",null)),null)%></td>
<td class="table_header e s"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.affiliates.ID",null)),null)%></td>
<td class="table_header e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.affiliates.Type",null)),null)%></td>
</tr><% while (loop("Affiliates","Affiliate",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Affiliate:AffiliatePartner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.affiliates.program",null)),null)%> <% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:AffiliatePartner:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.affiliates.partner",null)),null)%><% } %></td>
</tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td class="table_detail w e s" width="100%"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.no_affiliates.msg",null)),null)%></td>
</tr><% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 w e s" colspan="4"><% {String value = null;try{value=context.getFormattedValue(getObject("ABTestGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.title_hint.contentThatWillBeSetOnline",null)),null)%></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("PromotionAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("ContentAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w s" nowrap="nowrap" colspan="3">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail">
<input type="radio" data-datefield-toggle="uniform" id="<% {String value = null;try{value=context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_1" name="<% {String value = null;try{value=context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="uniform" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:FormattedValue"),null).equals(context.getFormattedValue("uniform",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="table_detail">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_1"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content.onePublishPeriod",null)),null)%></label>
</td>
</tr>
<tr>
<td class="table_detail">
<input type="radio" data-datefield-toggle="polymorphic" id="<% {String value = null;try{value=context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {225}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_2" name="<% {String value = null;try{value=context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {225}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="polymorphic" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:FormattedValue"),null).equals(context.getFormattedValue("uniform",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="table_detail">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_2"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content.individualPublishPeriod",null)),null)%></label>
</td>
</tr>
</table>
</td>
<td class="s dateinput-uniform" nowrap="nowrap">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail2"> 
<table cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("UniformForm:PublishedFromDate:PublishingFromDay:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("UniformForm:PublishedFromDate:PublishingFromTime:QualifiedName")),
new TagParameter("DateInputFieldLabel","From"),
new TagParameter("TimePatternUserHint","true"),
new TagParameter("DatePatternUserHint","true"),
new TagParameter("DateObject",getObject("UniformForm:PublishedFromDate:Value")),
new TagParameter("Invalid",((((Boolean) getObject("UniformForm:PublishedFromDate:Invalid")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:FormattedValue"),null).equals(context.getFormattedValue("uniform",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 240); %></tr>
</table>
</td>
<td class="table_detail2" style="padding-top: 14px;" valign="top"> 
<select
onChange="updateDate(
this.value,
'<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePattern"),null),(String)("M"),(String)("m")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {256}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'ABTestSetContentOnlineForm',
'<% {String value = null;try{value=context.getFormattedValue(getObject("UniformForm:PublishedFromDate:PublishingFromDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {258}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("UniformForm:PublishedFromDate:PublishingFromTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("UniformForm:PublishedToDate:PublishingToDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {260}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("UniformForm:PublishedToDate:PublishingToTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {261}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("UniformForm:PublishingPeriod:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {262}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="select" name="
<% {String value = null;try{value=context.getFormattedValue(getObject("UniformForm:PublishingPeriod:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {264}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",265,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="0"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.selectPeriod",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="1"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.1month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",269,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="2"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.2month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="3"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.3month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UniformForm:PublishingPeriod:Value"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",273,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="6"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.6month",null)),null)%></option>
</select>
</td>
<td class="table_detail2"> 
<table cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("DateInputFieldName",getObject("UniformForm:PublishedToDate:PublishingToDay:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("UniformForm:PublishedToDate:PublishingToTime:QualifiedName")),
new TagParameter("DateInputFieldLabel","To"),
new TagParameter("TimePatternUserHint","true"),
new TagParameter("DatePatternUserHint","true"),
new TagParameter("DateObject",getObject("UniformForm:PublishedToDate:Value")),
new TagParameter("Invalid",((((Boolean) getObject("UniformForm:PublishedToDate:Invalid")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:FormattedValue"),null).equals(context.getFormattedValue("uniform",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 280); %></tr>
</table>
</td>
</tr>
</table>
</td>
<td class="table_detail e s" width="30%">&nbsp;</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("PromotionAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("ContentAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { %> 
<tr>
<td class="table_header w e s" nowrap="nowrap" colspan="2"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_promotion.type",null)),null)%></td>
<td class="table_header e s" nowrap="nowrap" ><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_promotion.name",null)),null)%></td>
<td class="table_header e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_promotion.ID",null)),null)%></td>
<td class="table_header e s <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ItemErrorDateFrom"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:FormattedValue"),null).equals(context.getFormattedValue("uniform",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",306,e);}if (_boolean_result) { %> error<% } %>"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.publishFrom",null)),null)%><span class="star">*</span> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {307}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.timepattern",null)),null)%>)
</td>
<td class="table_header e s <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ItemErrorDateTo"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("GeneralForm:PeriodUniformity:FormattedValue"),null).equals(context.getFormattedValue("uniform",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",309,e);}if (_boolean_result) { %> error<% } %>" colspan="2"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.publishTo",null)),null)%> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {310}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.timepattern",null)),null)%>)
</td>
</tr><% while (loop("PromotionAssignments","promotion",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.promotion.title",null)),null)%><td class="table_detail e s" nowrap="nowrap"><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionList-GetPromotionTypes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionID",null),context.getFormattedValue(getObject("promotion:ID"),null)))),null), null, null, "317");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("promotion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {318}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("promotion:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {319}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail2 e s dateinput-polymorphic" nowrap="nowrap">
<table cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("DateInputFieldName",getObject("PromotionsForm:get(promotion:UUID):PublishedFromDate:PublishingFromDay:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("PromotionsForm:get(promotion:UUID):PublishedFromDate:PublishingFromTime:QualifiedName")),
new TagParameter("TimePatternUserHint","false"),
new TagParameter("DatePatternUserHint","false"),
new TagParameter("DateObject",getObject("PromotionsForm:get(promotion:UUID):PublishedFromDate:Value"))}, 323); %></tr>
</table></td>
<td class="table_detail2 s dateinput-polymorphic" nowrap="nowrap">
<select
onChange="updateDate(
this.value,
'<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePattern"),null),(String)("M"),(String)("m")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {336}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'ABTestSetContentOnlineForm',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishedFromDate:PublishingFromDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {338}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishedFromDate:PublishingFromTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {339}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishedToDate:PublishingToDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {340}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishedToDate:PublishingToTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {341}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {342}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="select" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {343}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",344,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="0"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.selectPeriod",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",346,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="1"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.1month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",348,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="2"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.2month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",350,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="3"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.3month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionsForm:get(promotion:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",352,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="6"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.6month",null)),null)%></option>
</select>
</td>
<td class="table_detail2 e s dateinput-polymorphic" nowrap="nowrap">
<table cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("DateInputFieldName",getObject("PromotionsForm:get(promotion:UUID):PublishedToDate:PublishingToDay:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("PromotionsForm:get(promotion:UUID):PublishedToDate:PublishingToTime:QualifiedName")),
new TagParameter("TimePatternUserHint","false"),
new TagParameter("DatePatternUserHint","false"),
new TagParameter("DateObject",getObject("PromotionsForm:get(promotion:UUID):PublishedToDate:Value"))}, 359); %></tr>
</table>
</td>
</tr><% } %><% while (loop("ContentAssignments","pageletAssignment",null)) { %><tr>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pageletAssignment:Pagelet:isPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",376,e);}if (_boolean_result) { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_type.pageVariant",null)),null)%><% } else { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_type.component",null)),null)%><% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pageletAssignment:Pagelet:PageletDefinition:DisplayName:get(Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {377}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("pageletAssignment:Pagelet"))}, 378); %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pageletAssignment:Pagelet:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {379}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail2 e s dateinput-polymorphic">
<table cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("DateInputFieldName",getObject("PageletsForm:get(pageletAssignment:UUID):PublishedFromDate:PublishingFromDay:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("PageletsForm:get(pageletAssignment:UUID):PublishedFromDate:PublishingFromTime:QualifiedName")),
new TagParameter("TimePatternUserHint","false"),
new TagParameter("DatePatternUserHint","false"),
new TagParameter("DateObject",getObject("PageletsForm:get(pageletAssignment:UUID):PublishedFromDate:Value"))}, 383); %></tr>
</table>
</td>
<td class="table_detail2 s dateinput-polymorphic">
<select
onChange="updateDate(
this.value,
'<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePattern"),null),(String)("M"),(String)("m")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {397}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'ABTestSetContentOnlineForm',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishedFromDate:PublishingFromDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {399}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishedFromDate:PublishingFromTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {400}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishedToDate:PublishingToDay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {401}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'<% {String value = null;try{value=context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishedToDate:PublishingToTime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {402}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {403}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="select" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {404}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",405,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="0"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.selectPeriod",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",407,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="1"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.1month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",409,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="2"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.2month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",411,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="3"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.3month",null)),null)%></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletsForm:get(pageletAssignment:UUID):PublishingPeriod:Value"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",413,e);}if (_boolean_result) { %>selected="selected"<% } %>
value="6"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.period.6month",null)),null)%></option>
</select> 
</td>
<td class="table_detail2 e s dateinput-polymorphic">
<table cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("DateInputFieldName",getObject("PageletsForm:get(pageletAssignment:UUID):PublishedToDate:PublishingToDay:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("PageletsForm:get(pageletAssignment:UUID):PublishedToDate:PublishingToTime:QualifiedName")),
new TagParameter("TimePatternUserHint","false"),
new TagParameter("DatePatternUserHint","false"),
new TagParameter("DateObject",getObject("PageletsForm:get(pageletAssignment:UUID):PublishedToDate:Value"))}, 421); %></tr>
</table>
</td>
</tr><% } %><% } else { %><tr><td class="table_detail w e s" colspan="7"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.no_content_testgroup.msg",null)),null)%></td></tr><% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 w e s" colspan="4"><% {String value = null;try{value=context.getFormattedValue(getObject("ABTestControlGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {443}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.title_hint.contentThatWillBeHidden",null)),null)%></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<colgroup>
<col width="10%" />
<col width="20%" />
<col width="30%" />
<col width="40%" />
</colgroup><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("PromotionAssignmentsToHide") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("ContentAssignmentsToHide") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",454,e);}if (_boolean_result) { %> 
<tr>
<td class="table_header w e s" nowrap="nowrap" colspan="2"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_promotion.type",null)),null)%></td>
<td class="table_header e s" nowrap="nowrap" ><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_promotion.name",null)),null)%></td>
<td class="table_header e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_promotion.ID",null)),null)%></td>
</tr><% while (loop("PromotionAssignmentsToHide","promotion",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_type.promotion",null)),null)%><td class="table_detail e s" nowrap="nowrap"><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionList-GetPromotionTypes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionID",null),context.getFormattedValue(getObject("promotion:ID"),null)))),null), null, null, "464");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("promotion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {465}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("promotion:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {466}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% while (loop("ContentAssignmentsToHide","pageletAssignment",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pageletAssignment:Pagelet:isPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",475,e);}if (_boolean_result) { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_type.pageVariant",null)),null)%><% } else { %><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.content_type.component",null)),null)%><% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pageletAssignment:Pagelet:PageletDefinition:DisplayName:get(Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {481}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("pageletAssignment:Pagelet"))}, 482); %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pageletAssignment:Pagelet:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {483}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } else { %><tr><td class="table_detail w e s" colspan="4"><%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.no_content_controlgroup.msg",null)),null)%></td></tr><% } %></table>
</table>
</td>
</tr>
<tr>
<td width="100%" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td colspan=2>&nbsp;</td>
</tr>
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.Apply.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSetContentOnline_52.Cancel.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="8" alt="" border="0"/></div>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>