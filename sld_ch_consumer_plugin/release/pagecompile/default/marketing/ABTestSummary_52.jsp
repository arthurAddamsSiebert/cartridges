<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/abtest/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/Modules", null, "4");} %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "marketingobjectdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Print","false"),
new TagParameter("ObjectDisplayName","ABTestDisplayName"),
new TagParameter("Object",getObject("ABTest"))}, 8); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSummary_52.Summary.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSummary_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)))),
new TagParameter("id",getObject("ABTest:UUID")),
new TagParameter("text",getObject("ABTestDisplayName"))}, 9); %><!-- Tabs --><% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SelectedTab"),
new TagParameter("value","Summary")}, 12); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/ABTestTabs_52", null, "13");} %><!-- EO Tabs -->
<div class="table_title w e s" style="line-height: 34px"><% {String value = null;try{value=context.getFormattedValue(getObject("ABTestDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTest:ContentApproved"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>&nbsp;-&nbsp;<% processOpenTag(response, pageContext, "abtestapprovalmessage", new TagParameter[] {
new TagParameter("abtest","ABTest")}, 18); %><% } %></div>
<!-- keep content confirmation--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("keepContent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% URLPipelineAction action589 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));String site589 = null;String serverGroup589 = null;String actionValue589 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null);if (site589 == null){  site589 = action589.getDomain();  if (site589 == null)  {      site589 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup589 == null){  serverGroup589 = action589.getServerGroup();  if (serverGroup589 == null)  {      serverGroup589 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("keepContentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue589, site589, serverGroup589,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametervalue4",getObject("CurrentChannel:UUID")),
new TagParameter("parametername1","ABTestGroupUUID"),
new TagParameter("parametervalue2",getObject("ABTest:UUID")),
new TagParameter("subject","ABTestGroup"),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("parametervalue1",getObject("ABTestGroup:UUID")),
new TagParameter("parametername2","ABTestUUID"),
new TagParameter("parametername3","ChannelID"),
new TagParameter("okbtnname","confirmKeepContent"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ABTestSummary_52.KeepContentConfirmation.message",null)))}, 28); %></table><% out.print("</form>"); %></td>
</tr>
</table><% } %><div class="table_title_description w e s"><% {out.write(localizeISText("ABTestSummary_52.TheseStatisticsAreUpdatedEveryTimeTheJobUpdateTrack.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTest:ContentApproved"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% } else { %><% {out.write(localizeISText("ABTestSummary_52.FinishTheABTestByClickingSetContentOnline.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %> 
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ABTestGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><%-- Section: Overview --%><h2 class="section s e w opened" onclick="$('div[selector=Overview]').toggle( 0, function() {$('div[selector=Overview]').is(':visible') ? $(this).addClass('opened') : $(this).removeClass('opened') }.bind(this) )"><% {out.write(localizeISText("ABTestSummary_52.Overview.section",null,null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div selector="Overview" class="section" style="display: block">
<table class="abtest_zebra_table s">
<tr>
<th class="table_header s w e left"><% {out.write(localizeISText("ABTestSummary_52.Statistics.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("ABTest:ControlGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("ABTest:ControlGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% while (loop("ABTestGroups","TestGroup",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ABTest:ControlGroup:UUID"),null).equals(context.getFormattedValue(getObject("TestGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("TestGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("TestGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% } %><% } %><th class="table_header s e right" style="width: 15%"><% {out.write(localizeISText("ABTestSummary_52.Total.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><%-- Test Object Viewed (max 1 per Session) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","count"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent")}, 76); %><%-- Test Object Applied --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectAppliedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","count"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectAppliedEvent")}, 83); %><%-- Test Object Clicked --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","count"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectClickedEvent")}, 91); %><%-- Orders --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","OrderCreatedEvent"),
new TagParameter("togglefor","SummaryCurrency")}, 99); %><% while (loop("Currencies","Currency","Counter")) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","total"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","SummaryCurrency"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","OrderCreatedEvent")}, 107); %><% } %><%-- Last Statistic Update --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","lastupdate1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","time"),
new TagParameter("summarygroup","lastupdate"),
new TagParameter("type","timestamp"),
new TagParameter("statisticskey1","null")}, 117); %></table>
</div><%-- Section: Total Values --%><h2 class="section s e w" onclick="$('div[selector=TotalValues]').toggle( 0, function() {$('div[selector=TotalValues]').is(':visible') ? $(this).addClass('opened') : $(this).removeClass('opened') }.bind(this) )"><% {out.write(localizeISText("ABTestSummary_52.TotalValues.section",null,null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div selector="TotalValues" class="section">
<table class="abtest_zebra_table">
<tr>
<th class="table_header s e w left"><% {out.write(localizeISText("ABTestSummary_52.Statistics.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("ABTest:ControlGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("ABTest:ControlGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% while (loop("ABTestGroups","TestGroup",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ABTest:ControlGroup:UUID"),null).equals(context.getFormattedValue(getObject("TestGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("TestGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("TestGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% } %><% } %><th class=" table_header s e right" style="width: 15%"><% {out.write(localizeISText("ABTestSummary_52.Total.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><%-- Sessions (Participants) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","ABTestSessionCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","count"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","ABTestSessionCreatedEvent")}, 148); %><%-- Shopping Carts created --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","ShoppingCartEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","count"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","ShoppingCartEvent")}, 155); %><%-- Checkouts --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","CheckoutEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","count"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","CheckoutEvent")}, 162); %><%-- Orders --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","OrderCreatedEvent"),
new TagParameter("togglefor","TotalValuesOrders")}, 169); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","total"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","TotalValuesOrders"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","OrderCreatedEvent")}, 177); %><% } %><%-- Items Ordered --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","ItemsOrderedEvent1"),
new TagParameter("calculator1","sum"),
new TagParameter("summarygroup","total"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","ItemsOrderedEvent"),
new TagParameter("togglefor","TotalValuesItems")}, 187); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","ItemsOrderedEvent1"),
new TagParameter("calculator1","sum"),
new TagParameter("summarygroup","total"),
new TagParameter("selector","TotalValuesItems"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","ItemsOrderedEvent")}, 195); %><% } %><%-- Orders Value --%><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","OrderCreatedEvent2"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","total"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","TotalValuesItems"),
new TagParameter("type","currency"),
new TagParameter("statisticskey1","OrderCreatedEvent")}, 206); %><% } %></table>
</div><%-- Section: Conversion --%><h2 class="section s e w" onclick="$('div[selector=Conversion]').toggle( 0, function() {$('div[selector=Conversion]').is(':visible') ? $(this).addClass('opened') : $(this).removeClass('opened') }.bind(this) )"><% {out.write(localizeISText("ABTestSummary_52.Conversion.section",null,null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div selector="Conversion" class="section">
<table class="abtest_zebra_table">
<tr>
<th class="table_header s w e left"><% {out.write(localizeISText("ABTestSummary_52.Statistics.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("ABTest:ControlGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {229}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("ABTest:ControlGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {229}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% while (loop("ABTestGroups","TestGroup",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ABTest:ControlGroup:UUID"),null).equals(context.getFormattedValue(getObject("TestGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("TestGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {234}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("TestGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {234}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% } %><% } %><th class="table_header s e right" style="width: 15%"><% {out.write(localizeISText("ABTestSummary_52.Total.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><%-- Test Object Viewed to Test Object Clicked --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1.TestObjectClickedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-TestObjectClickedEvent")}, 242); %><%-- Test Object Viewed to Test Object Applied --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1.TestObjectAppliedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-TestObjectAppliedEvent")}, 250); %><%-- Test Object Viewed to Shopping Cart created --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1.ShoppingCartEvent1"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-ShoppingCartEvent")}, 257); %><%-- Test Object Clicked to Shopping Cart created --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1.ShoppingCartEvent1"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectClickedEvent-ShoppingCartEvent")}, 265); %><%-- Test Object Viewed to Checkout --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1.CheckoutEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-CheckoutEvent")}, 273); %><%-- Test Object Clicked to Checkout --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1.CheckoutEvent1"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectClickedEvent-CheckoutEvent")}, 281); %><%-- Test Object Applied to Checkout --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectAppliedEvent1.CheckoutEvent1"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-CheckoutEvent")}, 289); %><%-- Test Object Viewed to Orders --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-OrderCreatedEvent"),
new TagParameter("togglefor","ConversionTestObjectViewed")}, 296); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","ConversionTestObjectViewed"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-OrderCreatedEvent")}, 304); %><% } %><%-- Test Object Clicked to Orders --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectClickedEvent-OrderCreatedEvent"),
new TagParameter("togglefor","ConversionTestObjectClicked")}, 315); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","ConversionTestObjectClicked"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectClickedEvent-OrderCreatedEvent")}, 323); %><% } %><%-- Test Object Applied to Orders --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectAppliedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-OrderCreatedEvent"),
new TagParameter("togglefor","ConversionTestObjectApplied")}, 334); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectAppliedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","conversion"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","ConversionTestObjectApplied"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-OrderCreatedEvent")}, 342); %><% } %><%-- Test Object Viewed to Items Ordered --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectViewedEvent1.ItemsOrderedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-ItemsOrderedEvent"),
new TagParameter("togglefor","ConversionTestObjectOrdered")}, 352); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectViewedEvent1.ItemsOrderedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("selector","ConversionTestObjectOrdered"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectViewedEvent-ItemsOrderedEvent")}, 360); %><% } %><%-- Test Object Clicked to Items Ordered --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectClickedEvent1.ItemsOrderedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectClickedEvent-ItemsOrderedEvent"),
new TagParameter("togglefor","ConversionTestObjectClickedItemsOrdered")}, 371); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectClickedEvent1.ItemsOrderedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","ConversionTestObjectClickedItemsOrdered"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectClickedEvent-ItemsOrderedEvent")}, 379); %><% } %><%-- Test Object Applied to Items Ordered --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectAppliedEvent1.ItemsOrderedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-ItemsOrderedEvent"),
new TagParameter("togglefor","ConversionTestObjectAppliedItemsOrdered")}, 390); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectAppliedEvent1.ItemsOrderedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("selector","ConversionTestObjectAppliedItemsOrdered"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("type","integer"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-ItemsOrderedEvent")}, 398); %><% } %><%-- Test Object Viewed to Order Value --%><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectViewedEvent1.OrderCreatedEvent2"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","ConversionTestObjectAppliedItemsOrdered"),
new TagParameter("type","currency"),
new TagParameter("statisticskey1","TestObjectViewedEvent-OrderCreatedEvent")}, 409); %><% } %><%-- Test Object Clicked to Order Value --%><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectClickedEvent1.OrderCreatedEvent2"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","ConversionTestObjectAppliedItemsOrdered"),
new TagParameter("type","currency"),
new TagParameter("statisticskey1","TestObjectClickedEvent-OrderCreatedEvent")}, 422); %><% } %><%-- Test Object Applied to Order Value --%><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectAppliedEvent1.OrderCreatedEvent2"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","conversion"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","ConversionTestObjectAppliedItemsOrdered"),
new TagParameter("type","currency"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-OrderCreatedEvent")}, 434); %><% } %> 
</table>
</div><%-- Section: Average Values --%><h2 class="section s e w" onclick="$('div[selector=AverageValues]').toggle( 0, function() {$('div[selector=AverageValues]').is(':visible') ? $(this).addClass('opened') : $(this).removeClass('opened') }.bind(this) )"><% {out.write(localizeISText("ABTestSummary_52.AverageValues.section",null,null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div selector="AverageValues" class="section">
<table class="abtest_zebra_table">
<tr>
<th class="table_header s e w left"><% {out.write(localizeISText("ABTestSummary_52.Statistics.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("ABTest:ControlGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {456}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("ABTest:ControlGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {456}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% while (loop("ABTestGroups","TestGroup",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ABTest:ControlGroup:UUID"),null).equals(context.getFormattedValue(getObject("TestGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",459,e);}if (_boolean_result) { %><th class="table_header s e right" style="width: 15%"><% {String value = null;try{value=context.getFormattedValue(getObject("TestGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {461}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("TestGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {461}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</th><% } %><% } %><th class="table_header s e right" style="width: 15%"><% {out.write(localizeISText("ABTestSummary_52.Total.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1.ABTestSessionCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","count"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","count"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","ABTestSessionCreatedEvent"),
new TagParameter("statisticskey1","TestObjectViewedEvent")}, 468); %><%-- Ratio: Orders per Session (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","OrderCreatedEvent1.ABTestSessionCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","count"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","ABTestSessionCreatedEvent"),
new TagParameter("statisticskey1","OrderCreatedEvent")}, 477); %><%-- Ratio: Orders per Checkout (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","OrderCreatedEvent1.CheckoutEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","count"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","CheckoutEvent"),
new TagParameter("statisticskey1","OrderCreatedEvent")}, 486); %><%-- Orders that viewed the Test Object (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1_OrderCreatedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","countandsum"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectViewedEvent-OrderCreatedEvent"),
new TagParameter("togglefor","AverageValuesTestObjectVisible")}, 495); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1_OrderCreatedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","countandsum"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesTestObjectVisible"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectViewedEvent-OrderCreatedEvent")}, 505); %><%-- ... their average Value --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectViewedEvent1_OrderCreatedEvent2.TestObjectViewedEvent1_OrderCreatedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","average"),
new TagParameter("calculator2","ttest"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesTestObjectVisible"),
new TagParameter("type","currency"),
new TagParameter("statisticskey2","TestObjectViewedEvent-OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectViewedEvent-OrderCreatedEvent")}, 516); %><% } %><%-- Orders that applied the Test Object (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectAppliedEvent1_OrderCreatedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","countandsum"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-OrderCreatedEvent"),
new TagParameter("togglefor","AverageValuesOrdersApplied")}, 528); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectAppliedEvent1_OrderCreatedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","countandsum"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesOrdersApplied"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-OrderCreatedEvent")}, 538); %><%-- ... their average Value --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectAppliedEvent1_OrderCreatedEvent2.TestObjectAppliedEvent1_OrderCreatedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","average"),
new TagParameter("calculator2","ttest"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesOrdersApplied"),
new TagParameter("type","currency"),
new TagParameter("statisticskey2","TestObjectAppliedEvent-OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-OrderCreatedEvent")}, 549); %><% } %><%-- Orders that clicked the Test Object (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1_OrderCreatedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","countandsum"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectClickedEvent-OrderCreatedEvent"),
new TagParameter("togglefor","AverageValuesOrdersClicked")}, 562); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1_OrderCreatedEvent1.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","countandsum"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesOrdersClicked"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectClickedEvent-OrderCreatedEvent")}, 572); %><%-- ... their average Value --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","TestObjectClickedEvent1_OrderCreatedEvent2.TestObjectClickedEvent1_OrderCreatedEvent1"),
new TagParameter("calculator1","ttest"),
new TagParameter("summarygroup","average"),
new TagParameter("calculator2","ttest"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesOrdersClicked"),
new TagParameter("type","currency"),
new TagParameter("statisticskey2","TestObjectClickedEvent-OrderCreatedEvent"),
new TagParameter("statisticskey1","TestObjectClickedEvent-OrderCreatedEvent")}, 583); %><% } %><%-- Checkouts that viewed the Test Object (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectViewedEvent1_CheckoutEvent1.CheckoutEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","count"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","CheckoutEvent"),
new TagParameter("statisticskey1","TestObjectViewedEvent-CheckoutEvent")}, 596); %><%-- Checkouts that applied the Test Object (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectAppliedEvent1_CheckoutEvent1.CheckoutEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","count"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","CheckoutEvent"),
new TagParameter("statisticskey1","TestObjectAppliedEvent-CheckoutEvent")}, 605); %><%-- Checkouts that clicked the Test Object (%) --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("displaynamekey","TestObjectClickedEvent1_CheckoutEvent1.CheckoutEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","chisqu"),
new TagParameter("summarygroup","averageinpercent"),
new TagParameter("calculator2","count"),
new TagParameter("type","percent"),
new TagParameter("statisticskey2","CheckoutEvent"),
new TagParameter("statisticskey1","TestObjectClickedEvent-CheckoutEvent")}, 615); %><%-- Items per Order --%><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","ItemsOrderedEvent1.OrderCreatedEvent1"),
new TagParameter("calculator1","sum"),
new TagParameter("summarygroup","average"),
new TagParameter("calculator2","countandsum"),
new TagParameter("type","decimal"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","ItemsOrderedEvent"),
new TagParameter("togglefor","AverageValuesItemsPerOrder")}, 625); %><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","ItemsOrderedEvent1.OrderCreatedEvent1"),
new TagParameter("calculator1","sum"),
new TagParameter("summarygroup","average"),
new TagParameter("calculator2","countandsum"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesItemsPerOrder"),
new TagParameter("type","decimal"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","ItemsOrderedEvent")}, 635); %><% } %><%-- Average Order Value --%><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","OrderCreatedEvent2.OrderCreatedEvent1"),
new TagParameter("isimportant","true"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","average"),
new TagParameter("calculator2","countandsum"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesItemsPerOrder"),
new TagParameter("type","currency"),
new TagParameter("statisticskey2","OrderCreatedEvent"),
new TagParameter("statisticskey1","OrderCreatedEvent")}, 648); %><% } %><%-- Average Item Value --%><% while (loop("Currencies","Currency",null)) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("statisticmarker1","Sum"),
new TagParameter("displaynamekey","OrderCreatedEvent2.ItemsOrderedEvent1"),
new TagParameter("calculator1","countandsum"),
new TagParameter("summarygroup","average"),
new TagParameter("calculator2","sum"),
new TagParameter("currency",getObject("Currency")),
new TagParameter("selector","AverageValuesItemsPerOrder"),
new TagParameter("type","currency"),
new TagParameter("statisticskey2","ItemsOrderedEvent"),
new TagParameter("statisticskey1","OrderCreatedEvent"),
new TagParameter("statisticmarker2","Sum")}, 662); %><% } %></table>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",676,e);}if (_boolean_result) { %><div class="section" style="display:block">
<table>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTest:ContentApproved"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",680,e);}if (_boolean_result) { %><% } else { %><td class="w e s"></td>
<td class="table_detail e s right" style="width: 15%"><% URLPipelineAction action590 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));String site590 = null;String serverGroup590 = null;String actionValue590 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null);if (site590 == null){  site590 = action590.getDomain();  if (site590 == null)  {      site590 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup590 == null){  serverGroup590 = action590.getServerGroup();  if (serverGroup590 == null)  {      serverGroup590 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("TestSummaryForm2");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue590, site590, serverGroup590,true)); %><input type="hidden" name="ABTestGroupUUID" value="<%=context.getFormattedValue(getObject("ABTest:ControlGroup:UUID"),null)%>"/>
<input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSummary_52.KeepContent.button",null)),null)%>" name="keepContent" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ABTest:Status"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",688,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% out.print("</form>"); %></td><% while (loop("ABTestGroups","TestGroup",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ABTest:ControlGroup:UUID"),null).equals(context.getFormattedValue(getObject("TestGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",695,e);}if (_boolean_result) { %><td class="table_detail e s right" style="width: 15%"><% URLPipelineAction action591 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));String site591 = null;String serverGroup591 = null;String actionValue591 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null);if (site591 == null){  site591 = action591.getDomain();  if (site591 == null)  {      site591 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup591 == null){  serverGroup591 = action591.getServerGroup();  if (serverGroup591 == null)  {      serverGroup591 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestSetContentOnline_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("TestSummaryForm3");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue591, site591, serverGroup591,true)); %><input type="hidden" name="ABTestGroupUUID" value="<%=context.getFormattedValue(getObject("TestGroup:UUID"),null)%>"/>
<input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestSummary_52.SetContentOnline.button",null)),null)%>" name="setContentOnline"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ABTest:Status"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",700,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% out.print("</form>"); %></td><% } %><% } %><td class="e s" style="width: 15%"></td><% } %></tr>
</table>
</div><% } %><% } else { %><div class="table_detail w e s"><% {out.write(localizeISText("ABTestSummary_52.ThereAreCurrentlyNoTestGroupsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "719");} %><% printFooter(out); %>