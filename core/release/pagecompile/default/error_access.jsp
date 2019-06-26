<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<!-- TemplateName : error_access.isml -->
<!-- TemplateComment : shows an "Access denied" message -->

<html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
		<title><% {out.write(localizeISText("templates.error_access.AccessDenied.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
		<style>
			BODY {background-color: white; color: rgb(55,89,124); font-family: Primasans BT, Verdana, Arial, Geneva, Sans-Serif; font-size: small;}
	    HR   {color: rgb(76,120,159); height: 1px;}
		</style>
	</head>

	<body>
		<b><% {out.write(localizeISText("templates.error_access.AccessDenied","",null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><hr/>
	</body>
</html><% printFooter(out); %>