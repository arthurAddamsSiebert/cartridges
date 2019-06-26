<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% { ISFileBundle filebundle = new ISFileBundle("/js/extension_b2b.min.js");List<? extends Resource> resources = null;
boolean processesResources = (filebundle.isCheckSource() || !filebundle.hasCachedResources());if (processesResources) {filebundle.setDefaultProcessors(new String[]{"JSCompressor"}); %><% }TagParameter[] parameters = new TagParameter[] {
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
TemplateExecutionConfig context = getTemplateExecutionConfig(); %><script src="<%=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("File:Name"),null) + context.getFormattedValue("?lastModified=",null),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("File:LastModified"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></script><% 
}};
if (processesResources) { %><% {
String fileName = "/js/vendor/jquery.dataTables-1.10.18.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/account_b2b.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/order_b2b.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/quickorder_b2b.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/extensions_b2b.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% resources = filebundle.process();
} else {resources = filebundle.getChachedResources();
}for(Resource resource : resources) {
PipelineDictionary newDict = context.createPipelineDictionary();
newDict.put("File", resource);
for(TagParameter parameter : parameters) {newDict.put(parameter.getKey(), parameter.getValue());}context.pushPipelineDictionary(newDict);renderer.processOpenTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 21);
renderer.processCloseTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 21);
context.popPipelineDictionary();}} %><% printFooter(out); %>