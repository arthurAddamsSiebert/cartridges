<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><h3><% {out.write(localizeISText("approval.detailspage.order_details.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("BucketIndex", temp_obj);} %><% while (loop("OrderShippingBucket:ShippingBucketBOs","bucket",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("BucketIndex")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("BucketIndex", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/common/LineItemsDetails.isml", null, "6");} %><% } %><div class="section cost-summary pull-right">
<h3><% {out.write(localizeISText("checkout.order_summary.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/common/CostSummary.isml", null, "11");} %></div><% printFooter(out); %>