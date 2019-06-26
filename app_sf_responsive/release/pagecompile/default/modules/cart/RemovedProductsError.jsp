<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("removeFromBasketResults") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><div class="alert alert-box" role="alert">
<div class="alert-box-header"><% {out.write(localizeISText("shopping_cart.product_not_available.error","",null,null,null,null,null,null,null,null,null,null,null));} %> 
</div>
<div class="alert-box-body">
<div class="list-header hidden-xs">
<div class="col-sm-10 list-header-item"><% {out.write(localizeISText("checkout.pli.desc.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-2 list-header-item column-price"><% {out.write(localizeISText("checkout.pli.price.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body"> 
<% while (loop("removeFromBasketResults","removeFromBasketResult",null)) { %><% {Object temp_obj = (getObject("removeFromBasketResult:Product")); getPipelineDictionary().put("ProductBO", temp_obj);} %><% {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} %><div class="list-item-row list-item-row-big">
<div class="clearfix">
<div class="col-xs-2 list-item"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","S")}, 22); %></div>
<div class="col-xs-7 col-sm-6 list-item">
<div class="product-title"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<p class="product-id"><% {out.write(localizeISText("product.itemNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:Mastered"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><div>
<dl class="dl-horizontal"><% while (loop("ProductBO:ProductBOMaster:ProductVariationInformationBO:VariationAttributes","VariationAttribute",null)) { %><dt><% {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ExtensibleObject:String(VariationAttribute:Name)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd><% } %></dl>
</div><% } %></div>
<div class="col-sm-2 list-item">
<p class="availability"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ProductBO:Accessible"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><span class="product-out-of-stock"><% {out.write(localizeISText("checkout.pli.not_accessible.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:InventoryStatus:InStock"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><span class="product-in-stock"><% {out.write(localizeISText("checkout.pli.instock.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } else { %><span class="product-out-of-stock"><% {out.write(localizeISText("checkout.pli.out_of_stock.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% }} %></p>
</div>
<div class="col-xs-3 col-sm-2 list-item column-price"><% {try{executePipeline("ViewCart-GetCurrency",java.util.Collections.emptyMap(),"CurrencyDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 57.",e);}} %><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrencyDict:Currency")),
new TagParameter("ShowInformationalPrice","true"),
new TagParameter("ProductBO",getObject("ProductBO"))}, 58); %></div>
</div>
<div class="text-right"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/inc/InventoryAvailabilityServiceMessageAreaBottom", null, "66");} %></div>
</div><% } %></div>
</div>
</div><% } %><% printFooter(out); %>