<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/Modules_52.isml", null, "3");} %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderList_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("OrderProcessingOverview_52.Orders.text",null)))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("OrderProcessingOverview_52.OrderImportExport.text",null)))}, 8); %><!-- EO Page Navigator -->
<!-- Main Content --><% URLPipelineAction action631 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-DispatchExport",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));String site631 = null;String serverGroup631 = null;String actionValue631 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-DispatchExport",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null);if (site631 == null){  site631 = action631.getDomain();  if (site631 == null)  {      site631 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup631 == null){  serverGroup631 = action631.getServerGroup();  if (serverGroup631 == null)  {      serverGroup631 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-DispatchExport",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("OrderExportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue631, site631, serverGroup631,true)); %><input type="hidden" name="WorkingForm" value="OrderExportForm" /> 
<table class="w100" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title w100 w e n s" nowrap="nowrap"><% {out.write(localizeISText("OrderProcessingOverview_52.OrderExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WorkingForm"),null).equals(context.getFormattedValue("OrderExportForm",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Clipboard:ObjectUUIDsCount"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 21); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 23); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","mde")}, 25); %><% }} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("run")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("missingRunSelection")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","nse")}, 29); %><% } %><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("OrderProcessingOverview_52.ManageOrderExportActionScenariosCreateMo.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "impexscenariolist", new TagParameter[] {
new TagParameter("formname","OrderExportForm"),
new TagParameter("scenarios",getObject("ExportOrderConfigs")),
new TagParameter("type","Export"),
new TagParameter("clipboard",getObject("Clipboard")),
new TagParameter("serviceconfigurationrepository",getObject("ServiceConfigurationRepository"))}, 41); %><% } else { %><% processOpenTag(response, pageContext, "impexscenariolist", new TagParameter[] {
new TagParameter("readonly","true"),
new TagParameter("formname","OrderExportForm"),
new TagParameter("scenarios",getObject("ExportOrderConfigs")),
new TagParameter("type","Export"),
new TagParameter("clipboard",getObject("Clipboard")),
new TagParameter("serviceconfigurationrepository",getObject("ServiceConfigurationRepository"))}, 43); %><% } %><% out.print("</form>"); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% URLPipelineAction action632 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-DispatchStatusImport",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));String site632 = null;String serverGroup632 = null;String actionValue632 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-DispatchStatusImport",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null);if (site632 == null){  site632 = action632.getDomain();  if (site632 == null)  {      site632 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup632 == null){  serverGroup632 = action632.getServerGroup();  if (serverGroup632 == null)  {      serverGroup632 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-DispatchStatusImport",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("OrderStatusImportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue632, site632, serverGroup632,true)); %><input type="hidden" name="WorkingForm" value="OrderStatusImportForm" /> 
<table class="w100" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title w100 w e n s" nowrap="nowrap"><% {out.write(localizeISText("OrderProcessingOverview_52.OrderStatusImport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WorkingForm"),null).equals(context.getFormattedValue("OrderStatusImportForm",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Clipboard:ObjectUUIDsCount"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 58); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 60); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","mde")}, 62); %><% }} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("run")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("missingRunSelection")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","nse")}, 66); %><% } %><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("OrderProcessingOverview_52.ManageOrderStatusImportActionScenariosCr.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "impexscenariolist", new TagParameter[] {
new TagParameter("formname","OrderStatusImportForm"),
new TagParameter("scenarios",getObject("OrderStatusImports")),
new TagParameter("type","StatusImport"),
new TagParameter("clipboard",getObject("Clipboard")),
new TagParameter("serviceconfigurationrepository",getObject("ServiceConfigurationRepository"))}, 78); %><% } else { %><% processOpenTag(response, pageContext, "impexscenariolist", new TagParameter[] {
new TagParameter("readonly","true"),
new TagParameter("formname","OrderStatusImportForm"),
new TagParameter("scenarios",getObject("OrderStatusImports")),
new TagParameter("type","StatusImport"),
new TagParameter("clipboard",getObject("Clipboard")),
new TagParameter("serviceconfigurationrepository",getObject("ServiceConfigurationRepository"))}, 80); %><% } %> 
<% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrderImpexSection", null, "85");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderProcessing_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>'", 10000)
</script><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>