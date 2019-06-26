<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderNotificationPreferences_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OrderNotification.text",null)))}, 4); %><% URLPipelineAction action24 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderNotificationPreferences_52-Dispatch",null)))),null));String site24 = null;String serverGroup24 = null;String actionValue24 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderNotificationPreferences_52-Dispatch",null)))),null);if (site24 == null){  site24 = action24.getDomain();  if (site24 == null)  {      site24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup24 == null){  serverGroup24 = action24.getServerGroup();  if (serverGroup24 == null)  {      serverGroup24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderNotificationPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("OrderNotificationWebForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue24, site24, serverGroup24,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("sld_ch_consumer_plugin.OrderNotification.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ORDERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderNotificationSettingsForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_ch_consumer_plugin.DataCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("OrderNotificationSettingsForm:EmailFrom:isError(\"error.required\")")).booleanValue() || ((Boolean) getObject("OrderNotificationSettingsForm:EmailFrom:isError(\"error.email\")")).booleanValue() || ((Boolean) getObject("OrderNotificationSettingsForm:CancelEmailFrom:isError(\"error.required\")")).booleanValue() || ((Boolean) getObject("OrderNotificationSettingsForm:CancelEmailFrom:isError(\"error.email\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideAValidEmailAddress.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("OrderNotificationSettingsForm:EmailSubject:isError(\"error.required\")")).booleanValue() || ((Boolean) getObject("OrderNotificationSettingsForm:CancelEmailSubject:isError(\"error.required\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideASubjectForTheNotificationMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("OrderNotificationSettingsForm:EmailTemplate:isError(\"error.required\")")).booleanValue() || ((Boolean) getObject("OrderNotificationSettingsForm:CancelEmailTemplate:isError(\"error.required\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideATemplateForTheNotificationMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("OrderNotificationPreferences_52.PleaseSpecifyTheAttributesForOrderNotificationEmai.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %> 
<tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ORDERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %> class="js-form-disabled"<% } %>
>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="label" nowrap="nowrap" width="20%"><label class="label"><% {out.write(localizeISText("sld_ch_consumer_plugin.EmailFromAddress.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail">
<input type="text" name="OrderNotificationSettingsForm_EmailFrom" class="inputfield_en" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrderNotificationSettingsForm:EmailFrom:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail" width="30%"></td>
</tr>
<tr>
<td class="label_checkbox" nowrap="nowrap"><label class="label label_checkbox"><% {out.write(localizeISText("OrderNotificationPreferences_52.SendOrderNotificationEmail.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox" colspan="2">
<input type="checkbox" name="OrderNotificationSettingsForm_SendNotification" value="yes" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OrderNotificationSettingsForm:SendNotification:Value"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td> 
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.OrderCancelNotification.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ORDERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %> class="js-form-disabled"<% } %>
>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="label" nowrap="nowrap" width="20%"><label class="label"><% {out.write(localizeISText("sld_ch_consumer_plugin.EmailFromAddress.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail">
<input type="text" name="OrderNotificationSettingsForm_CancelEmailFrom" class="inputfield_en" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrderNotificationSettingsForm:CancelEmailFrom:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail" width="30%"></td>
</tr>
<tr>
<td class="label_checkbox" nowrap="nowrap"><label class="label label_checkbox"><% {out.write(localizeISText("OrderNotificationPreferences_52.SendOrderNotificationEmail.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox" colspan="2">
<input type="checkbox" name="OrderNotificationSettingsForm_CancelSendNotification" value="yes" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OrderNotificationSettingsForm:CancelSendNotification:Value"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td> 
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ORDERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateSettings" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "108");} %><% printFooter(out); %>