<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.DatabaseStatus.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("monitor.EnfinityClusterDatabaseStatus.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("monitor_database_status_error.ErrorDuringExecutionOfTheStoredProcedure.table_title_description",null,null,"&lt;IS_HOME&gt;/bin/DBMonitorGrants.sql",null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorEnumeration")))).booleanValue() && ((Boolean) (hasLoopElements("ErrorEnumeration") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("monitor_database_status_error.AdditionalInformationIsAvailable.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
</tr>
<tr>
<td class="table_detail w e s"><% while (loop("ErrorEnumeration","column",null)) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("column"),null)),null)%><br/><% } %></td>
</tr><% } %></table>
<!-- /Main Content --><% printFooter(out); %>