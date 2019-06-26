<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.environment.PropertyMgr"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary" %><%@page import="com.intershop.beehive.core.capi.request.Request" %><%@page import="com.intershop.component.foundation.capi.upload.FileUtil" %><%@page import="java.io.File" %><%
    if (getPipelineDictionary().getFormValue("FullPath", false) != null)
	{
		throw new SecurityException("Parameter FullPath was injected as form parameter.");
	}

    String fileName = (String) getPipelineDictionary().get("FullPath");
    String mimeType = FileUtil.getMimeType(fileName);
    response.setHeader("Content-Type", mimeType);
    int maxBufferedFileSize = 50000000; 
    String maxBufferedFileSizeProp = PropertyMgr.getInstance().getProperty("intershop.fileservlet.maxBufferedFileSize");
    if(maxBufferedFileSizeProp != null) maxBufferedFileSize = Integer.valueOf(maxBufferedFileSizeProp); 
    File downloadFile = new File(fileName);
    if(downloadFile.exists())
    {
        if(downloadFile.length() > maxBufferedFileSize)
        {
            //switch to streamed mode if file is large, 
            //this will also influence the caching behaviour regardless of the iscache tag below
            response.setHeader("X-IS-STREAMED", "1");
        }
    }
%><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {30}",e);}} %><% {response.setHeader("Content-Disposition", "attachment; filename=\"" + context.getFormattedValue(getObject("FileName"),null) + "\"");processBinaryOutputFile((com.intershop.beehive.core.capi.request.ServletResponse)response,new File(context.getFormattedValue(getObject("FullPath"),null)));} %><% printFooter(out); %>