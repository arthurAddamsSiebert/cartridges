<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content --><% URLPipelineAction action34 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePassword-Update",null)))),null));String site34 = null;String serverGroup34 = null;String actionValue34 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePassword-Update",null)))),null);if (site34 == null){  site34 = action34.getDomain();  if (site34 == null)  {      site34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup34 == null){  serverGroup34 = action34.getServerGroup();  if (serverGroup34 == null)  {      serverGroup34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ChangePassword-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue34, site34, serverGroup34,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td colspan="2" class="heading">
<input type="hidden" name="webform-id" value="AccountPasswordForm"/><% {out.write(localizeISText("monitor.ChangeYourPassword.input","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="2" border="0" alt=""/></td></tr>
<tr><td colspan="2" class="line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="1" border="0" alt=""/></td></tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0" alt=""/></td></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td class="mainred" valign="top" colspan="2"><% {out.write(localizeISText("monitor_change_password.TheSystemCouldNotChangeYourPassword.mainred","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0" alt=""/></td></tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AccountPasswordForm:OldPassword:isMissing")).booleanValue() || ((Boolean) getObject("AccountPasswordForm:OldPassword:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td class="mainred" valign="top" colspan="2"><% {out.write(localizeISText("monitor_change_password.TheOldPasswordIsMissingOrIsTooShort.mainred","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0" alt=""/></td></tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AccountPasswordForm:Password:isMissing")).booleanValue() || ((Boolean) getObject("AccountPasswordForm:Password:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td class="mainred" valign="top" colspan="2"><% {out.write(localizeISText("monitor_change_password.TheNewPasswordIsMissingOrIsTooShort.mainred","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0" alt=""/></td></tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AccountPasswordForm:PasswordConfirmation:isMissing")).booleanValue() || ((Boolean) getObject("AccountPasswordForm:PasswordConfirmation:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><tr>
<td class="mainred" valign="top" colspan="2"><% {out.write(localizeISText("monitor_change_password.ThePasswordConfirmationIsMissingOrIsTooShort.mainred","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0" alt=""/></td></tr><% }}}} %><!-- Old Password -->
<tr>
<td class="main" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_change_password.OldPassword.main","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;
</td>
<td width="100%" valign="top">
<input autocomplete="off" type="password" name="AccountPasswordForm_OldPassword" size="25" maxlength="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("AccountPasswordForm_OldPassword"),null)),null)%>" style="width: 100%; border: 1px solid black;"/>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0" alt=""/></td></tr>
<!-- New Password -->
<tr>
<td class="main" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_change_password.NewPassword.main","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;
</td>
<td valign="top">
<input autocomplete="off" type="password" name="AccountPasswordForm_Password" size="25" maxlength="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("AccountPasswordForm_Password"),null)),null)%>" style="width: 100%; border: 1px solid black;"/>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<!-- New Password Confirmation -->
<tr>
<td class="main" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_change_password.PasswordConfirmation.main","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td valign="top">
<input autocomplete="off" type="password" name="AccountPasswordForm_PasswordConfirmation" size="25" maxlength="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("AccountPasswordForm_PasswordConfirmation"),null)),null)%>" style="width: 100%; border: 1px solid black;"/>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<tr>
<td colspan="2" align="right">
<input type="submit" value="<%=context.getFormattedValue(context.getFormattedValue(" ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("monitor_change_password.OK.button",null)),null) + context.getFormattedValue(" ",null),null)%>" class="button2"/>
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="20" border="0"/></td></tr>
</table><% out.print("</form>"); %><!-- /Main Content --><% printFooter(out); %>