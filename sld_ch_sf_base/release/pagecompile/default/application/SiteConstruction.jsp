<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html><html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/error.css"/>
</head>
<body>
<div class="sysLabel"></div>
<div class="sysMessage"><% {out.write(localizeISText("application.site_under_construction.message",null,null,null,null,null,null,null,null,null,null,null,null));} %></div>
<img class="siteErrorImage" src="<%=context.getFormattedValue(context.webRoot(),null)%>/img/brokenEgg.jpg" alt="" />
</body>
</html><% printFooter(out); %>