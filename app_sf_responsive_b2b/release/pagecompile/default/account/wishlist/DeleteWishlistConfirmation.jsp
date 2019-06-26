<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<a class="close" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-ViewAll",null)))),null)%>" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></a>
<h2 class="modal-title"><% {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.header","",null,getObject("DeletedWishlistName"),null,null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body">
<p><% {out.write(localizeISText("account.order_template.delete_order_template.confirmation","",null,getObject("DeletedWishlistName"),null,null,null,null,null,null,null,null,null));} %></p>
</div>
<div class="modal-footer">
<a class="btn btn-primary" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-ViewAll",null)))),null)%>"><% {out.write(localizeISText("account.order_template.order_template.confirmation.ok_button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
</div><% printFooter(out); %>