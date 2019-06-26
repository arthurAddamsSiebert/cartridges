<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/hbs/Modules", null, "3");} %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/rest/Modules", null, "4");} %><% processOpenTag(response, pageContext, "currentuserbo", new TagParameter[] {
new TagParameter("currentuserbo","CurrentUserBO")}, 6); %><% processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CurrentCustomerBO")}, 7); %><% processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("CurrentUserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 8); %><% processOpenTag(response, pageContext, "hbsjavscriptlibraries", new TagParameter[] {
}, 10); %><% processOpenTag(response, pageContext, "restconfiguration", new TagParameter[] {
}, 11); %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.subscriptions.link",null)))}, 14); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 19); %></div>
<div class="account-wrapper" data-testing-id="account-subscriptions-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","SUBSCRIPTIONS")}, 27); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 32); %></div>
<div class="section">
<h1><% {out.write(localizeISText("account.subscriptions.link","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<p><% {out.write(localizeISText("account.subscriptions.subheadline","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div>
<div class="section">
<div class="row">
<form class="form-inline" method="post" action="<%=context.getFormattedValue("#",null)%>">
<div class="col-sm-5 col-md-5 col-lg-6">
<div class="form-group">
<label class="control-label" for="SubscriptionsListSort"><% {out.write(localizeISText("account.subscriptions.filter.sortby","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<select class="form-control" id="SubscriptionsListSort" data-sort="SubscriptionsListSort">
<option value="date_asc"><% {out.write(localizeISText("account.subscriptions.filter.sortby.date_asc","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="date_desc" selected="selected"><% {out.write(localizeISText("account.subscriptions.filter.sortby.date_desc","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="ordertotal_asc"><% {out.write(localizeISText("account.subscriptions.filter.sortby.ordertotal_asc","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="ordertotal_desc"><% {out.write(localizeISText("account.subscriptions.filter.sortby.ordertotal_desc","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</div>
</div>
<div class="col-sm-7 col-md-7 col-lg-6 text-right">
<div class="form-group has-feedback">
<input type="text" class="form-control" id="SubscriptionsListFilter" data-filter="SubscriptionsListFilter" size="30" placeholder="<% {out.write(localizeISText("account.subscriptions.filter.number","",null,null,null,null,null,null,null,null,null,null,null));} %>" />
<a href="<%=context.getFormattedValue("#",null)%>" class="glyphicon glyphicon-remove form-control-feedback" data-filter="EmptySubscriptionsListFilter"></a>
</div>
</div>
</form>
</div>
</div>
<script type="text/javascript">
$(function() {
subscriptionsLocalizationProperties = {};
subscriptionsLocalizationProperties[RESTConfiguration.getLocale()] = {
"subscription.period.days": "<% {out.write(localizeISText("subscription.period.days","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"subscription.period.weeks": "<% {out.write(localizeISText("subscription.period.weeks","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"subscription.period.months": "<% {out.write(localizeISText("subscription.period.months","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"subscription.period.years": "<% {out.write(localizeISText("subscription.period.years","",null,null,null,null,null,null,null,null,null,null,null));} %>"
};
});
</script><% processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionsList")}, 84); %><div class="modal fade" id="confirmDeactivateModal" tabindex="-1" role="dialog" aria-labelledby="confirmDeactivateModalLabel">
<div class="modal-dialog">
<div class="modal-content"><% processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionDeactivateDialog")}, 89); %></div>
</div>
</div>
<div class="modal fade" id="confirmActivateModal" tabindex="-1" role="dialog" aria-labelledby="confirmActivateModalLabel">
<div class="modal-dialog">
<div class="modal-content"><% processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionActivateDialog")}, 97); %></div>
</div>
</div>
</div>
</div>
</div><% printFooter(out); %>