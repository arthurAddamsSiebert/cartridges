<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.header","",null,getObject("WishlistBO:Name"),null,null,null,null,null,null,null,null,null));} %></h2>
</div><% URLPipelineAction action17 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null));String site17 = null;String serverGroup17 = null;String actionValue17 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null);if (site17 == null){  site17 = action17.getDomain();  if (site17 == null)  {      site17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup17 == null){  serverGroup17 = action17.getServerGroup();  if (serverGroup17 == null)  {      serverGroup17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null));out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue17, site17, serverGroup17,true)); %><div class="modal-body">
<div class="form-group">
<div class="col-xs-12">
<p><% {out.write(localizeISText("account.order_template.delete.do_you_really.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<input type="hidden" name="WishlistID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Wishlists:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("WishlistBO:WishlistItemBOsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><fieldset>
<div class="checkbox">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="checkbox" value="true" name="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-toggle="collapse" data-target="<%=context.getFormattedValue("#",null)%>targetWishlistSection"/><% {out.write(localizeISText("account.order_template.delete.move_products.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</div>
</fieldset>
<div id="targetWishlistSection" class="collapse row col-xs-6">
<select class="form-control" name="<% {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:TargetWishlistID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" ><% while (loop("Wishlists","CurrentWishlistBO",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("WishlistBO:ID"),null).equals(context.getFormattedValue(getObject("CurrentWishlistBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentWishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentWishlistBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</div><% } %></div>
</div>
</div>
<div class="modal-footer">
<button class="btn btn-primary" type="submit" name="DeleteWishlist"><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.delete_button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button type="button" class="btn btn-default" data-dismiss="modal" name="cancel"><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.cancel_button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %></div>
</div><% printFooter(out); %>