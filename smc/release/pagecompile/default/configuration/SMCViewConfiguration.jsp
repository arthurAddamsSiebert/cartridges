<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><table cellpadding="0" cellspacing="0" border="0" class="w100">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("SMCViewConfiguration.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-ApplicationServer",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("SMCViewConfiguration.ApplicationServer.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("SMCViewConfiguration.Configuration.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedScope")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedScope"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewConfiguration-Select",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null)).addURLParameter(context.getFormattedValue("TargetParameterName1",null),context.getFormattedValue("SelectedScope",null)).addURLParameter(context.getFormattedValue("TargetParameterValue1",null),context.getFormattedValue(getObject("SelectedScope"),null)).addURLParameter(context.getFormattedValue("TargetParameterName2",null),context.getFormattedValue("SelectedDomainName",null)).addURLParameter(context.getFormattedValue("TargetParameterValue2",null),context.getFormattedValue(getObject("SelectedDomainName"),null)).addURLParameter(context.getFormattedValue("TargetParameterName3",null),context.getFormattedValue("SelectedKeyPrefix",null)).addURLParameter(context.getFormattedValue("TargetParameterValue3",null),context.getFormattedValue(getObject("SelectedKeyPrefix"),null)).addURLParameter(context.getFormattedValue("TargetParameterName4",null),context.getFormattedValue("SelectedAppName",null)).addURLParameter(context.getFormattedValue("TargetParameterValue4",null),context.getFormattedValue(getObject("SelectedAppName"),null))),null), null, null, "12");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td><% } else { %><td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewConfiguration-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "14");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td><% } %></tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"configuration/inc/ContextSelection", null, "21");} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td>
</tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("SMCViewConfiguration.ApplicationServerConfigurationValues.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SMCViewConfiguration.PageDisplaysConfigurationProperties.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<!-- Main Content -->
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationInformation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConfigurationInformation") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><table width="100%" cellpadding="0" cellspacing="0" border="0" class="w e">
<tr>
<td class="table_header s e" nowrap="nowrap" width="400px"><% {out.write(localizeISText("SMCViewConfiguration.Key.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("SMCViewConfiguration.ConfigurationInformation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 44); %><% while (loop("ConfigurationInformation","ConfigInfo",null)) { %><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 46); %><tr>
<td class="table_detail e s" valign="top"
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
style="background-color:#EDEDED;"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigInfo:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail s" valign="top"
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>
style="background-color:#EDEDED;"
<% } %>
>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail w n s" valign="top" width="65px"><% {out.write(localizeISText("SMCViewConfiguration.Value.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail n s e"><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigInfo:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% while (loop("ConfigInfo:ValueInformation","valueInfo",null)) { %><tr>
<td class="table_detail w n" valign="top" width="65px"><% {out.write(localizeISText("SMCViewConfiguration.Source.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail n e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("valueInfo:Source"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail w s" valign="top" width="65px"><% {out.write(localizeISText("SMCViewConfiguration.RawValue.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("valueInfo:RawValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% } %></table>
</td>
</tr><% } %></table><% } else { %><table width="100%" cellpadding="0" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail" valign="top" colspan="2"><% {out.write(localizeISText("SMCViewConfiguration.NoConfigurationValuesFound.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } else { %><table width="100%" cellpadding="0" cellspacing="0" border="0" class="w e s">
<tr>
<td class="table_detail" valign="top" colspan="2"><% {out.write(localizeISText("SMCViewConfiguration.PleaseTakeYourSelection.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %></td>
</tr>
</table><% printFooter(out); %>