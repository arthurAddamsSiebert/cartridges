<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<!-- TemplateName : error_application_disabled.isml -->
<!-- TemplateComment : short messsage about application disabled status -->

<html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
		<title><% {out.write(localizeISText("templates.error_application_disabled.ApplicationDisabled.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
		<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/error.css"/>
	</head>
	<body>
	  <div class="sysLabel"></div>
	  <div class="sysImage"></div>
	  <div class="sysMessage">
		<% {out.write(localizeISText("templates.error_application_disabled.ThisApplicationHasBeenDisabledNoRequests.sysMessage","",null,null,null,null,null,null,null,null,null,null,null));} %>
	  </div>
	</body>
</html><% printFooter(out); %>