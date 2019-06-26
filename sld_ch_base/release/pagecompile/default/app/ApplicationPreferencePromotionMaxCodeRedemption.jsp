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
new TagParameter("text1",localizeText(context.getFormattedValue("ApplicationPreferencePromotionMaxCodeRedemption.MaximumCodeRedemption.text1",null))),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceMaxCodeRedemption-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))))),
new TagParameter("id","PromotionPreferences"),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionMaxCodeRedemption.PromotionPreferences.text",null)),null) + context.getFormattedValue(":",null))}, 5); %>
<!-- Tabs -->
<% {Object temp_obj = ("MaxCodeRedemption"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionApplicationPreferencesTabsInc", null, "8");} %>
<!-- EO Tabs -->

<% URLPipelineAction action339 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceMaxCodeRedemption-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));String site339 = null;String serverGroup339 = null;String actionValue339 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceMaxCodeRedemption-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null);if (site339 == null){  site339 = action339.getDomain();  if (site339 == null)  {      site339 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup339 == null){  serverGroup339 = action339.getServerGroup();  if (serverGroup339 == null)  {      serverGroup339 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceMaxCodeRedemption-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("MaxCodeRedemption:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue339, site339, serverGroup339,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title w e s" colspan="4"><% {out.write(localizeISText("ApplicationPreferencePromotionMaxCodeRedemption.MaximumCodeRedemption.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		</tr>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MaxCodeRedemption:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
			<tr>
				<td class="w e s">
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
						<tr>
							<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error" width="100%">
								<% {out.write(localizeISText("ApplicationPreferencePromotionMaxCodeRedemption.DataCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MaxCodeRedemption:Limit:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("ApplicationPreferencePromotionMaxCodeRedemption.TheValueMustBeIntegerAndBetween.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<tr>
			<td class="table_title_description w e s" colspan="4">
				<% {out.write(localizeISText("ApplicationPreferencePromotionMaxCodeRedemption.PleaseSpecifyTheMaximumPossibleNumberOfCodes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<tr>
			<td class="w e s" colspan="4">
				<table border="0" cellspacing="0" cellpadding="5">
					<tr>
						<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
					</tr>
					<tr>
						<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MaxCodeRedemption:Limit:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap" width="20%">
							<% {out.write(localizeISText("ApplicationPreferencePromotionMaxCodeRedemption.MaximumCodeRedemption.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
						</td>
						<td class="table_detail">
							<input type="text" class="inputfield_en" size="10" 
									name="<% {String value = null;try{value=context.getFormattedValue(getObject("MaxCodeRedemption:Limit:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("MaxCodeRedemption:Limit:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						</td>
						<td class="table_detail" width="30%"/>
					</tr>
					<tr>
						<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="right" colspan="4" class="w e s">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<!-- <input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> -->
							<input type="hidden" name="LocaleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionMaxCodeRedemption.Apply.button",null)),null)%>" class="button" />
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>