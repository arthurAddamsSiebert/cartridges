<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import="com.intershop.beehive.core.internal.pipeline.PipelineDictionaryImpl" %><%
// add ContinuousID to dictionary to make rewriting possible
PipelineDictionaryImpl pd = (PipelineDictionaryImpl) getPipelineDictionary();
pd.put("ContinuousID", pd.getPipelineDictionaryID());
/*
Adding the ContinuousID to the dictionary allows rewriting the ViewData-Start pipeline with the following rewrite-rule (see urlrewrite.properties):
rule.aviewdata.select         = ${action}/#ContinuousID#/
rule.aviewdata.selectMatch    = ^ViewData-Start/([0-9]+)/$
rule.aviewdata.shortPath      = /viewdata/#ContinuousID#
rule.aviewdata.shortPathMatch = ^/viewdata/([0-9]+)$
rule.aviewdata.longRequest    = /${group}/${domain}/${locale}/${appurlid}/${currency}/ViewData-Start/$1
*/
%><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewData-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue(getObject("JumpTarget"),null))).addURLParameter(context.getFormattedValue(getObject("AdditionalParameterName1"),null),context.getFormattedValue(getObject("AdditionalParameterValue1"),null)).addURLParameter(context.getFormattedValue(getObject("AdditionalParameterName2"),null),context.getFormattedValue(getObject("AdditionalParameterValue2"),null)).addURLParameter(context.getFormattedValue(getObject("AdditionalParameterName3"),null),context.getFormattedValue(getObject("AdditionalParameterValue3"),null)))); getPipelineDictionary().put("TargetURL", temp_obj);} %><% int _httpStatusCode = 302;
if (_httpStatusCode < 300 || _httpStatusCode > 399) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [300, 399]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));response.setHeader("Location", context.getFormattedValue(getObject("TargetURL"),null)); %><html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><meta http-equiv="refresh" content="0;URL='<% {String value = null;try{value=context.getFormattedValue(getObject("TargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'"/>
</head>
<body><% {out.write(localizeISText("security.RedirectToData.YouAreBeingRedirectedToTheRequestedPage","",null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<% {String value = null;try{value=context.getFormattedValue(getObject("TargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("security.RedirectToData.Here.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>.
</body>
</html><% printFooter(out); %>