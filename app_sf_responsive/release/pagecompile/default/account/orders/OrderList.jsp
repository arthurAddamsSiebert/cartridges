<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SortedOrders") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("OrderHistoryServices")))).booleanValue() || ((Boolean) (getObject("OrderHistoryServices:isEmpty"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><div class="row section section-seperator"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/orders/OrderListSearchForm", null, "6");} %></div><% } %><div class="list-header">
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.orderlist.table.date_of_order","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.orderlist.table.order_number","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-1"><% {out.write(localizeISText("account.orderlist.table.items","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.orderlist.table.order_status","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.orderlist.table.destination","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-2 text-right"><% {out.write(localizeISText("account.orderlist.table.order_total","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-1">&nbsp;</div>
</div>
<div class="list-body"><% while (loop("SortedOrders","OrderBO",null)) { %><% processOpenTag(response, pageContext, "orderhistoryitem", new TagParameter[] {
new TagParameter("showNumberOfItems","true"),
new TagParameter("showOrderStatus","true"),
new TagParameter("showOrderNumber","true"),
new TagParameter("OrderBO",getObject("OrderBO")),
new TagParameter("showDestination","true")}, 23); %><% } %></div>
<div class="row">
<div class="pagination clearfix col-xs-12"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "mappagination", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-SimpleOrderSearch",null)),
new TagParameter("pagecount",getObject("ListNavigationVO:PageCount")),
new TagParameter("itemcount",getObject("ListNavigationVO:ElementCount")),
new TagParameter("currentpage",getObject("ListNavigationVO:CurrentPage")),
new TagParameter("params",getObject("ListNavigationVO:GenericHandlerPipelineParams"))}, 36); %><% } else { %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%
						PipelineDictionary dict = getPipelineDictionary();
						int pageSize = dict.get("PageSize");
						int totalCount = dict.get("SortedOrders:TotalCount");
						int pageCount = (totalCount + pageSize - 1) / pageSize;
						dict.put("PageCount", pageCount);
					%><% processOpenTag(response, pageContext, "mappagination", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("HandlerPipeline"),null) + context.getFormattedValue("-SimpleOrderSearch",null)),
new TagParameter("pagecount",getObject("PageCount")),
new TagParameter("pagesize",getObject("PageSize")),
new TagParameter("itemcount",getObject("SortedOrders:TotalCount")),
new TagParameter("currentpage",getObject("PageNumber")),
new TagParameter("params",getObject("GenericHandlerPipelineParams"))}, 52); %><% } %></div>
</div><% } else { %><p><% {out.write(localizeISText("account.orderlist.no_orders_message","",null,getObject("Dictionary:Repository:DisplayName"),null,null,null,null,null,null,null,null,null));} %></p><% } %><% printFooter(out); %>