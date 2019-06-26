<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><hr/>
<div class="row">
<div class="col-xs-6">
<h3><% {out.write(localizeISText("account.costcenter.details.orders.list.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
</div>
</div><% {Object temp_obj = (getObject("CostCenterBO:Extension(\"CostCenterBOOrderExtension\"):Orders")); getPipelineDictionary().put("CostCenterOrderBOs", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CostCenterOrderBOs")))).booleanValue() && ((Boolean) (hasLoopElements("CostCenterOrderBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><div class="table-responsive">
<table class="table table-condensed" data-testing-id="orders-list" data-table="CostCenterOrdersList">
<thead>
<th data-column-id="order-id"><% {out.write(localizeISText("account.costcenter.details.orders.list.header.no","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="order-items"><% {out.write(localizeISText("account.costcenter.details.orders.list.header.items","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="order-buyer"><% {out.write(localizeISText("account.costcenter.details.orders.list.header.buyer","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="order-date"><% {out.write(localizeISText("account.costcenter.details.orders.list.header.orderdate","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th data-column-id="order-status"><% {out.write(localizeISText("account.costcenter.details.orders.list.header.orderstatus","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="text-right" data-column-id="order-total"><% {out.write(localizeISText("account.costcenter.details.orders.list.header.total","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</thead>
<tbody><% while (loop("CostCenterOrderBOs","OrderBO",null)) { %><tr>
<td>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-OrderDetails",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("OrderBO:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:TotalProductQuantity"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("OrderBO:BuyerFirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OrderBO:BuyerLastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:NotificationEmailAddress"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:BuyerFirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:BuyerLastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:CreationDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td><% processOpenTag(response, pageContext, "orderstatus", new TagParameter[] {
new TagParameter("Order",getObject("OrderBO"))}, 59); %></td>
<td class="text-right"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:GrandTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></tbody>
</table>
</div>
<script>
$('[data-table="CostCenterOrdersList"]').DataTable({
"responsive" : true, 
"language": {
"sEmptyTable": "<% {out.write(localizeISText("datatables.sEmptyTable","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sInfo": "<% {out.write(localizeISText("datatables.sInfo","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sInfoEmpty": "<% {out.write(localizeISText("datatables.sInfoEmpty","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sInfoFiltered": "<% {out.write(localizeISText("datatables.sInfoFiltered","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sLengthMenu": "<% {out.write(localizeISText("datatables.sLengthMenu","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sLoadingRecords": "<% {out.write(localizeISText("datatables.sLoadingRecords","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sProcessing": "<% {out.write(localizeISText("datatables.sProcessing","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sSearch": "<% {out.write(localizeISText("datatables.sSearch","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sZeroRecords": "<% {out.write(localizeISText("datatables.sZeroRecords","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"oPaginate": {
"sFirst": "<% {out.write(localizeISText("datatables.sFirst","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sLast": "<% {out.write(localizeISText("datatables.sLast","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sNext": "<% {out.write(localizeISText("datatables.sNext","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>",
"sPrevious": "<% {out.write(localizeISText("datatables.sPrevious","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>"
}
}
});
</script><% } else { %><p><% {out.write(localizeISText("account.costcenter.details.orders.list.noorders","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% printFooter(out); %>