<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><select id="<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("params:name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:Disabled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
	<% while (loop("params:TimeZoneBOs","TimeZoneBO",null)) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TimeZoneBO"),null).equals(context.getFormattedValue(getObject("params:PreferredTimeZoneBO"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
			<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("TimeZoneBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" selected="selected">
				<% {String value = null;try{value=context.getFormattedValue(getObject("TimeZoneBO:Extension(\"OffsetView\"):Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
			</option>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("TimeZoneBO:Extension(\"OffsetView\"):Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
			<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("TimeZoneBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				<% {String value = null;try{value=context.getFormattedValue(getObject("TimeZoneBO:Extension(\"OffsetView\"):Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
			</option>
		<% }} %>
	<% } %>
</select><% printFooter(out); %>