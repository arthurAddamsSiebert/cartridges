<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-JDBC",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.JDBC.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.DataSources.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewJDBCDataSourceInformation-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "12");}
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
<td class="table_title aldi"><% {out.write(localizeISText("monitor_jdbc_data_source_information.JDBCDataSources.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
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
<td class="table_title_description w e"><% {out.write(localizeISText("monitor.PageDisplaysJDBCDataSourceInformation.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" class="aldi w100">
<tr><td colspan="3" class="table_subtitle s"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSource:DataSourceName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td></tr>
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr><td colspan="3" class="table_header n s"><% {out.write(localizeISText("monitor_jdbc_data_source_information.GeneralDataSourceInformation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_data_source_information.ImplementingClass.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:Class:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor.Description.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor.ServerName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:ServerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_data_source_information.PortNumber.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:PortNumber"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_data_source_information.NetworkProtocol.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:NetworkProtocol"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_data_source_information.DatabaseName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:DatabaseName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_data_source_information.DatabaseConnectURL.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:getURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_data_source_information.UserName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:User"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor.LoginTimeout.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:LoginTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("monitor_jdbc_data_source_information.DriverType.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("DataSourcePool:DriverType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourcePoolConfigs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><tr><td colspan="3" class="table_header n s"><% {out.write(localizeISText("monitor_jdbc_data_source_information.OracleUCPConfiguration.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% while (loop("DataSourcePoolConfigs:EntrySet","config",null)) { %><tr>
<td class="table_detail3" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("config:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("config:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourcePoolStats"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><tr><td colspan="3" class="table_header n s"><% {out.write(localizeISText("monitor_jdbc_data_source_information.OracleUCPConnectionPoolStatistics.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% while (loop("DataSourcePoolStats:EntrySet","stats",null)) { %><tr>
<td class="table_detail3" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("stats:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("stats:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourcePoolFCFStats"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><tr><td colspan="3" class="table_header n s"><% {out.write(localizeISText("monitor_jdbc_data_source_information.OracleUCP_FCF.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% while (loop("DataSourcePoolFCFStats:EntrySet","stats",null)) { %><tr>
<td class="table_detail3" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("stats:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("stats:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DataSourceServerConnectionConfig"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %><tr><td colspan="3" class="table_header n s"><% {out.write(localizeISText("monitor_jdbc_data_source_information.ServerConnectionConfig.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% while (loop("DataSourceServerConnectionConfig:EntrySet","stats",null)) { %><tr>
<td class="table_detail3" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("stats:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("stats:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";out.write(value);} %>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr><% } %><% } %></table>
</td>
</tr>
</table><% printFooter(out); %>