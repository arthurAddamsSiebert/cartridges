<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% { ISFileBundle filebundle = new ISFileBundle("/css/theme.min.css");List<? extends Resource> resources = null;
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
TemplateExecutionConfig context = getTemplateExecutionConfig(); %><link rel="stylesheet" type="text/css" media="all" href="<%=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:Name"),null)),null) + context.getFormattedValue("?lastModified=",null),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("File:LastModified"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% 
}};
if (processesResources) { %><% {
String fileName = "/css/theme.css";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% resources = filebundle.process();
} else {resources = filebundle.getChachedResources();
}for(Resource resource : resources) {
PipelineDictionary newDict = context.createPipelineDictionary();
newDict.put("File", resource);
for(TagParameter parameter : parameters) {newDict.put(parameter.getKey(), parameter.getValue());}context.pushPipelineDictionary(newDict);renderer.processOpenTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 7);
renderer.processCloseTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 7);
context.popPipelineDictionary();}} %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeBranding-StyleSheetHook",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Hook_StyleSheet_Name",null),context.getFormattedValue("branding.css",null)))),null), null, null, "9");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% printFooter(out); %>