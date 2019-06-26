<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table border="0" cellspacing="0" cellpadding="0" class="w100">
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("ApplicationLevelExclusion",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
			<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.ApplicationLevelExclusion.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="w e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceInclusionsExclusions-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.ApplicationLevelExclusion.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			</td>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("LegalContentMessage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
			<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.LegalContentMessage.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.LegalContentMessage.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			</td>
		<% } %>
	<!-- 	most of the tabs are still "channel aware" instead of "application aware", 
			and hence will have to be changed as soon as the new *Application* pipelines are implemented
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("PromotionBudgetSource",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
			<td class="e n table_tabs_en_background" nowrap="nowrap">Budget Sources</td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="table_tabs_dis">Budget Sources</a></td>
			</td>
		<% } %>
	-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("PromotionBudgetNotification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
			<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.BudgetNotification.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceBudgetNotification-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.BudgetNotification.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			</td>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("MaxCodeRedemption",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
			<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.MaximumCodeRedemption.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<% } else { %>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap">
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceMaxCodeRedemption-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.MaximumCodeRedemption.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			</td>
		<% } %>
		<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
	</tr><% printFooter(out); %>