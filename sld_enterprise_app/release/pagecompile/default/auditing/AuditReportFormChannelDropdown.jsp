<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><select class="select" multiple="multiple" id="auditreport-multiselect-channels" name="<% {String value = null;try{value=context.getFormattedValue(getObject("params:AuditReportForm:Channel:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("params:CurrentOrganization:OrganizationDomain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {2}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:AuditReportForm:Channel:Value:Iterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
		<% while (loop("params:AuditReportForm:Channel:Value:Iterator","SingleValue",null)) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SingleValue"),null).equals(context.getFormattedValue(getObject("params:CurrentOrganization:OrganizationDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
				selected="selected"
			<% } %>
		<% } %>
	<% } %>>
	<% {String value = null;try{value=context.getFormattedValue(getObject("params:CurrentOrganization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:AuthorizedChannels"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
	<% while (loop("params:AuthorizedChannels","Channel",null)) { %>
		<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Channel:RepositoryDomain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:AuditReportForm:Channel:Value:Iterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
			<% while (loop("params:AuditReportForm:Channel:Value:Iterator","SingleValue",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SingleValue"),null).equals(context.getFormattedValue(getObject("Channel:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
					selected="selected"
				<% } %>
			<% } %>
		<% } %>>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) (new Double(context.getFormattedValue(getObject("Channel:DisplayName"),null).length()))).doubleValue() >=((Number)(new Double(40))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
					<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("Channel:DisplayName"),null),((Number)(new Double(40))).intValue()),null) + context.getFormattedValue("...",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } else { %>
					<% {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } %>
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) (new Double(context.getFormattedValue(getObject("Channel:Id"),null).length()))).doubleValue() >=((Number)(new Double(40))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
					<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("Channel:Id"),null),((Number)(new Double(40))).intValue()),null) + context.getFormattedValue("...",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } else { %>
					<% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } %>
			<% } %>
		</option>
	<% } %>
	<% } %>
</select><% printFooter(out); %>