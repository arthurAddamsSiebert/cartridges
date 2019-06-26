<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$(function() {
// use all elements marked with class "problems_tooltip" as the tooltip for its immediately preceding sibling element
$('.problems_tooltip').powerTip({
applyThisOnPrevious: true,
mouseOnToPopup: true,
smartPlacement: false,
placement: <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Placement"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Placement"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";out.write(value);} %><% } else { %>'e'<% } %> 
});
$('.product_incomplete').on({
powerTipOpen: function() {
var params = '?ProductID=' + $(this).attr('data-product-id');
var tooltip = $(this).parent().find('div');
var $el = $(this);
tooltip.load("<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-GetAllProductCompletenessProblems",null)))),null)%>" + params, function onLoad(data) {
$('<%=context.getFormattedValue("#",null)%>powerTip').html(data);
$el.powerTip('reposition');
});
}
});
});
</script><% printFooter(out); %>