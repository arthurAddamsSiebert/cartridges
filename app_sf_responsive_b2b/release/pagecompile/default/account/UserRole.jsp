<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/inc/Modules", null, "3");} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"GroupCustomer\"):UserBOByID(UserID)")); getPipelineDictionary().put("SelectedUser", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CustomerBOSecurityExtension\"):Roles")); getPipelineDictionary().put("Roles", temp_obj);} %><% {Object temp_obj = (getObject("SelectedUser:Extension(\"UserBOOrderApprovalExtension\")")); getPipelineDictionary().put("ApprovalExtension", temp_obj);} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUsers-Start",null))))),
new TagParameter("trailtext",context.getFormattedValue(localizeText(context.getFormattedValue("account.userrole.link",null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("SelectedUser:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("SelectedUser:LastName"),null)),
new TagParameter("text",localizeText(context.getFormattedValue("account.users.link",null)))}, 10); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 15); %></div>
<div class="account-wrapper" data-testing-id="user-roles-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","USERS")}, 24); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 30); %></div>
<h1><% {out.write(localizeISText("account.user.update_role_and_budget_limits.heading","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("SelectedUser:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("SelectedUser:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h1><% URLPipelineAction action12 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserRole-Update",null)))),null));String site12 = null;String serverGroup12 = null;String actionValue12 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserRole-Update",null)))),null);if (site12 == null){  site12 = action12.getDomain();  if (site12 == null)  {      site12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup12 == null){  serverGroup12 = action12.getServerGroup();  if (serverGroup12 == null)  {      serverGroup12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserRole-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateRoleForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue12, site12, serverGroup12,true)); %><input type="hidden" name="UserID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedUser:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% processOpenTag(response, pageContext, "roleselection", new TagParameter[] {
new TagParameter("AssignableRoles",getObject("CustomerBO:Extension(\"CustomerBOSecurityExtension\"):AssignableRoles")),
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Language",getObject("CurrentSession:Locale:Language")),
new TagParameter("ImplicitlyAssignedRoles",getObject("CustomerBO:Extension(\"CustomerBOSecurityExtension\"):ImplicitlyAssignedRoles")),
new TagParameter("SelectedUser",getObject("SelectedUser"))}, 39); %><fieldset>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:OrderLimit:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.user.new.order_spend_limit.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:OrderLimit:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<div class="col-sm-8">
<div class="input-group"> 
<span class="input-group-addon"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
<input
type="text"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:OrderLimit:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
size="18"
maxlength="256"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateRoleForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:OrderLimit:MoneyValue:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UpdateRoleForm:OrderLimit:Value")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UpdateRoleForm:OrderLimit:Value"),null).equals(context.getFormattedValue("N/A",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:OrderLimit:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value=""
<% }} %>
name="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:OrderLimit:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UpdateRoleForm:OrderLimit:MoneyValue:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %> error<% } %>" />
</div> 
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:Budget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.user.new.budget.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:Budget:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<div class="col-sm-8">
<div class="row">
<div class="col-sm-6">
<div class="input-group"> 
<span class="input-group-addon"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
<input
type="text"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:Budget:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
size="18"
maxlength="256"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateRoleForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:Budget:MoneyValue:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UpdateRoleForm:Budget:Value")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UpdateRoleForm:Budget:Value"),null).equals(context.getFormattedValue("N/A",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:Budget:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value=""
<% }} %>
name="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:Budget:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UpdateRoleForm:Budget:MoneyValue:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %> error<% } %>" />
</div>
</div>
<div class="col-sm-6">
<select
class="form-control" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateRoleForm:Period:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<option value="weekly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApprovalExtension:BudgetType"),null).equals(context.getFormattedValue("WEEKLY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.user.new.budget.period.value.weekly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="monthly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApprovalExtension:BudgetType"),null).equals(context.getFormattedValue("MONTHLY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.user.new.budget.period.value.monthly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="quarterly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApprovalExtension:BudgetType"),null).equals(context.getFormattedValue("QUARTERLY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.user.new.budget.period.value.quarterly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</div>
</div>
</div>
</div>
</fieldset>
<div class="form-group">
<div class="col-sm-8 col-sm-offset-4">
<button class="btn btn-primary" type="submit" value="<% {out.write(localizeISText("account.update.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="Update"><% {out.write(localizeISText("account.update.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<a class="btn btn-default" href="<% {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUser-Start",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("SelectedUser:ID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" ><% {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div><% out.print("</form>"); %></div>
</div>
</div><% printFooter(out); %>