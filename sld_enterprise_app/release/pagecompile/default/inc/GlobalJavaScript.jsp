<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/powertip/jquery.powertip.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/powertip/jquery.powertip.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/dialog/dialog.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/lightbox/jquery.dialog.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/dialog/dialog.css<% out.print("</waplacement>"); %><script type="text/javascript">
// a function to execute when the DOM is fully loaded
$(function() {
// use all elements marked with class "tooltip" as the tooltip for its immediately preceding sibling element
$('.tooltip').powerTip({
applyThisOnPrevious: true,
mouseOnToPopup: true,
smartPlacement: false,
placement: 'e'
});
// closes focused select boxes hovering
$('#main_navigation li').hover(function() {
$('#main_content select:focus').blur();
});
// disable all input fields, select boxed, textareas and input buttons of a form
$('.js-form-disabled :input').prop('disabled', 'disabled');
});
</script><% printFooter(out); %>