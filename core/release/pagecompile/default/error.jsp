<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<!-- TemplateName : error.isml -->
<!-- TemplateComment : short messsage about technical problems -->

<html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
		<title><% {out.write(localizeISText("templates.error.ThereWereTechnicalProblemsWhileRequest.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
		<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/error.css"/>
	</head>
	<body>
		<!-- 
		ERROR DESCRIPTION: 

		Name of the failed pipeline: '<% {String value = null;try{value=context.getFormattedValue(getObject("PipelineName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
		Error message: <% {String value = null;try{value=context.getFormattedValue(getObject("ErrorText"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
		-->
	  <div class="sysLabel"></div>
	  <div class="sysImage"></div>
	  <div class="sysMessage">
		<% {out.write(localizeISText("templates.error.ThereWereTechnicalProblemsWhileRequest.sysMessage","",null,null,null,null,null,null,null,null,null,null,null));} %>
	  </div>
	</body>
</html><% printFooter(out); %>