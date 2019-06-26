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
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.contract.contracts.breadcrumb.title",null)))}, 10); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 15); %></div>
<div class="account-wrapper" data-testing-id="b2b-account-contracts">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","CONTRACTS")}, 23); %></div>
<div class="col-md-9"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","CustomerBO"),
new TagParameter("value0",getObject("CustomerBO")),
new TagParameter("mapname","PipelineParameters")}, 27); %><% {try{executePipeline("ViewUsers-TemplateCallback",((java.util.Map)(getObject("PipelineParameters"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 28.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 29); %><div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 33); %></div>
<h1><% {out.write(localizeISText("account.contract.contracts.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<div class="table-responsive"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ContractBaseBOsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><table class="table" data-testing-id="contractList">
<thead>
<th><% {out.write(localizeISText("account.contract.contracts.name","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("account.contract.contracts.contractID","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("account.contract.contracts.type","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("account.contract.contracts.period","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("account.contract.contracts.progress","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</thead>
<tbody><% while (loop("ContractBaseBOsPageable","Contract","Counter")) { %><tr>
<td>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContracts-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContractID",null),context.getFormattedValue(getObject("Contract:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("Contract:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Contract:ContractID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
<td><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("account.contract.type.",null) + context.getFormattedValue(getObject("Contract:TypeCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Contract:StartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("Contract:EndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td><% {Object temp_obj = ("0"); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget:Actual")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() <((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue()))),"0")); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } else { %><% {Object temp_obj = ("100"); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } %><% } %><% processOpenTag(response, pageContext, "progressbar", new TagParameter[] {
new TagParameter("value",getObject("ContractProgress"))}, 75); %></td>
</tr><% } %></tbody>
</table><% processOpenTag(response, pageContext, "mappagination", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Paging",null)),
new TagParameter("pagecount",getObject("ListNavigationVO:PageCount")),
new TagParameter("itemcount",getObject("ListNavigationVO:ElementCount")),
new TagParameter("currentpage",getObject("ListNavigationVO:CurrentPage")),
new TagParameter("params",getObject("ListNavigationVO:GenericHandlerPipelineParams"))}, 82); %><% } else { %><p><% {out.write(localizeISText("account.contract.contracts.noItems.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div>
</div>
</div>
</div><% printFooter(out); %>