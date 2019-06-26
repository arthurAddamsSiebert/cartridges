<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><% {Object temp_obj = (getObject("BasketBO:Extension(\"Payment\")")); getPipelineDictionary().put("BasketPayment", temp_obj);} %><% {Object temp_obj = (getObject("BasketBO:Extension(\"ShippingMethod\")")); getPipelineDictionary().put("BasketShippingMethod", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("BasketBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BasketShippingMethod:BasketShippingMethodSelectionBucketBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><div class="row equal">
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.address.billing.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",(((Boolean) (getObject("CurrentSession:LoggedIn"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("address",getObject("BasketBO:InvoiceToAddressBO"))}, 18); %></div>
</div>
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.payment_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div><% processOpenTag(response, pageContext, "paymentmethoddisplay", new TagParameter[] {
new TagParameter("paymentBOs",getObject("BasketPayment:PaymentBOs"))}, 26); %></div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"PaymentInfoExtensions", null, "28");} %></div>
</div>
</div><% while (loop("BasketShippingMethod:BasketShippingMethodSelectionBucketBOs","Bucket",null)) { %><% {Object temp_obj = (getObject("BasketBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("displaydeliverytime","false"),
new TagParameter("recurringbasketextension",getObject("RecurringBasket")),
new TagParameter("bucketnumber",getObject("BasketShippingMethod:BasketShippingMethodSelectionBucketBOs:Size"))}, 37); %><div class="row equal">
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.shipping-address.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",getObject("Bucket:SelectedShippingMethod:DigitalDelivery")),
new TagParameter("address",getObject("Bucket:ShipToAddress"))}, 44); %></div>
</div>
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.shipping_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethodInc", null, "51");} %></div>
</div>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "57");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "60");} %><% } %><% } else { %><% while (loop("BasketShippingMethod:BasketShippingMethodSelectionBucketBOs","Bucket",null)) { %><div class="row equal">
<div class="col-sm-6">
<div class="infobox" data-testing-id='address-slot-invoice-to-address'>
<h3><% {out.write(localizeISText("checkout.address.billing.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",(((Boolean) (getObject("CurrentSession:LoggedIn"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("address",getObject("BasketBO:InvoiceToAddressBO"))}, 70); %></div>
</div>
<div class="col-sm-6">
<div class="infobox" data-testing-id='address-slot-ship-to-address'>
<h3><% {out.write(localizeISText("checkout.widget.shipping-address.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",getObject("Bucket:SelectedShippingMethod:DigitalDelivery")),
new TagParameter("address",getObject("Bucket:ShipToAddress"))}, 77); %></div>
</div>
</div>
<div class="row equal">
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.shipping_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethodInc", null, "86");} %></div>
</div>
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.payment_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div><% processOpenTag(response, pageContext, "paymentmethoddisplay", new TagParameter[] {
new TagParameter("paymentBOs",getObject("BasketPayment:PaymentBOs"))}, 94); %></div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"PaymentInfoExtensions", null, "96");} %></div>
</div>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "102");} %><% {Object temp_obj = (getObject("BasketBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("recurringbasketextension",getObject("RecurringBasket")),
new TagParameter("bucketnumber",getObject("BasketShippingMethod:BasketShippingMethodSelectionBucketBOs:Size"))}, 106); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "109");} %><% } %><% } %> 
<% printFooter(out); %>