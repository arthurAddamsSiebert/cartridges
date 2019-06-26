<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parameter2_Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% int _httpStatusCode = 302;
if (_httpStatusCode < 300 || _httpStatusCode > 399) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [300, 399]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));response.setHeader("Location", context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("UrlIdentifier"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("Parameter1_Name"),null),context.getFormattedValue(getObject("Parameter1_Value"),null))).addURLParameter(context.getFormattedValue(getObject("Parameter2_Name"),null),context.getFormattedValue(getObject("Parameter2_Value"),null))),null)); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parameter1_Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% int _httpStatusCode = 302;
if (_httpStatusCode < 300 || _httpStatusCode > 399) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [300, 399]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));response.setHeader("Location", context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("UrlIdentifier"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("Parameter1_Name"),null),context.getFormattedValue(getObject("Parameter1_Value"),null)))),null)); %><% } else { %><% int _httpStatusCode = 302;
if (_httpStatusCode < 300 || _httpStatusCode > 399) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [300, 399]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));response.setHeader("Location", context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetPipeline"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("UrlIdentifier"),null)))),null)); %><% }} %><% printFooter(out); %>