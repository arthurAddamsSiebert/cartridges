<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("ApplicationBO"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Dictionary:ApplicationBO:Configuration:String(\"BasketDisplayTaxes\")")); getPipelineDictionary().put("BasketDisplayTaxes", temp_obj);} %><% {Object temp_obj = (getObject("Dictionary:ApplicationBO:Configuration:String(\"BasketDisplayHandlingFee\")")); getPipelineDictionary().put("BasketDisplayHandlingFee", temp_obj);} %><% } else { %> 
<% {Object temp_obj = (getObject("ApplicationBO:Configuration:String(\"BasketDisplayTaxes\")")); getPipelineDictionary().put("BasketDisplayTaxes", temp_obj);} %><% {Object temp_obj = (getObject("ApplicationBO:Configuration:String(\"BasketDisplayHandlingFee\")")); getPipelineDictionary().put("BasketDisplayHandlingFee", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Gifting\")")); getPipelineDictionary().put("CartGifting", temp_obj);} %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Payment\")")); getPipelineDictionary().put("CartPayment", temp_obj);} %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingCost\")")); getPipelineDictionary().put("CartShippingCost", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("OrderBO:Extension(\"AppliedRebate\"):AppliedOrderValueRebates")); getPipelineDictionary().put("CartAppliedRebates", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"AppliedRebate\"):AppliedOrderShippingRebates")); getPipelineDictionary().put("CartAppliedShippingRebates", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"AppliedRebate\"):AppliedBasketValueRebates")); getPipelineDictionary().put("CartAppliedRebates", temp_obj);} %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"AppliedRebate\"):AppliedBasketShippingRebates")); getPipelineDictionary().put("CartAppliedShippingRebates", temp_obj);} %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentCartBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} %><% } %><table class="emailCostSummary" cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" align="right">
<tr>
<td><% {out.write(localizeISText("checkout.cart.subtotal.heading","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:DiscountedItemSubtotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:DiscountedItemSubtotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("CartGifting:hasGiftingCosts")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td><% {out.write(localizeISText("checkout.order.giftwrap.label","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CartGifting:GiftingTotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CartGifting:GiftingTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("CurrentCartBO:hasProductConfigurationCosts")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><tr>
<td><% {out.write(localizeISText("checkout.order.productconfiguration.label","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td align="right">&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ProductConfigurationTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CartAppliedRebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><tr><% while (loop("CartAppliedRebates","AppliedRebate",null)) { %><td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AppliedRebate:RebateBO:PromotionBO:DisableMessages"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("AppliedRebate:RebateBO:PromotionBO:Title(CurrentSession:Locale)")); getPipelineDictionary().put("PromoTitle", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromoTitle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("PromoTitle"))}, 72); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null)%>" data-dialog class="details-link"
alt="<% {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("AppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"))}, 76); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null)%>"
class="details-link" data-dialog
alt="<% {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %><% } %>&nbsp;
</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountNet:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountGross:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td><% } %></tr><% } %><tr> 
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.cart.estimated_shipping_handling.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.order.shipping.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;
</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentCartBO:ShippingTotalNet:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ShippingTotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ItemSubtotal:ZeroMoney(CurrentCartBO:ItemSubtotal:CurrencyMnemonic)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentCartBO:ShippingTotalGross:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ShippingTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ItemSubtotal:ZeroMoney(CurrentCartBO:ItemSubtotal:CurrencyMnemonic)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CartAppliedShippingRebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><% while (loop("CartAppliedShippingRebates","AppliedRebate",null)) { %><td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AppliedRebate:RebateBO:PromotionBO:DisableMessages"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("AppliedRebate:RebateBO:PromotionBO:Title(CurrentSession:Locale)")); getPipelineDictionary().put("PromoTitle", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromoTitle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("PromoTitle"))}, 128); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null)%>" data-dialog class="details-link"
alt="<% {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("AppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"))}, 132); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null)%>"
class="details-link" data-dialog
alt="<% {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %><% } %>&nbsp;
</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountNet:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountGross:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td><% } %><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CurrentCartBO:ItemSurchargeTotalsByType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><tr><% while (loop("CurrentCartBO:ItemSurchargeTotalsByType","GIS",null)) { %><td><% {String value = null;try{value=context.getFormattedValue(getObject("GIS:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GIS:AmountNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("GIS:AmountGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td><% } %></tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CurrentCartBO:BucketSurchargeTotalsByType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %><tr> 
<% while (loop("CurrentCartBO:BucketSurchargeTotalsByType","GBS",null)) { %><td><% {String value = null;try{value=context.getFormattedValue(getObject("GBS:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GBS:AmountNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("GBS:AmountGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td><% } %></tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:LimitedTenderTotal"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("CurrentCartBO:LimitedTenderTotal:Value")).doubleValue() !=((Number)(new Double(0.00))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %><tr>
<td><% {out.write(localizeISText("checkout.payment.gift.heading","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td align="right">&nbsp;-<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:LimitedTenderTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CartPayment:PaymentCostsTotal:Value")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %><tr>
<td><% {out.write(localizeISText("checkout.cart.payment_cost.label","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td align="right">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CartPayment:PaymentCostsTotalNet:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalNet:ZeroMoney(CurrentCartBO:PurchaseCurrencyCode)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CartPayment:PaymentCostsTotalGross:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalGross:ZeroMoney(CurrentCartBO:PurchaseCurrencyCode)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("estimated","true"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.Estimated_SalesTax"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 219); %><% } else { %><% processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.SalesTax"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 230); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",241,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.Estimated_TotalOrderVat"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 242); %><% } else { %><% processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.TotalOrderVat"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 252); %><% } %></tr><% } %><tr> 
<td class="total-price"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.cart.estimated_total.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.order.total_cost.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>&nbsp;
<td class="total-price" align="right">&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:BasketTotalPriceMinusLimitedTenderGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {274}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>