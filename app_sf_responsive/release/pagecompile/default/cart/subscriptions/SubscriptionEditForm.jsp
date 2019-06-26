<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/hbs/Modules", null, "3");} %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/rest/Modules", null, "4");} %><% processOpenTag(response, pageContext, "hbsjavscriptlibraries", new TagParameter[] {
new TagParameter("excludeAccountingLib","true"),
new TagParameter("excludeDateFormatLib","true")}, 6); %><% processOpenTag(response, pageContext, "restconfiguration", new TagParameter[] {
}, 10); %><% processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentApplication:Domain:DomainName")),
new TagParameter("preferencekey","EnableRecurringOrders"),
new TagParameter("type","String"),
new TagParameter("return","EnableRecurringOrders")}, 13); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("CurrentSession:isLoggedIn"))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("EnableRecurringOrders"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnableRecurringOrders"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("UserBO:Extension(\"UserBORoleExtension\")")))).booleanValue() || !((Boolean) getObject("UserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_OCI_USER\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><script type="text/javascript">
$(function() {
subscriptionsEditFormLocalizationProperties = {};
subscriptionsEditFormLocalizationProperties[RESTConfiguration.getLocale()] = {
"subscription.period.days": "<% {out.write(localizeISText("subscription.period.days","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"subscription.period.weeks": "<% {out.write(localizeISText("subscription.period.weeks","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"subscription.period.months": "<% {out.write(localizeISText("subscription.period.months","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"subscription.period.years": "<% {out.write(localizeISText("subscription.period.years","",null,null,null,null,null,null,null,null,null,null,null));} %>"
};
});
</script><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","cart/subscriptions"),
new TagParameter("name","SubscriptionEditForm")}, 38); %><% processOpenTag(response, pageContext, "datepicker", new TagParameter[] {
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("input_id","CartToSubscriptionStartDate"),
new TagParameter("start_date","+0d")}, 40); %><% processOpenTag(response, pageContext, "datepicker", new TagParameter[] {
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("input_id","CartToSubscriptionEndDate"),
new TagParameter("start_date","+0d")}, 41); %><% } %><% } %><% printFooter(out); %>