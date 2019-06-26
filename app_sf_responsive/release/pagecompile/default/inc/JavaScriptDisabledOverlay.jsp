<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><noscript>
<div class="system-notification">
<div class="container">
<div class="row">
<div class="col-sm-12">
<div class="system-notification-icon">
<span class="glyphicon glyphicon-warning-sign"></span>
</div>
<div class="system-notification-text">
<h2><% {out.write(localizeISText("common.error.javascript.disabled.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<p><% {out.write(localizeISText("common.error.javascript.disabled.message",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("common.error.javascript.disabled.required",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div>
</div>
</div>
</div>
</div>
</noscript><% printFooter(out); %>