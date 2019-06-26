<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "2");} %><div class="section clearfix">
<div class="col-xs-12">
<div class="form-group">
<label or="messageToMerchant"><% {out.write(localizeISText("checkout.additional_data.message","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<textarea 
id="messageToMerchant"
name="messageToMerchant" 
maxlength="1000" 
data-charactercounter="cCounterMessageToMerchant" 
class="form-control"
><% {String value = null;try{value=context.getFormattedValue(getObject("messageToMerchant"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
<small class="input-help"><% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.pre.text","",null,null,null,null,null,null,null,null,null,null,null));} %> <span id="cCounterMessageToMerchant">1000</span> <% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.post.text","",null,null,null,null,null,null,null,null,null,null,null));} %></small>
</div>
</div>
</div><% printFooter(out); %>