<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h2>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("addToCartBehavior"),null).equals(context.getFormattedValue("expresscart",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewExpressShop-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))))); getPipelineDictionary().put("GiftCertificateFormAction", temp_obj);} %><% } else { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificates-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))).addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null)))); getPipelineDictionary().put("GiftCertificateFormAction", temp_obj);} %><% } %><% URLPipelineAction action11 = new URLPipelineAction(context.getFormattedValue(getObject("GiftCertificateFormAction"),null));String site11 = null;String serverGroup11 = null;String actionValue11 = context.getFormattedValue(getObject("GiftCertificateFormAction"),null);if (site11 == null){  site11 = action11.getDomain();  if (site11 == null)  {      site11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup11 == null){  serverGroup11 = action11.getServerGroup();  if (serverGroup11 == null)  {      serverGroup11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("GiftCertificateFormAction"),null));out.print("\"");out.print(" name=\"");out.print("GiftCertificateForm");out.print("\"");out.print(" id=\"");out.print("gift-certificate-form");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue11, site11, serverGroup11,true)); %><div class="modal-body">
<p><% {out.write(localizeISText("account.giftcard_helptitle.msg","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><div class="alert alert-danger"><% {out.write(localizeISText("account.giftcard.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><p class="indicates-required"><span class="required">*</span><% {out.write(localizeISText("account.required_field.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><input type="hidden" name="PLIID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PLIID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("addToCartBehavior")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><input type="hidden" name="addToCartBehavior" value="<% {String value = null;try{value=context.getFormattedValue(getObject("addToCartBehavior"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><div class="form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>server-error<% } %>">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.giftcard_recipient_email.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<input
type="email" required maxlength="256" aria-required="true"
class="form-control"
required
name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_RecipientEmail"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_RecipientEmail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.giftcard_recipient_email.required.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-emailaddress-message="<% {out.write(localizeISText("account.giftcard_recipient_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><small class="help-block col-sm-8 col-sm-offset-4"><% {out.write(localizeISText("account.giftcard_recipient_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% } %></div>
<div class="form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>server-error<% } %>">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.giftcard_recipient_name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input maxlength="35" 
type="text" aria-required="true"
class="form-control"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_RecipientName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_RecipientName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:RecipientName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %>"
data-validate-error-message="<% {out.write(localizeISText("account.giftcard_recipient_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-flash-error-keys="fieldFailureMessageGlobal"
/>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><small class="help-block col-sm-8 col-sm-offset-4"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientName:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<% } else { %><% {out.write(localizeISText("account.giftcard_recipient_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></small><% } %></div>
<div class="form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>server-error<% } %>">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.giftcard_user_email.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<input
type="email" required maxlength="256" aria-required="true"
class="form-control"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_SenderEmail:StringValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_SenderEmail:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentSession:LoggedIn"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("CurrentUser:Profile:DefaultAddress:EMail"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:DefaultAddress:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><% } %><% } %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.giftcard_user_email.required.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-bv-emailaddress-message="<% {out.write(localizeISText("account.giftcard_user_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><small class="help-block col-sm-8 col-sm-offset-4"><% {out.write(localizeISText("account.giftcard_user_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% } %></div>
<div class="form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>server-error<% } %>">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.giftcard_user_name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input maxlength="35" type="text"
class="form-control"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_SenderName:StringValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_SenderName:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentSession:LoggedIn"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><% } %>"
data-validate-error-message="<% {out.write(localizeISText("account.giftcard_user_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-flash-error-keys="fieldFailureMessageGlobal"
/>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><small class="help-block col-sm-8 col-sm-offset-4"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserName:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<% } else { %><% {out.write(localizeISText("account.giftcard_user_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></small><% } %></div>
<div class="form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Greeting:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>server-error<% } %>">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.giftcard_greeting.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<textarea required maxlength="4000" 
class="form-control"
data-charactercounter="cCounter<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-notempty-message="<% {out.write(localizeISText("account.giftcard_greeting.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %>"
><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_GreetingMessage:TextValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_GreetingMessage:TextValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></textarea>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Greeting:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><small class="help-block col-sm-8 col-sm-offset-4"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Greeting:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<% } else { %><% {out.write(localizeISText("account.giftcard_greeting.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></small><% } %><div class="col-sm-8 col-sm-offset-4">
<small class="input-help"><% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.pre.text","",null,null,null,null,null,null,null,null,null,null,null));} %> <span id="cCounter<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">4000</span> <% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.post.text","",null,null,null,null,null,null,null,null,null,null,null));} %></small>
</div>
</div>
</div>
<div class="modal-footer">
<input type="hidden" data-form-action="true"/>
<button type="submit" class="btn btn-primary" name="addProduct" value="Ok"><% {out.write(localizeISText("account.giftcard.form.ok","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<input type="hidden" name="addProduct" value="Ok"/>
<button type="button" class="btn btn-default" data-dismiss="modal" name="cancel"><% {out.write(localizeISText("account.giftcard.form.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %></div>
</div><% printFooter(out); %>