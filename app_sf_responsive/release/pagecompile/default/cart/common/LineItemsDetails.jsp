<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentCartBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} %><% } %><% {Object temp_obj = ((disableErrorMessages().isDefined(getObject("OrderBO")))); getPipelineDictionary().put("showPLIState", temp_obj);} %><div class="list-header">
<div class="col-sm-6 list-header-item"><% {out.write(localizeISText("account.orderdetails.items_table.item","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-2 list-header-item"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("showPLIState"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.orderdetails.items_table.fulfillment_status","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></div>
<div class="col-sm-2 list-header-item column-price"><% {out.write(localizeISText("account.orderdetails.items_table.price","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-2 list-header-item column-price"><% {out.write(localizeISText("account.orderdetails.items_table.total_price","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body"><% while (loop("bucket:ProductLineItemBOs","PLI",null)) { %><% {Object temp_obj = (getObject("PLI:Extension(\"Warranty\")")); getPipelineDictionary().put("PLIWarranty", temp_obj);} %><% {Object temp_obj = (getObject("PLI:Extension(\"AppliedRebate\")")); getPipelineDictionary().put("PLIAppliedRebate", temp_obj);} %><div class="list-item-row"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PLI:isHiddenGift"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><div class="col-sm-2 col-xs-2 list-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("PLI:ProductBO:SKU"),null)))),null)%>"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("PLI:ProductBO")),
new TagParameter("ImageType","S")}, 22); %></a>
</div>
<div class="col-sm-6 col-xs-7">
<div class="row">
<div class="col-sm-8 col-xs-12 list-item">
<div class="pli-description"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLI:ProductBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><a class="product-title" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("PLI:ProductBO:SKU"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><p class="product-id"><% {out.write(localizeISText("account.orderdetails.items_table.item_no","",null,null,null,null,null,null,null,null,null,null,null));} %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("PLI:ProductRef:ProductSKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLI:VariationInformationBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><dl id="editProductVariation<% {String value = null;try{value=context.getFormattedValue(getObject("index"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="dl-horizontal"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PLI:VariationInformationBO:VariationAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% while (loop("PLI:VariationInformationBO:VariationAttributes","VariationAttribute",null)) { %><dt><% {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</dt>
<dd class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasNext("VariationAttribute") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("editable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %> variationAttribute-last<% } %>"><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:ProductBO:Attribute(VariationAttribute:Name)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd> 
<% } %><% } %></dl><% } %><p>
<label><% {out.write(localizeISText("account.orderdetails.items_table.quantity_text_label","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</label><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:Quantity"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/PromotionCodeList", null, "60");} %></div>
</div>
<div class="col-sm-4 col-xs-12 list-item"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("showPLIState"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><p>
<label class="hidden-sm hidden-md hidden-lg"><% {out.write(localizeISText("account.orderdetails.items_table.status.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:FulfillmentStatusDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLI:DesiredDeliveryDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><p>
<span><% {out.write(localizeISText("checkout.shipping.pli.dddate.short.text","",null,null,null,null,null,null,null,null,null,null,null));} %>:</span>
<span class="text-nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:DesiredDeliveryDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</p><% } %><% } %></div>
</div>
</div>
<div class="col-sm-2 list-item hidden-xs column-price"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:SingleBasePriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:SingleBasePriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></div>
<div class="col-sm-2 col-xs-3 list-item column-price">
<div><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLIAppliedRebate:ItemValueRebatesTotal:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><div class="old-price"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></div><% } %>&nbsp;
</div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PLIWarranty:Warranty")); getPipelineDictionary().put("WarrantyPLI", temp_obj);} %><div class="col-sm-6 col-sm-offset-0 col-xs-8 col-xs-offset-2 list-item">
<p><% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyPLI:Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWarrantyDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("WarrantyPLI:Warranty:ProductRef:ProductSKU"),null)))),null)%>" data-dialog class="details-link"><% {out.write(localizeISText("account.orderdetails.items_table.warranty_details_link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</p>
</div>
<div class="col-sm-2 list-item column-price hidden-xs"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyPLI:SingleBasePriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyPLI:SingleBasePriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></div>
<div class="col-sm-2 col-xs-2 list-item column-price"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyPLI:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyPLI:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PLI:ItemSurchargeBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><div class="col-sm-10 col-sm-offset-0 col-xs-8 col-xs-offset-2 list-item"><% while (loop("PLI:ItemSurchargeBOs","Surcharge",null)) { %><p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Surcharge:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("account.orderdetails.items_table.surcharge","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><span> (<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:AmountNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:AmountGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>)</span>&nbsp;
<% processOpenTag(response, pageContext, "tooltip", new TagParameter[] {
new TagParameter("linktextkey","shopping_cart.detail.text"),
new TagParameter("headline",getObject("Surcharge:DisplayName")),
new TagParameter("content",getObject("Surcharge:Description"))}, 145); %></p><% } %></div><% } %></div><% } %></div><% printFooter(out); %>