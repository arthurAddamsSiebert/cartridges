<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","PageletUUID"),
new TagParameter("value0",getObject("Pagelet:UUID")),
new TagParameter("mapname","Params")}, 2); %><% {try{executePipeline("ViewPageletProperties-IsCopyPossible",((java.util.Map)(getObject("Params"))),"IsCopyPossible");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 3.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsCopyPossible:Result"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletProperties-Copy",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("CopyOfPrefix",null),context.getFormattedValue(getObject("CopyOfPrefix"),null)).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("GetPipeline",null),context.getFormattedValue(getObject("GetPipeline"),null))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/copy_pagelet.gif" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Pagelet:Page")).booleanValue() && ((Boolean) getObject("Pagelet:Template")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>alt="Copy Page Templace" title="Copy Page Template"<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>alt="Copy Page" title="Copy Page"<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Template"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>alt="Copy Component Template" title="Copy Component Template"<% } else { %>alt="Copy Component" title="Copy Component"<% }}} %> border="0" /></a>&nbsp;<% } %><% printFooter(out); %>