<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div data-testing-id="subscription-details">
{{<%=context.getFormattedValue("#",null)%>if error}}
<h1><% {out.write(localizeISText("account.subscription.details.link","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<p class="alert alert-danger"><% {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{else}}
<h1><% {out.write(localizeISText("account.subscription.details.link","",null,null,null,null,null,null,null,null,null,null,null));} %>
{{<%=context.getFormattedValue("#",null)%>unless expired}}
<a class="btn btn-primary" href=""
data-subscription-id="{{id}}"
data-line-items="{{itemCount}}"
data-toggle="modal"
{{<%=context.getFormattedValue("#",null)%>if active}}
data-target="<%=context.getFormattedValue("#",null)%>confirmDeactivateModal"
title="<% {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-dialog
data-quick-title="<% {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% {out.write(localizeISText("account.subscriptions.dialog.confirm.button.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %>
{{else}}
data-target="<%=context.getFormattedValue("#",null)%>confirmActivateModal"
title="<% {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-dialog
data-quick-title="<% {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% {out.write(localizeISText("account.subscriptions.dialog.confirm.button.activate","",null,null,null,null,null,null,null,null,null,null,null));} %>
{{/if}}
</a>
{{/unless}}
</h1>
{{<%=context.getFormattedValue("#",null)%>unless expired}}
{{<%=context.getFormattedValue("#",null)%>if errorCode}}
<dd>
<div class="alert alert-danger"><% {out.write(localizeISText("account.subscription.details.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</dd>
{{/if}} 
{{/unless}}
<p><% {out.write(localizeISText("account.subscription.details.subheadline","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<div class="alert alert-info"><% {out.write(localizeISText("account.subscription.details.note","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="section">
<dl class="dl-horizontal dl-horizontal-inline dl-separator">
<dt><% {out.write(localizeISText("account.subscription.details.label.subscription_number","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
<span data-testing-id="subscription-number">{{number}}</span>
</dd>
<dt><% {out.write(localizeISText("account.subscription.details.label.subscription_date","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{dateFormatter creationDate "DATE_SHORT"}}
</dd>
<dt><% {out.write(localizeISText("account.subscription.details.label.last_order_date","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{dateFormatter lastOrderDate "DATE_SHORT"}}
</dd>
<dt><% {out.write(localizeISText("account.subscription.details.label.next_order_date","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{dateFormatter nextOrderDate "DATE_SHORT"}}
</dd>
<dt><% {out.write(localizeISText("account.subscription.details.label.last_order_count","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{orderCount}}
</dd>
<dt><% {out.write(localizeISText("account.subscription.details.label.subscription_status","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{<%=context.getFormattedValue("#",null)%>if expired}}
<span class="label label-danger"><% {out.write(localizeISText("account.subscriptions.list.expired","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
{{else}}
{{<%=context.getFormattedValue("#",null)%>if active}}
<span class="label label-success"><% {out.write(localizeISText("account.subscriptions.list.active","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
{{else}}
<span class="label label-warning"><% {out.write(localizeISText("account.subscriptions.list.deactivated","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
{{/if}}
{{/if}}
</dd>
</dl>
</div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"SubscriptionApprovalInfoBox", null, "93");} %><div class="section"><% {Object temp_obj = (getObject("BasketBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% {Object temp_obj = (getObject("BasketBO")); getPipelineDictionary().put("CurrentCartBO", temp_obj);} %><div class="row equal">
<div class="col-md-6">
<div class="infobox">
<h3><% {out.write(localizeISText("subscription.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<dl class="dl-horizontal dl-horizontal-inline dl-separator">
<dt><% {out.write(localizeISText("account.subscription.details.label.recurrence","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{intervalFormatter interval}}
</dd>
<dt><% {out.write(localizeISText("account.subscription.details.label.start_date","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{dateFormatter startDate "DATE_SHORT"}}
</dd>
<dt><% {out.write(localizeISText("account.subscription.details.label.end_date","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd>
{{dateFormatter endDate "DATE_SHORT"}}
</dd>
</dl>
</div>
</div><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"SubscriptionPurchaserInfoBox", null, "126");} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/receipt/CheckoutReceiptBasketBuckets", null, "131");} %><div class="section">
<div class="cost-summary pull-right">
<h3><% {out.write(localizeISText("checkout.order_summary.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/CostSummary", null, "138");} %></div>
</div>
</div>
{{/if}}
</div><% printFooter(out); %>