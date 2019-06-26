<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/plain;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/plain"); %><%!
	public String quoteStringCSV(String value)
	{
		if(value != null && (value.indexOf(',') >= 0 || value.indexOf('\n') >= 0))
		{
		    if(value.indexOf('"') >= 0) value.replaceAll("\"", "\"\"");
		    value = "\"" + value + "\"";
		}
		return value;
	}
%>keyword,synonym,bidirectional,deductionFrom,deductionTo
<% while (loop("Synonyms","Synonym",null)) { %><%=quoteStringCSV((String)getObject("Synonym:Keyword"))
%>,<%=quoteStringCSV((String)getObject("Synonym:Synonym"))
%>,<% {String value = null;try{value=context.getFormattedValue(getObject("Synonym:Bidirectional"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Synonym:DeductionFrom"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Synonym:DeductionTo"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>,<% {String value = null;try{value=context.getFormattedValue(getObject("Synonym:DeductionFrom"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("Synonym:DeductionTo"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>
<% } %><% printFooter(out); %>