<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} %><% {Object temp_obj = (getObject("OwningDomain:Configuration:String(\"RichSnippetsEnabled\")")); getPipelineDictionary().put("RichSnippetsEnabled", temp_obj);} %><h2><% {out.write(localizeISText("product.reviews.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductReview-OwnProductReview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null)))),null), null, null, "10");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("EnableAdvancedVariationHandlingPreference")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnableAdvancedVariationHandlingPreference"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("ProductBO:ProductMaster")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "reviewlist", new TagParameter[] {
new TagParameter("CategoryDomainName",getObject("CategoryDomainName")),
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("DomainName",getObject("CurrentDomain:DomainName")),
new TagParameter("ShowPaging","true"),
new TagParameter("CategoryName",getObject("CategoryName")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 13); %><% } else { %><% processOpenTag(response, pageContext, "reviewlist", new TagParameter[] {
new TagParameter("CategoryDomainName",getObject("CategoryDomainName")),
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("DomainName",getObject("CurrentDomain:DomainName")),
new TagParameter("ShowPaging","true"),
new TagParameter("CategoryName",getObject("CategoryName")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO"))}, 24); %><% } %><% printFooter(out); %>