<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div>
{{<%=context.getFormattedValue("#",null)%>if confirm}}
<div class="modal-body">
<p><% {out.write(localizeISText("account.subscriptions.dialog.confirm.items.deactivate","",null,"{{items}}",null,null,null,null,null,null,null,null,null));} %></br><% {out.write(localizeISText("account.subscriptions.dialog.confirm.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div>
<div class="modal-footer">
<button class="btn btn-primary {{<%=context.getFormattedValue("#",null)%>if loading}}btn-loader{{/if}}" type="submit" value="{{sid}}" name="deactivate">
<div class="loader"></div>
<span class="btn-content"><% {out.write(localizeISText("account.subscriptions.dialog.confirm.button.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
</button>
<a class="btn btn-default" data-dismiss="modal"><% {out.write(localizeISText("account.subscriptions.dialog.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
{{else}}
<div class="modal-body">
{{<%=context.getFormattedValue("#",null)%>if error}}
<p class="alert alert-danger"><% {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{else}}
<p><% {out.write(localizeISText("account.subscriptions.dialog.deactivated","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{/if}}
</div>
<div class="modal-footer">
<a class="btn btn-primary" data-dismiss="modal"><% {out.write(localizeISText("account.subscriptions.dialog.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
{{/if}}
<% printFooter(out); %>