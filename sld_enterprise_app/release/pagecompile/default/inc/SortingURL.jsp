<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary" %><%
    PipelineDictionary dictionary = getPipelineDictionary().get("dictionary") != null ?
        (PipelineDictionary)getPipelineDictionary().get("dictionary") : getPipelineDictionary(); 

	String lastSortByValue = dictionary.getFormValue((String)getObject("sortbyalias"));
	String lastSortDirectionValue = (String)dictionary.getFormValue((String)getObject("sortdirectionalias"));
	String currentSortByValue = (String)getObject("sortbyvalue");
	String ascending = "ascending";
	String descending = "descending";
	
	if (getObject("sortdirectionvalues") != null)
	{
		String s = (String)getObject("sortdirectionvalues");
		String[] a = s.split(",");

		if (a.length > 1)
		{
			ascending = a[0];
			descending = a[1];
		}
	}

	getPipelineDictionary().put("ascending", ascending);
	getPipelineDictionary().put("descending", descending);
	
	if ((lastSortByValue != null && lastSortByValue.equals(currentSortByValue)) &&
		(lastSortDirectionValue != null && lastSortDirectionValue.equals(ascending)))
	{ 
 %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("sortbyalias"),null),context.getFormattedValue(getObject("sortbyvalue"),null))).addURLParameter(context.getFormattedValue(getObject("sortdirectionalias"),null),context.getFormattedValue(getObject("descending"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null))),null)%>"
class="<% {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("columnname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% 
	} 
	else
	{ 
%><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("sortbyalias"),null),context.getFormattedValue(getObject("sortbyvalue"),null))).addURLParameter(context.getFormattedValue(getObject("sortdirectionalias"),null),context.getFormattedValue(getObject("ascending"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null))),null)%>"
class="<% {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("columnname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% 
	}
%><% printFooter(out); %>