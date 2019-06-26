<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div id="refresh-product-validation-statistics-ctnr"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"objectstatistics/inc/ChannelProductValidationContentInc", null, "9");} %></div>
<input type="hidden" id="selectedAssortment" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductValidationOverviewForm_ProductAssortmentName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<script language="javascript" type="text/javascript">
function loadProductValidationOverview() {
var params = '';
var assortmentID = $('#ProductValidationOverviewForm_ProductAssortmentName').val();
if (!assortmentID) {
assortmentID = $('#selectedAssortment').val();
}
if (assortmentID) {
params += 'ProductValidationOverviewForm_ProductAssortmentName=' + assortmentID;
}
$.ajax({
url: '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-GetProductValidationStatisticsAJAX",null)))),null)%>',
data: params,
success: function(data) {
$('#refresh-product-validation-statistics-ctnr').html(data);
},
complete: function() {
// Schedule the next request when the current one's complete
if ($('<%=context.getFormattedValue("#",null)%>validationJobIsComplete').val() != 'true') {
setTimeout(loadProductValidationOverview, 5000);
}
}
});
}
$(document).ready(function() {
// run the first time; all subsequent calls will take care of themselves
setTimeout(loadProductValidationOverview, 200);
});
</script><% printFooter(out); %>