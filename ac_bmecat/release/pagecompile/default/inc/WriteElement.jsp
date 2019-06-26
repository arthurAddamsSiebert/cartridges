<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@page import="java.util.StringTokenizer,com.intershop.adapter.bmecat.util.BMEcatExportUtil" %>
<% 
	String objectPath = (String)getObject("objectpath");
	boolean localized = getObject("localized") != null && getObject("localized").equals("true");
	String element = (String)getObject("element");
	String sizeString = (String)getObject("size");
	int size = sizeString != null ? Integer.parseInt(sizeString) : 4000;
	boolean optional = getObject("optional") != null && getObject("optional").equals("true");
	String separator = (String)getObject("separator");
	String formatter = (String)getObject("formatter");
	String style = (String)getObject("style");
	String objReference = (String)getObject("id");
	if (formatter == null && style != null)
	{
		if (style.equalsIgnoreCase("integer"))
		{
			formatter = "#0";
		}
		else if (style.equalsIgnoreCase("number"))
		{
			formatter = "#0.0#";
		}
	}
	
	if (objectPath.indexOf(",") != -1)
	{
		BMEcatExportUtil.writeElement(out, this, objectPath.split(",", 5), 
			element, separator, formatter, size, localized, optional, objReference); 
	}
	else
	{
		BMEcatExportUtil.writeElement(out, this, objectPath, 
			element, formatter, size, localized, optional, objReference);
	}	
%>
<% printFooter(out); %>