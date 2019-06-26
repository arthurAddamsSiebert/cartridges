<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} %><% context.setCustomTagTemplateName("wishlistitem","modules/account/WishlistItem.isml",true,new String[]{"WishlistItem","Currency","showImage","Pagelet","showQuantityControls","showQuantitiesText","showDateAdded","showPrice","showAddToCartButton","showEditItemButtons","showWishlistLink","saveForLaterList"},null); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("WishlistBO"))))).booleanValue() && ((Boolean) ((hasLoopElements("WishlistBO:Items") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><div class="ish-section">
<div class="ish-bar">
<h3><% {out.write(localizeISText("account.wishlist.saved_for_later.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
</div><% {Object temp_obj = (getObject("WishlistBO:Items")); getPipelineDictionary().put("WishlistItems", temp_obj);} %><div class="ish-shiftContent">
<table class="ish-productTable">
<thead>
<tr>
<th><% {out.write(localizeISText("account.wishlist.table.header.item","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th></th>
<th><% {out.write(localizeISText("account.wishlist.table.header.date_added","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="ish-itemPrice"><% {out.write(localizeISText("account.wishlist.table.header.price","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th>&nbsp;</th>
</tr>
</thead>
<tbody><% while (loop("WishlistItems","WishlistItem",null)) { %><% processOpenTag(response, pageContext, "wishlistitem", new TagParameter[] {
new TagParameter("showQuantitiesText","false"),
new TagParameter("showPrice","true"),
new TagParameter("showAddToCartButton","true"),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("showDateAdded","true"),
new TagParameter("showEditItemButtons","true"),
new TagParameter("showImage","true"),
new TagParameter("showQuantityControls","true"),
new TagParameter("WishlistItem",getObject("WishlistItem")),
new TagParameter("saveForLaterList","true")}, 43); %><% } %></tbody>
</table>
</div>
</div><% } %><% printFooter(out); %>