<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html>
<html lang="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<head><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProgramUUID")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PartnerUUID")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("AffiliateInclude-UpdateCount",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProgramUUID",null),context.getFormattedValue(getObject("ProgramUUID"),null))).addURLParameter(context.getFormattedValue("PartnerUUID",null),context.getFormattedValue(getObject("PartnerUUID"),null))),null), null, null, "8");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MetaTagsMap:ROBOTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><meta name="robots" content="<% {String value = null;try{value=context.getFormattedValue(getObject("MetaTagsMap:ROBOTS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaRobots"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><meta name="robots" content="<% {String value = null;try{value=context.getFormattedValue(getObject("metaRobots"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaTitle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><meta name="title" content="<% {String value = null;try{value=context.getFormattedValue(getObject("metaTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaDescription"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><meta name="description" content="<% {String value = null;try{value=context.getFormattedValue(getObject("metaDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaKeywords"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><meta name="keywords" content="<% {String value = null;try{value=context.getFormattedValue(getObject("metaKeywords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% out.print(context.prepareWAPlaceHolder("CANONICAL", null, null, null, null, "true")); %><title><% {out.write(localizeISText("ApplicationFrame.IntershopPayment.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/jquery-ui-1.10.3/jquery-ui.css" />
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/jquery-ui-1.10.3/themes/base/jquery.ui.theme.css" />
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/jquery/jquery.ui.selectmenu.css" />
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ishpay_jqueryui/jquery.ui.dialog.css" />
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ishpay_jqueryui/jquery.ui.theme.css" />
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ishpay_jqueryui/jquery.ui.selectmenu.css" />
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ishpay_reset.css" />
<link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ishpay.css" /><% { ISFileBundle filebundle = new ISFileBundle("/bundles/js/ishpay.min.js");List<? extends Resource> resources = null;
boolean processesResources = (filebundle.isCheckSource() || !filebundle.hasCachedResources());if (processesResources) {filebundle.setDefaultProcessors(new String[]{"JSCompressor","SemicolonAppender"}); %><% }TagParameter[] parameters = new TagParameter[] {
};
CustomTag renderer = new CustomTag() {{
isStrict = true;
tagName = "FileBundleRenderer";
}
public void processOpenTag(PageContext pageContext, com.intershop.beehive.core.capi.request.ServletResponse response, AbstractTemplate template, int line) throws IOException, ServletException {
ServletContext application = pageContext.getServletContext();
ServletConfig config = pageContext.getServletConfig();
JspWriter out = pageContext.getOut();
Object page = template;
TemplateExecutionConfig context = getTemplateExecutionConfig(); %><script src="<%=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:Name"),null)),null) + context.getFormattedValue("?lastModified=",null),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("File:LastModified"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></script><% 
}};
if (processesResources) { %><% {
String fileName = "/js/jquery.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/jquery-migrate-1.2.1.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/jquery-ui-1.10.3.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/jquery/jquery.ui.selectmenu.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/ishpay.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% resources = filebundle.process();
} else {resources = filebundle.getChachedResources();
}for(Resource resource : resources) {
PipelineDictionary newDict = context.createPipelineDictionary();
newDict.put("File", resource);
for(TagParameter parameter : parameters) {newDict.put(parameter.getKey(), parameter.getValue());}context.pushPipelineDictionary(newDict);renderer.processOpenTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 46);
renderer.processCloseTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 46);
context.popPipelineDictionary();}} %></head>
<body>
<div class="ipay_header">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ISHPAY_logo.png" width="120" height="40" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationFrame.ISHPAYLogo.alt",null)),null)%>"/>
<div class="ipay-header-logoText"><% {out.write(localizeISText("ApplicationFrame.YourSecureDemoPaymentProvider.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("WorkingTemplate"),null), null, "54");} %></body>
</html><% printFooter(out); %>