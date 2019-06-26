<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} %><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title></title><% { ISFileBundle filebundle = new ISFileBundle("/bundles/css/print.css");List<? extends Resource> resources = null;
boolean processesResources = (filebundle.isCheckSource() || !filebundle.hasCachedResources());if (processesResources) {filebundle.setDefaultProcessors(new String[]{"CSSCompressor","CSSURLRewriter"}); %><% }TagParameter[] parameters = new TagParameter[] {
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
TemplateExecutionConfig context = getTemplateExecutionConfig(); %><link type="text/css" rel="stylesheet" href="<%=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:Name"),null)),null) + context.getFormattedValue("?lastModified=",null),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("File:LastModified"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" media="all" /><% 
}};
if (processesResources) { %><% {
String fileName = "/css/theme.css";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/css/pdf/pdf.css";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% resources = filebundle.process();
} else {resources = filebundle.getChachedResources();
}for(Resource resource : resources) {
PipelineDictionary newDict = context.createPipelineDictionary();
newDict.put("File", resource);
for(TagParameter parameter : parameters) {newDict.put(parameter.getKey(), parameter.getValue());}context.pushPipelineDictionary(newDict);renderer.processOpenTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 13);
renderer.processCloseTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 13);
context.popPipelineDictionary();}} %></head>
<body bottommargin="0" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" rightmargin="0" bgcolor="<%=context.getFormattedValue("#",null)%>FFFFFF">
<div class="logo"><% {try{executePipeline("IncludeBranding-GetBrandingInstallation",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Hook_Image_Name","logoEmail.png")))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 18.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:BrandingInstallation:UUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><img style="display:block;" src="<%=context.getFormattedValue(context.webRoot(context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null)),null)%>/branding/<% {String value = null;try{value=context.getFormattedValue(getObject("dict:CurrentOrganization:OrganizationDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/img/<% {String value = null;try{value=context.getFormattedValue(getObject("dict:Hook_Image_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>?brandid=<%=context.getFormattedValue(getObject("dict:BrandingInstallation:UUID"),null)%>" alt="Logo" border="0" alt="" /><% } else { %><img style="display:block;" src="<%=context.getFormattedValue(context.webRoot(context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null)),null)%>/img/<% {String value = null;try{value=context.getFormattedValue(getObject("dict:Hook_Image_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" alt="Logo" border="0" alt="" /><% } %></div>
<div><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.print.pagelet2-Slot")}, 27); %></div>
<h3 class="clear"><% {out.write(localizeISText("shopping_cart.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:Message1"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:Message1"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><div><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("PageletConfigurationParameters:Message1"))}, 33); %></div><% } %><div class="print-cart"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/ShoppingCart", "Dictionary", "39");} %></div>
<div class="clear">&nbsp;</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:Message2"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:Message2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><div><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("PageletConfigurationParameters:Message2"))}, 45); %></div><% } %></body>
</html><% printFooter(out); %>