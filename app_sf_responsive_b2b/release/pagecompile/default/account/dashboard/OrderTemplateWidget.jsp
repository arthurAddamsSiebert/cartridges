<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessOrderTemplate-GetAll",java.util.Collections.emptyMap(),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 3.",e);}} %><div class="section section-seperator">
<h2><% {out.write(localizeISText("account.order_template.widget.my_order_templates.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("dict:OrderTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><div class="list-header">
<div class="col-xs-12 col-sm-6 list-header-item"><% {out.write(localizeISText("account.order_template.list.table.template","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-xs-12 col-sm-6 list-header-item text-right"><% {out.write(localizeISText("account.order_template.list.table.manage","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body"><% while (loop("dict:OrderTemplates","OrderTemplate","Counter")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Counter")).doubleValue() >=((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",22);}else{getLoopStack().pop();break;} %><% } %><div class="list-item-row">
<div class="col-xs-12 col-sm-6 list-item">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</div>
<div class="col-xs-12 col-sm-6 list-item text-right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-AddListToBasket",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null)%>" 
title="<% {out.write(localizeISText("account.order_template.list.link.add_to_cart","",null,null,null,null,null,null,null,null,null,null,null));} %>"
class="btn-tool<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderTemplate:WishlistItemBOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %> invisible<% } %>">
<span class="glyphicon glyphicon-shopping-cart"></span>
</a>
<a class="btn-tool" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null)%>" title="<% {out.write(localizeISText("account.order_template.widget.link.edit","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="glyphicon glyphicon-pencil"></span>
</a>
</div>
</div><% } %></div>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-ViewAll",null)))),null)%>"><% {out.write(localizeISText("account.order_template.widget.link.view_all","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><p><% {out.write(localizeISText("account.order_template.widget.no_templates.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div><% printFooter(out); %>