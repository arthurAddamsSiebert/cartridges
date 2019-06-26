<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/octet-stream;charset=utf-8" %><%setEncodingType("application/octet-stream"); %><%
%><%@page import="com.intershop.component.auditing.capi.audititem.AuditItemBO"%><%
%><%@page import="com.intershop.beehive.core.capi.request.Request"%><%
%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"auditing/Modules.isml", null, "4");} %><%
%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Objects")))).booleanValue() && ((Boolean) (hasLoopElements("Objects") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><%
	// convert to sequence
	ResettableIterator<AuditItemBO> pageable = (ResettableIterator<AuditItemBO>)getObject("Objects");
    getPipelineDictionary().put("AuditItemBOs", pageable.toSequence());
    getPipelineDictionary().put("LINE_SEPARATOR", System.getProperty("line.separator"));
%>UUID;User ID;Context;Date/Time;Object Type;Domain;Transaction Type;Comment;Attribute Name;Locale ID;Old Value;New Value
	
	<% while (loop("AuditItemBOs","AuditItemBO",null)) { %><%
		%><% {Object temp_obj = (getObject("AuditItemBO:Extension(\"(Class)com.intershop.sellside.enterprise.capi.auditing.AuditItemBODisplayExtension\")")); getPipelineDictionary().put("AuditItem", temp_obj);} %><%
		%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItemBO:ID"))}, 14); %><%
		%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:UserID"))}, 15); %><%
		%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:ApplicationName"))}, 16); %><%
		%>"<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>";<%
		%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItemBO:ObjectType"))}, 18); %><%
   		%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItemBO:DomainRef:DomainName"))}, 19); %><%
		%><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AuditItemBO:EventType"),null).equals(context.getFormattedValue("UPDATE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:ActionType"))}, 20); %><% } else { %><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItemBO:EventType"))}, 20); %><% } %><%
		%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:Comment"))}, 21); %><% 
		%><% {Object temp_obj = (getObject("AuditItem:AuditAttributeChanges")); getPipelineDictionary().put("AuditAttributeChanges", temp_obj);} %><%
		%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AuditAttributeChanges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><%
			%><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("AuditAttributeChangeCount", temp_obj);} %><%
			%><% while (loop("AuditAttributeChanges","Change",null)) { %><%
				%><% {Object temp_obj = ((new Double( ((Number) getObject("AuditAttributeChangeCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("AuditAttributeChangeCount", temp_obj);} %><%
				%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("Change:Name"))}, 27); %><%
				%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("Change:LocaleID"))}, 28); %><%
				%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("Change:OldValue"))}, 29); %><%
				%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("Change:NewValue"))}, 30); %><%
				%><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuditAttributeChanges:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><%
					%><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuditAttributeChangeCount")).doubleValue() <=((Number)(getObject("AuditAttributeChanges:Size"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItemBO:ID"))}, 33); %><%
						%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:UserID"))}, 34); %><%
						%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:ApplicationName"))}, 35); %><%
						%>"<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>";<%
						%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItemBO:ObjectType"))}, 37); %><%
		           		%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItemBO:DomainRef:DomainName"))}, 38); %><%
						%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:ActionType"))}, 39); %><%
						%><% processOpenTag(response, pageContext, "auditcsvexportfield", new TagParameter[] {
new TagParameter("FieldValue",getObject("AuditItem:Comment"))}, 40); %><% 
					%><% } %><%
				%><% } %><%
			%><% } %><%
		%><% } else { %>"";"";"";"";<%
		%><% } %>
	<% } %><%
%><% } %>
<% printFooter(out); %>