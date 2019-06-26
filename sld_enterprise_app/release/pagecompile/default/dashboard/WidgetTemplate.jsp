<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><li class="widget">
<div class="widget-handle">
<span class="widget-title"></span>
<div class="widget-actions">
<button type="button" class="widget-action widget-action-configure js-widget-action" data-action="configure" title="<% {out.write(localizeISText("widget.actions.button.configure","",null,null,null,null,null,null,null,null,null,null,null));} %>"></button>
<button type="button" class="widget-action widget-action-remove js-widget-action" data-action="remove" title="<% {out.write(localizeISText("widget.actions.button.remove","",null,null,null,null,null,null,null,null,null,null,null));} %>"></button>
</div>
</div>
<div class="widget-content">
<div class="widget-overlay"></div>
<div class="widget-lock">
<img class="widget-busy" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ajax-loader-small.gif">
</div>
<iframe class="widget-iframe"></iframe>
</div>
</li><% printFooter(out); %>