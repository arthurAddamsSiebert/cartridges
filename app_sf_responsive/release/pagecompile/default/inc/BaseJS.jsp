<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RESTConfiguration-Start",null)))),null), null, null, "2");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><script src="<%=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/js/vendor/jquery-3.3.1.min.js",null),null)%>"></script><% { ISFileBundle filebundle = new ISFileBundle("/js/theme.min.js");List<? extends Resource> resources = null;
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
TemplateExecutionConfig context = getTemplateExecutionConfig(); %><script src="<%=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("File:Name"),null) + context.getFormattedValue("?lastModified=",null),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("File:LastModified"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></script><% 
}};
if (processesResources) { %><% {
String fileName = "/js/vendor/modernizr-custom-3.6.0.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/bootstrap-3.4.0.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/bootstrapValidator-0.5.2.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/jquery.mobile.touch-1.5.0-pre.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/slick-1.8.0.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/jquery.maskedinput-1.4.1.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/bootstrap-select-1.13.2.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/bootstrap-datepicker-1.8.0.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/vendor/js.cookie-2.2.0.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/dialog.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/captcha.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/validation.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/global.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/mobile.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/category.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/productdetail.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/checkout.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/account.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/wishlist.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/search.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/tracking.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/navigation.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% {
String fileName = "/js/video.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 %><% resources = filebundle.process();
} else {resources = filebundle.getChachedResources();
}for(Resource resource : resources) {
PipelineDictionary newDict = context.createPipelineDictionary();
newDict.put("File", resource);
for(TagParameter parameter : parameters) {newDict.put(parameter.getKey(), parameter.getValue());}context.pushPipelineDictionary(newDict);renderer.processOpenTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 49);
renderer.processCloseTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 49);
context.popPipelineDictionary();}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BootstrapSelect", null, "52");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BootstrapDatePickerLocales", null, "54");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/UserClientValidators.isml", null, "55");} %><script type="text/javascript">
if (typeof RetailShop === 'undefined') {var RetailShop = {}};
RetailShop.URLs = {};
RetailShop.URLs.getProductComponents = "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-RenderProductComponents",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CategoryBO:CatalogBO:Name"),null))).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null))),null)%>"; // additional params: SKU, cid, [cid, cid, ...]
RetailShop.URLs.getRecommendedProducts = "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommendation-Start",null)))),null)%>"; // params: SKU, ContextViewId
RetailShop.URLs.getRecommendationSession = "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommendation-GetSessionData",null)))),null)%>"; // no params
RetailShop.URLs.loginPage = "<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-ShowLogin",null)))),null)%>";
</script><% printFooter(out); %>