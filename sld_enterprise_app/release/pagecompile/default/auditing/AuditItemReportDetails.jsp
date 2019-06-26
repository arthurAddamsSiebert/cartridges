<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.localization.LocaleMgr"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%>
<%@page import="com.intershop.beehive.core.capi.request.Request"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%!
void determineLocaleDisplayName()
{
	String localeID = (String)getObject("AttributeChange:LocaleID");
	LocaleInformation locale = NamingMgr.getManager(LocaleMgr.class).getLocaleBy(localeID);
	getPipelineDictionary().put("LocaleName", locale != null ? locale.getDisplayName(Request.getCurrent().getLocale()) : localeID);
}
%><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReportDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("AuditItemID",null),context.getFormattedValue((getObject("AuditItemBO:ID")),null)))),
new TagParameter("id",getObject("AuditItemBO:ID")),
new TagParameter("text",localizeText(context.getFormattedValue("AuditItemReportDetails.EventDetails.text",null)))}, 15); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("AuditItemReportDetails.EventDetails.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AuditItemBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("AuditItemBO:Extension(\"(Class)com.intershop.sellside.enterprise.capi.auditing.AuditItemBODisplayExtension\")")); getPipelineDictionary().put("AuditItemBODisplayExtension", temp_obj);} %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox audititem_details w e s">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("AuditItemReportDetails.ObjectType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBODisplayExtension:ObjectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("AuditItemReportDetails.ActionType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBODisplayExtension:ActionType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("AuditItemReportDetails.Context.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBODisplayExtension:ApplicationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("AuditItemReportDetails.User.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBODisplayExtension:UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("AuditItemReportDetails.DateOfChange.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBODisplayExtension:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBODisplayExtension:CreationDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
<td class="audititem_details_comment top">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="label_text fielditem2" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("AuditItemReportDetails.Domain.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBO:DomainRef:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="label_text fielditem2" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("AuditItemReportDetails.Comment.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBODisplayExtension:Comment"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AuditItemBO:ActionType"),null).equals(context.getFormattedValue("UPDATE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap" width="15%">&nbsp;</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("AuditItemReportDetails.Before.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("AuditItemReportDetails.After.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {Object temp_obj = (""); getPipelineDictionary().put("lastLocaleID", temp_obj);} %><% while (loop("AuditItemBODisplayExtension:AuditAttributeChanges","AttributeChange",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("lastLocaleID"),null).equals(context.getFormattedValue(getObject("AttributeChange:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% determineLocaleDisplayName(); %><tr>
<td class="table_title2 w e s" colspan="3"><% {out.write(localizeISText("AuditItemReportDetails.LocalizedAttributesFor.table_title2",null,null,encodeString(context.getFormattedValue(getObject("LocaleName"),null)),null,null,null,null,null,null,null,null,null));} %></td> 
</tr><% {Object temp_obj = (getObject("AttributeChange:LocaleID")); getPipelineDictionary().put("lastLocaleID", temp_obj);} %><% } %><tr>
<td class="table_detail w e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeChange:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("AttributeChange:OldValue"))}, 88); %></td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("AttributeChange:NewValue"))}, 89); %></td>
</tr><% } %></table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AuditItemBO:ActionType"),null).equals(context.getFormattedValue("CREATE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap" width="15%">&nbsp;</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("AuditItemReportDetails.State.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {Object temp_obj = (""); getPipelineDictionary().put("lastLocaleID", temp_obj);} %><% while (loop("AuditItemBODisplayExtension:AuditAttributeChanges","AttributeChange",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("lastLocaleID"),null).equals(context.getFormattedValue(getObject("AttributeChange:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% determineLocaleDisplayName(); %><tr>
<td class="table_title2 w e s" colspan="2"><% {out.write(localizeISText("AuditItemReportDetails.LocalizedAttributesFor.table_title21",null,null,encodeString(context.getFormattedValue(getObject("LocaleName"),null)),null,null,null,null,null,null,null,null,null));} %></td> 
</tr><% {Object temp_obj = (getObject("AttributeChange:LocaleID")); getPipelineDictionary().put("lastLocaleID", temp_obj);} %><% } %><tr>
<td class="table_detail w e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeChange:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("AttributeChange:NewValue"))}, 110); %></td>
</tr><% } %></table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AuditItemBO:ActionType"),null).equals(context.getFormattedValue("DELETE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap" width="15%">&nbsp;</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("AuditItemReportDetails.PreviousState.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {Object temp_obj = (""); getPipelineDictionary().put("lastLocaleID", temp_obj);} %><% while (loop("AuditItemBODisplayExtension:AuditAttributeChanges","AttributeChange",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("lastLocaleID"),null).equals(context.getFormattedValue(getObject("AttributeChange:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><% determineLocaleDisplayName(); %><tr>
<td class="table_title2 w e s" colspan="2"><% {out.write(localizeISText("AuditItemReportDetails.LocalizedAttributesFor.table_title22",null,null,encodeString(context.getFormattedValue(getObject("LocaleName"),null)),null,null,null,null,null,null,null,null,null));} %></td> 
</tr><% {Object temp_obj = (getObject("AttributeChange:LocaleID")); getPipelineDictionary().put("lastLocaleID", temp_obj);} %><% } %><tr>
<td class="table_detail w e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeChange:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("AttributeChange:OldValue"))}, 131); %></td>
</tr><% } %></table><% }}} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "137");} %><% printFooter(out); %>