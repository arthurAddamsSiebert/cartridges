<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	String input = (String)getPipelineDictionary().get("gridconfigstring");
	String cssClasses = (String)getPipelineDictionary().get("additionalcssclasses");
	String resultname = (String)getPipelineDictionary().get("result");
	
	HashMap<String,String> hash = new HashMap<String,String>();
	
	if (null != input) 
	{
		String[] lines = input.split(";");
		
		for(int i=0; i<lines.length; i++) 
		{
			String[] pair = lines[i].split("=");
			
			if (null != pair && pair.length>1) 
			{
				hash.put(pair[0],pair[1]);
			}
		}
	}
	
	StringBuilder builder = new StringBuilder();
	
	if (hash.get("width") != null && !hash.get("width").equals("0")) 
	{
		builder.append(" gd-grid-");
		builder.append(hash.get("width"));
	}
	
	if (hash.get("prefix") != null && !hash.get("prefix").equals("0")) 
	{
		builder.append(" gd-prefix-");
		builder.append(hash.get("prefix"));
	}
	
	if (hash.get("suffix") != null && !hash.get("suffix").equals("0")) 
	{
		builder.append(" gd-suffix-");
		builder.append(hash.get("suffix"));
	}
	
	if (hash.get("push") != null && !hash.get("push").equals("0")) 
	{
		builder.append(" gd-push-");
		builder.append(hash.get("push"));
	}
	
	if (hash.get("pull") != null && !hash.get("pull").equals("0")) 
	{
		builder.append(" gd-pull-");
		builder.append(hash.get("pull"));
	}
	
	if (cssClasses != null) 
	{
		builder.append(" ");
		builder.append(cssClasses);
	}

	getPipelineDictionary().put(resultname, builder.toString());	
%><% printFooter(out); %>