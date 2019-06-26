<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
window.cssDir = "<%=context.getFormattedValue(context.webRoot(),null)%>/css/";
window.imgDir = "<%=context.getFormattedValue(context.webRoot(),null)%>/images/";
</script>

<% out.print(context.prepareWAPlaceHolder("CSSWebLibraries", context.getFormattedValue("<link type=\"text/css\" rel=\"stylesheet\" href=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/css/",null), context.getFormattedValue("\" /><link type=\"text/css\" rel=\"stylesheet\" href=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/css/",null), "\" />", "true", "true")); %>

<% out.print(context.prepareWAPlaceHolder("JSWebLibraries", context.getFormattedValue("<script type=\"text/javascript\" src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/js/",null), context.getFormattedValue("\"></script><script type=\"text/javascript\" src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/js/",null), "\"></script>", "true", "true")); %>
<% printFooter(out); %>