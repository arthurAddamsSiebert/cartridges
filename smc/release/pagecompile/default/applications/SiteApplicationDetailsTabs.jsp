<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<!-- Tabs -->
<table style="border-collapse:collapse">
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
			<td class="w e n s table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("SiteApplicationDetailsTabs.General.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="w e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-General",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("SiteApplicationDetailsTabs.General.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
			</td>
		<% } %>

		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("CartridgeStructure",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
			<td class="e n s table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("SiteApplicationDetailsTabs.CartridgeStructure.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-CartridgeStructure",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("SiteApplicationDetailsTabs.CartridgeStructure.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
			</td>
		<% } %>

		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("RESTAPI",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
			<td class="e n s table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("SiteApplicationDetailsTabs.RESTAPI.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-RESTAPI",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))).addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("SiteApplicationDetailsTabs.RESTAPI.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
			</td>
		<% } %>
		<td width="100%" class="s">&nbsp;</td>
	</tr>
</table>
<!-- EO Tabs -->
<% printFooter(out); %>