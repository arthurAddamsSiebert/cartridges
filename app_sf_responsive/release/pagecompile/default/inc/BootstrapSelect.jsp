<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
/*
* Translated default messages for bootstrap-select.
*/
(function ($) {
$.fn.selectpicker.defaults = {
noneSelectedText: "<%=context.getFormattedValue(localizeText(context.getFormattedValue("selectpicker.noneSelected.text",null)),null)%>",
noneResultsText: "<%=context.getFormattedValue(localizeText(context.getFormattedValue("selectpicker.noneResults.text",null)),null)%>",
countSelectedText: function (numSelected, numTotal) {
return (numSelected == 1) ? "<%=context.getFormattedValue(localizeText(context.getFormattedValue("selectpicker.countSelected.single.text",null)),null)%>" : "<%=context.getFormattedValue(localizeText(context.getFormattedValue("selectpicker.countSelected.multiple.text",null)),null)%>";
}, 
selectAllText: "<%=context.getFormattedValue(localizeText(context.getFormattedValue("selectpicker.selectAll.text",null)),null)%>",
deselectAllText:"<%=context.getFormattedValue(localizeText(context.getFormattedValue("selectpicker.deselectAll.text",null)),null)%>"
};
})(jQuery);
</script><% printFooter(out); %>