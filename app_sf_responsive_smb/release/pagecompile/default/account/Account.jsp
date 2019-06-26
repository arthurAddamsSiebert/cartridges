<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.overview.link",null)))}, 4); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 9); %></div>
<div class="account-wrapper" data-testing-id="account-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","OVERVIEW")}, 16); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 21); %></div>
<h1><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUser:Profile:DataSheet:FirstName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.overview.personal_message.text",null,null,context.getFormattedValue(encodeString(context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:FirstName"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:LastName"),null)),null),encodeString(context.getFormattedValue(getObject("CustomerBO:Extension(\"CompanyCustomer\"):CompanyName"),null)),null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("account.overview.personal_message.text",null,null,encodeString(context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null)),encodeString(context.getFormattedValue(getObject("CustomerBO:Extension(\"CompanyCustomer\"):CompanyName"),null)),null,null,null,null,null,null,null,null));} %><% } %></h1>
<p><% {out.write(localizeISText("account.overview.message.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<div class="row account-dashboard">
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-SimpleOrderSearch",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-list-alt"></span>
</div><% {out.write(localizeISText("account.order_history.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-ViewAll",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-heart"></span>
</div><% {out.write(localizeISText("account.wishlists.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificates-ListAll",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-gift"></span>
</div><% {out.write(localizeISText("account.gift_certificates.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificatesBalance-Show",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-flash"></span>
</div><% {out.write(localizeISText("account.giftcard_balance.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentInstrumentInfo-Edit",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-credit-card"></span>
</div><% {out.write(localizeISText("account.payment.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-List",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-book"></span>
</div><% {out.write(localizeISText("account.saved_addresses.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-ViewProfile",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-cog"></span>
</div><% {out.write(localizeISText("account.profile.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<div class="col-sm-3 col-xs-6 dashboard-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-List",null)))),null)%>">
<div class="circle-icon">
<span class="glyphicon glyphicon-bell"></span>
</div><% {out.write(localizeISText("account.productnotification.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
<div class="section">
<h2><% {out.write(localizeISText("account.order.most_recent.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/overview/LatestOrders", null, "114");} %></div>
<div class="section"> 
<h2><% {out.write(localizeISText("account.overview.wishlist.most_recent.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/overview/LatestWishlistItems", null, "120");} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/inc/PrivacyPolicyNote", null, "124");} %></div>
</div>
</div><% printFooter(out); %>