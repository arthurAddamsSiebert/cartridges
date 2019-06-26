<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.customer.capi.CustomerBO"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.component.contract.capi.ContractBaseBO"%>
<%@page import="com.intershop.component.application.capi.ApplicationBO"%>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "7");} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContracts-Start",null))))),
new TagParameter("trailtext",getObject("ContractBaseBO:Name")),
new TagParameter("text",localizeText(context.getFormattedValue("account.contract.contracts.breadcrumb.title",null)))}, 10); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 15); %></div>
<div class="account-wrapper" data-testing-id="b2b-account-contract-details">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","CONTRACTS")}, 24); %></div>
<div class="col-md-9"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","CustomerBO"),
new TagParameter("value0",getObject("CustomerBO")),
new TagParameter("mapname","PipelineParameters")}, 29); %><% {try{executePipeline("ViewUsers-TemplateCallback",((java.util.Map)(getObject("PipelineParameters"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 30.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 31); %><div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 35); %></div>
<h1><% {String value = null;try{value=context.getFormattedValue(getObject("ContractBaseBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h1><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContractBaseBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><div class="section section-separator-xs">
<dl class="dl-horizontal dl-horizontal-inline dl-separator">
<dt><% {out.write(localizeISText("account.contract.contractDetails.contractID","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("ContractBaseBO:ContractID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd>
<dt><% {out.write(localizeISText("account.contract.contractDetails.type","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("account.contract.type.",null) + context.getFormattedValue(getObject("ContractBaseBO:TypeCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></dd>
<dt><% {out.write(localizeISText("account.contract.contractDetails.contractDescription","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("ContractBaseBO:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd>
<dt><% {out.write(localizeISText("account.contract.contractDetails.period","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("ContractBaseBO:StartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("ContractBaseBO:EndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd>
<dt><% {out.write(localizeISText("account.contract.contractDetails.actualAmount","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd data-testing-id="b2b-account-contract-details-current-revenue"><% {String value = null;try{value=context.getFormattedValue(getObject("ContractBaseBO:SalesTarget:Actual"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContractBaseBO:SalesTarget:Target")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ContractBaseBO:SalesTarget:TargetAmount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><dt><% {out.write(localizeISText("account.contract.contractDetails.targetAmount","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("ContractBaseBO:SalesTarget:Target"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContractBaseBO:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ContractBaseBO:SalesTarget:Completeness")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><dd class="hidden-xs"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("ContractBaseBO:SalesTarget:Completeness")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() >((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(100)); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } else { %><% {Object temp_obj = (context.getFormattedValue(((new Double( ((Number) getObject("ContractBaseBO:SalesTarget:Completeness")).doubleValue() *((Number) new Double(100)).doubleValue()))),"0")); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "progressbar", new TagParameter[] {
new TagParameter("value",getObject("ContractProgress"))}, 75); %></dd><% } %><% } %></dl><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContractBaseBO:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ContractBaseBO:SalesTarget:Completeness")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><div class="visible-xs"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("ContractBaseBO:SalesTarget:Completeness")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() >((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(100)); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } else { %><% {Object temp_obj = (context.getFormattedValue(((new Double( ((Number) getObject("ContractBaseBO:SalesTarget:Completeness")).doubleValue() *((Number) new Double(100)).doubleValue()))),"0")); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "progressbar", new TagParameter[] {
new TagParameter("value",getObject("ContractProgress"))}, 87); %></div><% } %></div>
<h3><% {out.write(localizeISText("account.contract.contractDetails.orderHistory","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContractOrders")))).booleanValue() && ((Boolean) (hasLoopElements("ContractOrders") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><div class="table-responsive" data-testing-id="b2b-account-contract-details-orders">
<table class="table">
<thead>
<th><% {out.write(localizeISText("account.orderlist.table.date_of_order","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("account.orderlist.table.details_of_order","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("account.orderlist.table.order_status","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="text-right"><% {out.write(localizeISText("account.contract.contractDetails.orderHistory.table.contractRevenue","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="text-right"><% {out.write(localizeISText("account.orderlist.table.order_total","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</thead>
<tbody><% while (loop("ContractOrders","ContractOrder",null)) { %><% {Object temp_obj = (getObject("ContractOrder:OrderBO")); getPipelineDictionary().put("OrderBO", temp_obj);} %><tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:CreationDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
-
<% } %></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.orderlist.orderDetails.orderNo.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOrders-Detail",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("OrderBO:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><br/><% {out.write(localizeISText("account.orderlist.orderDetails.line_items.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:TotalProductQuantity"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% {out.write(localizeISText("account.orderlist.orderDetails.purchaser.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:BuyerFirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:BuyerLastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.orderlist.orderDetails.orderReferenceID.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %><% } else { %><% {out.write(localizeISText("account.orderlist.orderDetails.orderNo.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:StatusDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
-
<% } %></td>
<td class="text-right"><% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:Revenue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="text-right"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:BasketTotalPriceMinusLimitedTenderGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
-
<% } %></td>
</tr><% } %></tbody>
</table>
</div><% } else { %><p data-testing-id="No_Contract_Orders"><% {out.write(localizeISText("account.contract.contractDetails.noOrdersFound","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% } else { %><p><% {out.write(localizeISText("account.contract.contractDetails.notFound","",null,getObject("ContractID"),null,null,null,null,null,null,null,null,null));} %></p><% } %><p>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContracts-Start",null)))),null)%>"><% {out.write(localizeISText("account.contract.contractDetails.back.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</p>
</div>
</div>
</div><% printFooter(out); %>