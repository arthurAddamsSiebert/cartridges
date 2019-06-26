<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodApplications_52.Applications.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethod_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PaymentConfigurationUUID",null),context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("PaymentConfiguration:UUID")),
new TagParameter("text",getObject("PaymentConfiguration:ID"))}, 3); %><!-- Tabs --><% {Object temp_obj = ("Applications"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment/PaymentMethodTabs_52", null, "7");} %><!-- Titel -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("enableApplications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","mae"),
new TagParameter("message",localizeText(context.getFormattedValue("PaymentMethodApplications_52.Enable.message",null)))}, 19); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("disableApplications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","mae"),
new TagParameter("message",localizeText(context.getFormattedValue("PaymentMethodApplications_52.Disable.message",null)))}, 21); %><% }} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PaymentMethodApplications_52.HereYouCanEnableDisableThePaymentMethodF.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% URLPipelineAction action215 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethodApplications_52-Dispatch",null)))),null));String site215 = null;String serverGroup215 = null;String actionValue215 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethodApplications_52-Dispatch",null)))),null);if (site215 == null){  site215 = action215.getDomain();  if (site215 == null)  {      site215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup215 == null){  serverGroup215 = action215.getServerGroup();  if (serverGroup215 == null)  {      serverGroup215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethodApplications_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("paymentMethodApplicationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue215, site215, serverGroup215,true)); %><input name="webform_id" type="hidden" value="paymentMethodApplicationForm"/>
<input name="ChannelID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="PaymentConfigurationUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Applications") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("key0","Application"),
new TagParameter("value7",getObject("EnabledApps")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","SelectedItemsName"),
new TagParameter("value4","ObjectUUID"),
new TagParameter("value3","SelectedObjectUUID"),
new TagParameter("key4","AvailableItemsName"),
new TagParameter("key7","EnabledApps"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 41); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ApplicationColumns.isml"),
new TagParameter("configuration","applistpaymentmethod"),
new TagParameter("datatemplate","grid/ApplicationData.isml"),
new TagParameter("pageable",getObject("Applications")),
new TagParameter("id","AppListPaymentMethod"),
new TagParameter("pageablename","App"),
new TagParameter("params",getObject("params"))}, 51); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><tr>
<td class="right w e s">
<table border="0" cellspacing="4" cellpadding="0" align="right">
<tr>
<td class="button">
<input class="button" type="submit" name="enableApplications" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodApplications_52.Enable.button",null)),null)%>"/>
<input class="button" type="submit" name="disableApplications" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodApplications_52.Disable.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("PaymentMethodApplications_52.CurrentlyThereAreNoApplicationsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "84");} %><!-- EO Secondary Buttons -->
<!-- EO Working Area --><% printFooter(out); %>