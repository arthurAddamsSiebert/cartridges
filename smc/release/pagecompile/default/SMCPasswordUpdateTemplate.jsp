<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Template Name: SMCPasswordUpdateTemplate.isml -->
<!-- Template Location: smc/staticfiles/cartridge/templates/default--><html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title><% {out.write(localizeISText("smc.Intershop7SystemManagementConsole.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/login.css"/><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledStyleSheet.isml", null, "9");} %><link rel="icon" type="image/png" href="<%=context.getFormattedValue(context.webRoot(),null)%>/images/logo_is7.ico">
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/jquery.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/jquery.placeholder.js"></script>
</head>
<body><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledOverlay.isml", null, "15");} %><div id="islabel"></div>
<div id="login">
<div class="wrapper">
<h1 id="pageName"><% {out.write(localizeISText("smc.ChangePassword.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></h1><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><div class="info1"><% {out.write(localizeISText("SMCPasswordUpdateTemplate.YourPasswordIsAboutToExpireIn.info_text",null,null,context.getFormattedValue(getObject("DaysUntilPasswordExpiration"),null),null,null,null,null,null,null,null,null,null));} %></div><% } %><div class="message"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCPasswordUpdateTemplate.YourPasswordIsAboutToExpireIn.info_text",null,null,context.getFormattedValue(getObject("DaysUntilPasswordExpiration"),null),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCPasswordUpdateTemplate.YourPasswordHasExpiredPleaseChooseANew.info_text",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdatePasswordForm:CurrentPassword:Missing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("smc.TheCurrentPasswordMustMatchWithTheLoginPassword.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdatePasswordForm:NewPassword:isMissing")).booleanValue() || ((Boolean) getObject("UpdatePasswordForm:NewPassword:isInvalid")).booleanValue() || ((Boolean) getObject("UpdatePasswordForm:NewPasswordConfirmation:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCPasswordUpdateTemplate.PasswordChangeFailed.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% {out.write(localizeISText("smc.TheCurrentPasswordMustMatchWithTheLoginPassword.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordConfirmationDoesNotMatchWithPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCPasswordUpdateTemplate.PasswordConfirmationDoesNotMatchWithPassword.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ViolatedRuleDescription")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ViolatedRuleDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ViolatedRuleDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordNotValid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCPasswordUpdateTemplate.ThePasswordIsInvalid.login_failed","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% } %></div><% URLPipelineAction action114 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePasswordLogin-ProcessPasswordChange",null)))),null));String site114 = null;String serverGroup114 = null;String actionValue114 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePasswordLogin-ProcessPasswordChange",null)))),null);if (site114 == null){  site114 = action114.getDomain();  if (site114 == null)  {      site114 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup114 == null){  serverGroup114 = action114.getServerGroup();  if (serverGroup114 == null)  {      serverGroup114 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePasswordLogin-ProcessPasswordChange",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdatePasswordForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue114, site114, serverGroup114,true)); %><div class="login">
<div><label><% {out.write(localizeISText("smc.Name.login_text","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label><span class="displayText"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span></div>
<div><input autocomplete="off"type="password" class="inputText" name="UpdatePasswordForm_CurrentPassword" id="UpdatePasswordForm_CurrentPassword" placeholder="<% {out.write(localizeISText("SMCPasswordUpdateTemplate.CurrentPassword.login_text","",null,null,null,null,null,null,null,null,null,null,null));} %>" /></div>
<div><input autocomplete="off"type="password" class="inputText" name="UpdatePasswordForm_NewPassword" id="UpdatePasswordForm_NewPassword" placeholder="<% {out.write(localizeISText("SMCPasswordUpdateTemplate.NewPassword.login_text","",null,null,null,null,null,null,null,null,null,null,null));} %>" /></div>
<div><input autocomplete="off"type="password" class="inputText" name="UpdatePasswordForm_NewPasswordConfirmation" id="UpdatePasswordForm_NewPasswordConfirmation" placeholder="<% {out.write(localizeISText("smc.ConfirmPassword.login_text","",null,null,null,null,null,null,null,null,null,null,null));} %>" /></div>
</div>
<div class="buttons">
<p><input type="submit" name="passUpdate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCPasswordUpdateTemplate.UpdatePassword.logon_button",null)),null)%>" class="loginbutton"/></p><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DaysUntilPasswordExpiration")))).booleanValue() && ((Boolean) ((( ((Number) getObject("DaysUntilPasswordExpiration")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><input type="submit" name="skip" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCPasswordUpdateTemplate.Continue.logon_button",null)),null)%>" class="loginbutton"/></td><% } %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ProjectName"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ProjectVersion"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><div class="info2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProjectName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductVersion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProjectVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></div><% } %><div class="info3"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductVersion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>&nbsp;-&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ProductVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;(<% {out.write(localizeISText("smc.UnknownProductVersion.message",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %><br/>&copy;&nbsp;<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CopyrightFrom"),null)),null)%>-<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CopyrightTo"),null)),null)%> <%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CopyrightOwner"),null)),null)%></div><% out.print("</form>"); %></div>
</div>
<script type="text/javascript">
$('input').placeholder();
</script>
</body>
</html><% printFooter(out); %>