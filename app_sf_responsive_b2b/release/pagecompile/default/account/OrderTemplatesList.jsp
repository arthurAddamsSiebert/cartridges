<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/b2bUtils/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "4");} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.ordertemplates.link",null)))}, 6); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 11); %></div>
<div class="account-wrapper">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","WISHLISTS")}, 17); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 22); %></div>
<div class="wishlist">
<h1><% {out.write(localizeISText("account.ordertemplates.heading","",null,null,null,null,null,null,null,null,null,null,null));} %><a class="btn btn-default" data-dialog href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-ShowNewOrderTemplateDialog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null)))),null)%>"><% {out.write(localizeISText("account.order_template.list.button.add_template.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</h1>
<div class="section"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("OrderTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><div class="list-header">
<div class="col-sm-5 col-xs-8 list-header-item"><% {out.write(localizeISText("account.order_template.list.table.template","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-2 hidden-xs list-header-item"><% {out.write(localizeISText("account.order_template.list.table.created","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-2 hidden-xs list-header-item"><% {out.write(localizeISText("account.order_template.list.table.modified","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-3 col-xs-4 list-header-item"><% {out.write(localizeISText("account.order_template.list.table.item","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body"><% while (loop("OrderTemplates","OrderTemplate",null)) { %><div class="list-item-row">
<div class="col-sm-5 col-xs-6 list-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</div>
<div class="col-sm-2 hidden-xs list-item"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:Extension(\"PersistentObjectBOExtension\"):PersistentObject:CreationDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div class="col-sm-2 hidden-xs list-item"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:LastModifiedDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div class="col-sm-1 col-xs-2 list-item"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:WishlistItemBOsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("account.wishlists.items","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-2 col-xs-4 list-item text-right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-AddListToBasket",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null)%>" 
title="<% {out.write(localizeISText("account.order_template.list.link.add_to_cart","",null,null,null,null,null,null,null,null,null,null,null));} %>"
class="btn-tool<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderTemplate:WishlistItemBOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %> invisible<% } %>">
<span class="glyphicon glyphicon-shopping-cart"></span>
</a>
<a class="btn-tool" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null)%>" title="<% {out.write(localizeISText("account.order_template.widget.link.edit","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="glyphicon glyphicon-pencil"></span>
</a>
<a class="btn-tool" data-dialog href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAjax-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewOrderTemplate-ShowDeleteOrderTemplateDialog",null))).addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null))),null)%>" title="<% {out.write(localizeISText("account.order_template.list.link.remove","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="glyphicon glyphicon-trash"></span>
</a>
</div>
</div><% } %></div><% } else { %><p class="flush"><% {out.write(localizeISText("account.order_template.list.no_templates.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div>
</div>
</div>
</div>
</div><% printFooter(out); %>