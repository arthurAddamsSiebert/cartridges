<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "3");} %><div class="edit-email-page"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("LoginAlreadyInUse",null).equals(context.getFormattedValue(getObject("ERROR_User"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger"><% {out.write(localizeISText("account.update_email.email.error.already_in_use","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("PasswordValidationFailed",null).equals(context.getFormattedValue(getObject("ERROR_User"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger"><% {out.write(localizeISText("account.update_email.email.error.password_validation_failed",null,null,encodeString(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-ViewPassword",null)))),null)),null,null,null,null,null,null,null,null,null));} %></div><% }} %><% URLPipelineAction action12 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-UpdateEmail",null)))),null));String site12 = null;String serverGroup12 = null;String actionValue12 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-UpdateEmail",null)))),null);if (site12 == null){  site12 = action12.getDomain();  if (site12 == null)  {      site12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup12 == null){  serverGroup12 = action12.getServerGroup();  if (serverGroup12 == null)  {      serverGroup12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-UpdateEmail",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateEmailForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue12, site12, serverGroup12,true)); %><div class="form-group">
<label class="col-md-3 col-sm-3 control-label"><% {out.write(localizeISText("account.update_email.email.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-md-2 col-sm-3 control-label"><% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
<div class="form-group">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="col-md-3 col-sm-3 control-label"><% {out.write(localizeISText("account.update_email.newemail.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-md-4 col-sm-6">
<input class="form-control" maxlength="256" autocomplete="off" 
type="email" required
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-emailaddress-message="<% {out.write(localizeISText("account.update_email.email.error.email","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.update_email.email.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</div>
</div>
<div class="form-group">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:EmailConfirmation:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="col-md-3 col-sm-3 control-label"><% {out.write(localizeISText("account.update_email.email_confirmation.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-md-4 col-sm-6">
<input class="form-control" maxlength="256" autocomplete="off" type="email" required
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:EmailConfirmation:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:EmailConfirmation:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:EmailConfirmation:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-emailaddress-message="<% {out.write(localizeISText("account.update_email.email.error.email","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.update_email.email.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-identical="true"
data-bv-identical-field="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-identical-message="<% {out.write(localizeISText("account.update_email.email_confirmation.error.stringcompare","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-trigger="change keyup" />
</div>
</div>
<div class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("CurrentForm:Password:Errors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("IncorrectPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>has-error<% } %>">
<div class="form-group">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Password:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="col-md-3 col-sm-3 control-label"><% {out.write(localizeISText("account.update_email.password.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-md-4 col-sm-6">
<input class="form-control" autocomplete="off" size="18" type="password" required
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Password:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Password:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.update_email.password.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("CurrentForm:Password:Errors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("IncorrectPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><small class="help-block"><% {out.write(localizeISText("account.update_email.password.error.incorrect","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% } %></div>
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-8">
<button class="btn btn-primary" type="submit" value="UpdateEmail" name="UpdateEmail"><% {out.write(localizeISText("account.update.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<a class="btn btn-default" href="<% {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-ViewProfile",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div><% out.print("</form>"); %></div>
<script type="text/javascript">
function emailChangeListener() { // validates email confirmation field on each key input in email field in order to check if they are identical
var emailConfirmationField = $("<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:EmailConfirmation:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>");
if (!(emailConfirmationField.val() == "")) {
// force validation of email confirmation field by change event:
emailConfirmationField.change(); 
}
}
$().ready(function(){
var emailField = $("<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>");
emailField.keyup(emailChangeListener);
});
</script><% printFooter(out); %>