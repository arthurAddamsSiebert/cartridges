<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- TemplateName : monitor_threads.isml -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-JavaVM",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.JavaVM.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.Threads.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewThreads-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "13");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("monitor_threads.JavaVirtualMachineThreads.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrder", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrder", temp_obj);} %><% } %><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor.PageDisplaysJavaVMThreads.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Main Table -->
<tr>
<!-- Main Content -->
<td>
<table cellpadding="0" cellspacing="0" border="0" class="aldi w100">
<tr>
<td class="table_header s e" nowrap="nowrap"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewThreads-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ThreadGroupName",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrder"),null))),null)%>"><% {out.write(localizeISText("monitor_threads.ThreadGroupName.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header s e" nowrap="nowrap"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewThreads-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ThreadName",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrder"),null))),null)%>"><% {out.write(localizeISText("monitor_threads.ThreadName.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor_threads.Priority.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s e" nowrap="nowrap"><% {out.write(localizeISText("monitor_threads.Daemon.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("monitor_threads.Alive.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("JVM_Threads","Thread",null)) { %><tr>
<td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Thread:ThreadGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Thread:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Thread:Priority"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Thread:isDaemon"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("Thread:isAlive"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table>
</td>
<!-- /Content Area -->
</tr>
</table>
<!-- /Navigation and Content Area -->
<!-- /Main Table --><% printFooter(out); %>