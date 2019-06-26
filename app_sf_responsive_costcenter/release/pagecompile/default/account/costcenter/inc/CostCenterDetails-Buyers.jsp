<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("UserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 3); %><hr/>
<div class="row">
<div class="col-xs-6">
<h3><% {out.write(localizeISText("account.costcenter.details.buyers.list.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_COSTCENTER\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><div class="col-xs-6">
<button 
data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-ShowAddBuyerForm",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenterBO:ID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null)%>" 
class="btn btn-default pull-right open-costcenter-modal"
data-toggle="modal"
data-quick-title="<% {out.write(localizeISText("account.costcenter.details.buyers.action.add.quicktitle","",null,null,null,null,null,null,null,null,null,null,null));} %>"
><% {out.write(localizeISText("account.costcenter.details.buyers.action.add","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% } %></div>
<div class="row">
<div class="col-xs-12">
<p><% {out.write(localizeISText("account.costcenter.details.buyers.list.titleinfo","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Buyers")))).booleanValue() && ((Boolean) (hasLoopElements("Buyers") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><div class="row">
<div class="col-xs-12">
<div class="list-header">
<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.name","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-3"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.approvedorders","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-3"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.pendingorders","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-4"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.orderspendlimit","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body" data-testing-id="cost-center-buyers-list"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Buyers")))).booleanValue() && ((Boolean) (hasLoopElements("Buyers") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% while (loop("Buyers","BuyerBO",null)) { %><div class="list-item-row-big list-item-row">
<div class="list-item col-xs-12 col-sm-2">
<label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.name","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<span><% processOpenTag(response, pageContext, "username", new TagParameter[] {
new TagParameter("User",getObject("BuyerBO")),
new TagParameter("Customer",getObject("CustomerBO"))}, 51); %></span>
</div>
<div class="list-item col-xs-12 col-sm-3"><% {try{executePipeline("ProcessCostCenterBuyers-GetBuyerApprovedOrdersCount",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CustomerBO",getObject("CustomerBO")))).addParameter(new ParameterEntry("BuyerBO",getObject("BuyerBO"))).addParameter(new ParameterEntry("OrderDomain",getObject("CurrentOrganization:OwningDomain"))).addParameter(new ParameterEntry("CostCenterBO",getObject("CostCenterBO"))).addParameter(new ParameterEntry("OrderCurrency",getObject("CurrentRequest:Currency")))))),"ApprovedOrdersResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 55.",e);}} %><label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.approvedorders","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<span><% {String value = null;try{value=context.getFormattedValue(getObject("ApprovedOrdersResult:ApprovedOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div>
<div class="list-item col-xs-12 col-sm-3"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserBO"),
new TagParameter("key2","BasketDomain"),
new TagParameter("key0","CustomerBO"),
new TagParameter("value2",getObject("CurrentOrganization:Domain")),
new TagParameter("value1",getObject("BuyerBO")),
new TagParameter("value0",getObject("CustomerBO")),
new TagParameter("mapname","Parameters")}, 63); %><% {try{executePipeline("ViewUsers-GetPendingOrdersCount",((java.util.Map)(getObject("Parameters"))),"PendingOrdersResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 68.",e);}} %><label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.pendingorders","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<span><% {String value = null;try{value=context.getFormattedValue(getObject("PendingOrdersResult:PendingOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div><% {Object temp_obj = (getObject("BuyerBO:Extension(\"UserBOOrderApprovalExtension\")")); getPipelineDictionary().put("OrderApprovalExtension", temp_obj);} %><% {Object temp_obj = (getObject("BuyerBO:Extension(\"UserBOCostCenterBudgetExtension\")")); getPipelineDictionary().put("CostCenterBudgetExtension", temp_obj);} %><div class="list-item col-xs-12 col-sm-3">
<label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.orderspendlimit","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<span><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CostCenterBudgetExtension:Budget(CostCenterBO:ID)"),null) + context.getFormattedValue(" / ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(context.getFormattedValue("account.costcenter.label.budget.period.",null) + context.getFormattedValue(getObject("CostCenterBudgetExtension:BudgetPeriod(CostCenterBO:ID)"),null),null)),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div>
<div class="list-item col-xs-3 text-left-xs col-sm-1 text-right-sm text-right-lg"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_COSTCENTER\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><a href=""
data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-EditBuyerBudget",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenterBO:ID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)).addURLParameter(context.getFormattedValue("BuyerID",null),context.getFormattedValue(getObject("BuyerBO:ID"),null)).addURLParameter(context.getFormattedValue("FormType",null),context.getFormattedValue("edit",null))),null)%>" 
class="btn-tool open-costcenter-modal" 
data-quick-title="<% {out.write(localizeISText("account.costcenter.details.buyers.action.editbudget.title","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="glyphicon glyphicon-pencil" title="<% {out.write(localizeISText("account.costcenter.details.action.edit","",null,null,null,null,null,null,null,null,null,null,null));} %>"></span>
</a>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-RemoveCostCenterBuyer",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenterBO:ID"),null))).addURLParameter(context.getFormattedValue("BuyerID",null),context.getFormattedValue(getObject("BuyerBO:ID"),null))),null)%>"
class="btn-tool"
data-quick-title="<% {out.write(localizeISText("account.costcenter.details.buyers.list.action.remove","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="glyphicon glyphicon-trash" title="<% {out.write(localizeISText("account.costcenter.list.action.remove.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"></span>
</a><% } %></div>
</div><% } %><% } %></div>
</table>
</div><% } else { %><p><% {out.write(localizeISText("account.costcenter.details.buyers.list.nobuyers","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% printFooter(out); %>