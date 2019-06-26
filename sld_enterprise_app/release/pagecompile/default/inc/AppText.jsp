<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension"%><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><%@page import="com.intershop.component.application.capi.ApplicationBO"%><%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%><%@page import="java.util.List"%><%@page import="java.util.ArrayList"%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("key")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("key"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><%
	ApplicationBO app = AppContextUtil.getCurrentAppContext().getVariable("CurrentApplicationBO");
	ApplicationBOApplicationSelectorExtension appSelector = app.getExtension("ApplicationSelector");
	String appType = appSelector.getType() != null ? appSelector.getType() : "";
	
	String originalKey = getPipelineDictionary().get("key");
	
	//determine the suffix of the key.
	String keySuffix = "";
	
	if (appType != null)
	{
	    if (appType.startsWith("organization"))
	    {
	        keySuffix = ".organization";
	    }
	    else if (appType.startsWith("channel"))
	    {
	        keySuffix = ".channel";
	    }
	    else if (appType.startsWith("application"))
	    {
	        keySuffix = ".application";
	    }
	}
	
	//the new key with the suffix
	String newKey = originalKey + keySuffix;
	//encoding
	String encoding = getPipelineDictionary().get("encoding");
	//locale
	LocaleInformation locale = getPipelineDictionary().get("locale");
	
	
	//gather the parameters
	List<Object> params = new ArrayList<Object>();
	for (int cnt = 0; cnt < 10; cnt++)
	{
	    Object param = getPipelineDictionary().get("parameter" + cnt);
	    if (param != null)
	    {
	        params.add(param);
	    }
	}
	
	boolean hasLocalizedISText = hasLocalizedISText(newKey, locale, params.toArray());
	
	if (encoding == null) 
	{
	    encoding = "";
	}
	
	//localize the text
	String localizedText = "";
	
	if (hasLocalizedISText)
	{
	    localizedText = localizeISText(newKey, encoding, locale, params.toArray());
	}
	else
	{
	    //fallback to the original key
	    localizedText = localizeISText(originalKey, encoding, locale, params.toArray());
	}
	
	getPipelineDictionary().put("localizedtext", localizedText);
%><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("skipprint")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("skipprint"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("localizedtext"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";out.write(value);} %><% } %><% } %><% printFooter(out); %>