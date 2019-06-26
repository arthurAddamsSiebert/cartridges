<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%
	PipelineDictionary dict = getPipelineDictionary();
	String name = String.valueOf(dict.get("name"));
	
	if(dict.get(name) == null){
	
		dict.put(name, new Integer(1));
	
	} else {
	
		int value  = ((Integer)dict.get(name)).intValue();	
		if(dict.get(name+"_mod") != null){
			int modulo = ((Integer)dict.get(name+"_mod")).intValue();
				value = (value + 1) % modulo;
		} else {
			value = (value + 1);
		}
		
		dict.put(name, new Integer(value));
	}
%><% printFooter(out); %>