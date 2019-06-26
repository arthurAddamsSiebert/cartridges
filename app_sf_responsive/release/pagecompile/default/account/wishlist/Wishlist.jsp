<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %>
<script type="text/javascript">
function setWishlistItemID(wishlistItemID)
{
	var element = document.getElementById('WishlistItemID');
	element.value = wishlistItemID;
}
</script>
	
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Basket_Product"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
	<div class="alert alert-danger">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Basket_Product"),null).equals(context.getFormattedValue("MaxItemSizeReached",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
			<p><% {out.write(localizeISText("shopping_cart.max.item.count.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Basket_Product"),null).equals(context.getFormattedValue("ProductRepeatDisallowed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
			<p><% {out.write(localizeISText("shopping_cart.repeat.disallowed.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Basket_Product"),null).equals(context.getFormattedValue("QUANTITY_FORMAT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
			<p><% {out.write(localizeISText("shopping_cart.quantity.invalid.error.w.correction","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
		<% } else { %>
			
			<p><% {out.write(localizeISText("shopping_cart.update.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
		<% }}} %>
	</div>
<% } %>
<% processOpenTag(response, pageContext, "shoppingcartglobalerrormsg", new TagParameter[] {
new TagParameter("addToBasketResults",getObject("AddToBasketResults"))}, 25); %>

<div class="section">
	<% {Object temp_obj = (getObject("WishlistBO:WishlistItemBOs")); getPipelineDictionary().put("WishlistItems", temp_obj);} %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("WishlistItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
		<% URLPipelineAction action16 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-Dispatch",null)))),null));String site16 = null;String serverGroup16 = null;String actionValue16 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-Dispatch",null)))),null);if (site16 == null){  site16 = action16.getDomain();  if (site16 == null)  {      site16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup16 == null){  serverGroup16 = action16.getServerGroup();  if (serverGroup16 == null)  {      serverGroup16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateWishlist");out.print("\"");out.print(" class=\"");out.print("kor-wishlistForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue16, site16, serverGroup16,true)); %>
			<input type="hidden" name="WishlistID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
			<input type="hidden" name="WishlistOwnerID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistBO:UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
			<input type="hidden" name="WishlistItemID" id="WishlistItemID" value="toBeSetByJavaScriptIfNecessary" />

			<div class="list-header">
				<div class="col-sm-3 col-xs-3 list-header-item"><% {out.write(localizeISText("account.wishlist.table.header.item","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
				<div class="col-sm-9 col-xs-9 list-header-item column-price"><% {out.write(localizeISText("account.wishlist.table.header.price","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
			</div>
			<div class="list-body">
				<% while (loop("WishlistItems","WishlistItem",null)) { %>
				<div class="list-item-row">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("WishlistItem:ProductBO:SKU")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "wishlistitem", new TagParameter[] {
new TagParameter("showQuantitiesText","true"),
new TagParameter("showPrice","true"),
new TagParameter("showAddToCartButton","true"),
new TagParameter("showDateAdded","true"),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("showEditItemButtons","true"),
new TagParameter("showImage","true"),
new TagParameter("showQuantityControls","true"),
new TagParameter("WishlistItem",getObject("WishlistItem"))}, 45); %>
					<% } else { %>
						<div class="list-item">
							<p><% {out.write(localizeISText("account.overview.wishlist.unshared_product","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
						</div>
					<% } %>
				</div>
				<% } %>
			</div>

			<button class="btn btn-default pull-right" type="submit" name="Update">
				<% {out.write(localizeISText("account.wishlist.table.update_wishlist","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</button>
		<% out.print("</form>"); %>
	<% } else { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
			<p><% {out.write(localizeISText("account.wishlist.no_entries","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
		<% } %>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
		<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-ViewAll",null)))),null)%>"><% {out.write(localizeISText("account.wishlist.searchform.return.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TargetWishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/wishlist/MoveWishlistItemConfirmation", null, "79");} %>
	<% } %>
</div>

<% {Object temp_obj = ("Wishlist"); getPipelineDictionary().put("list_name", temp_obj);} %>
<% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","ViewWishList")}, 84); %>
<% printFooter(out); %>