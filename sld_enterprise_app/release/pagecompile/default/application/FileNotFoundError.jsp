<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%int _httpStatusCode = 404;
if (_httpStatusCode < 1 || _httpStatusCode > 2147483647) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [1, 2147483647]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));setEncodingType("text/html"); %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Working Area --><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title><% {out.write(localizeISText("FileNotFoundError.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/error.css"/>
<link rel="icon" type="image/png" href="<%=context.getFormattedValue(context.webRoot(),null)%>/images/logo_is7.ico" />
</head>
<body>
<div class="sysLabel"></div>
<div class="sysImage"></div>
<div class="sysMessage">
<p><span><strong><% {out.write(localizeISText("FileNotFoundError.FileNotFound.sysMessage",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong></span></p>
<p><span><% {out.write(localizeISText("FileNotFoundError.TheLinkYouFollowedIsEitherOutdatedOrInaccurate.sysMessage",null,null,null,null,null,null,null,null,null,null,null,null));} %></span></p>
</div>
</body> 
</html><% printFooter(out); %>