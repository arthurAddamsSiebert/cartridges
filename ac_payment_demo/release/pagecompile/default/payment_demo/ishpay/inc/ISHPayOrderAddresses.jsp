<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="ipay-infoBox">
<h3><% {out.write(localizeISText("ISHPayOrderAddresses.OrderDetails","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div class="ipay-field">
<span class="ipay-infoBox-label"><% {out.write(localizeISText("ISHPayOrderAddresses.TotalOrderValue.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% {String value = null;try{value=context.getFormattedValue(getObject("currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) (val(context.getFormattedValue(getObject("amount"),null)))).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(DECIMAL),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div class="ipay-field">
<span class="ipay-infoBox-label"><% {out.write(localizeISText("ISHPayOrderAddresses.ShopName.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<div class="ipay-infoBox-shopInfo"><% {String value = null;try{value=context.getFormattedValue(getObject("Repository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br />
</div>
</div>
<h3><% {out.write(localizeISText("ISHPayOrderAddresses.YourData","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div class="ipay-field">
<span class="ipay-infoBox-label"><% {out.write(localizeISText("ISHPayOrderAddresses.InvoiceAddress.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></span><div class="ipay-infoBox-shopInfo"><% {String value = null;try{value=context.getFormattedValue(getObject("ita_fname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ita_lname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% {String value = null;try{value=context.getFormattedValue(getObject("ita_street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% {String value = null;try{value=context.getFormattedValue(getObject("ita_pcode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ita_city"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% {String value = null;try{value=context.getFormattedValue(getObject("ita_country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
<div class="ipay-field">
<span class="ipay-infoBox-label"><% {out.write(localizeISText("ISHPayOrderAddresses.ShippingAddress.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></span><div class="ipay-infoBox-shopInfo"><% {String value = null;try{value=context.getFormattedValue(getObject("ita_fname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ita_lname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% {String value = null;try{value=context.getFormattedValue(getObject("ita_street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% {String value = null;try{value=context.getFormattedValue(getObject("ita_pcode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ita_city"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% {String value = null;try{value=context.getFormattedValue(getObject("ita_country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
</div><% printFooter(out); %>