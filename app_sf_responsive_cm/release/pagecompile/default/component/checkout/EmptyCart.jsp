<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/ProductIsNotAvailable", "Dictionary", "3");} %><% processOpenTag(response, pageContext, "shoppingcartglobalerrormsg", new TagParameter[] {
new TagParameter("addToBasketResults",getObject("Dictionary:AddToBasketResults")),
new TagParameter("basketValidationResults",getObject("Dictionary:BasketValidationResults")),
new TagParameter("removeFromBasketResultsInventory",getObject("Dictionary:RemoveFromBasketResultsByInventory")),
new TagParameter("removeFromBasketResultsWithoutPrice",getObject("Dictionary:RemovedItemsWithoutPrice")),
new TagParameter("orderCreationResult",getObject("Dictionary:OrderCreationResult"))}, 5); %><div class="empty-cart" data-cart-page>
<img class="empty-cart-icon" src="<%=context.getFormattedValue(context.webRoot(),null)%>/img/checkout/empty-cart.png" alt="<% {out.write(localizeISText("shopping_cart.empty.alt.text",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/>
<h2><% {out.write(localizeISText("shopping_cart.empty.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)%>" class="btn btn-primary btn-lg"><% {out.write(localizeISText("shopping_cart.detailed.continue_shopping.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div><% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","BasketChangeAdd")}, 23); %><% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","BasketChangeRemove")}, 24); %><% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","BasketChangeQuantities")}, 25); %><% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","BasketChangeVariations")}, 26); %><div class="marketing-area"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.content.pagelet2-Slot")}, 29); %></div><% printFooter(out); %>