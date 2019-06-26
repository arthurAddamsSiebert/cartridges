<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Working Area --><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title><% {out.write(localizeISText("Error.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/error.css"/>
<link rel="icon" type="image/png" href="<%=context.getFormattedValue(context.webRoot(),null)%>/images/logo_is7.ico" />
</head>
<body>
<div class="sysLabel"></div>
<div class="sysErrorImage"></div>
<div class="sysMessage">
<p><span><% {out.write(localizeISText("Error.ASystemErrorHasOccurred.sysMessage","",null,null,null,null,null,null,null,null,null,null,null));} %></span></p>
<p><span><% {out.write(localizeISText("Error.TheseErrorsAreCausedByProblemsWithinTheSystem.sysMessage","",null,null,null,null,null,null,null,null,null,null,null));} %></span></p><br />
<p><span><% {out.write(localizeISText("Error.ClickShowDetailsToView.sysMessage",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("show",null),context.getFormattedValue("yes",null)))),"errorpage_link",null,null,null,null,null,null,null,null));} %></span></p>
<p><span><% {out.write(localizeISText("Error.PleaseContactYourSystemAdmin.link","",null,null,null,null,null,null,null,null,null,null,null));} %></span></p> 
<div class="btError"><% URLPipelineAction action32 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null)))),null));String site32 = null;String serverGroup32 = null;String actionValue32 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null)))),null);if (site32 == null){  site32 = action32.getDomain();  if (site32 == null)  {      site32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup32 == null){  serverGroup32 = action32.getServerGroup();  if (serverGroup32 == null)  {      serverGroup32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Error-Start",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue32, site32, serverGroup32,true)); %><input type="hidden" name="ErrorText" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorText"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("show"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><input type="submit" name="hide" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Error.HideDetails.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="show" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Error.ShowDetails.button",null)),null)%>" class="button"/><% } %><% out.print("</form>"); %></div>
<div>
<table width="100%" cellpadding="0" cellspacing="0" border="0"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("show"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %> 
<tr> 
<td>
<!-- detailed information -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td colspan="2" class="errorpage_table_title aldi"><% {out.write(localizeISText("Error.ErrorDetails.errorpage_table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.ErrorMessage.errorpage_table_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorText"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr><td colspan="2" class="errorpage_table_title aldi"><% {out.write(localizeISText("Error.RequestInformation.errorpage_table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.RequestID.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:RequestID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.RequestMethod.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:Method"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.RequestProtocol.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:Protocol"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.QueryString.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:QueryString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.RemoteAddress.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:RemoteAddr"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.RemoteHost.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:RemoteHost"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr><td colspan="2" class="errorpage_table_title w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.SessionInformation.errorpage_table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.SessionID.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:SessionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.LoginState.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:LoggedIn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.AuthenticationState.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:AuthenticationState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.SessionLanguage.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:URLLanguageID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.SessionCurrency.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.SessionDomain.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.CreationTime.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:CreationTime"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.CookieSessionTracking.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:RequestedSessionIdFromCookie"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.URLSessionTracking.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:ServletRequest:RequestedSessionIdFromURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr><td colspan="2" class="errorpage_table_title w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.UserInformation.errorpage_table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.UserID.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="errorpage_table_item w e s" nowrap="nowrap"><% {out.write(localizeISText("Error.Login.errorpage_table_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="errorpage_table_value e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:BasicCredentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table>
<!-- EO detailed information -->
</td>
</tr><% } %></table>
</div>
</div> 
</body>
<!-- EO Working Area -->
</html><% printFooter(out); %>