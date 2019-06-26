<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.Map,
	java.util.HashMap,
	com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
	com.intershop.beehive.core.capi.request.Request,
	com.intershop.component.pmc.capi.rendering.StorefrontEditingContext,
	com.intershop.component.pmc.capi.pagelet.Pagelet" %><% 
	PipelineDictionary dictionary = getPipelineDictionary();
	StorefrontEditingContext sfeContext = (StorefrontEditingContext)getObject("StorefrontEditingContext");
	Pagelet pagelet = (Pagelet)dictionary.get("Pagelet");
	Map<String,Object> parameters = new HashMap<String,Object>();
	parameters.put("Pagelet", pagelet);
	
	if (sfeContext.isShared(pagelet))
	{
		parameters.put("PreferenceDomain", sfeContext.getContentRepositoryDomain());
		parameters.put("LockingDomain", sfeContext.getContentRepositoryDomain());
	}
	else
	{
		parameters.put("PreferenceDomain", pagelet.getDomain());
		parameters.put("LockingDomain", pagelet.getDomain());	
	}
	
	parameters.put("User", sfeContext.getBackofficeUser());
	dictionary.put("parameters", parameters);
%><% {try{executePipeline("ProcessPageletLock-Lookup",((java.util.Map)(getObject("parameters"))),"TempDictKey");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 29.",e);}} %><% {Object temp_obj = (getObject("TempDictKey")); getPipelineDictionary().put("PageletLockInformation", temp_obj);} %><% printFooter(out); %>