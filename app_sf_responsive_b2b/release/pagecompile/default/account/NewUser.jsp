<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/inc/Modules", null, "5");} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUsers-Start",null))))),
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.newuser.link",null))),
new TagParameter("text",localizeText(context.getFormattedValue("account.users.link",null)))}, 8); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 13); %></div>
<div class="account-wrapper" data-testing-id="create-user-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","USERS")}, 21); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 27); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("tabindexoffset")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("tabindexoffset", temp_obj);} %><% } %><h1><% {out.write(localizeISText("account.user.new.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<p class="indicates-required"><span class="required">*</span> <% {out.write(localizeISText("account.required_field.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% URLPipelineAction action14 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUser-Create",null)))),null));String site14 = null;String serverGroup14 = null;String actionValue14 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUser-Create",null)))),null);if (site14 == null){  site14 = action14.getDomain();  if (site14 == null)  {      site14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup14 == null){  serverGroup14 = action14.getServerGroup();  if (serverGroup14 == null)  {      serverGroup14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUser-Create",null)))),null));out.print("\"");out.print(" name=\"");out.print("CreateUserForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(" data-bv-feedbackicons-valid=\"");out.print("glyphicon glyphicon-ok");out.print("\"");out.print(" data-bv-feedbackicons-invalid=\"");out.print("glyphicon glyphicon-remove");out.print("\"");out.print(" data-bv-feedbackicons-validating=\"");out.print("glyphicon glyphicon-refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue14, site14, serverGroup14,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><div role="alert" class="alert alert-danger"><% {out.write(localizeISText("account.user.new.login.already_exist.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><fieldset>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Title:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.update_profile.salutation.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8"><% processOpenTag(response, pageContext, "salutationselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("CreateUserForm:Title:QualifiedName")),
new TagParameter("salutation_enumeration_provider",getObject("SalutationEnumerationKeyProvider")),
new TagParameter("salutation",getObject("CreateUserForm:Title:Value"))}, 52); %></div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:FirstName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.update_profile.firstname.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<input maxlength="35" 
type="text"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateUserForm:FirstName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %> error<% } %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:FirstName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:FirstName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:FirstName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
aria-required="true"
data-bv-notempty="true" 
required 
data-bv-notempty-message="<% {out.write(localizeISText("account.user.new.firstname.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
forbiddensymbols=""
data-bv-forbiddensymbols-message="<% {out.write(localizeISText("error.forbiddensymbols","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:LastName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.update_profile.lastname.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<input maxlength="35"
type="text"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateUserForm:LastName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %> error<% } %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:LastName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:LastName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:LastName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-notempty="true" 
required 
data-bv-notempty-message="<% {out.write(localizeISText("account.user.new.lastname.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
forbiddensymbols=""
data-bv-forbiddensymbols-message="<% {out.write(localizeISText("error.forbiddensymbols","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
</fieldset>
<fieldset>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.user.new.login.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<input maxlength="256"
type="text"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateUserForm:Login:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %> error<% } %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Login:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Login:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-notempty="true" required data-bv-notempty-message="<% {out.write(localizeISText("account.user.new.login.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-bv-emailaddress="true" data-bv-emailaddress-message="<% {out.write(localizeISText("account.user.new.email.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
<div class="form-group<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateUserForm:Email:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %> has-error<% } %>">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.user.new.email.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<input maxlength="256"
type="text"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateUserForm:Email:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %> error<% } %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-error-position="placeholder"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Email:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-bv-notempty="true"
data-bv-notempty-message="<% {out.write(localizeISText("account.user.new.email.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-bv-emailaddress="true" data-bv-emailaddress-message="<% {out.write(localizeISText("account.user.new.email.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-bv-emailaddress="true"
/>
</div>
</div>
</fieldset>
<fieldset><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CompanyCustomer", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CompanyCustomer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Department:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.update_profile.department.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input maxlength="60"
type="text"
class="form-control"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Department:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Department:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
</div>
</div><% } %><div class="form-group">
<div class="col-sm-offset-4 col-sm-4">
<div class="checkbox">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Active:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="checkbox"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Active:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Active:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
title="<% {out.write(localizeISText("account.user.new.active.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"
value="true"
checked="checked"
/><% {out.write(localizeISText("account.user.new.active.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</div>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Phone:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.update_profile.phone.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input maxlength="20"
type="text"
class="form-control"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Phone:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Phone:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-regexp="true" data-bv-regexp-regexp="^[0-9\-]+$"
data-bv-regexp-message="<% {out.write(localizeISText("account.user.new.phone.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div> 
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Fax:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.update_profile.fax.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input maxlength="20"
type="text"
class="form-control"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Fax:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Fax:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-regexp="true" data-bv-regexp-regexp="^[0-9\-]+$"
data-bv-regexp-message="<% {out.write(localizeISText("account.user.new.fax.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Birthday:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.default_address.birthday.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CreateUserForm:Birthday:Month:isInvalid")).booleanValue() || ((Boolean) getObject("CreateUserForm:Birthday:Day:isInvalid")).booleanValue() || ((Boolean) getObject("CreateUserForm:Birthday:Year:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "birthdayinput", new TagParameter[] {
new TagParameter("formparameter",getObject("CreateUserForm:Birthday")),
new TagParameter("type","select"),
new TagParameter("class","error"),
new TagParameter("required","false")}, 192); %><% } else { %><% processOpenTag(response, pageContext, "birthdayinput", new TagParameter[] {
new TagParameter("formparameter",getObject("CreateUserForm:Birthday")),
new TagParameter("type","select"),
new TagParameter("required","false")}, 197); %><% } %></div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:LocaleID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.update_profile.preferred_language.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8"><% processOpenTag(response, pageContext, "preferredlocaleselectbox", new TagParameter[] {
new TagParameter("currentlocale",getObject("CurrentSession:Locale")),
new TagParameter("parametername",getObject("CreateUserForm:LocaleID:QualifiedName")),
new TagParameter("selected",getObject("CreateUserForm:LocaleID:Value"))}, 207); %></div>
</div>
</fieldset><% processOpenTag(response, pageContext, "roleselection", new TagParameter[] {
new TagParameter("AssignableRoles",getObject("CustomerBO:Extension(\"CustomerBOSecurityExtension\"):AssignableRoles")),
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Language",getObject("CurrentSession:Locale:Language")),
new TagParameter("ImplicitlyAssignedRoles",getObject("CustomerBO:Extension(\"CustomerBOSecurityExtension\"):ImplicitlyAssignedRoles")),
new TagParameter("SelectedUser",getObject("SelectedUser"))}, 214); %><fieldset>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:OrderLimit:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {226}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.user.new.order_spend_limit.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:OrderLimit:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<div class="col-sm-8">
<div class="input-group"> 
<span class="input-group-addon"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {231}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
<input
type="text"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:OrderLimit:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {235}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
size="18"
maxlength="256"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:OrderLimit:Value:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {238}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:OrderLimit:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {239}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CreateUserForm:OrderLimit:MoneyValue:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",240,e);}if (_boolean_result) { %> has-error<% } %>"
data-bv-regexp="true" data-bv-regexp-regexp="^[0-9.]+$"
data-bv-regexp-message="<% {out.write(localizeISText("account.user.new.OrderLimit.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Budget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {250}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.user.new.budget.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Budget:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {251}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {251}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<div class="col-sm-8">
<div class="row">
<div class="col-sm-6 form-vertical-space">
<div class="input-group"> 
<span class="input-group-addon"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
<input type="text"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Budget:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {260}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
size="18"
maxlength="256"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Budget:Value:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {263}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Budget:MoneyValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {264}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CreateUserForm:Budget:MoneyValue:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",265,e);}if (_boolean_result) { %> has-error<% } %>"
data-bv-regexp="true" data-bv-regexp-regexp="^[0-9.]+$"
data-bv-regexp-message="<% {out.write(localizeISText("account.user.new.Budget.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
<div class="col-sm-6">
<select
class="form-control" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateUserForm:Period:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<option value="weekly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateUserForm:Period:Value"),null).equals(context.getFormattedValue("weekly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",278,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.user.new.budget.period.value.weekly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="monthly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateUserForm:Period:Value"),null).equals(context.getFormattedValue("monthly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",279,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.user.new.budget.period.value.monthly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="quarterly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateUserForm:Period:Value"),null).equals(context.getFormattedValue("quarterly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",280,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.user.new.budget.period.value.quarterly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</div>
</div>
</div>
</div>
</fieldset>
<div class="form-group">
<div class="col-sm-offset-4 col-sm-8">
<button class="btn btn-primary" type="submit" value="<% {out.write(localizeISText("account.user.new.button.create.label","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="Create" ><% {out.write(localizeISText("account.user.new.button.create.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<a class="btn btn-default" href="<% {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUsers-Start",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {291}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" ><% {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a> 
</div>
</div><% out.print("</form>"); %></div>
</div>
</div><% printFooter(out); %>