<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
		<title><% {out.write(localizeISText("templates.CSRFAlertRecovery.CSRFAttackWasDetected.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
		<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/error.css"/>
	</head>
	<body>
	  <div class="sysLabel"></div>
	  <div class="sysImage"></div>
	  
	  <div class="sysMessage">
	  	<h1><% {out.write(localizeISText("templates.CSRFAlertRecovery.CSRFAttack","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>	  	
		<p>
		<% {out.write(localizeISText("templates.CSRFAlertRecovery.TheServerDidNotProcessTheRequestBecauseACSRFAttack","",null,null,null,null,null,null,null,null,null,null,null));} %>
		</p>			
				
		<ul>
		 <li><% {out.write(localizeISText("templates.CSRFAlertRecovery.ThereReallyWasACSRFAttackAndYouYourBrowserHaveBeen","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
		 <li><% {out.write(localizeISText("templates.CSRFAlertRecovery.YouHaveJavaScriptDisabled","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
		 <li><% {out.write(localizeISText("templates.CSRFAlertRecovery.YourSessionTimedOut","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
		 <li><% {out.write(localizeISText("templates.CSRFAlertRecovery.ThisMightBeABug","",null,null,null,null,null,null,null,null,null,null,null));} %></li>		 		 
		</ul> 		
		
		<p>
		<% {out.write(localizeISText("templates.CSRFAlertRecovery.IfYouAreSureThatNoCSRFAttackOccurred",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</p>
		
		<% URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("OriginalRequestAction"),null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("OriginalRequestAction"),null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("OriginalRequestAction"),null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); %>
			<% while (loop("OriginalRequestParams:EntrySet","RequestParamEntry",null)) { %>				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("RequestParamEntry:Value") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
					<% while (loop("RequestParamEntry:Value","Value",null)) { %>
						<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("RequestParamEntry:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />	
					<% } %>				
				<% } else { %>
					<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("RequestParamEntry:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("RequestParamEntry:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
				<% } %>
			<% } %>			
			<button name="RecoverFromCSRFAlert" style="margin-top:2ex;"><% {out.write(localizeISText("templates.CSRFAlertRecovery.Recover.button","",null,null,null,null,null,null,null,null,null,null,null));} %></button>			
		<% out.print("</form>"); %>				
	  </div>
	</body>
</html><% printFooter(out); %>