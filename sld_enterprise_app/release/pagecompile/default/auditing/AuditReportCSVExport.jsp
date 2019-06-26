<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/octet-stream;charset=utf-8" %><%setEncodingType("application/octet-stream"); %><%
%><%@page import="com.intershop.component.auditing.capi.audititem.AuditItemBO"%><%
%><%@page import="com.intershop.beehive.core.capi.request.Request"%><%
%><%@page import="com.intershop.beehive.core.capi.paging.PageableIterator"%><%
%><% context.setCustomTagTemplateName("formatobjectdisplay","inc/FormatObjectDisplay.isml",true,new String[]{"displayObject"},null); %><%
%><% context.setCustomTagTemplateName("formatitemdisplay","inc/FormatItemDisplayCSV.isml",true,new String[]{"displayItem"},null); %><%
%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AuditItemBOs")))).booleanValue() && ((Boolean) (hasLoopElements("AuditItemBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><%
	Request.getCurrent().getServletResponse().setHeader("Content-Disposition", "attachment;filename=\"AuditReportCSVExport.csv\"");
	// convert to sequence
/* Do not destroy the pageable as long as the pageable is used in the UI (e.g. for paging or restarting the export)	
	ResettableIterator<AuditItemBO> pageable = (ResettableIterator<AuditItemBO>)getObject("AuditItemBOs");
    getPipelineDictionary().put("AuditItemBOs", pageable.toSequence());
*/
	PageableIterator<AuditItemBO> pageable = (PageableIterator<AuditItemBO>)getObject("AuditItemBOs");
	pageable.setPageSize(0);
    getPipelineDictionary().put("LINE_SEPARATOR", System.getProperty("line.separator"));
%>User ID;Context;Date/Time;Object Type;Domain;Action Type;Comment;Detail
;;;;;;;Attribute Name;Locale ID;Old Value;New Value<%
%><% while (loop("AuditItemBOs","AuditItemBO",null)) { %><%
%><% {Object temp_obj = (getObject("AuditItemBO:Extension(\"(Class)com.intershop.sellside.enterprise.capi.auditing.AuditItemBODisplayExtension\")")); getPipelineDictionary().put("AuditItem", temp_obj);} %><%
%>
<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<%
%><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:ApplicationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<%
%><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<%
%><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("AuditItem:ObjectType"),null),(String)(getObject("LINE_SEPARATOR")),(String)("|")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<%
%><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBO:DomainRef:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<%
%><% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:ActionType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<%
%><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("AuditItem:Comment"),null),(String)(getObject("LINE_SEPARATOR")),(String)("|")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% 
%><% {Object temp_obj = (getObject("AuditItem:AuditAttributeChanges")); getPipelineDictionary().put("AuditAttributeChanges", temp_obj);} %><%
%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AuditAttributeChanges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><%
%><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("AuditAttributeChangeCount", temp_obj);} %><%
%><% while (loop("AuditAttributeChanges","Change",null)) { %><%
%><% {Object temp_obj = ((new Double( ((Number) getObject("AuditAttributeChangeCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("AuditAttributeChangeCount", temp_obj);} %><%
%>;<% {String value = null;try{value=context.getFormattedValue(getObject("Change:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% {String value = null;try{value=context.getFormattedValue(getObject("Change:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("Change:OldValue"))}, 42); %>;<% processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("Change:NewValue"))}, 42); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuditAttributeChanges:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><%
%><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuditAttributeChangeCount")).doubleValue() <=((Number)(getObject("AuditAttributeChanges:Size"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
;;;;;;<% } %><% } %><%
%><% } %><%
%><% } %><%
%><% } %><%
%><% } %>
<% printFooter(out); %>