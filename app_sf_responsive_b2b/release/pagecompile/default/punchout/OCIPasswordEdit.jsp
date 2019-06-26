<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "4");} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link1",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserID"),null))))),
new TagParameter("text1",localizeText(context.getFormattedValue("account.punchout.profile.link",null))),
new TagParameter("link",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Start",null))))),
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.punchout.profile.password.link",null))),
new TagParameter("text",localizeText(context.getFormattedValue("account.punchout.link",null)))}, 7); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 17); %></div>
<div class="account-wrapper" data-testing-id="account-punchout-profile-settings-password-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","PUNCHOUT")}, 25); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 30); %></div>
<h1><% {out.write(localizeISText("account.update_password.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1> 
<p><% {out.write(localizeISText("account.punchout.profile.password.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<div class="section">
<div><% URLPipelineAction action29 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdatePassword",null)))),null));String site29 = null;String serverGroup29 = null;String actionValue29 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdatePassword",null)))),null);if (site29 == null){  site29 = action29.getDomain();  if (site29 == null)  {      site29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup29 == null){  serverGroup29 = action29.getServerGroup();  if (serverGroup29 == null)  {      serverGroup29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdatePassword",null)))),null));out.print("\"");out.print(" name=\"");out.print("OCIUpdatePasswordForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue29, site29, serverGroup29,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CurrentForm:isSubmitted")).booleanValue() && ((Boolean) getObject("CurrentForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><div class="alert alert-danger"><% {out.write(localizeISText("account.form.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><input type="hidden" name="UserID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% processOpenTag(response, pageContext, "passwordinput", new TagParameter[] {
new TagParameter("Field",getObject("CurrentForm:NewPassword")),
new TagParameter("ConfirmationLabelKey","account.update_password.newpassword_confirmation.label"),
new TagParameter("LabelClass","col-md-3 col-sm-3"),
new TagParameter("LabelKey","account.update_password.newpassword.label"),
new TagParameter("Class","col-md-4 col-sm-6"),
new TagParameter("Domain",getObject("CurrentOrganization:Domain")),
new TagParameter("ConfirmationField",getObject("CurrentForm:NewPasswordConfirmation")),
new TagParameter("HintClass","col-md-4 col-md-offset-0 col-sm-offset-3 col-sm-6")}, 47); %><div class="form-group <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CurrentForm:VerifyPassword:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>server-error<% } %>">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:VerifyPassword:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="col-md-3 col-sm-3 control-label"><% {out.write(localizeISText("account.punchout.profile.password.yourpassword.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-md-4 col-sm-6">
<input type="password" autocomplete="off" class="form-control"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:VerifyPassword:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:VerifyPassword:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value=""
required
data-bv-notempty-message="<% {out.write(localizeISText("account.update_password.old_password.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-testing-id="input-punchout-your-password"
/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("CurrentForm:VerifyPassword:Errors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("IncorrectPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><small class="help-block"><% {out.write(localizeISText("account.update_email.password.error.incorrect","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% } %></div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-8">
<button class="btn btn-primary" 
type="submit" 
value="UpdatePassword" 
name="UpdatePassword"
data-testing-id="button-oci-punchout-password-submit"
><% {out.write(localizeISText("account.update.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<a class="btn btn-default" class="cancel" href="<% {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div><% out.print("</form>"); %></div> 
</div 
</div>
</div>
</div><% printFooter(out); %>