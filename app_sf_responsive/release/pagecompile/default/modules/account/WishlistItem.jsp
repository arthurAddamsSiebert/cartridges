<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {Object temp_obj = (getObject("WishlistItem:ProductBO")); getPipelineDictionary().put("ProductBO", temp_obj);} %><% {Object temp_obj = ("Miscellaneous / Color"); getPipelineDictionary().put("ColorAttributeName", temp_obj);} %><div class="col-sm-2 col-xs-3 list-item"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showImage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null)%>"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("Class","img-responsive"),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","S")}, 11); %></a><% } else { %><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("Class","img-responsive"),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","S")}, 15); %><% } %> 
<% } %></div>
<div class="col-sm-10 col-xs-9 list-item">
<div class="row">
<div class="col-sm-4"> 
<div class="pli-description"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><a class="product-title" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><div class="product-title"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div> 
<% } %><p class="product-id"><% {out.write(localizeISText("account.wishlist.table.item.item","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:String(ColorAttributeName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.wishlist.table.item.color","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:String(ColorAttributeName)"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductBO:BundleInformationBO:BundledProductBOs:Size")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><ul><% while (loop("ProductBO:BundleInformationBO:BundledProductBOs","BundledProductBO",null)) { %><li><% {String value = null;try{value=context.getFormattedValue(getObject("BundledProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></li><% } %></ul><% } %><% {Object temp_obj = (getObject("ProductBO:ProductVariationInformationBO")); getPipelineDictionary().put("VariationInfo", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("VariationInfo:VariationAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><dl class="dl-horizontal"><% while (loop("VariationInfo:VariationAttributes","VariationAttribute",null)) { %><dt><% {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("VariationInfo:SelectedVariationValue(VariationAttribute)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd><% } %></dl><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showDateAdded"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><p class="hidden-xs">
<label><% {out.write(localizeISText("account.wishlist.table.added_on","",null,null,null,null,null,null,null,null,null,null,null));} %></label>&nbsp;
<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:CreationDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("showAddToCartButton"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("showEditItemButtons"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showEditItemButtons"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><!-- Show/Hide checkbox -->
<div class="checkbox clearfix">
<label><input type="checkbox" name="Private_<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="private_<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("WishlistItem:Public"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>checked="checked"<% } %> /><% {out.write(localizeISText("account.wishlist.table.options.do_not_share","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</div>
<p>
<a class="btn-tool"
data-dialog
title="<% {out.write(localizeISText("account.wishlist.table.options.move_to_another_wishlist","",null,null,null,null,null,null,null,null,null,null,null));} %>"
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-ShowMoveItemDialog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SourceWishlistID",null),context.getFormattedValue(getObject("WishlistItem:WishlistBO:ID"),null)).addURLParameter(context.getFormattedValue("SourceWishlistItemID",null),context.getFormattedValue(getObject("WishlistItem:ID"),null))),null)%>"
>
<span class="glyphicon glyphicon-move"></span>
</a><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuardJSToken", null, "91");} %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-RemoveItem",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WishlistID",null),context.getFormattedValue(getObject("WishlistItem:WishlistBO:ID"),null))).addURLParameter(context.getFormattedValue("WishlistItemID",null),context.getFormattedValue(getObject("WishlistItem:ID"),null))),null)%>" 
class="btn-tool" 
data-csrf-guarded
title="<% {out.write(localizeISText("account.wishlist.table.options.remove","",null,null,null,null,null,null,null,null,null,null,null));} %>"
>
<span class="glyphicon glyphicon-trash"></span>
</a>
</p><% } %><% } %></div>
<div class="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showWishlistLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>col-sm-4<% } else { %>col-sm-3<% } %>"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showWishlistLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WishlistID",null),context.getFormattedValue(getObject("WishlistItem:WishlistBO:ID"),null)))),null)%>"><% {out.write(localizeISText("account.wishlist.table.wishlist_link","",null,getObject("WishlistItem:WishlistBO:Name"),null,null,null,null,null,null,null,null,null));} %></a><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showQuantitiesText"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><div class="form-horizontal">
<div class="form-group ">
<label class="col-xs-12 col-sm-12 control-label"><% {out.write(localizeISText("account.wishlist.table.desired_quantity","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-xs-6 col-sm-12"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showQuantityControls"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><input class="form-control quantity" type="number" step="1" min="1" data-validate="qty_required numbers" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:DesiredQuantity"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="DesiredQuantity_<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="DesiredQuantity_<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="form-control"/><% } else { %>
&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:DesiredQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></div>
</div>
</div>
<p><% {out.write(localizeISText("account.wishlist.table.purchased_quantity","",null,null,null,null,null,null,null,null,null,null,null));} %><br /><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("WishlistItem:PurchasedQuantity:Value")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:PurchasedQuantity"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("account.wishlist.table.not_yet_purchased","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></p><% } %></div><% {Object temp_obj = (getObject("ProductBO:Extension(\"Pricing\")")); getPipelineDictionary().put("ProductPrice", temp_obj);} %><% processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 139); %><% processOpenTag(response, pageContext, "currentuserbo", new TagParameter[] {
new TagParameter("currentuserbo","UserBO")}, 140); %><% processOpenTag(response, pageContext, "getproductpricecontext", new TagParameter[] {
new TagParameter("UserBO",getObject("UserBO")),
new TagParameter("CustomerBO",getObject("CustomerBO")),
new TagParameter("AddressSpecificPrice","true"),
new TagParameter("ProductPriceContext","ProductPriceContext")}, 141); %><% {Object temp_obj = (getObject("ProductPrice:Price(\"SalePrice\",Currency,ProductPriceContext)")); getPipelineDictionary().put("salePrice", temp_obj);} %><div class="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showWishlistLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>col-sm-4<% } else { %>col-sm-5<% } %> column-price"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><!-- TODO: maybe multiply by the desired quantity? --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("salePrice:Range"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("salePrice:PriceRange:MinimumPrice"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("salePrice:Price:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("salePrice:Price"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ProductBO:Price"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %><p><% processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 156); %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("showAddToCartButton"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("showEditItemButtons"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><p class="availability"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ProductBO:Accessible"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><span class="product-out-of-stock"><% {out.write(localizeISText("account.wishlist.table.not_accessible","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:InventoryStatus:InStock"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><span class="product-in-stock"><% {out.write(localizeISText("account.wishlist.table.in_stock","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } else { %><span class="product-out-of-stock"><% {out.write(localizeISText("account.wishlist.table.out_of_stock","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% }} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showAddToCartButton"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductBO:InventoryStatus:InStock")).booleanValue() && ((Boolean) getObject("ProductBO:Accessible")).booleanValue() && !((Boolean) (((((Boolean) getObject("ProductBO:isLastOrderDate")).booleanValue() || ((Boolean) getObject("ProductBO:isEndOfLife")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("salePrice:Price:Available")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:TaxClassID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProductBO:TaxClassID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("WishlistItem:DesiredQuantity:Value")).doubleValue() -((Number) getObject("WishlistItem:PurchasedQuantity:Value")).doubleValue()))); getPipelineDictionary().put("initialQuantityToAdd", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("initialQuantityToAdd")).doubleValue() <((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("initialQuantityToAdd", temp_obj);} %><% } %><div class="form-horizontal">
<div class="form-group ">
<label class="col-xs-6 control-label control-label-right" for="inputType"><% {out.write(localizeISText("account.wishlist.table.options.add_to_cart_quantity_label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-xs-6">
<input class="form-control quantity" type="number" step="1" min="1" data-validate="required" value="<% {String value = null;try{value=context.getFormattedValue(getObject("initialQuantityToAdd"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" formatter="0" name="Quantity_<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="Quantity_<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</div>
</div>
</div>
<div class="form-group">
<button class="btn btn-primary" type="submit" name="AddToBasket" onclick="setWishlistItemID('<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistItem:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');"><% {out.write(localizeISText("account.wishlist.table.options.add_to_cart","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% } else { %><% {out.write(localizeISText("account.wishlist.table.not_availableMessage","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% } %></div>
</div>
</div><% printFooter(out); %>