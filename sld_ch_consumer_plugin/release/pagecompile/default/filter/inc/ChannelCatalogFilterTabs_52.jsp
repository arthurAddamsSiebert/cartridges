<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0" class="w100">
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedTab"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
			<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("filter.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("filter.Catalogs.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("filter.Exclusions.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("filter.TargetGroup.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
				<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("filter.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } else { %>
				<td class="w e n s table_tabs_dis_background" nowrap="nowrap">
					<a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogFilterUUID",null),context.getFormattedValue(getObject("CatalogFilter:UUID"),null))),null)%>"><% {out.write(localizeISText("filter.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
				</td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Catalogs",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
				<td class="e n table_tabs_en_background" nowrap="nowrap">
					<% {out.write(localizeISText("filter.Catalogs.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			<% } else { %>
				<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterCatalogs-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogFilterUUID",null),context.getFormattedValue(getObject("CatalogFilter:UUID"),null))),null)%>"><% {out.write(localizeISText("filter.Catalogs.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Exceptions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
				<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("filter.Exclusions.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } else { %>
				<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterCatalogsExceptions-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogFilterUUID",null),context.getFormattedValue(getObject("CatalogFilter:UUID"),null))),null)%>"><% {out.write(localizeISText("filter.Exclusions.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("TargetGroup",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
				<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("filter.TargetGroup.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } else { %>
				<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroups_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogFilterUUID",null),context.getFormattedValue(getObject("CatalogFilter:UUID"),null))),null)%>"><% {out.write(localizeISText("filter.TargetGroup.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
		<% } %>
		<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ChannelCatalogFilterTabs_52", null, "35");} %>
		<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
	</tr>
</table>
<!-- EO Tabs -->
<% printFooter(out); %>