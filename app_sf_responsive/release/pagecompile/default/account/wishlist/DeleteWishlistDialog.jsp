<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.header","",null,getObject("WishlistBO:Name"),null,null,null,null,null,null,null,null,null));} %></h2>
</div><% URLPipelineAction action22 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null));String site22 = null;String serverGroup22 = null;String actionValue22 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null);if (site22 == null){  site22 = action22.getDomain();  if (site22 == null)  {      site22 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup22 == null){  serverGroup22 = action22.getServerGroup();  if (serverGroup22 == null)  {      serverGroup22 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null));out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue22, site22, serverGroup22,true)); %><div class="modal-body">
<div class="form-group">
<div class="col-xs-12">
<p><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.are_you_sure_paragraph","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferredWishlistID"),null).equals(context.getFormattedValue(getObject("WishlistBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.preferred_wishlist_paragraph","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><input type="hidden" name="WishlistID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Wishlists:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("WishlistBO:WishlistItemBOsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><fieldset>
<div class="checkbox">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="checkbox" value="true" name="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-toggle="collapse" data-target="<%=context.getFormattedValue("#",null)%>targetWishlistSection"/><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.move_products_before_deletion.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</div>
</fieldset>
<div id="targetWishlistSection" class="collapse row col-xs-6">
<select class="form-control" name="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:TargetWishlistID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" ><% while (loop("Wishlists","CurrentWishlistBO",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("WishlistBO:ID"),null).equals(context.getFormattedValue(getObject("CurrentWishlistBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentWishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentWishlistBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</div><% } %></div>
</div>
</div>
<div class="modal-footer">
<button class="btn btn-primary" type="submit" name="DeleteWishlist"><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.delete_button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button type="button" class="btn btn-default" name="cancel" data-dismiss="modal"><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.cancel_button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %></div>
</div><% printFooter(out); %>