<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "4");} %><% {try{executePipeline("ProcessUser-GetCurrentUserBO",java.util.Collections.emptyMap(),"GetCurrentUserBODict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %><% {try{executePipeline("ProcessUser-GetUserRole",java.util.Collections.emptyMap(),"UserRoleDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 7.",e);}} %><% {Object temp_obj = (getObject("GetCurrentUserBODict:CurrentUserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_OCI_USER\")")); getPipelineDictionary().put("IsOCIUser", temp_obj);} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.overview.link",null)))}, 13); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 18); %></div>
<div class="account-wrapper" data-testing-id="account-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","Overview")}, 26); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserRoleDict:UserRole"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("GetCurrentUserBODict:CurrentUserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 29); %><% } %><div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 35); %></div>
<h1><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUser:Profile:DataSheet:FirstName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.overview.personal_message.text",null,null,context.getFormattedValue(encodeString(context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:FirstName"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:LastName"),null)),null),encodeString(context.getFormattedValue(getObject("CustomerBO:Extension(\"CompanyCustomer\"):CompanyName"),null)),null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("account.overview.personal_message.text",null,null,encodeString(context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null)),encodeString(context.getFormattedValue(getObject("CustomerBO:Extension(\"CompanyCustomer\"):CompanyName"),null)),null,null,null,null,null,null,null,null));} %><% } %></h1><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("IsOCIUser")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.overview.message.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_PURCHASE\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/dashboard/OrderWidget", null, "58");} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_ORDER_APPROVAL\")")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_COSTCENTER\")")))).booleanValue() && ((Boolean) (hasLoopElements("BusinessObjectDict:UserBO:Extension(\"CostCenter\"):ManagedCostCenterBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/dashboard/ApprovalWidget", null, "63");} %><% } %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/dashboard/OrderTemplateWidget", null, "66");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("IsOCIUser")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_USERS\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/dashboard/UserBudgetWidget", null, "69");} %><% } %> 
<% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"DashboardWidgets", null, "73");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/inc/PrivacyPolicyNote", null, "76");} %></div>
</div>
</div><% printFooter(out); %>