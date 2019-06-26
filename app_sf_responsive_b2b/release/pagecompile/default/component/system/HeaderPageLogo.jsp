<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.component.user.capi.UserBO"%><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><%@page import = "com.intershop.component.application.capi.ApplicationBO"%><%@page import = "com.intershop.component.customer.capi.CustomerBORepository"%><%@page import = "com.intershop.component.customer.capi.CustomerBO"%><% {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("User",getObject("CurrentUser"))))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><% {Object temp_obj = (getObject("dict:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} %><%
	UserBO userBO = (UserBO) getObject("UserBO");
	ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
	CustomerBORepository repository = applicationBO.getRepository("CustomerBORepository");
	CustomerBO customer = repository.getCustomerBO(userBO);
	getPipelineDictionary().put("CustomerBO", customer);
%><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CustomerBOBrandingExtension\")")); getPipelineDictionary().put("Branding", temp_obj);} %><a rel="home" href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)%>"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Branding:BrandingImage")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Branding:BrandingImage"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><img src="<% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeCustomerBrandingImage-GetBrandingImage",null)))),null), null, null, "23");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %>" alt="Logo"><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:Logo")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:Logo"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("PageletConfigurationParameters:Logo"),null)),null)%>" alt="Logo"><% } else { %><img src="<% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeBranding-Resource",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Resource_Name",null),context.getFormattedValue("/img/logo.png",null)))),null), null, null, "29");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %>" alt="Logo"><% }} %></a><% printFooter(out); %>