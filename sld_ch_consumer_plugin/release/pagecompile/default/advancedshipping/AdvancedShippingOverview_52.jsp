<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 4); %>

<!-- Page Navigator -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewOrderList_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Start",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AdvancedShippingOverview_52.Orders.text",null)))}, 7); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingOverview_52-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ShippingConfiguration.text",null)))}, 8); %>
<!-- EO Page Navigator -->

<!--  start page navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td colspan="5" class="overview_title"><% {out.write(localizeISText("sld_ch_consumer_plugin.ShippingConfiguration.overview_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td colspan="5" class="table_title_description">
			<% {out.write(localizeISText("AdvancedShippingOverview_52.UseTheLinksBelowToNavigateAndConfigureShippingForT.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;
		</td>
	</tr>
	<tr>		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
			<td width="50%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
						<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingMethodList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("sld_ch_consumer_plugin.ShippingMethods.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
					</tr>
					<tr>
						<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("AdvancedShippingOverview_52.CreateEditAndManageShippingMethods.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
					</tr>
				</table>
			</td>
			<% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 37); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %>
			<td width="50%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
						<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("AdvancedShippingOverview_52.DestinationRegions.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
					</tr>
					<tr>
						<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("AdvancedShippingOverview_52.CreateEditAndManageDestinationRegionsWhichCanBeUsed.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
					</tr>
				</table>
			</td>
			<% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 53); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %>
			<td width="50%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
						<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClassList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("AdvancedShippingOverview_52.FreightClasses.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
					</tr>
					<tr>
						<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("AdvancedShippingOverview_52.CreateEditAndManageFreightClassesAndAssociatedElig.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;
						</td>
					</tr>
					<tr>
						<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
					</tr>
				</table>
			</td>
			<% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 70); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %>
			<td width="50%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
						<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRuleList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("sld_ch_consumer_plugin.ShippingRules.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
					</tr>
					<tr>
						<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("AdvancedShippingOverview_52.CreateEditAndManageShippingRulesToHandleExceptions.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
					</tr>
				</table>
			</td>
			
			<% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 87); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %>
			<td width="50%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
						<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("AdvancedShippingOverview_52.ExcludedDeliveryDates.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
					</tr>
					<tr>
						<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("AdvancedShippingOverview_52.ExcludedDeliveryDates.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
					</tr>
				</table>
			</td>
			
			<% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 104); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %>
			<td width="50%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
						<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingImpex_52-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("AdvancedShippingOverview_52.ImportExport.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<tr>
						<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("AdvancedShippingOverview_52.ImportAndExportShippingObjectsOfThisChannel.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
					</tr>
				</table>
			</td>
			<% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 120); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><td width="50%">&nbsp;</td><% } %>
	</tr>
</table><% printFooter(out); %>