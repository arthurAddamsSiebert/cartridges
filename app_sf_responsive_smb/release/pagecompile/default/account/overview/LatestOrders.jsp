<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessOrders-GetLatestOrders",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CurrentUser",getObject("CurrentUser")))).addParameter(new ParameterEntry("CurrentRequest",getObject("CurrentRequest")))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 3.",e);}} %><div class="section"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("dict:SortedOrders") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><div class="list-header">
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.orderlist.table.date_of_order","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-3"><% {out.write(localizeISText("account.orderlist.table.order_number","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.orderlist.table.items","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.orderlist.table.purchaser","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-2 column-price"><% {out.write(localizeISText("account.orderlist.table.order_total","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-1">&nbsp;</div>
</div>
<div class="list-body"><% while (loop("dict:SortedOrders","OrderBO",null)) { %><% processOpenTag(response, pageContext, "orderhistoryitem", new TagParameter[] {
new TagParameter("showNumberOfItems","true"),
new TagParameter("orderNumberColumnWith","3"),
new TagParameter("showOrderNumber","true"),
new TagParameter("showPurchaser","true"),
new TagParameter("OrderBO",getObject("OrderBO")),
new TagParameter("numberOfItemsColumnWith","2")}, 19); %><% } %></div><% } else { %><p><% {out.write(localizeISText("account.orderlist.no_orders_message","",null,getObject("Repository:DisplayName"),null,null,null,null,null,null,null,null,null));} %></p><% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-SimpleOrderSearch",null)))),null)%>"><% {out.write(localizeISText("account.order.view_all_order.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div><% printFooter(out); %>