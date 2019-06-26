<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tbody id="refresh-shop-statistics-ctnr">
<tr>
<td colspan="5" align="center" class="w e s">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ajax-loader-small.gif" alt="<%=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductStatisticsInc.Loading.alt",null)),null) + context.getFormattedValue("...",null),null)%>" width="32" height="32" />
</td>
</tr>
</tbody>
<script language="javascript" type="text/javascript">
function loadStatistics() {
$.ajax({
url: '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-GetProductStatisticsAJAX",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("SelectCurrencyMnemonic"),null))),null)%>', 
success: function(data) {
$('<%=context.getFormattedValue("#",null)%>refresh-shop-statistics-ctnr').html(data);
},
complete: function() {
// Schedule the next request when the current one's complete
if ($('<%=context.getFormattedValue("#",null)%>refresh-shop-statistics-ctnr').find('<%=context.getFormattedValue("#",null)%>refresh-shop-statistics-updating').length) {
setTimeout(loadStatistics, 5000);
}
}
});
};
$(document).ready(function() {
// run the first time; all subsequent calls will take care of themselves
loadStatistics();
}); 
</script><% printFooter(out); %>