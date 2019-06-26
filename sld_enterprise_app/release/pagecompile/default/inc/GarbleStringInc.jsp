<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "java.lang.Integer"%><%@page import = "java.lang.String"%><%@page import = "java.lang.StringBuffer"%><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%
	PipelineDictionary dict = getPipelineDictionary();

	if ( null != dict.get("text") )
	{
		StringBuffer text       = new StringBuffer( (String)dict.get("text") );
		String       direction  = (String) dict.get("direction");
		int          length     = new Integer( (String) dict.get( "length" ) ).intValue();
		char         character  = ((String) dict.get( "character" )).charAt(0);

		String       output     = (String) dict.get( "output" );

		int currentLen = text.toString().length();

		if (length < currentLen)
		{
			if ( direction.equals( "begin" ) )
			{
				int pos = 0;
				while ( pos < currentLen - length)
				{
					text.setCharAt( pos, character );
					pos++;
				}
			}
			else
			{
				int pos = length;
				while ( pos < currentLen )
				{
					text.setCharAt( pos, character );
					pos++;
				}
			}
		}
		dict.put(output, text.toString());
	}
%><% printFooter(out); %>