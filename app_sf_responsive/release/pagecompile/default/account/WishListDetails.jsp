<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("wishlistBO",getObject("WishlistBO"))}, 4); %></div><% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","BasketChangeAdd")}, 8); %><div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 12); %></div>
<div class="account-wrapper">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","WISHLISTS")}, 19); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 23); %></div><% processOpenTag(response, pageContext, "tooltip", new TagParameter[] {
new TagParameter("linktext",localizeText(context.getFormattedValue("account.wishlists.heading.tooltip.link",null))),
new TagParameter("placement","bottom"),
new TagParameter("headline",localizeText(context.getFormattedValue("account.wishlists.heading.tooltip.headline",null))),
new TagParameter("content",localizeText(context.getFormattedValue("account.wishlists.heading.tooltip.content",null))),
new TagParameter("contenttype","html")}, 26); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/wishlist/WishlistHeader", null, "33");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/wishlist/Wishlist", null, "35");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/wishlist/WishlistSearchForm", null, "37");} %></div>
</div>
</div><% printFooter(out); %>