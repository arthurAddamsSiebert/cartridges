<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Working Area -->

<!-- Main Content -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",localizeText(context.getFormattedValue("PromotionPreferenceValidityExpiration.ValidityExpiration.text1",null))),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceValidityExpiration-Edit",null))))),
new TagParameter("id","PromotionPreferences"),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("PromotionPreferenceValidityExpiration.PromotionPreferences.text",null)),null) + context.getFormattedValue(": ",null))}, 6); %>

<!-- Tabs -->
<% {Object temp_obj = ("PromotionValidityExpiration"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionPreferencesTabsInc", null, "13");} %>
<!-- EO Tabs -->

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title w e s"><% {out.write(localizeISText("PromotionPreferenceValidityExpiration.ValidityExpiration.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td class="table_title_description w e s">
			<% {out.write(localizeISText("PromotionPreferenceValidityExpiration.HereYouCanDefineTheValidityExpirationBehavior.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>

<% URLPipelineAction action276 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceValidityExpiration-Dispatch",null)))),null));String site276 = null;String serverGroup276 = null;String actionValue276 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceValidityExpiration-Dispatch",null)))),null);if (site276 == null){  site276 = action276.getDomain();  if (site276 == null)  {      site276 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup276 == null){  serverGroup276 = action276.getServerGroup();  if (serverGroup276 == null)  {      serverGroup276 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceValidityExpiration-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Form:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue276, site276, serverGroup276,true)); %>	
	
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr><td class="w e" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
					
					<tr>
						<td class="label_radio label_top w" nowrap="nowrap" width="100">
							<label class="label label_radio"><% {out.write(localizeISText("PromotionPreferenceValidityExpiration.ValidityExpiration.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
						</td>
						<td class="e">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr class="top">
									<td class="input_radio">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
											<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:ValidityExpiration:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="validity_expiration_session"
												value="0"
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Form:ValidityExpiration:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>checked="checked"<% } %>
											/>
										<% } else { %>
											<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:ValidityExpiration:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="validity_expiration_session"
												value="0"
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Form:ValidityExpiration:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>checked="checked"<% } %>
												disabled="disabled"
											/>
										<% } %>
									</td>
									<td class="label_radio_text">
										<label class="label label_radio_text label_light" for="validity_expiration_session"><% {out.write(localizeISText("PromotionPreferenceValidityExpiration.Session.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
									</td>
									<td class="table_title_description">
										<% {out.write(localizeISText("PromotionPreferenceValidityExpiration.IfCustomersAddPromotionsToTheirCarts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</td>
								</tr>
								<tr class="top">
									<td class="input_radio">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
											<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:ValidityExpiration:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="validity_expiration_time"
												value="1"
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Form:ValidityExpiration:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>checked="checked"<% } %>
											/>
										<% } else { %>
											<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:ValidityExpiration:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="validity_expiration_time"
												value="1"
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Form:ValidityExpiration:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>checked="checked"<% } %>
												disabled="disabled"
											/>
										<% } %>
									</td>
									<td class="label_radio_text">
										<label class="label label_radio_text label_light" for="validity_expiration_time"><% {out.write(localizeISText("PromotionPreferenceValidityExpiration.Time.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
									</td>
									<td class="table_title_description">
										<% {out.write(localizeISText("PromotionPreferenceValidityExpiration.PromotionsWillBeAutomaticallyRemoved.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr><td class="w e s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
				</table>
			</td>
		</tr>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
			<tr>
				<td align="right" class="w e s" colspan="2">
					<table cellpadding="0" cellspacing="4" border="0">
						<tr>
							<td class="button">
								<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionPreferenceValidityExpiration.Apply.button",null)),null)%>" class="button" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		
	</table>

<% out.print("</form>"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "111");} %>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>