<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div id="approvalRejectCommentModal" class="modal" role="dialog">
<div class="modal-dialog">
<div class="modal-content"><% URLPipelineAction action13 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApprovals-Reject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BasketID",null),context.getFormattedValue(getObject("BasketBO:ID"),null)))),null));String site13 = null;String serverGroup13 = null;String actionValue13 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApprovals-Reject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BasketID",null),context.getFormattedValue(getObject("BasketBO:ID"),null)))),null);if (site13 == null){  site13 = action13.getDomain();  if (site13 == null)  {      site13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup13 == null){  serverGroup13 = action13.getServerGroup();  if (serverGroup13 == null)  {      serverGroup13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApprovals-Reject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BasketID",null),context.getFormattedValue(getObject("BasketBO:ID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("rejectOrderForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue13, site13, serverGroup13,true)); %><div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("approval.rejectform.reject_",null) + context.getFormattedValue(getObject("BasketType"),null) + context.getFormattedValue(".heading",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body">
<div class="form-group clearfix">
<label class="control-label col-sm-12" for="ApprovalComment"><% {out.write(localizeISText("approval.rejectform.add_a_comment.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-12">
<textarea id="ApprovalComment"
class="form-control" 
name="ApprovalComment" 
data-maxcharacter="1000" 
data-charactercounter="character-counter" 
maxlength="1000" cols="50"
required
data-bv-notempty-message ="<% {out.write(localizeISText("approval.rejectform.invalid_comment.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
></textarea>
</div>
<div class="help-block col-sm-12"><% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.pre.text","",null,null,null,null,null,null,null,null,null,null,null));} %> <span id="character-counter">1000</span> <% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.post.text","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
</div>
<div class="modal-footer">
<button class="btn btn-default" data-dismiss="modal" value="<% {out.write(localizeISText("approval.rejectform.button.cancel.label","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="cancel"><% {out.write(localizeISText("approval.rejectform.button.cancel.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button type="submit" class="btn btn-primary" value="<% {out.write(localizeISText("approval.rejectform.button.reject.label","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="reject"><% {out.write(localizeISText("approval.rejectform.button.reject.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %></div>
</div>
</div><% printFooter(out); %>