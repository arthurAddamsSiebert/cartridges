<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="ipay-infoBox">
<h3><% {out.write(localizeISText("ISHPayOrderDetails.OrderDetails","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div class="ipay-field">
<span class="ipay-infoBox-label"><% {out.write(localizeISText("ISHPayOrderDetails.TotalOrderValue.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% {String value = null;try{value=context.getFormattedValue(getObject("currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) (val(context.getFormattedValue(getObject("amount"),null)))).doubleValue() /((Number) new Double(100)).doubleValue())),"#.00",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div class="ipay-field">
<span class="ipay-infoBox-label"><% {out.write(localizeISText("ISHPayOrderDetails.ShopName.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></span> 
<div class="ipay-infoBox-shopInfo"><% {String value = null;try{value=context.getFormattedValue(getObject("Repository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";out.write(value);} %><br />
</div>
</div>
</div><% printFooter(out); %>