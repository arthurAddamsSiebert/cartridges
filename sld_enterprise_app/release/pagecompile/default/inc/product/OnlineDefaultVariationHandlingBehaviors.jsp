<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$(document).ready(function(){
$("input[name='update']").on('click', function(){
var form = $("form[name='formMask']");
var radioButtons = $("input[name='PeriodDefined']");
radioButtons.each(function(i, button){ 
if($(button).is(':checked')) 
{
form.append('<input type="hidden" name="' + $(button).attr("id") + '" value="">');
}
});
});
$("input[name='applyOfflineProduct']").on('click', function(){
var form = $("form[name='formMask']");
form.append('<input type="hidden" name="applyOfflineProduct" value="">')
.append('<input type="hidden" name="applyDefaultVariation" value="">')
.append('<input type="hidden" name="ProductOnlineStatus" value="offline">')
.submit();
});
$("input[name='applySharedOfflineProduct']").on('click', function(){
var form = $("form[name='formMask']");
form.append('<input type="hidden" name="applyOfflineProduct" value="">')
.append('<input type="hidden" name="applyDefaultVariation" value="">')
.append('<input type="hidden" name="ProductOnlineStatus" value="offline">')
.append('<input type="hidden" name="applySharedDefaultVariation" value="">')
.submit();
});
$("input[name='cancelDefaultVariationDelete']").on('click', function(){
var form = $("form[name='formMask']");
form.append('<input type="hidden" name="cancelDefaultVariationDelete" value="">')
.submit();
});
});
</script><% printFooter(out); %>