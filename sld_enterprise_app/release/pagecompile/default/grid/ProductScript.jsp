<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "3");} %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>pageselection.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><script>
$('.dialog-content').css('overflow-y', 'hidden');
function gridResize()
{
if($dialog.children('iframe').parent().hasClass('small'))
{
$('<%=context.getFormattedValue("#",null)%>productSelection').addClass('small');
$('<%=context.getFormattedValue("#",null)%>productSelection').removeClass('big');
$('<%=context.getFormattedValue("#",null)%>productSelection').removeClass('medium');
}
else if($dialog.children('iframe').parent().hasClass('medium'))
{
$('<%=context.getFormattedValue("#",null)%>productSelection').addClass('medium');
$('<%=context.getFormattedValue("#",null)%>productSelection').removeClass('big');
$('<%=context.getFormattedValue("#",null)%>productSelection').removeClass('small');
}
else
{
$('<%=context.getFormattedValue("#",null)%>productSelection').addClass('big');
$('<%=context.getFormattedValue("#",null)%>productSelection').removeClass('small');
$('<%=context.getFormattedValue("#",null)%>productSelection').removeClass('medium');
}
}
gridResize();
$(window).resize(function(){
gridResize();
})
</script><% printFooter(out); %>