<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingMethod\")")); getPipelineDictionary().put("CartShippingMethod", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/PaymentError", null, "6");} %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/ContinueCheckoutIfTaxServiceUnavailableError", null, "7");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/TermsAndConditionsError", null, "8");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/ProductIsNotAvailable", null, "9");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/RestrictedItems", null, "10");} %><div class="row">
<p class="col-sm-9"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.order_review.heading.subscription.text","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.order_review.heading.text","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></p>
<p class="col-sm-3 text-right"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ReturnToCartLink", null, "22");} %></p>
</div>
<div class="row"><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CheckoutReviewStart", null, "28");} %></div>
<div class="row<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %> equal<% } %>"><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CheckoutReviewAdditionalInfoBox", null, "33");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/SubscriptionInfo", null, "36");} %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CartShippingMethod:BasketShippingMethodSelectionBucketBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><div class="row equal">
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/BillingAddress", null, "43");} %></div>
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/PaymentMethod", null, "46");} %></div>
</div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"AdditionalCheckoutWidget", null, "50");} %><% while (loop("CartShippingMethod:BasketShippingMethodSelectionBucketBOs","Bucket",null)) { %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("recurringbasketextension",getObject("RecurringBasket")),
new TagParameter("bucketnumber",getObject("CartShippingMethod:BasketShippingMethodSelectionBucketBOs:Size"))}, 56); %><div class="row equal">
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingAddress", null, "61");} %></div>
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethod", null, "64");} %></div>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "69");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "72");} %><% } %><% } else { %><% while (loop("CartShippingMethod:BasketShippingMethodSelectionBucketBOs","Bucket",null)) { %><div class="row equal">
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/BillingAddress", null, "80");} %></div>
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingAddress", null, "83");} %></div>
</div>
<div class="row equal">
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethod", null, "89");} %></div>
<div class="col-sm-6"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/PaymentMethod", null, "92");} %></div>
</div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"AdditionalCheckoutWidget", null, "96");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "99");} %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("recurringbasketextension",getObject("RecurringBasket")),
new TagParameter("bucketnumber",getObject("CartShippingMethod:BasketShippingMethodSelectionBucketBOs:Size"))}, 103); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "106");} %><% } %> 
<% } %><% printFooter(out); %>