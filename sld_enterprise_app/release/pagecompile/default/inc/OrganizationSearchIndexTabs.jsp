<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
		<% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
	<% } %>
	<tr>
	    
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchIndex:SearchIndexFeature:SearchEngineID")))).booleanValue() && ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:SearchEngineID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(context.getFormattedValue("searchindex/inc/",null) + context.getFormattedValue(getObject("SearchIndex:Configuration:FeatureID"),null) + context.getFormattedValue("_Tabs_Organization",null),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>
				
				<% {Object temp_obj = (context.getFormattedValue("searchindex/inc/",null) + context.getFormattedValue(getObject("SearchIndex:Configuration:FeatureID"),null) + context.getFormattedValue("_Tabs_Organization",null)); getPipelineDictionary().put("SearchIndexTabsIncludeTemplate", temp_obj);} %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(context.getFormattedValue("searchindex/inc/",null) + context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:SearchEngineID"),null) + context.getFormattedValue("_Tabs_Organization",null),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
								
				<% {Object temp_obj = (context.getFormattedValue("searchindex/inc/",null) + context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:SearchEngineID"),null) + context.getFormattedValue("_Tabs_Organization",null)); getPipelineDictionary().put("SearchIndexTabsIncludeTemplate", temp_obj);} %>
			<% } else { %>
			 	
			<% }} %>
		<% } else { %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(context.getFormattedValue("searchindex/inc/",null) + context.getFormattedValue(getObject("SearchIndex:Configuration:FeatureID"),null) + context.getFormattedValue("_Tabs_Organization",null),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
				
				<% {Object temp_obj = (context.getFormattedValue("searchindex/inc/",null) + context.getFormattedValue(getObject("SearchIndex:Configuration:FeatureID"),null) + context.getFormattedValue("_Tabs_Organization",null)); getPipelineDictionary().put("SearchIndexTabsIncludeTemplate", temp_obj);} %>
			<% } else { %>
			 	
			<% } %>
		<% } %>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
			<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("DepartmentRole.General.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchIndex")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
				
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndexTabsIncludeTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SearchIndexTabsIncludeTemplate"),null), null, "35");} %>
				<% } else { %>
					<td class="e n s table_tabs_dis_background" nowrap="nowrap">	
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Attributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.IndexedAttributes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
					</td>	
				<% } %>
			<% } %>
			
			<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrganizationSearchIndexTabs", null, "46");} %>
			
		<% } else { %>
		
			
			<td class="w e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-General",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("DepartmentRole.General.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			</td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndexTabsIncludeTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>
				<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SearchIndexTabsIncludeTemplate"),null), null, "55");} %>
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Attributes",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>
					<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.IndexedAttributes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="e n s table_tabs_dis_background" nowrap="nowrap">	
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Attributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.IndexedAttributes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
					</td>	
				<% } %>

			<% } %>
			
			<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrganizationSearchIndexTabs", null, "70");} %>
		<% } %>
		<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
	</tr>
</table>
<% printFooter(out); %>