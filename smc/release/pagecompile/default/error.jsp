<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Working Area --><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title><% {out.write(localizeISText("error.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/error.css"/>
<link rel="icon" type="image/png" href="<%=context.getFormattedValue(context.webRoot(),null)%>/images/logo_is7.ico" />
</head>
<body>
<div class="sysLabel"></div>
<div class="sysErrorImage"></div>
<div class="sysMessage">
<p><span><% {out.write(localizeISText("error.ASystemErrorHasOccurred.errorpage_text",null,null,null,null,null,null,null,null,null,null,null,null));} %></span></p>
<p><span><% {out.write(localizeISText("error.TheseErrorsAreCausedByProblemsWithinTheSystem.sysMessage",null,null,null,null,null,null,null,null,null,null,null,null));} %></span></p><br />
<p><span><% {out.write(localizeISText("error.ClickShowDetailsToView.sysMessage",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("show",null),context.getFormattedValue("yes",null))).addURLParameter(context.getFormattedValue("ErrorText",null),context.getFormattedValue(getObject("ErrorText"),null))),"errorpage_link",null,null,null,null,null,null,null,null));} %></span></p>
<p><span><% {out.write(localizeISText("error.PleaseContactYourSystemAdministratorThankYouForYou.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></span></p>
<div class="btError"><% URLPipelineAction action88 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null)))),null));String site88 = null;String serverGroup88 = null;String actionValue88 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null)))),null);if (site88 == null){  site88 = action88.getDomain();  if (site88 == null)  {      site88 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup88 == null){  serverGroup88 = action88.getServerGroup();  if (serverGroup88 == null)  {      serverGroup88 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("DetailsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue88, site88, serverGroup88,true)); %><input type="hidden" name="ErrorText" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorText"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("show"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><input type="submit" name="hide" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("error.HideDetails.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="show" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("error.ShowDetails.button",null)),null)%>" class="button"/><% } %><% out.print("</form>"); %></div>
<div>
<table width="100%" cellpadding="0" cellspacing="0" border="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("show"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="0" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td>
<!-- detailed information -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td colspan="2" class="errorpage_table_title aldi"><% {out.write(localizeISText("error.ErrorDetails.errorpage_table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.ErrorMessage.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorText"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr><td colspan="2" class="errorpage_table_title aldi"><% {out.write(localizeISText("error.RequestInformation.errorpage_table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.RequestID.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:RequestID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.RequestMethod.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:Method"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.RequestProtocol.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:Protocol"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.QueryString.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:QueryString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr><td colspan="2" class="errorpage_table_title w e s" nowrap="nowrap"><% {out.write(localizeISText("error.SessionInformation.errorpage_table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.SessionID.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:SessionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.LoginState.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:LoggedIn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.AuthenticationState.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:AuthenticationState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.SessionLanguage.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:URLLanguageID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.SessionCurrency.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.SessionDomain.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.CreationTime.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:CreationTime"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.CookieSessionTracking.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:RequestedSessionIdFromCookie"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.URLSessionTracking.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:RequestedSessionIdFromURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr><td colspan="2" class="errorpage_table_title w e s" nowrap="nowrap"><% {out.write(localizeISText("error.UserInformation.errorpage_table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("error.UserID.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("smc.Login.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:BasicCredentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table>
<!-- EO detailed information -->
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="0" height="6" alt="" border="0"/></td>
</tr><% } %></table>
</div>
</body>
</html>
<!-- EO Working Area --><% printFooter(out); %>