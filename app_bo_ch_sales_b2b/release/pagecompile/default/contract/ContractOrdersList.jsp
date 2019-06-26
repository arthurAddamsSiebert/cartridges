<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"progress/Modules", null, "3");} %><% {Object temp_obj = (getObject("Contract:CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("Contract-",null) + context.getFormattedValue(getObject("Contract:ID"),null)); getPipelineDictionary().put("ContractDetailsBreadcrumbID", temp_obj);} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("contract.ContractTabsInc.orders.title",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContractID",null),context.getFormattedValue(getObject("Contract:ID"),null))))),
new TagParameter("id",getObject("ContractDetailsBreadcrumbID")),
new TagParameter("text",getObject("Contract:Name"))}, 8); %><!-- Tabs --><% {Object temp_obj = ("Orders"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/ContractTabsInc", null, "13");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("Contract:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="TargetRevenue"><% {out.write(localizeISText("contract.order.revenue.target.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail" colspan="2" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("Contract:SalesTarget:Target"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="CurrentRevenue"><% {out.write(localizeISText("contract.order.revenue.current.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail" colspan="2" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("Contract:SalesTarget:Actual"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label" for="currentProgress"><% {out.write(localizeISText("contract.order.revenue.progress.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="table_detail" width="25%"><% {Object temp_obj = ("0"); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget:Actual")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() <((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue()))),"0")); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } else { %><% {Object temp_obj = ("100"); getPipelineDictionary().put("ContractProgress", temp_obj);} %><% } %><% } %><% processOpenTag(response, pageContext, "progress", new TagParameter[] {
new TagParameter("value",getObject("ContractProgress"))}, 52); %></td>
<td class="table_detail" width="75%">
&nbsp;
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="RevenueExceedance"><% {out.write(localizeISText("contract.order.revenue.exceedance.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail" colspan="2" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget:Actual")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() >((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() * ((Number) new Double(100)).doubleValue() -((Number) new Double(100)).doubleValue()))),"0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%
<% } else { %><% } %><% } %></td>
</tr>
<tr>
<td colspan="2">
<img width="1" height="6" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif">
</td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ContractOrderBOsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><% URLPipelineAction action3 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-Dispatch",null)))),null));String site3 = null;String serverGroup3 = null;String actionValue3 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-Dispatch",null)))),null);if (site3 == null){  site3 = action3.getDomain();  if (site3 == null)  {      site3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup3 == null){  serverGroup3 = action3.getServerGroup();  if (serverGroup3 == null)  {      serverGroup3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContractOrdersForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue3, site3, serverGroup3,true)); %><input type="hidden" name="ContractID" value="<%=context.getFormattedValue(getObject("Contract:ID"),null)%>"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentChannelPermissionMap"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap")),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("Contract")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","Contract"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","params")}, 84); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ContractOrdersColumns.isml"),
new TagParameter("configuration","contractorderslist"),
new TagParameter("datatemplate","grid/ContractOrdersData.isml"),
new TagParameter("pageable",getObject("ContractOrderBOsPageable")),
new TagParameter("id","ContractsGrid"),
new TagParameter("pageablename","ContractOrderBOs"),
new TagParameter("params",getObject("params"))}, 91); %><% out.print("</form>"); %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "103");} %><% printFooter(out); %>