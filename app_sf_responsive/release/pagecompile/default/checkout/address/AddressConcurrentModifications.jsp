<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="modal-dialog modal-md" role="document">
<div class="modal-content js-dialog-concurrent-modification">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("checkout.address.warning","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body">
<p><% {out.write(localizeISText("checkout.delete.address.warning","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div>
<div class="modal-footer">
<a class="btn btn-primary" href="javascript:parent.location.reload();"><% {out.write(localizeISText("checkout.reloadpage.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<button type="button" class="btn btn-default" data-dismiss="modal"><% {out.write(localizeISText("checkout.address.cancel.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button> 
</div>
</div>
</div><% printFooter(out); %>