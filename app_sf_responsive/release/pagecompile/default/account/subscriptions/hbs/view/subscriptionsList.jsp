<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="section" data-testing-id="subscriptionsList-section">
<div class="row">
<div class="col-md-12">
{{<%=context.getFormattedValue("#",null)%>if error}}
<p class="alert alert-danger"><% {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{else}}
{{<%=context.getFormattedValue("#",null)%>if loading}}
<p>
<span class="loader loader-inline"></span>
</p>
{{else}}
{{<%=context.getFormattedValue("#",null)%>if elements}}
<div class="table-responsive">
<table class="table" data-testing-id="subscriptionsList">
<thead>
<tr>
<th data-column-id="subscription-creationDate"><% {out.write(localizeISText("account.subscriptions.list.head.date","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="subscription-details"><% {out.write(localizeISText("account.subscriptions.list.head.details","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="subscription-recurrence"><% {out.write(localizeISText("account.subscriptions.list.head.recurrence","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="subscription-lastDate"><% {out.write(localizeISText("account.subscriptions.list.head.lastorder","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="subscription-status"><% {out.write(localizeISText("account.subscriptions.list.head.status","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="text-right"><% {out.write(localizeISText("account.subscriptions.list.head.ordertotal","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
{{<%=context.getFormattedValue("#",null)%>each elements}}
<tr{{<%=context.getFormattedValue("#",null)%>if active}}{{else}} class="inactive"{{/if}}>
<td>
{{dateFormatter creationDate "DATE_SHORT"}}
</td>
<td><% {out.write(localizeISText("account.subscriptions.list.number","",null,null,null,null,null,null,null,null,null,null,null));} %> <a href="{{url 'ViewSubscriptions-Details' SubscriptionID=link.title}}" data-testing-id="subscription-number-link">{{number}}</a><br/><% {out.write(localizeISText("account.subscriptions.list.items","",null,null,null,null,null,null,null,null,null,null,null));} %> {{itemCount}}<br/>
{{<%=context.getFormattedValue("#",null)%>if showBuyer}}
{{<%=context.getFormattedValue("#",null)%>if ownUser}}
<% {out.write(localizeISText("account.subscriptions.list.buyer","",null,null,null,null,null,null,null,null,null,null,null));} %> <strong>{{formattedBuyer buyer}}</strong><br/>
{{else}}
<% {out.write(localizeISText("account.subscriptions.list.buyer","",null,null,null,null,null,null,null,null,null,null,null));} %> {{formattedBuyer buyer}}<br/>
{{/if}}
{{/if}}
</td>
<td>
{{intervalFormatter interval}}
</td>
<td>{{dateFormatter lastOrderDate "DATE_SHORT"}}</td>
<td>
{{<%=context.getFormattedValue("#",null)%>if expired}}
<% {out.write(localizeISText("account.subscriptions.list.expired","",null,null,null,null,null,null,null,null,null,null,null));} %>
{{else}}
{{<%=context.getFormattedValue("#",null)%>if active}}
<% {out.write(localizeISText("account.subscriptions.list.active","",null,null,null,null,null,null,null,null,null,null,null));} %>
{{else}}
<% {out.write(localizeISText("account.subscriptions.list.deactivated","",null,null,null,null,null,null,null,null,null,null,null));} %>
{{/if}}
{{/if}}
</td>
<td class="text-right">{{moneyFormatter this "MONEY_LONG" "gross"}}</td>
<td class="text-right">
{{<%=context.getFormattedValue("#",null)%>unless expired}}
{{<%=context.getFormattedValue("#",null)%>if active}}
<a href=""
class="btn-tool"
data-subscription-id="{{link.title}}"
data-line-items="{{itemCount}}"
data-toggle="modal"
data-target="<%=context.getFormattedValue("#",null)%>confirmDeactivateModal"
title="<% {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-dialog
data-quick-title="<% {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %>"
>
<span class="glyphicon glyphicon-ban-circle"></span>
</a>
{{else}}
<a href=""
class="btn-tool"
data-subscription-id="{{link.title}}"
data-line-items="{{itemCount}}"
data-toggle="modal"
data-target="<%=context.getFormattedValue("#",null)%>confirmActivateModal"
title="<% {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-dialog
data-quick-title="<% {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} %>"
>
<span class="glyphicon glyphicon-ok-circle"></span>
</a>
{{/if}}
{{/unless}}
</td>
<td class="text-right">
<a href="{{url 'ViewSubscriptions-Details' SubscriptionID=link.title}}" title="<% {out.write(localizeISText("account.subscriptions.list.link.details.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="btn-tool"><% {out.write(localizeISText("account.subscriptions.list.link.details.text","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
{{/each}}
</tbody>
</table>
</div>
{{else}}
{{<%=context.getFormattedValue("#",null)%>if filterNotEmpty}}
<p><% {out.write(localizeISText("account.subscriptions.list.nofilterdata","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{else}}
<p><% {out.write(localizeISText("account.subscriptions.list.nodata","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{/if}}
{{/if}}
{{/if}}
{{/if}}
</div>
</div>
</div><% printFooter(out); %>