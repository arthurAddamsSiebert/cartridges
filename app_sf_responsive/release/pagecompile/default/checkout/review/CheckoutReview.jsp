<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "4");} %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/HeaderProgressBar", null, "9");} %><div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 12); %></div>
<div class="cart-header">
<h1>
<span class="cart-header-title"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.order_review.heading.subscription.title","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.order_review.heading.title","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></span>
<span class="cart-header-note">
<span><% {out.write(localizeISText("shopping_cart.transaction.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<a data-dialog class="details-link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systeminclude.dialog.safeAndSecure.pagelet2-Include",null)))),null)%>"><% {out.write(localizeISText("shopping_cart.read_more.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</span>
</h1>
</div>
<div class="row" data-testing-id="checkout-review-page"><% URLPipelineAction action54 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutReview-Dispatch",null)))),null));String site54 = null;String serverGroup54 = null;String actionValue54 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutReview-Dispatch",null)))),null);if (site54 == null){  site54 = action54.getDomain();  if (site54 == null)  {      site54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup54 == null){  serverGroup54 = action54.getServerGroup();  if (serverGroup54 == null)  {      serverGroup54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutReview-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("MultipleBucketsForm");out.print("\"");out.print(" class=\"");out.print("bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue54, site54, serverGroup54,true)); %><div class="col-sm-12 col-md-8"><% processOpenTag(response, pageContext, "basketvalidationmessages", new TagParameter[] {
new TagParameter("basketValidationResults",getObject("BasketValidationResults"))}, 35); %><% processOpenTag(response, pageContext, "ordercreationmessages", new TagParameter[] {
new TagParameter("basketValidationResults",getObject("BasketValidationResults")),
new TagParameter("orderCreationResult",getObject("OrderCreationResult"))}, 36); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ValidationErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger">
<ul class="list-unstyled">
<li><% {out.write(localizeISText("checkout.order_summary.dddate.error.text1","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
<li><% {out.write(localizeISText("checkout.order_summary.dddate.error.text2","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Basket")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_Basket"),null).equals(context.getFormattedValue("BasketMaxTotalValue",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger">
<ul class="list-unstyled">
<li><% {out.write(localizeISText("checkout.order_summary.max.total.value.error.text1","",null,encodeString(context.getFormattedValue(getObject("BasketMaxTotalPrefCurrencyValue"),null)),encodeString(context.getFormattedValue(getObject("BasketTotalAmoutDifference"),null)),null,null,null,null,null,null,null,null));} %></li>
<li><% {out.write(localizeISText("checkout.order_summary.max.total.value.error.text2","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_PaymentSelection")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_PaymentSelection"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger">
<ul class="list-unstyled">
<li><% {out.write(localizeISText("checkout.order_summary.payment_selection.error.text1","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
<li><% {out.write(localizeISText("checkout.order_summary.payment_selection.error.text2","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Subscription"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger"><% {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("WARN_PromotionsForBasketChanged")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WARN_PromotionsForBasketChanged"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RemovedPromotionsIDs")))).booleanValue() && ((Boolean) ((( ((Number) getObject("RemovedPromotionsIDsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger">
<ul class="list-unstyled"><% processOpenTag(response, pageContext, "promotionstext", new TagParameter[] {
new TagParameter("promotionsmap",getObject("PromotionIDPromotionMap")),
new TagParameter("promotionids",getObject("RemovedPromotionsIDs")),
new TagParameter("return","promotiontext")}, 67); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("RemovedPromotionsIDsCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><li><% {out.write(localizeISText("checkout.promotion.removed.multiple.text","",null,getObject("promotiontext"),null,null,null,null,null,null,null,null,null));} %></li><% } else { %><li><% {out.write(localizeISText("checkout.promotion.removed.text","",null,getObject("promotiontext"),null,null,null,null,null,null,null,null,null));} %></li><% } %><li><% {out.write(localizeISText("checkout.promotion.removed.common.text","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AddedPromotionsIDs")))).booleanValue() && ((Boolean) ((( ((Number) getObject("AddedPromotionsIDsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><div class="alert alert-success"><% processOpenTag(response, pageContext, "promotionstext", new TagParameter[] {
new TagParameter("promotionsmap",getObject("PromotionIDPromotionMap")),
new TagParameter("promotionids",getObject("AddedPromotionsIDs")),
new TagParameter("return","promotiontext")}, 79); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("AddedPromotionsIDsCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("checkout.promotion.added.multiple.text","",null,getObject("promotiontext"),null,null,null,null,null,null,null,null,null));} %><br><% {out.write(localizeISText("checkout.promotion.added.common.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } else { %><p><% {out.write(localizeISText("checkout.promotion.added.text","",null,getObject("promotiontext"),null,null,null,null,null,null,null,null,null));} %><br><% {out.write(localizeISText("checkout.promotion.added.common.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div><% } %><% }}}}} %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Payment\"):PaymentInstrumentInfoBOs")); getPipelineDictionary().put("PIIs", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/MultipleBuckets", null, "96");} %></div>
<div class="col-xs-12 col-md-4 order-summary">
<h2><% {out.write(localizeISText("checkout.order_details.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div class="cost-summary"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/CostSummary", null, "106");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/SubmitOrderBottom", null, "107");} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/PromoCodeLink", null, "109");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/SecurityPrivacyPolicyLink", null, "110");} %></div><% out.print("</form>"); %></div><% printFooter(out); %>