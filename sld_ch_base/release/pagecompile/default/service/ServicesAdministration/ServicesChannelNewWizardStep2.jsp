<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Working Area -->

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewChannelServiceNewWizard-UpdateGlobalValues",null))))),
new TagParameter("wizard","true"),
new TagParameter("id","NewServiceConfiguration2"),
new TagParameter("text",localizeText(context.getFormattedValue("ServicesChannelNewWizardStep2.Step2GeneralInformation.text",null)))}, 5); %>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="table_title n e w s">
			<% {out.write(localizeISText("ServicesChannelNewWizardStep2.CreateServiceGeneralInformation.table_title",null,null,encodeString(context.getFormattedValue(getObject("ServiceDefinitionTitle"),null)),null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
		<tr>
			<td class="error_box e w s">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%">
							<% {out.write(localizeISText("ServicesChannelNewWizardStep2.PleaseFillOutAllRequiredFieldsAndClickOnNext.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("DublicateID"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("dublicateID"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
		<tr>
			<td class="error_box e w s">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%">
							<% {out.write(localizeISText("ServicesChannelNewWizardStep2.ServiceConfigurationIdAlreadyExists.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>

	<tr>
		<td class="table_title_description e w s">
			<% {out.write(localizeISText("ServicesChannelNewWizardStep2.Step2Of4NextStepConfigurationSettingsHer.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/>
			<% {out.write(localizeISText("ServicesChannelNewWizardStep2.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>

<% URLPipelineAction action65 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null));String site65 = null;String serverGroup65 = null;String actionValue65 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null);if (site65 == null){  site65 = action65.getDomain();  if (site65 == null)  {      site65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup65 == null){  serverGroup65 = action65.getServerGroup();  if (serverGroup65 == null)  {      serverGroup65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("AddNewWizzardFormStep2:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue65, site65, serverGroup65,true)); %>
	
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesNewWizardStep2_inc", null, "54");} %>
	
	<table width="100%" class="w e n s" border="0" cellSpacing="0" cellPadding="0">
		<tr>
			<td  colspan="2">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input name="step1_update" class="button" type="submit" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep2.Previous.button",null)),null)%>"/>
									</td>
								</tr>
							</table>
						</td>
						<td align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="hidden" name="DefaultButton" value="step2_validate"/>
										<input name="step2_validate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep2.Next.button",null)),null)%>&nbsp;&gt;&gt;"/>
									</td>
									<td class="button">
										<input name="cancel" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep2.Cancel.button",null)),null)%>"/>
										
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