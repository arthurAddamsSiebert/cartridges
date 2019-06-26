<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} %><div class="top-header">
<nav class="container">
<div class="row">
<div class="visible-xs"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"component/system/HeaderMobileLogo", null, "9");} %></div>
<div class="visible-xs pull-right">
<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="<%=context.getFormattedValue("#",null)%>globalnav">
<span class="sr-only"><% {out.write(localizeISText("common.button.navbartoggle.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
<div class="col-md-12">
<ul class="user-links">
<li><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLoginStatus-Start",null)))),null), null, null, "23");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></li>
<li><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/header/ProductCompareStatus", null, "26");} %></li>
<li><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-WishlistStatus",null)))),null), null, null, "29");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></li>
<li class="visible-xs">
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-View",null)))),null)%>"><span class="glyphicon glyphicon-shopping-cart glyphicon-header-icon"></span></a>
<div class="mobile-cart-counter"></div>
</li>
</ul>
<div class="header-utility"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.header.utility.pagelet2-Slot")}, 38); %></div>
</div>
</div>
</nav>
</div>
<div class="mid-header">
<div class="container">
<div class="row">
<div class="col-sm-3 logo-wrapper hidden-xs"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"component/system/HeaderPageLogo", null, "48");} %></div>
<div class="col-sm-5 header-info-wrapper hidden-xs"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.header.promotion.pagelet2-Slot")}, 51); %></div>
<div class="col-sm-4 search-container header-search-container"><% processOpenTag(response, pageContext, "searchbox", new TagParameter[] {
new TagParameter("useAutoSuggest","true"),
new TagParameter("maxAutoSuggestResults","10"),
new TagParameter("instructionalText",localizeText(context.getFormattedValue("search.searchbox.instructional_text",null))),
new TagParameter("id","Header")}, 54); %></div>
</div>
</div>
</div>
<div class="bottom-header">
<div class="global-nav collapse navbar-collapse" id="globalnav">
<div class="container">
<div class="row">
<div class="main-navigation col-sm-8 col-md-9" role="navigation">
<ul class="navbar-nav main-navigation-list">
<li class="home hidden-xs">
<a class="" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)%>" title="home"><span class="glyphicon glyphicon-home"></span></a>
</li><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.header.navigation.pagelet2-Slot")}, 73); %></ul>
</div>
<div class="col-sm-4 col-md-3 pull-right main-navigation-right" data-ajax-content="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMiniCart-Status",null)))),null)%>">
<div class="quick-cart-link hidden-xs">
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-View",null)))),null)%>">
<span class="glyphicon glyphicon-shopping-cart"></span>
</a>
</div>
</div>
</div>
</div>
</div>
</div><% printFooter(out); %>