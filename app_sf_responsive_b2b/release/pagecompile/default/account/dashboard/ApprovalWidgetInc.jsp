<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"OrderApprovalManagement\")")); getPipelineDictionary().put("OrderApprovalManagementServiceExtension", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderApprovalManagementServiceExtension:Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","User"),
new TagParameter("value0",getObject("CurrentUser")),
new TagParameter("mapname","PipelineParameters")}, 7); %><% {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(getObject("PipelineParameters"))),"BusinessObjectDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 10.",e);}} %><% processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("BusinessObjectDict:UserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 12); %><% processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentDomain:DefaultApplication:Domain:DomainName")),
new TagParameter("preferencekey","EnableRecurringOrders"),
new TagParameter("type","String"),
new TagParameter("return","EnableRecurringOrders")}, 13); %><% {Object temp_obj = (getObject("BusinessObjectDict:UserBO:Extension(\"UserBOOrderApprovalExtension\")")); getPipelineDictionary().put("UserApproval", temp_obj);} %><% {Object temp_obj = (getObject("BusinessObjectDict:UserBO:Extension(\"CostCenter\")")); getPipelineDictionary().put("CostCenterExtension", temp_obj);} %><div class="section" data-testing-id="my-approvals-section">
<h2><% {out.write(localizeISText("approval.widget.my_approvals.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div class="row account-dashboard bubble-section">
<div class="col-sm-6">
<div class="row">
<div class="col-xs-6 col-sm-6">
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null)%>" class="circle-icon show">
<span><% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllOpenOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</a>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null)%>"><% {out.write(localizeISText("approval.widget.link.orders_waiting_for_approval.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<p class="total"><% {out.write(localizeISText("approval.widget.total.text","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllOpenOrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
</div>
<div class="col-xs-6 col-sm-6 item-details">
<div>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllApproved",null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllApprovedOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("approval.widget.link.orders_approved.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<p><% {out.write(localizeISText("approval.widget.total.text","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllApprovedOrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
</div>
<div>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllRejected",null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllRejectedOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("approval.widget.link.orders_rejected.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<p><% {out.write(localizeISText("approval.widget.total.text","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllRejectedOrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
</div>
</div>
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EnableRecurringOrders")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnableRecurringOrders"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><div class="col-sm-6">
<div class="row">
<div class="col-xs-6 col-sm-6">
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null)%>" class="circle-icon show">
<span><% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllOpenSubscriptionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</a>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null)%>"><% {out.write(localizeISText("approval.widget.link.subscriptions_waiting_for_approval.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-xs-6 col-sm-6 item-details">
<div>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllApproved",null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllApprovedSubscriptionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("approval.widget.link.subscriptions_approved.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllRejected",null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllRejectedSubscriptionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("approval.widget.link.subscriptions_rejected.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
</div>
</div><% } %></div>
</div><% } %> <% printFooter(out); %>