<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Template Name: <% {String value = null;try{value=context.getFormattedValue(getObject("WorkingTemplate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> -->
<!-- Template Location: <% {String value = null;try{value=context.getFormattedValue(getTemplateSourceLocation(context.getFormattedValue(getObject("WorkingTemplate"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" lang="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<head>
<title><% {out.write(localizeISText("ApplicationFrame.Intershop7SellSideSystemBackOffice.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
<link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/opensans.css"/>
<link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/systemsite.css"/><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "10");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledStyleSheet.isml", null, "12");} %><link rel="icon" type="image/png" href="<%=context.getFormattedValue(context.webRoot(),null)%>/images/logo_is7.ico" />
</head>
<body><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledOverlay.isml", null, "17");} %><div id="main-body">
<div id="siteMenuBg"></div>
<div id="main-header">
<!-- Global Navigation Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"application/GlobalNavigationBar", null, "23");} %><!-- EO Global Navigation Area -->
<a id="brand" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null)%>" class="main-header-logo"><% {out.write(localizeISText("GlobalNavigation.link.home","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<a id="brand_title" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null)%>"><% {out.write(localizeISText("GlobalNavigation.link.brandtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="top">
<!-- Site Navigation Area --><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplaySiteNavigationBar",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),null), null, null, "34");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><!-- EO Site Navigation Area -->
</td>
<td id="main-content" class="top" width="100%">
<!-- Start Main Content Table-->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="top">
<!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("WorkingTemplate"),null), null, "43");} %><!-- EO Working Area -->
</td>
</tr>
</table>
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="main-footer"><% {try{executePipeline("IncludeProductInformation-Start",java.util.Collections.emptyMap(),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 52.",e);}} %><tr>
<td nowrap="nowrap"><% {out.write(localizeISText("ApplicationFrame.UserName","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td nowrap="nowrap"><% {out.write(localizeISText("ApplicationFrame.Organization","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td nowrap="nowrap"><% {out.write(localizeISText("ApplicationFrame.LastTimeLoggedIn","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td align="right" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("resultDict:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("resultDict:ProductVersion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>&nbsp;-&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("resultDict:ProductVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;(<% {out.write(localizeISText("ApplicationFrame.UnknownVersion.message","",null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %>&nbsp;&copy;&nbsp;<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("resultDict:CopyrightOwner"),null)),null)%>, <%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("resultDict:CopyrightFrom"),null)),null)%>-<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("resultDict:CopyrightTo"),null)),null)%></td>
</tr>
<!-- Login Information -->
<tr>
<td nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserProfile:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserProfile:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentOrganization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td nowrap="nowrap" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserLastLoginTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserLastLoginTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserLastLoginTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr>
</table>
<!-- EO Main Content Table-->
</div>
</body>
</html><% printFooter(out); %>