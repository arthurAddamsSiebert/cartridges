<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Template Name: monitor_login.isml -->
<!-- Template Location: monitor/staticfiles/cartridge/templates/default--><html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title><% {out.write(localizeISText("monitor_login.MonitoringCartridge.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
</head>
<body>
<div class="centeredTable" align="center" style="margin: 15% auto auto auto;">
<!-- Main Table -->
<table cellpadding="0" cellspacing="0" border="0" class="login_style">
<tr>
<td>
<table width="440" cellpadding="0" cellspacing="0" border="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/logo.gif" width="185" height="50" border="0" alt=""/></td>
<td align="right"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/clouds_login.gif" width="255" height="50" border="0" alt=""/></td>
</tr>
</table>
<table width="440" cellpadding="0" cellspacing="0" border="0" class="divider">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0" alt=""/></td>
</tr>
</table>
<table width="440" cellpadding="0" cellspacing="0" border="0">
<tr>
<td width="18"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="18" height="66" border="0" alt=""/></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0"/></td>
</tr>
<tr>
<td class="heading"><% {out.write(localizeISText("monitor.Login.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="2" border="0" alt=""/></td></tr>
<tr><td class="line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="1" border="0" alt=""/></td></tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="2" border="0" alt=""/></td></tr>
<tr>
<td class="main"><% {out.write(localizeISText("monitor_login.PleaseEnterYourLoginAndYourPassword.main","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LoginForm:Login:isMissing")).booleanValue() || ((Boolean) getObject("LoginForm:Login:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="28" border="0"/></td>
</tr>
<tr>
<td class="mainred"><% {out.write(localizeISText("monitor_login.TheSystemDidNotRecognizeYourLoginInformation.mainred","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LoginForm:Password:isMissing")).booleanValue() || ((Boolean) getObject("LoginForm:Password:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="28" border="0"/></td>
</tr>
<tr>
<td class="mainred"><% {out.write(localizeISText("monitor_login.TheSystemDidNotRecognizeYourPasswordInformation.mainred","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("UserNotLoggedIn",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="28" border="0"/></td>
</tr>
<tr>
<td class="mainred"><% {out.write(localizeISText("monitor_login.TheSystemDidNotRecognizeYourLoginAndPassword.mainred","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% }}} %><tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="28" border="0"/></td>
</tr>
<tr>
<td><% URLPipelineAction action33 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("PerformLogin-GlobalLogin",null)))),null));String site33 = null;String serverGroup33 = null;String actionValue33 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("PerformLogin-GlobalLogin",null)))),null);if (site33 == null){  site33 = action33.getDomain();  if (site33 == null)  {      site33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup33 == null){  serverGroup33 = action33.getServerGroup();  if (serverGroup33 == null)  {      serverGroup33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("PerformLogin-GlobalLogin",null)))),null));out.print("\"");out.print(" name=\"");out.print("LoginForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue33, site33, serverGroup33,true)); %><input type="hidden" name="LoginForm_RegistrationUnit" value="Monitor"/>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="main"><% {out.write(localizeISText("monitor_login.Login.main","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td width="100%" class="main"><input autocomplete="off" name="LoginForm_Login" type="text" style="width : 100%; border: 1px solid black;" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LoginForm:Login:Value"),null)),null)%>"/></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0"/></td>
</tr>
<tr>
<td class="main"><% {out.write(localizeISText("monitor_login.Password.main","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="main"><input autocomplete="off" name="LoginForm_Password" type="password" style="width : 100%; border: 1px solid black;" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LoginForm:Password:Value"),null)),null)%>"/></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0"/></td>
</tr>
<tr>
<td colspan="2" align="right" class="main"><input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Login.button",null)),null)%>"/></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0"/></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table>
</td>
<td width="18"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="18" height="66" border="0" alt=""/></td>
</tr>
</table>
<table width="440" cellpadding="0" cellspacing="0" border="0" class="footer">
<tr>
<td width="18"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="18" height="66" border="0" alt=""/></td>
<td>
<table cellpadding="0" cellspacing="0" border="0" class="footer">
<tr>
<td><% {out.write(localizeISText("monitor_login.AllRightsReserved",null,null,stringToHtml(context.getFormattedValue(getObject("CopyrightOwner"),null)),stringToHtml(context.getFormattedValue(getObject("CopyrightFrom"),null)),stringToHtml(context.getFormattedValue(getObject("CopyrightTo"),null)),null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
<td width="18"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="18" height="66" border="0" alt=""/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- /Main Table -->
</div>
</body>
</html><% printFooter(out); %>