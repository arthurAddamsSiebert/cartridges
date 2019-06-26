<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Monitoring",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>
			<td class="e n s table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("ServiceMonitoringTabs.Monitoring.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-ServiceStatusMonitoring",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerFilter",null),context.getFormattedValue(getObject("TargetServerFilter"),null))).addURLParameter(context.getFormattedValue("ServiceID",null),context.getFormattedValue(getObject("ServiceID"),null)).addURLParameter(context.getFormattedValue("Period",null),context.getFormattedValue(getObject("Period"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("ServiceMonitoringTabs.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Maintenance",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
			<td class="e n s table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("ServiceMonitoringTabs.Maintenance.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-MaintenanceSiteStatusList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerFilter",null),context.getFormattedValue(getObject("TargetServerFilter"),null))).addURLParameter(context.getFormattedValue("ServiceID",null),context.getFormattedValue(getObject("ServiceID"),null)).addURLParameter(context.getFormattedValue("Period",null),context.getFormattedValue(getObject("Period"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue("0",null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("ServiceMonitoringTabs.Maintenance.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
		<% } %>
		<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
	</tr>
</table>
<!-- EO Tabs --><% printFooter(out); %>