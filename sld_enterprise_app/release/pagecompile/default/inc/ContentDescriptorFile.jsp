<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
                  com.intershop.component.foundation.capi.upload.FileUtil,
                  com.intershop.beehive.core.capi.localization.LocaleInformation"%><%
    PipelineDictionary dict = getPipelineDictionary();
    String cdKey = String.valueOf(dict.get("contentdescriptor"));
    String fileKey = String.valueOf(dict.get("file"));
    LocaleInformation locale = (LocaleInformation) dict.get("locale");
    
    try
    {
        if (locale != null)
        {
            dict.put(fileKey, FileUtil.getFile(getValue(cdKey), locale));
        }
        else
        {
            dict.put(fileKey, FileUtil.getFile(getValue(cdKey)));
        }
    }
    catch( Exception e )
    {
        // fix for #7149
        
        //it is better to clean the dictionary, because we are using this 
		//in a loop and old values remain in PD!
		dict.put(fileKey, null);
    }
%><% printFooter(out); %>