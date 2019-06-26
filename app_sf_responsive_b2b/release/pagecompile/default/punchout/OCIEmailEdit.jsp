<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "3");} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link1",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserID"),null))))),
new TagParameter("text1",localizeText(context.getFormattedValue("account.punchout.profile.link",null))),
new TagParameter("link",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCISettings-Start",null))))),
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.punchout.profile.email.link",null))),
new TagParameter("text",localizeText(context.getFormattedValue("account.punchout.link",null)))}, 6); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 17); %></div><% {Object temp_obj = (getObject("CustomerBO:Extension(\"GroupCustomer\"):UserBOByID(UserID)")); getPipelineDictionary().put("SelectedUser", temp_obj);} %><div class="account-wrapper" data-testing-id="account-punchout-profile-settings-email-page">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","PUNCHOUT")}, 26); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 31); %></div>
<h1><% {out.write(localizeISText("account.punchout.profile.email.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<div class="section">
<div class="edit-punchout-email-page"><% URLPipelineAction action30 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdateEmail",null)))),null));String site30 = null;String serverGroup30 = null;String actionValue30 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdateEmail",null)))),null);if (site30 == null){  site30 = action30.getDomain();  if (site30 == null)  {      site30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup30 == null){  serverGroup30 = action30.getServerGroup();  if (serverGroup30 == null)  {      serverGroup30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-UpdateEmail",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateEmailForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue30, site30, serverGroup30,true)); %><input type="hidden" name="UserID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<div class="form-group">
<label class="col-md-3 col-sm-3 control-label"><% {out.write(localizeISText("account.update_email.email.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-md-2 col-sm-3 control-label"><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedUser:Email"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
<div class="form-group">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="col-md-3 col-sm-3 control-label"><% {out.write(localizeISText("account.update_email.newemail.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-md-4 col-sm-6">
<input class="form-control" maxlength="256" autocomplete="off" 
type="email" required
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Email:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-emailaddress-message="<% {out.write(localizeISText("account.update_email.email.error.email","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.update_email.email.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-testing-id="input-punchout-email"
/>
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-8">
<button 
class="btn btn-primary" 
type="submit" 
value="UpdateEmail" 
name="UpdateEmail"
data-testing-id="button-oci-punchout-email-submit"
><% {out.write(localizeISText("account.update.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<a class="btn btn-default" href="<% {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOCIProfileSettings-ViewProfile",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("UserID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div><% out.print("</form>"); %></div> 
</div>
</div>
</div>
</div><% printFooter(out); %>