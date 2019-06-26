<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/Modules", null, "2");} %><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 5); %><!-- start page navigator --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_locking_breadcrumb", null, "8");} %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="overview_title"><% {out.write(localizeISText("monitor_locking_main.Locking.overview_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="5" class="table_title_description"><% {out.write(localizeISText("monitor_locking_main.InformationAboutTheLockingFramework.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingResources-Named",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("monitor.NamedResources.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("monitor_locking_main.PageDisplaysNamedResourceInformation.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 33); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingResources-Instance",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("monitor.InstanceResources.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("monitor_locking_main.PageDisplaysInstanceResourceInformation.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 50); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Start",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("monitor.Processes.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("monitor_locking_main.PageDisplaysIS7ProcessInformation.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 67); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockContentions-Start",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("monitor.LockingConflicts.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("monitor_locking_main.PageDisplaysResourceAcquisitionProblems.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 84); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><td></td><% } %></tr>
</table><% printFooter(out); %>