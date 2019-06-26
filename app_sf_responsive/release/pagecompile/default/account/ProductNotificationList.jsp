<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {3}",e);}} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.productnotification.link",null)))}, 6); %></div>
<div><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 11); %></div>
<div class="account-wrapper">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","PRODUCTNOTIFICATION")}, 18); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 22); %></div>
<h1><% {out.write(localizeISText("account.productnotification.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserAlerts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.productnotification.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><!-- Product notifications --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserAlerts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><div class="list-header">
<div class=" col-xs-6 list-header-item"><% {out.write(localizeISText("account.productnotification.table.header.product","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-xs-6 list-header-item"><% {out.write(localizeISText("account.productnotification.table.header.notification","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body"> 
<% while (loop("UserAlerts","ListItem",null)) { %><% processOpenTag(response, pageContext, "productnotificationitem", new TagParameter[] {
new TagParameter("showPrice","true"),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("showImage","true"),
new TagParameter("ListItem",getObject("ListItem")),
new TagParameter("ProductBO",getObject("ProductBORepository:ProductBOBySKU(ListItem:Product:SKU)"))}, 39); %><% } %></div><% } else { %><!-- No Product notifications message -->
<p><% {out.write(localizeISText("account.productnotification.footer.no_products","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div>
</div>
</div><% printFooter(out); %>