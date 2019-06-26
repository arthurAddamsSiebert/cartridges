<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-JDBC",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.JDBC.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.Drivers.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewJDBCInformation-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "12");}
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
<td class="table_title aldi"><% {out.write(localizeISText("monitor_jdbc_information.JDBCDrivers.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor.PageListsJDBCDrivers.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" class="s w e w100"><% while (loop("Driver",null,null)) { %><tr><td colspan="3" class="table_header s n"><% {String value = null;try{value=context.getFormattedValue(getObject("Driver"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td></tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_information.DriverName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Driver"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_information.MajorVersion.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Driver:MajorVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_information.MinorVersion.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Driver:MinorVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_information.Compliant.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Driver:jdbcCompliant"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor.LoginTimeout.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DriverTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr><% } %></table>
</td>
</tr>
</table>
<!-- /Main Content --><% printFooter(out); %>