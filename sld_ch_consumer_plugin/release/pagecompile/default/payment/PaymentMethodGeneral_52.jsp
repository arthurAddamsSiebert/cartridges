<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodGeneral_52.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethod_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PaymentConfigurationUUID",null),context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("PaymentConfiguration:UUID")),
new TagParameter("text",getObject("PaymentConfiguration:ID"))}, 3); %><!-- Tabs --><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment/PaymentMethodTabs_52", null, "7");} %><!-- Titel -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e"><% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_title_description w e s n"><% {out.write(localizeISText("PaymentMethodGeneral_52.ClickBackToListToGoBackToTheList.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action214 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethod_52-Dispatch",null)))),null));String site214 = null;String serverGroup214 = null;String actionValue214 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethod_52-Dispatch",null)))),null);if (site214 == null){  site214 = action214.getDomain();  if (site214 == null)  {      site214 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup214 == null){  serverGroup214 = action214.getServerGroup();  if (serverGroup214 == null)  {      serverGroup214 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethod_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("paymentMethodGeneralForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue214, site214, serverGroup214,true)); %><input name="webform_id" type="hidden" value="paymentMethodGeneralForm"/>
<input name="ChannelID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="PaymentConfigurationUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<!-- Name and Description -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodGeneral_52.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td width="100%" class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodGeneral_52.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% processOpenTag(response, pageContext, "paymentservicedisplayname", new TagParameter[] {
new TagParameter("paymentservice",getObject("PaymentConfiguration:PaymentService"))}, 40); %>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServiceConfiguration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodGeneral_52.ConfigurationType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ServiceConfiguration:isRunnable")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>(<% {out.write(localizeISText("PaymentMethodGeneral_52.Disabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %></td>
</tr><% } %><tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodGeneral_52.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PaymentConfiguration:PaymentService:Capabilities:BODescriptionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PaymentConfiguration:PaymentService:Capabilities:BODescriptionTemplate"),null), null, "55");} %><% } %>
&nbsp;
</td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodGeneral_52.Default.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="table_detail_checkbox" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><input type="checkbox" name="ServiceIsDefault" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentConfiguration:isDefault"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
<% } else { %><input type="checkbox" name="ServiceIsDefault" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentConfiguration:isDefault"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/>&nbsp;
<% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("PaymentConfiguration:PaymentService:Capabilities:PIICreationSupported"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PaymentConfiguration:PaymentService:Capabilities:OpenTender"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodGeneral_52.AllowSaveForLaterPurchase.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="table_detail_checkbox" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><input type="checkbox" name="PiiSaveAllowed" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentConfiguration:isPiiSaveAllowed"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
<% } else { %><input type="checkbox" name="PiiSaveAllowed" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentConfiguration:isPiiSaveAllowed"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/>&nbsp;
<% } %></td>
</tr><% } %><tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><tr>
<td class="right w e s">
<table border="0" cellspacing="4" cellpadding="0" align="right">
<tr>
<td class="button">
<input class="button" type="submit" name="setGeneral" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodGeneral_52.Apply.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
<!-- Secondary Buttons --><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "106");} %><!-- EO Secondary Buttons -->
<!-- EO Working Area --><% printFooter(out); %>