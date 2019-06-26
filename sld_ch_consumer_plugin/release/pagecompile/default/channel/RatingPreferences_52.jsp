<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 4); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRatingPreferences_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ProductRatingsAndReviews.text",null)))}, 5); %>

<% URLPipelineAction action17 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRatingPreferences_52-Dispatch",null)))),null));String site17 = null;String serverGroup17 = null;String actionValue17 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRatingPreferences_52-Dispatch",null)))),null);if (site17 == null){  site17 = action17.getDomain();  if (site17 == null)  {      site17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup17 == null){  serverGroup17 = action17.getServerGroup();  if (serverGroup17 == null)  {      serverGroup17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRatingPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("RatingPreferencesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue17, site17, serverGroup17,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("sld_ch_consumer_plugin.ProductRatingsAndReviews.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<tr>
			<td class="table_title_description w e s">
				<% {out.write(localizeISText("RatingPreferences_52.DefineHowProductsRatingsAreDisplayedInTheStorefront.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<tr>
			<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
		</tr>
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
					<tr>
						<td class="table_detail" nowrap="nowrap"><b><% {out.write(localizeISText("RatingPreferences_52.StorefrontVisibilityOfReviewerNames.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
					</tr>
					<tr>
						<td>
							<table cellspacing="0" cellpadding="0" border="0">
								<tr>
									<td class="input_radio">
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ShowReviewerName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowReviewerName"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_Visible" value="true" checked="checked"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_Visible" value="true" checked="checked" disabled="disabled"/>
											<% } %>
										<% } else { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_Visible" value="true" />
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_Visible" value="true" disabled="disabled"/>
											<% } %>
										<% } %>
									</td>
									<td class="label_radio_text"><label class="label label_radio_text label_light" for="RatingPreferencesForm_ShowReviewerName_Visible"><% {out.write(localizeISText("sld_ch_consumer_plugin.ReviewerNameVisible.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
								</tr>
								<tr>
									<td class="input_radio">
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ShowReviewerName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowReviewerName"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_NotVisible" value="false" checked="checked"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_NotVisible" value="false" checked="checked" disabled="disabled"/>
											<% } %>
										<% } else { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_NotVisible" value="false"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_NotVisible" value="false" disabled="disabled"/>
											<% } %>
										<% } %>
									</td>
									<td class="label_radio_text"><label class="label label_radio_text label_light" for="RatingPreferencesForm_ShowReviewerName_NotVisible"><% {out.write(localizeISText("sld_ch_consumer_plugin.ReviewerNameNotVisible.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
								</tr>
								<tr>
									<td class="input_radio">
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ShowReviewerName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowReviewerName"),null).equals(context.getFormattedValue("userDecision",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_UserDecision" value="userDecision" checked="checked"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_UserDecision" value="userDecision" checked="checked" disabled="disabled"/>
											<% } %>
										<% } else { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_UserDecision" value="userDecision"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_ShowReviewerName" id="RatingPreferencesForm_ShowReviewerName_UserDecision" value="userDecision" disabled="disabled"/>
											<% } %>
										<% } %>
									</td>
									<td class="label_radio_text"><label class="label label_radio_text label_light" for="RatingPreferencesForm_ShowReviewerName_UserDecision"><% {out.write(localizeISText("sld_ch_consumer_plugin.ReviewerCanDecideToShowTheName.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td class="table_detail" nowrap="nowrap"><b><% {out.write(localizeISText("RatingPreferences_52.ReviewApproval.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
					</tr>
					<tr>
						<td>
							<table cellspacing="0" cellpadding="0" border="0">
								<tr>
									<td class="input_radio">
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("RequireReviewApproval"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RequireReviewApproval"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_AfterApproval" value="true" checked="checked"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_AfterApproval" value="true" checked="checked" disabled="disabled"/>
											<% } %>
										<% } else { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_AfterApproval" value="true"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_AfterApproval" value="true" disabled="disabled"/>
											<% } %>
										<% } %>
									</td>
									<td class="label_radio_text"><label class="label label_radio_text label_light" for="RatingPreferencesForm_RequireReviewApproval_AfterApproval"><% {out.write(localizeISText("sld_ch_consumer_plugin.ReviewsAreVisibleAfterBusinessAdministratorApprova.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
								</tr>
								<tr>
									<td class="input_radio">
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("RequireReviewApproval"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RequireReviewApproval"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_Directly" value="false" checked="checked"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_Directly" value="false" checked="checked" disabled="disabled"/>
											<% } %>
										<% } else { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_Directly" value="false"/>
											<% } else { %>
												<input type="radio" name="RatingPreferencesForm_RequireReviewApproval" id="RatingPreferencesForm_RequireReviewApproval_Directly" value="false" disabled="disabled"/>
											<% } %>
										<% } %>
									</td>
									<td class="label_radio_text"><label class="label label_radio_text label_light" for="RatingPreferencesForm_RequireReviewApproval_Directly"><% {out.write(localizeISText("sld_ch_consumer_plugin.ReviewsAreVisibleDirectly.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>
					<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				<% } %>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "150");} %><% printFooter(out); %>