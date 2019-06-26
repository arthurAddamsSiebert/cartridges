<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="section">
<p><% {out.write(localizeISText("account.punchout.subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div><% {Object temp_obj = (getObject("CustomerBO:Extension(\"Punchout\")")); getPipelineDictionary().put("PunchoutExtension", temp_obj);} %><% URLPipelineAction action27 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Dispatch",null)))),null));String site27 = null;String serverGroup27 = null;String actionValue27 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Dispatch",null)))),null);if (site27 == null){  site27 = action27.getDomain();  if (site27 == null)  {      site27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup27 == null){  serverGroup27 = action27.getServerGroup();  if (serverGroup27 == null)  {      serverGroup27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Dispatch",null)))),null));out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue27, site27, serverGroup27,true)); %><input type="hidden" name="FirstName" value="OCI">
<input type="hidden" name="LastName" value="User"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("PunchoutExtension:PunchoutUserBOs(PunchoutType)") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><div class="section">
<p><% {out.write(localizeISText("account.punchout.no.user.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger"><% {out.write(localizeISText("account.user.new.login.already_exist.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %> 
<div role="alert" class="alert alert-danger"><% {out.write(localizeISText("account.update_password.new_password.error.regexp","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% }} %><div>
<fieldset>
<div class="form-group">
<label class="control-label col-sm-4" for=""><% {out.write(localizeISText("account.punchout.username.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input type="text" autocomplete="off" maxlength="35" aria-required="true" 
data-validate="required"
class="form-control"
name="Login"
id="Login"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
required 
data-bv-notempty-message="<% {out.write(localizeISText("account.punchout.username.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-regexp="true" 
data-bv-regexp-regexp="^[a-zA-Z0-9_.@]*$"
data-bv-regexp-message="<% {out.write(localizeISText("account.punchout.username.invalid","",null,null,null,null,null,null,null,null,null,null,null));} %>"
>
</div>
</div><% processOpenTag(response, pageContext, "passwordinput", new TagParameter[] {
new TagParameter("ShowHint","false"),
new TagParameter("LabelClass","col-sm-4"),
new TagParameter("Class","col-sm-8"),
new TagParameter("Domain",getObject("CurrentOrganization:Domain")),
new TagParameter("FieldName","Password"),
new TagParameter("ConfirmationFieldName","PasswordConfirmation")}, 50); %></fieldset>
<div class="form-group">
<div class="col-sm-offset-4 col-sm-8">
<button class="btn btn-primary" name="enable" type="submit"><% {out.write(localizeISText("account.punchout.button.create","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div>
</div>
</div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PunchoutExtension:PunchoutUserBOs(PunchoutType)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><div class="section" data-testing-id="account-oci-user-list">
<h3><% {out.write(localizeISText("account.punchout.oci.user.list.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
</div>
<div class="list-header hidden-xs">
<div class="col-sm-9 list-header-item"><% {out.write(localizeISText("account.punchout.oci.user.list.table.user",null,null,null,null,null,null,null,null,null,null,null,null));} %></div> 
</div>
<div class="list-body"><% while (loop("PunchoutExtension:PunchoutUserBOs(PunchoutType)","UserBO","Counter")) { %><div class="list-item-row"> 
<div class="col-sm-8 list-item" data-testing-id="account-oci-user-<%=context.getFormattedValue(getObject("Counter"),null)%>">
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserBO:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserBO:Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><p class="help-block">(<% {out.write(localizeISText("account.user.list.status.inactive",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</p><% } %> 
</div>
<div class="col-sm-4 list-item text-right" >
<a class="btn-tool" title="<% {out.write(localizeISText("account.profile.update.link","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserBO:ID"),null)))),null)%>"
data-testing-class="link-oci-punchout-profile-settings-<%=context.getFormattedValue(getObject("Counter"),null)%>">
<span class="glyphicon glyphicon-pencil"></span>
</a>
</div>
</div><% } %></div>
<p><% {out.write(localizeISText("account.punchout.info.url.helptext","",null,null,null,null,null,null,null,null,null,null,null));} %></p> 
<p><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(replace(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCICatalog-Start",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("USERNAME",null),context.getFormattedValue("<USERNAME>",null))).addURLParameter(context.getFormattedValue("PASSWORD",null),context.getFormattedValue("<PASSWORD>",null)).addURLParameter(context.getFormattedValue("HOOK_URL",null),context.getFormattedValue("<HOOK_URL>",null))),null),(String)("%3C"),(String)("<strong>&lt;")),null),(String)("%3E"),(String)("&gt;</strong>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";out.write(value);} %><p><% } %><% out.print("</form>"); %><% printFooter(out); %>