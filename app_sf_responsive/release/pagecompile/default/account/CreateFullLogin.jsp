<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "4");} %><% processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentDomain:DomainName")),
new TagParameter("preferencekey","UserRegistrationLoginType"),
new TagParameter("type","String"),
new TagParameter("return","RegistrationLoginType")}, 6); %><div class="row">
<div class="col-lg-6 col-md-8 col-sm-10"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("LoginForm:isSubmitted")).booleanValue() && ((Boolean) getObject("LoginForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("UserNotLoggedIn",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><div class="alert alert-danger"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RegistrationLoginType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RegistrationLoginType"),null).equals(context.getFormattedValue("username",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:Login:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.username.empty.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.username.already_exist.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("LoginForm:Login:isError(\"error.required\")")).booleanValue() || ((Boolean) getObject("LoginForm:Login:isError(\"error.email\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.update_email.email.error.email","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.email.already_exist.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:Password:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.create_user.password.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:Password:isError(\"invalid.password\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("password.invalid.password","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:PasswordConfirmation:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.create_user.password_confirmation.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:PasswordConfirmation:isError(\"error.stringcompare\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.registration.password.not_match.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.update_password.new_password.error.regexp","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:recaptcharesponsefield:isError(\"error.captcha\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("captcha.incorrect","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div><% } %><p class="indicates-required"><span class="required">*</span><% {out.write(localizeISText("account.required_field.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<div class="form-group">
<label class="col-sm-4 control-label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.register.email.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span>
</label>
<div class="col-sm-8">
<input type="email" autocomplete="off" class="form-control" maxlength="256"
required
id="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Login:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.update_email.email.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-emailaddress-message="<% {out.write(localizeISText("account.update_email.email.error.email","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
<div class="form-group">
<label class="col-sm-4 control-label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:EmailConfirmation:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.register.email_confirmation.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span>
</label>
<div class="col-sm-8">
<input type="email" autocomplete="off" class="form-control" maxlength="256"
required
id="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:EmailConfirmation:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:EmailConfirmation:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:EmailConfirmation:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.update_email.email.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-emailaddress-message="<% {out.write(localizeISText("account.update_email.email.error.email","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-identical="true"
data-bv-identical-field="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-identical-message="<% {out.write(localizeISText("account.registration.email.not_match.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div><% processOpenTag(response, pageContext, "passwordinput", new TagParameter[] {
new TagParameter("Field",getObject("LoginForm:Password")),
new TagParameter("LabelClass","col-sm-4"),
new TagParameter("ShowRequired","true"),
new TagParameter("Class","col-sm-8"),
new TagParameter("Domain",getObject("CurrentOrganization:Domain")),
new TagParameter("ConfirmationField",getObject("LoginForm:PasswordConfirmation")),
new TagParameter("HintClass","col-sm-offset-4 col-sm-8")}, 93); %><div class="form-group">
<label class="col-sm-4 control-label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:SecurityQuestion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.security_question.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span>
</label>
<div class="col-sm-8"><% processOpenTag(response, pageContext, "securityquestionselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("LoginForm:SecurityQuestion:QualifiedName")),
new TagParameter("selectedsecurityquestionvalue",getObject("LoginForm:SecurityQuestion:Value"))}, 109); %></div>
</div>
<div class="form-group">
<label class="col-sm-4 control-label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Answer:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.register.security_answer.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span>
</label>
<div class="col-sm-8">
<input type="password" autocomplete="off" class="form-control <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:Answer:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>server-error<% } %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Answer:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Answer:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
required
data-bv-notempty-message="<% {out.write(localizeISText("account.register.security_answer.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Provider")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("BasketEmailOptIn")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("BasketEmailOptIn"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><div class="form-group">
<div class="col-sm-8 col-sm-push-4">
<div class="checkbox">
<label class="control-label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Newsletter:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="checkbox"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Newsletter:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("LoginForm:Newsletter:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("address")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("address:PreferredBilling"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>checked="checked"<% } %>
/><% {out.write(localizeISText("account.register.newsletter.checkbox.text","",null,null,null,null,null,null,null,null,null,null,null));} %><br>
<small class="input-help"><% {out.write(localizeISText("account.register.newsletter_opt-in_ouf.note.text",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systeminclude.dialog.privacyPolicy.pagelet2-Include",null)))),null)),null,null,null,null,null,null,null,null,null));} %></small>
</label>
</div>
</div>
<div class="col-sm-8 col-sm-push-4">
</div><% } else { %><div class="col-sm-8 col-sm-push-4">
<small class="input-help"><% {out.write(localizeISText("account.register.newsletter_opt-in_ouf.note.text",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systeminclude.dialog.privacyPolicy.pagelet2-Include",null)))),null)),null,null,null,null,null,null,null,null,null));} %></small>
</div><% } %></div>
</div><% printFooter(out); %>