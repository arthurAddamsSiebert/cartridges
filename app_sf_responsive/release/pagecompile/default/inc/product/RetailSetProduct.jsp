<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {Object key_obj = getObject("BundledProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("BundledProductBO"));} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} %><div class="product-tile-list row"
data-dynamic-block
data-dynamic-block-call-parameters="RetailSetProduct"
data-dynamic-block-product-id="<% {String value = null;try{value=context.getFormattedValue(getObject("BundledProductBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<div class="col-xs-2"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("BundledProductBO")),
new TagParameter("ImageType","S")}, 12); %></div>
<div class="col-xs-10">
<div class="row">
<div class="col-xs-8 text-left">
<a class="product-title" href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("BundledProductBO:SKU"),null))).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CategoryBO:CatalogBO:Name"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("BundledProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% processOpenTag(response, pageContext, "productrating", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("BundledProductBO")),
new TagParameter("SimpleRatingView","true")}, 21); %><div class="product-number">
<span class="product-number-label"><% {out.write(localizeISText("product.itemNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<span class="product-number-value"><% {String value = null;try{value=context.getFormattedValue(getObject("BundledProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div>
<div class="product-description"><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("BundledProductBO:ShortDescription"))}, 31); %></div><% processOpenTag(response, pageContext, "promotionlist", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("DisplayType","simple"),
new TagParameter("ProductBO",getObject("BundledProductBO")),
new TagParameter("MaxNumber","3")}, 34); %><% processOpenTag(response, pageContext, "productgiftstatus", new TagParameter[] {
new TagParameter("ProductBO",getObject("BundledProductBO"))}, 36); %><% processOpenTag(response, pageContext, "productwarranty", new TagParameter[] {
new TagParameter("DisplayType","dropdown"),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("BundledProductBO"))}, 38); %></div>
<div class="col-xs-4 text-left">
<div <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>itemprop="offers" itemscope itemtype="http://schema.org/Offer"<% } %>>
<div class="price-container"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ShowInformationalPrice","true"),
new TagParameter("ProductBO",getObject("BundledProductBO"))}, 47); %></div><% processOpenTag(response, pageContext, "productavailability", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("BundledProductBO"))}, 54); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BundledProductBO:InventoryStatus:InStock"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><input type="hidden" name="SKU" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BundledProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% processOpenTag(response, pageContext, "productvariationselect", new TagParameter[] {
new TagParameter("ProductBO",getObject("BundledProductBO"))}, 61); %><div class="quantity"><% processOpenTag(response, pageContext, "productquantity", new TagParameter[] {
new TagParameter("displayQuantity",new Double(1)),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("nullQuantity","true"),
new TagParameter("ProductBO",getObject("BundledProductBO"))}, 64); %></div><% processOpenTag(response, pageContext, "productshipping", new TagParameter[] {
new TagParameter("ProductBO",getObject("BundledProductBO"))}, 67); %></div>
</div>
</div>
</div><% printFooter(out); %>