<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="application/x-gzip;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("application/x-gzip"); %>
<%@page import="java.io.File" %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentSyndication:JobConfiguration:JobCondition:NextValidDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<% 
	    //calculate a caching period until the next runtime date of the syndication, if applicable
	   java.util.Date currentDate = new java.util.Date();  
	   java.util.Date nextDate = (java.util.Date)getPipelineDictionary().get("CurrentSyndication:JobConfiguration:JobCondition:NextValidDate");
	   long diff = nextDate.getTime() - currentDate.getTime();
	   
	   if(diff > 0)
	   {
	       long hours = (diff/1000)/3600;  
	       long minutes = ((diff - (hours*3600*1000))/1000) / 60;
	       
	       getPipelineDictionary().put("CacheHour", hours);
	       getPipelineDictionary().put("CacheMinutes", minutes);   
	   }	   
	 %>
	 <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CacheHour")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CacheMinutes")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
		 <% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=((Number)(getObject("CacheMinutes"))).longValue();if (minute <0) minute=0;long hour=((Number)(getObject("CacheHour"))).longValue();if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {20}",e);}} %>
		 <% {NamingMgr.getManager(PageCacheMgr.class).getKeywords().add("SyndicationFeeds");} %>
	 <% } %>
<% } %>
<% {Object temp_obj = (getObject("SiteMapXMLFile:Name")); getPipelineDictionary().put("SiteMapXMLFileName", temp_obj);} %>
<%
	   if (getPipelineDictionary().getFormValue("SiteMapXMLFile", false) != null)
	   {
			throw new SecurityException("Parameter SiteMapXMLFile was injected as form parameter.");
	   }
	   
	   String fileNoStr = (String)getPipelineDictionary().get("SiteMapFileNo");
	   String fileTypeStr = (String)getPipelineDictionary().get("FilePattern");
	   if(fileNoStr != null)
	   {
	   
	       try
	       {
	           int fileNo = Integer.valueOf(fileNoStr);
	           File siteMapXMLFile = (File)getPipelineDictionary().get("SiteMapXMLFile");
	           String fileNamePattern = (String)getPipelineDictionary().get("CurrentSyndication:SiteMapFileName");
	           if(fileNamePattern == null)
	           {
	               fileNamePattern = (String)getPipelineDictionary().get("CurrentSyndication:FileName");
	           }
	           
	           //create a file with <filePattern>-<fileNo>
	           String siteMapFileName = String.format(fileNamePattern, fileTypeStr, Integer.valueOf(fileNoStr));
	           if(!siteMapFileName.endsWith(".gz"))
	           {
	               siteMapFileName +=".gz";
	           }
	           
	           siteMapXMLFile = new File(siteMapXMLFile.getParent(), siteMapFileName);
	           if(siteMapXMLFile.exists())
	           {
		           getPipelineDictionary().put("SiteMapXMLFile", siteMapXMLFile);
		           getPipelineDictionary().put("SiteMapXMLFileName", siteMapXMLFile.getName());
		       }
	       }
	       catch(NumberFormatException e)
	       {	       
	       }
	   }
 %>
<% {response.setHeader("Content-Disposition", "attachment; filename=\"" + context.getFormattedValue(getObject("SiteMapXMLFileName"),null) + "\"");processBinaryOutputFile((com.intershop.beehive.core.capi.request.ServletResponse)response,new File(context.getFormattedValue(getObject("SiteMapXMLFile"),null)));} %><% printFooter(out); %>