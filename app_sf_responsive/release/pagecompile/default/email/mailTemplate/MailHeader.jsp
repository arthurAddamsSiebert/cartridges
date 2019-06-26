<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailStyle", null, "8");} %></head>
<body yahoo bgcolor="#ffffff" bottommargin="0" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" rightmargin="0"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailStyle", null, "13");} %><table width="100%" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" class="emailContainer">
<tr>
<td align="center"> 
<!--[if (gte mso 9)|(IE)]>
<table width="600" cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<![endif]-->
<table width="100%" class="emailContent" cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="emailHeader">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="logo" valign="top" style="padding: 0 20px 20px 0;"><% {try{executePipeline("IncludeBranding-GetBrandingInstallation",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Hook_Image_Name","logoEmail.png")))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 36.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:BrandingInstallation:UUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><img style="display:block;" src="<%=context.getFormattedValue(context.webRoot(context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null)),null)%>/branding/<% {String value = null;try{value=context.getFormattedValue(getObject("dict:CurrentOrganization:OrganizationDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/img/<% {String value = null;try{value=context.getFormattedValue(getObject("dict:Hook_Image_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>?brandid=<%=context.getFormattedValue(getObject("dict:BrandingInstallation:UUID"),null)%>" alt="Logo" border="0" alt="" /><% } else { %><img style="display:block;" src="<%=context.getFormattedValue(context.webRoot(context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null)),null)%>/img/<% {String value = null;try{value=context.getFormattedValue(getObject("dict:Hook_Image_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" alt="Logo" border="0" alt="" /><% } %></td>
</tr>
<tr>
<td class="headerNav">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("LocaleID"),null),context.getFormattedValue(getObject("Currency"),null),context.getFormattedValue(getObject("AppID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowMyAccountLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {out.write(localizeISText("email.my_account.text",null,null,encodeString(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("LocaleID"),null),context.getFormattedValue(getObject("Currency"),null),context.getFormattedValue(getObject("AppID"),null)))),null)),null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="emailBody"><% printFooter(out); %>