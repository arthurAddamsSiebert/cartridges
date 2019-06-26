<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.component.foundation.capi.localization.LocalizedCountryNamesProvider"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%@page import="java.util.Locale"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%><%@page import="com.intershop.beehive.core.capi.request.Request"%><%
	PipelineDictionary dict = getPipelineDictionary();
	
	String language=(String)dict.get("locale:Language");
	if (language == null || language.isEmpty())
	{
	    LocaleInformation locale = Request.getCurrent().getLocale();
	    language = locale.getLanguage();
	}
	
	String countryCode = (String)dict.get("countrycode");
	
	String countryName = "";
	
	if((language!=null)&&(countryCode!=null))	
	{
	 	LocalizedCountryNamesProvider namesProvider 
                = NamingMgr.getProvider(LocalizedCountryNamesProvider.class);
	
		countryName = namesProvider.getCountryNameForCountryCode(language,countryCode);
	}

	dict.put("countryName", countryName);
%><% {String value = null;try{value=context.getFormattedValue(getObject("countryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% printFooter(out); %>