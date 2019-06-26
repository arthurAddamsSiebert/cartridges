<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Tabs -->

<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="0" class="w100">
		<tr>
			<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.ContactInfo.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.Branding.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>			
				<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.Payment.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } %>
			<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
		</tr>
	</table>
<% } else { %>
	<table border="0" cellspacing="0" cellpadding="0" class="w100">
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
				<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } else { %>
				<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue(getObject("Organization:TypeCode"),null))).addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("OrganizationUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>"><% {out.write(localizeISText("OrganizationTabs_32.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Contact Info",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
				<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.ContactInfo.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } else { %>
	 		    <td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationContactInfo_32-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>"><% {out.write(localizeISText("OrganizationTabs_32.ContactInfo.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Attributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
				<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } else { %>
				<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationCustomAttributes_32-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>"><% {out.write(localizeISText("OrganizationTabs_32.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Branding",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
				<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.Branding.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } else { %>
				<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>"><% {out.write(localizeISText("OrganizationTabs_32.Branding.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>			
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Payment",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
					<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("OrganizationTabs_32.Payment.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationPayment_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>"><% {out.write(localizeISText("OrganizationTabs_32.Payment.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				<% } %>
			<% } %>
			<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrganizationTabs_32", null, "48");} %>
			<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
		</tr>
	</table>
<% } %>
<!-- EO Tabs --><% printFooter(out); %>