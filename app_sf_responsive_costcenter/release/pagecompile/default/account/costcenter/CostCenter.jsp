<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModulesCostCenter", null, "4");} %><% processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("UserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 6); %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.costcenter.list.title",null)))}, 9); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 14); %></div>
<div class="account-wrapper" data-testing-id="cost-center-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","COSTCENTER")}, 22); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 29); %></div>
<div class="row section section-seperator"> 
<div class="col-xs-12 col-md-6"> 
<h1><% {out.write(localizeISText("account.costcenter.list.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_COSTCENTER\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><div class="col-xs-12 col-md-6 text-right">
<button
id="open-create-costcenter-modal"
data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-ShowForm",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))).addURLParameter(context.getFormattedValue("FormType",null),context.getFormattedValue("create",null))),null)%>" 
class="btn btn-default"
data-toggle="modal"
data-quick-title="<% {out.write(localizeISText("account.costcenter.create.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"
><% {out.write(localizeISText("account.costcenter.create.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% } %></div> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CostCenterBOs")))).booleanValue() && ((Boolean) (hasLoopElements("CostCenterBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><div class="row ">
<div class="col-xs-12" > 
<div class="list-header">
<div class="list-header-item col-sm-1"><% {out.write(localizeISText("account.costcenter.list.header.no","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-3"><% {out.write(localizeISText("account.costcenter.list.header.name","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-1"><% {out.write(localizeISText("account.costcenter.list.header.orders","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="list-header-item col-sm-7"><% {out.write(localizeISText("account.costcenter.list.header.budgetspent","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body" data-testing-id="cost-center-list"><% while (loop("CostCenterBOs","CostCenter",null)) { %><div class="list-item-row-big list-item-row section section-seperator"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("CostCenter:Active")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %> class="disabled"<% } %>>
<div class="list-item col-xs-12 col-sm-1"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenter:ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.list.header.no","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenter:ID"),null)))),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("CostCenter:Active")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>class="text-info"<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenter:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %></div>
<div class="list-item col-xs-12 col-sm-3"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenter:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.list.header.name","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenter:ID"),null)))),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("CostCenter:Active")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>class="text-info"<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenter:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %></div>
<div class="list-item col-xs-12 col-sm-1">
<label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.list.header.orders","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label><% processOpenTag(response, pageContext, "costcenterordercount", new TagParameter[] {
new TagParameter("CostCenter",getObject("CostCenter"))}, 93); %></div >
<div class="list-item col-xs-12 col-sm-6 text-left" >
<label class="hidden-lg hidden-md hidden-sm control-label"><% {out.write(localizeISText("account.costcenter.list.header.budgetspent","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CostCenter:isActive"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "costcenterbudgetprogressbar", new TagParameter[] {
new TagParameter("CostCenter",getObject("CostCenter"))}, 100); %><% } %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_COSTCENTER\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><div class="list-item col-xs-3 text-left-xs col-sm-1 text-right-sm text-right-lg" ><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CostCenter:isActive"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><a href=""
data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-ConfirmDeactivate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenter:ID"),null)))),null)%>"
class="btn-tool open-costcenter-modal"
data-toggle="modal"
data-quick-title="<% {out.write(localizeISText("account.costcenter.dialog.confirm.deactivate.title","",null,null,null,null,null,null,null,null,null,null,null));} %>"
>
<span class="glyphicon glyphicon-ban-circle" title="<% {out.write(localizeISText("account.costcenter.list.action.deactivate.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"></span>
</a><% } else { %><a href="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Activate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenter:ID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="btn-tool">
<span class="glyphicon glyphicon-ok-circle" title="<% {out.write(localizeISText("account.costcenter.list.action.activate.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"></span>
</a><% } %><a href=""
data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-ConfirmRemove",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenter:ID"),null)))),null)%>"
class="btn-tool open-costcenter-modal"
data-toggle="modal"
data-quick-title="<% {out.write(localizeISText("account.costcenter.dialog.confirm.remove.title","",null,null,null,null,null,null,null,null,null,null,null));} %>"
>
<span class="glyphicon glyphicon-trash" title="<% {out.write(localizeISText("account.costcenter.list.action.remove.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"></span>
</a>
</div><% } %></div><% } %></div>
</div>
</div><% } else { %><p><% {out.write(localizeISText("account.costcenter.list.noitems","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% processOpenTag(response, pageContext, "continueshoppinglink", new TagParameter[] {
new TagParameter("isDisplayed",getObject("ContinueShopping"))}, 142); %></div>
</div>
</div>
<div class="modal" id="general-costcenter-modal" role="dialog" aria-labelledby="CostCenterLabel" aria-hidden="true">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">
<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
</button>
<h2 class="modal-title" id="modal-title-replacement"></h2>
</div>
<div class="modal-body">
</div>
</div>
</div>
</div>
<script type="text/javascript">
$(document).on('click', '<%=context.getFormattedValue("#",null)%>open-create-costcenter-modal', function(event) {
event.preventDefault();
var button = $(this);
if ($(this).attr('href')) var url = $(this).attr('href');
if ($(this).attr('data-url')) var url = $(this).attr('data-url');
var modal = $('<%=context.getFormattedValue("#",null)%>general-costcenter-modal');
$(modal).modal('hide');
$.ajax({
url : url,
success : function(data) {
$(modal).find('.modal-body').html(data);
$(modal).find('.modal-title').html(button.attr('data-quick-title'));
$(modal).modal('show');
var form = $(modal).find('form');
form.bootstrapValidator().on('status.field.bv', function(e, data) {
data.bv.disableSubmitButtons(false);
});
}
});
});
</script><% printFooter(out); %>