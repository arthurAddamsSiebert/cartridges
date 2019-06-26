<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Working Area -->

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewChannelServiceNewWizard-UpdateSharingRule",null))))),
new TagParameter("wizard","true"),
new TagParameter("id","NewServiceConfiguration4"),
new TagParameter("text",localizeText(context.getFormattedValue("ServicesChannelNewWizardStep4.Step4SharingRuleSelection.text",null)))}, 5); %>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="table_title n e w s">
			<% {out.write(localizeISText("ServicesChannelNewWizardStep4.CreateService0SharingRuleSelection.table_title",null,null,encodeString(context.getFormattedValue(getObject("ServiceDefinitionTitle"),null)),null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
		<tr>
			<td class="error_box e w s">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%">
							<% {out.write(localizeISText("ServicesChannelNewWizardStep4.YouHaveNotSelectedASharingRule.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	
	<tr>
		<td class="table_title_description e w s">
			<% {out.write(localizeISText("ServicesChannelNewWizardStep4.Step4Of4HereYouCanSetSharingRules.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>


<% URLPipelineAction action71 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null));String site71 = null;String serverGroup71 = null;String actionValue71 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null);if (site71 == null){  site71 = action71.getDomain();  if (site71 == null)  {      site71 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup71 == null){  serverGroup71 = action71.getServerGroup();  if (serverGroup71 == null)  {      serverGroup71 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("AddNewWizzardFormStep4:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue71, site71, serverGroup71,true)); %>
	
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesNewWizardStep4_inc", null, "39");} %>
	
	<table border="0" cellspacing="0" cellpadding="0" width="100%" class="n e w s">
		<tr>
			<td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input name="step3_update" class="button" type="submit" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep4.Previous.button",null)),null)%>"/>
									</td>
								</tr>
							</table>
						</td>
						<td align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="hidden" name="DefaultButton" value="step4_validate"/>
										<input name="step4_validate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep4.Finish.button",null)),null)%>"/>
									</td>
									<td class="button">
										<input name="cancel" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep4.Cancel.button",null)),null)%>"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>