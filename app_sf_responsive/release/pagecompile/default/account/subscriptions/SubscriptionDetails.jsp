<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/hbs/Modules", null, "3");} %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/rest/Modules", null, "4");} %><% processOpenTag(response, pageContext, "hbsjavscriptlibraries", new TagParameter[] {
}, 6); %><% processOpenTag(response, pageContext, "restconfiguration", new TagParameter[] {
}, 7); %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSubscriptions-List",null))))),
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.subscription.details.link",null))),
new TagParameter("text",localizeText(context.getFormattedValue("account.subscriptions.link",null)))}, 10); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 19); %></div>
<div class="account-wrapper" data-testing-id="account-subscription-details-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","SUBSCRIPTIONS")}, 27); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 32); %></div>
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
new TagParameter("name","subscriptionDetails")}, 48); %><div class="modal fade" id="confirmDeactivateModal" tabindex="-1" role="dialog" aria-labelledby="confirmDeactivateModalLabel">
<div class="modal-dialog">
<div class="modal-content"><% processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionDeactivateDialog")}, 53); %></div>
</div>
</div>
<div class="modal fade" id="confirmActivateModal" tabindex="-1" role="dialog" aria-labelledby="confirmActivateModalLabel">
<div class="modal-dialog">
<div class="modal-content"><% processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionActivateDialog")}, 61); %></div>
</div>
</div>
<div class="section clearfix"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("OrderID"),null)))),null)%>"><% {out.write(localizeISText("account.subscription.details.link.back_to_order","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSubscriptions-List",null)))),null)%>"><% {out.write(localizeISText("account.subscription.details.link.back_to_subscriptions","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %> 
<a class="pull-right" href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)%>"><% {out.write(localizeISText("account.subscription.details.link.continue_shopping","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
</div>
</div><% printFooter(out); %>