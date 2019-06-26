<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "4");} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("OrderPayment", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"ShippingBucket\")")); getPipelineDictionary().put("OrderShippingBucket", temp_obj);} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("OrderBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/HeaderProgressBar", null, "14");} %><div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 17); %></div>
<div class="cart-header">
<h1> 
<a class="btn-tool pull-right" href="javascript:window.print()" title="<% {out.write(localizeISText("checkout.receipt.print.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="glyphicon glyphicon-print"></span>
</a>
<span class="cart-header-title"><% {out.write(localizeISText("checkout.receipt.tankyou.message","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<span class="cart-header-note"><% {out.write(localizeISText("shopping_cart.transaction.text","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<a data-dialog class="details-link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systeminclude.dialog.safeAndSecure.pagelet2-Include",null)))),null)%>"><% {out.write(localizeISText("shopping_cart.read_more.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</span>
</h1>
</div>
<div data-testing-id="checkout-receipt-page">
<div class="row">
<div class="col-xs-12 col-md-8"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OrderBO:Status"),null).equals(context.getFormattedValue("PENDING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><p class="alert alert-info"><% {out.write(localizeISText("checkout.receipt.order_pending.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><div class="section">
<p>
<span><% {out.write(localizeISText("checkout.order.number.label","",null,null,null,null,null,null,null,null,null,null,null));} %></span> <strong data-testing-id="order-document-number"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></strong>
</p>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("CurrentSession:isLoggedIn")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.receipt.notification.mail.text",null,null,encodeString(context.getFormattedValue(getObject("OrderBO:UserBO:Email"),null)),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.receipt.notification.mail.text",null,null,encodeString(context.getFormattedValue(getObject("OrderBO:NotificationEmailAddress"),null)),null,null,null,null,null,null,null,null,null));} %><% } %></p>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/ProductIsNotAvailable", null, "57");} %><div class="row"><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CheckoutReceiptStart", null, "61");} %></div>
<div class="row"><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CheckoutReceiptAdditionalInfoBox", null, "64");} %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderShippingBucket:ShippingBuckets:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><div class="row equal">
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.address.billing.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",(((Boolean) (getObject("CurrentSession:LoggedIn"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("address",getObject("OrderBO:InvoiceToAddressBO"))}, 74); %></div>
</div>
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.payment_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div><% processOpenTag(response, pageContext, "paymentmethoddisplay", new TagParameter[] {
new TagParameter("paymentBOs",getObject("OrderPayment:PaymentBOs"))}, 82); %></div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"PaymentInfoExtensions", null, "84");} %></div>
</div>
</div><% while (loop("OrderShippingBucket:ShippingBuckets","Bucket",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("AuthorizationStatus"),null).equals(context.getFormattedValue("Cancel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("AuthorizationStatus"),null).equals(context.getFormattedValue("Failure",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("bucketnumber",getObject("OrderShippingBucket:ShippingBuckets:Size"))}, 92); %><% } else { %><% processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("displaydeliverytime","false"),
new TagParameter("bucketnumber",getObject("OrderShippingBucket:ShippingBuckets:Size"))}, 94); %><% } %> 
<div class="row equal">
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.shipping-address.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",getObject("Bucket:SelectedShippingMethod:DigitalDelivery")),
new TagParameter("address",getObject("Bucket:ShipToAddress"))}, 102); %></div>
</div>
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.shipping_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethodInc", null, "109");} %></div>
</div>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "115");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "118");} %><% } %><% } else { %><% while (loop("OrderShippingBucket:ShippingBuckets","Bucket",null)) { %><div class="row equal">
<div class="col-sm-6">
<div class="infobox" data-testing-id='address-slot-invoice-to-address'>
<h3><% {out.write(localizeISText("checkout.address.billing.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",(((Boolean) (getObject("CurrentSession:LoggedIn"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("address",getObject("OrderBO:InvoiceToAddressBO"))}, 128); %></div>
</div>
<div class="col-sm-6">
<div class="infobox" data-testing-id='address-slot-ship-to-address'>
<h3><% {out.write(localizeISText("checkout.widget.shipping-address.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",getObject("Bucket:SelectedShippingMethod:DigitalDelivery")),
new TagParameter("address",getObject("Bucket:ShipToAddress"))}, 135); %></div>
</div>
</div>
<div class="row equal">
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.shipping_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/ShippingMethodInc", null, "144");} %></div>
</div>
<div class="col-sm-6">
<div class="infobox">
<h3><% {out.write(localizeISText("checkout.widget.payment_method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% processOpenTag(response, pageContext, "paymentmethoddisplay", new TagParameter[] {
new TagParameter("paymentBOs",getObject("OrderPayment:PaymentBOs"))}, 151); %></div>
</div>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/gifting/PackSlipMessageView", null, "157");} %><% processOpenTag(response, pageContext, "bucketheader", new TagParameter[] {
new TagParameter("bucket",getObject("Bucket")),
new TagParameter("bucketnumber",getObject("OrderShippingBucket:ShippingBuckets:Size"))}, 160); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/review/LineItemsPerBucket", null, "163");} %><% } %><% } %> 
</div>
<div class="col-xs-12 col-md-4 order-summary">
<h2><% {out.write(localizeISText("checkout.order_summary.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div class="cost-summary"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/CostSummary", null, "172");} %></div> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/CreateAccountBox", null, "174");} %><a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)%>"><% {out.write(localizeISText("checkout.receipt.continue.shopping","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
</div><% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","OrderPlaced")}, 180); %><% printFooter(out); %>