<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html>
<html lang="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<head>
<meta charset="utf-8">
<title></title><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeBrandingContent-StyleSheetHook",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Hook_StyleSheet_Name",null),context.getFormattedValue("enterprisesite.css",null)))),null), null, null, "9");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Placeholder", null, "12");} %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>widget/widget.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-migrate-1.2.1.js<% out.print("</waplacement>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalAjaxErrorHandling", null, "20");} %></head>
<body class="backoffice"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("WorkingTemplate"),null), null, "24");} %><script type="text/javascript">
(function widgetReadyHook() { 
function hook(widget) {<% out.print(context.prepareWAPlaceHolder("WidgetReadyHook", null, ";", null, "true", null)); %>}
function defaultHook(widget) {
widget.ready();
}
function isEmpty(fn) {
return fn.toString().match(/\{([\s\S]*)\}/m)[1].trim().length === 0;
}
bridge.init('dashboard', !isEmpty(hook) ? hook : defaultHook);
})();
</script>
</body>
</html><% printFooter(out); %>