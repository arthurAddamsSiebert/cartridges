<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModulesCostCenter", null, "3");} %><% processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("UserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 5); %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Start",null))))),
new TagParameter("trailtext",getObject("CostCenterBO:DisplayName")),
new TagParameter("text",localizeText(context.getFormattedValue("account.costcenter.list.title",null)))}, 8); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 13); %></div>
<div class="account-wrapper" data-testing-id="cost-center-details-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","COSTCENTER")}, 22); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 28); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><div class="row">
<div class="col-xs-12">
<h1><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h1>
</div>
</div>
<div class="row">
<div class="col-xs-6">
<h3><% {out.write(localizeISText("account.costcenter.details.details.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_COSTCENTER\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><div class="col-xs-6 text-right ">
<a
href="" 
data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-ShowForm",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenterBO:ID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)).addURLParameter(context.getFormattedValue("FormType",null),context.getFormattedValue("edit",null))),null)%>" 
class="btn-tool open-costcenter-modal"
data-toggle="modal"
data-quick-title="<% {out.write(localizeISText("account.costcenter.details.action.edit.quicktitle","",null,null,null,null,null,null,null,null,null,null,null));} %>"
><span class=" glyphicon glyphicon-pencil" title="<% {out.write(localizeISText("account.costcenter.details.action.edit.quicktitle","",null,null,null,null,null,null,null,null,null,null,null));} %>"></span></a>
</div><% } %></div>
<div class="row">
<div class="col-sm-12">
<dl class="dl-horizontal dl-horizontal-inline dl-separator" data-testing-id="cost-center-details"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><dt><% {out.write(localizeISText("account.costcenter.form.field.no.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><dt><% {out.write(localizeISText("account.costcenter.form.field.name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO:Owner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><dt><% {out.write(localizeISText("account.costcenter.form.field.manager.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {Object temp_obj = (getObject("CostCenterBO:Owner")); getPipelineDictionary().put("Owner", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Owner:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Owner:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Owner:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Owner:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Owner:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></dd><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CostCenterBO:Budget"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CostCenterBO:Budget"),null).equals(context.getFormattedValue("N/A",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><dt><% {out.write(localizeISText("account.costcenter.form.field.budget.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CostCenterBO:Budget"),null) + context.getFormattedValue(" / ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(context.getFormattedValue("account.costcenter.label.budget.period.",null) + context.getFormattedValue(getObject("CostCenterBO:BudgetPeriod"),null),null)),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd>
<dd class="hidden-xs"><% processOpenTag(response, pageContext, "costcenterbudgetprogressbar", new TagParameter[] {
new TagParameter("CostCenter",getObject("CostCenterBO"))}, 88); %></dd><% } %></dl>
<div class="visible-xs"><% processOpenTag(response, pageContext, "costcenterbudgetprogressbar", new TagParameter[] {
new TagParameter("CostCenter",getObject("CostCenterBO"))}, 91); %></div>
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CostCenterBO:Owner")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CostCenterBO:Owner:ID"),null).equals(context.getFormattedValue(getObject("CurrentUser:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><div class="row">
<div class="col-xs-12"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/costcenter/inc/CostCenterDetails-Orders", null, "99");} %></div>
</div><% } %><div class="row">
<div class="col-xs-12"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/costcenter/inc/CostCenterDetails-Buyers", null, "107");} %></div>
</div>
<div class="row">
<div class="col-xs-12">
<div class="ish-formInfo">
<h4 class="help-block"><% {out.write(localizeISText("account.order.questions.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p class="help-block"><% {out.write(localizeISText("account.order.questions.note",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systempage.helpdesk.index.pagelet2-Page",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewContact-Start",null)))),null,null,null,null,null,null,null,null));} %></p>
</div>
</div>
</div><% } else { %><div class="row">
<div class="col-xs-12">
<p><% {out.write(localizeISText("account.costcenter.details.notfound","",null,getObject("CostCenterID"),null,null,null,null,null,null,null,null,null));} %></p>
</div>
</div><% } %><div class="row">
<div class="col-xs-12">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Start",null)))),null)%>" data-testing-id="back-link"><% {out.write(localizeISText("account.costcenter.details.back","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
</div>
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
</div><% printFooter(out); %>