<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/email/modules/Modules", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("OrderCreationContext:Order:get")); getPipelineDictionary().put("OrderBO", temp_obj);} %><% } %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Gifting\")")); getPipelineDictionary().put("CartGifting", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("CartPayment", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("OrderPayment", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"ShippingBucket\")")); getPipelineDictionary().put("OrderShippingBucket", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO")); getPipelineDictionary().put("CurrentCartBO", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayTypeName")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("OrderBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayTypeName", temp_obj);} %><% } %><% {Object temp_obj = (getObject("PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "20");} %><subject><% {out.write(localizeISText("email.order_confirmation.heading",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} %></subject><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailHeader", null, "24");} %><p class="header"><% {out.write(localizeISText("email.order_confirmation.heading","",null,getObject("ChannelName"),null,null,null,null,null,null,null,null,null));} %></p>
<p> 
<% {out.write(localizeISText("order.order_number.label","",null,getObject("OrderBO:DocumentNo"),null,null,null,null,null,null,null,null,null));} %></p>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderBO:UserBO:LastName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO:UserBO:Title")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:UserBO:Title"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("email.dear.label.title_firstname_lastname","",null,getObject("OrderBO:UserBO:Title"),getObject("OrderBO:UserBO:FirstName"),getObject("OrderBO:UserBO:LastName"),null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("email.dear.label.firstname_lastname","",null,getObject("OrderBO:UserBO:FirstName"),getObject("OrderBO:UserBO:LastName"),null,null,null,null,null,null,null,null));} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderBO:InvoiceToAddressBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO:InvoiceToAddressBO:Title")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:InvoiceToAddressBO:Title"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% {out.write(localizeISText("email.dear.label.title_firstname_lastname","",null,getObject("OrderBO:InvoiceToAddressBO:Title"),getObject("OrderBO:InvoiceToAddressBO:FirstName"),getObject("OrderBO:InvoiceToAddressBO:LastName"),null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("email.dear.label.firstname_lastname","",null,getObject("OrderBO:InvoiceToAddressBO:FirstName"),getObject("OrderBO:InvoiceToAddressBO:LastName"),null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% {out.write(localizeISText("email.dear.label.anonymous","",null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></p>
<p><% {out.write(localizeISText("email.order_confirmation.orderConfirmed.text","",null,null,null,null,null,null,null,null,null,null,null));} %><br /><% {out.write(localizeISText("email.order_confirmation.thank_you.text",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} %><br /><% {out.write(localizeISText("email.order_confirmation.we_received.text","",null,getObject("OrderBO:CreationDate"),null,null,null,null,null,null,null,null,null));} %><br /><br />
</p><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderShippingBucket:hasMultipleShippments"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" class="pattern">
<tr class="mobileTable">
<td width="600" class="orderConfirmationBucketInfo">
<table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr>
<td colspan="2" valign="top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/order/OrderEMailNotificationPurchaserInc", null, "81");} %></td>
</tr>
<tr>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.address.billing.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("address",getObject("OrderBO:InvoiceToAddressBO"))}, 87); %></p>
</td>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.payment.method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderBO:GrandTotalGross:Value")).doubleValue() !=((Number)(new Double(0.00))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "paymentmethoddisplay", new TagParameter[] {
new TagParameter("paymentBOs",getObject("CartPayment:PaymentBOs"))}, 93); %><% } else { %><% {out.write(localizeISText("email.order_confirmation.no_payment_method.text","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></p>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("BucketNo", temp_obj);} %><% while (loop("OrderShippingBucket:ShippingBuckets","Bucket",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("BucketNo")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("BucketNo", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("OrderShippingBucket:hasMultipleShippments")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><table cellpadding="10" cellspacing="0" class="pattern">
<tr class="mobileTable">
<td width="600" class="orderConfirmationBucketInfo">
<table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr>
<td colspan="2" valign="top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/order/OrderEMailNotificationPurchaserInc", null, "121");} %></td>
</tr>
<tr>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.address.billing.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("address",getObject("OrderBO:InvoiceToAddressBO"))}, 127); %></p>
</td>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.address.shipping.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",getObject("Bucket:SelectedShippingMethod:DigitalDelivery")),
new TagParameter("address",getObject("Bucket:ShipToAddress"))}, 131); %></p>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% while (loop("Bucket:ProductLineItemBOs","PLI",null)) { %><% {Object temp_obj = (getObject("PLI:ProductBO:ServiceTypeBO:DigitalGiftCard")); getPipelineDictionary().put("DigitalGiftCard", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",143);}else{getLoopStack().pop();break;} %><% } %><br /> 
<table cellpadding="10" cellspacing="0" border="0" width="100%">
<tr>
<td class="orderConfirmationShippingInfo">
<span class="orderConfirmationShippingInfoAddress"><% {out.write(localizeISText("checkout.order.items_shipping_to.text","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("DigitalGiftCard"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Bucket:ShipToAddressBO:FirstName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Bucket:ShipToAddressBO:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% } %> <% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Bucket:ShipToAddressBO:CompanyName1"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Bucket:ShipToAddressBO:CompanyName1"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:CompanyName1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Bucket:ShipToAddressBO:CompanyName2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %> <% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>, 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Bucket:ShipToAddressBO:AddressName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("Bucket:ShipToAddressBO:Extension(\"Store\")"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShipToAddressBO:AddressLine1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></span><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Bucket:DeliveryTimeMin")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Bucket:DeliveryTimeMax")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><br /><% {out.write(localizeISText("checkout.receipt.delivery_time.description","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Bucket:DeliveryTimeMin"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Bucket:DeliveryTimeMax"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.receipt.shipping_time.within24","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.receipt.shipping_time.within","",null,getObject("Bucket:DeliveryTimeMax"),null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% {out.write(localizeISText("checkout.receipt.delivery_time","",null,getObject("Bucket:DeliveryTimeMin"),getObject("Bucket:DeliveryTimeMax"),null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
</table>
<table cellpadding="10" cellspacing="0" class="pattern">
<tr class="mobileTable">
<td width="600" class="orderConfirmationBucketInfo"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderShippingBucket:hasMultipleShippments"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.address.shipping.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("address",getObject("Bucket:ShipToAddress"))}, 190); %></p>
</td>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.shipping.method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h4><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Bucket:SelectedShippingMethod:ExtensibleObject:shortName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %><p><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:SelectedShippingMethod:ExtensibleObject:shortName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } else { %><p><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:SelectedShippingMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayTypeName"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><p>(<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</p><% } else { %><p>(<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Bucket:ShippingInstructions")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Bucket:ShippingInstructions"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("checkout.shipping_method.instructions.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<p><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShippingInstructions"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value,"nl2br,html");out.write(value);} %></p><% } %></td>
</tr>
</table><% } else { %><table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.shipping.method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h4><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Bucket:SelectedShippingMethod:ExtensibleObject:shortName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { %><p><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:SelectedShippingMethod:ExtensibleObject:shortName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } else { %><p><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:SelectedShippingMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {223}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayTypeName"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %><p>(<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</p><% } else { %><p>(<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {229}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Bucket:ShippingInstructions")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Bucket:ShippingInstructions"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("checkout.shipping_method.instructions.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<p><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ShippingInstructions"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {234}",e);}if (value==null) value="";value = encodeString(value,"nl2br,html");out.write(value);} %></p><% } %></td>
<td valign="top">
<h4><% {out.write(localizeISText("checkout.payment.method.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderBO:GrandTotalGross:Value")).doubleValue() !=((Number)(new Double(0.00))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",240,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "paymentmethoddisplay", new TagParameter[] {
new TagParameter("paymentBOs",getObject("CartPayment:PaymentBOs"))}, 241); %><% } else { %><% {out.write(localizeISText("email.order_confirmation.no_payment_method.text","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></p>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% while (loop("Bucket:ProductLineItemBOs","PLI",null)) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/email/common/LineItemDetails", null, "256");} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Bucket:PackSlipMessage")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PackSlipMessage_Switch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",260,e);}if (_boolean_result) { %><table cellpadding="10" cellspacing="0" class="pattern">
<tr class="mobileTable">
<td width="600" class="orderConfirmationBucketInfo">
<h4><% {out.write(localizeISText("checkout.pack_slip.header","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr>
<td width="33%" valign="top"><% {out.write(localizeISText("checkout.pack_slip.to","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="66%" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:PackSlipMessage:Message:To"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {272}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td valign="top"><% {out.write(localizeISText("checkout.pack_slip.from","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:PackSlipMessage:Message:From"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {280}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td valign="top"><% {out.write(localizeISText("checkout.pack_slip.message","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:PackSlipMessage:Message:Message"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {288}",e);}if (value==null) value="";value = encodeString(value,"nl2br,html");out.write(value);} %></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><h2 class="emailOrderSummary"><% {out.write(localizeISText("email.order_confirmation.billing_details.text","",null,null,null,null,null,null,null,null,null,null,null));} %></h2><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/email/common/CostSummary", null, "300");} %><p><% {out.write(localizeISText("email.order_confirmation.questions",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systempage.helpdesk.index.pagelet2-Page",null)))),null,null,null,null,null,null,null));} %> 
</p>
<p><% {out.write(localizeISText("email.best_regards.label","",null,null,null,null,null,null,null,null,null,null,null));} %><br /><% {out.write(localizeISText("email.user_services.label",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "316");} %><% printFooter(out); %>