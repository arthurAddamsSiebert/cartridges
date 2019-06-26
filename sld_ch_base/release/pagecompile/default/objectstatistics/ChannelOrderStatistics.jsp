<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 5); %><% context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","attribute2","text","link","hline"},null); %><% {Object temp_obj = (context.getFormattedValue("ViewOrderList_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-OrderSearch",null)); getPipelineDictionary().put("SearchPipeline", temp_obj);} %><!-- start page navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewOrderList_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Start",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.Orders.text",null)))}, 19); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.OrderOverview.text",null)))}, 20); %><!-- end page navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="table_title aldi"><% {out.write(localizeISText("ChannelOrderStatistics.OrderOverview.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectStatisticsGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Refresh"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>'", 5000)
</script>
<tr>
<td colspan="5" class="table_title_description w e s" ><br/><% {out.write(localizeISText("ChannelOrderStatistics.Updating.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr> 
<% } else { %><tr>
<td colspan="5" class="w e s"><% URLPipelineAction action33 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-Start",null)))),null));String site33 = null;String serverGroup33 = null;String actionValue33 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-Start",null)))),null);if (site33 == null){  site33 = action33.getDomain();  if (site33 == null)  {      site33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup33 == null){  serverGroup33 = action33.getServerGroup();  if (serverGroup33 == null)  {      serverGroup33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue33, site33, serverGroup33,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ChannelOrderStatistics.SelectCurrency.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td>
<select name="SelectCurrencyMnemonic" class="dropdown inputfield_en" valign="middle"><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOrderStatistics.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
</td>
</tr>
<tr> 
<td valign="top" width="45%" class="w">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.TodaysOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"LastDayOrderCount\",Currency:Mnemonic)")),
new TagParameter("attribute2",getObject("ObjectStatisticsGroup:getMoney(\"LastDayOrderSum\",Currency:Mnemonic)"))}, 84); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.LastWeeksOrdersPast7Days.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"LastWeekOrderCount\",Currency:Mnemonic)")),
new TagParameter("attribute2",getObject("ObjectStatisticsGroup:getMoney(\"LastWeekOrderSum\",Currency:Mnemonic)"))}, 87); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.QuarterToDate.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"LastQuarterOrderCount\",Currency:Mnemonic)")),
new TagParameter("attribute2",getObject("ObjectStatisticsGroup:getMoney(\"LastQuarterOrderSum\",Currency:Mnemonic)"))}, 90); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.YearToDate.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"LastYearOrderCount\",Currency:Mnemonic)")),
new TagParameter("attribute2",getObject("ObjectStatisticsGroup:getMoney(\"LastYearOrderSum\",Currency:Mnemonic)"))}, 93); %></table>
</td>
<td width="2%">
</td>
<td width="1" class="overview_vertical_line">
<img width="1" height="100%" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/>
</td>
<td width="2%">
</td>
<td valign="top" class="e">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("3",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.NewOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_New\",Currency:Mnemonic)"))}, 113); %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("8",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.InProgressOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_InProgress\",Currency:Mnemonic)"))}, 115); %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("6",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.CanceledOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_Canceled\",Currency:Mnemonic)"))}, 117); %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("9",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.CanceledAndExportedOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_CanceledAndExported\",Currency:Mnemonic)"))}, 119); %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("10",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.NotDeliverableOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_NotDeliverable\",Currency:Mnemonic)"))}, 121); %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("11",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.DeliveredOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_Delivered\",Currency:Mnemonic)"))}, 123); %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("12",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.ReturnedOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_Returned\",Currency:Mnemonic)"))}, 125); %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderStates",null),context.getFormattedValue("2",null))).addURLParameter(context.getFormattedValue("AllPaymentStates",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOrderStatistics.PendingOrders.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"OrderCount_Pending\",Currency:Mnemonic)"))}, 127); %> 
</table>
</td>
</tr> 
<tr>
<td colspan="5" class="table_title_description aldi" align="right"><% {out.write(localizeISText("ChannelOrderStatistics.TheInformationOnThisPageWasLastUpdatedOn.table_title_description",null,null,context.getFormattedValue(context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),new Integer(DATE_SHORT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),new Integer(DATE_TIME)),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %><% } else { %><tr>
<td colspan="5" class="table_title_description w e s"><% {out.write(localizeISText("ChannelOrderStatistics.TheInformationOnThisPageIsCreatedByAScheduledJob.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("Refresh")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% URLPipelineAction action34 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-StartUpdate",null)))),null));String site34 = null;String serverGroup34 = null;String actionValue34 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-StartUpdate",null)))),null);if (site34 == null){  site34 = action34.getDomain();  if (site34 == null)  {      site34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup34 == null){  serverGroup34 = action34.getServerGroup();  if (serverGroup34 == null)  {      serverGroup34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOrderStatistics-StartUpdate",null)))),null));out.print("\"");out.print(" name=\"");out.print("refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue34, site34, serverGroup34,true)); %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="GroupName" value="Order"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOrderStatistics.Update.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td> 
</tr>
</table><% out.print("</form>"); %><% } %> 
<% printFooter(out); %>