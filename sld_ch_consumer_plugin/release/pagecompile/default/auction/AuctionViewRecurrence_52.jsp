<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Recurrence.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionRecurrence_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("text",getObject("Auction:DisplayName"))}, 4); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extension.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("AuctionViewRecurrence_52.BidHistory.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(32))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionEvaluation_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("AuctionViewRecurrence_52.Evaluation.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("AuctionViewRecurrence_52.AuctionRecurrence.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxRepeatingCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewRecurrence_52.ThisAuctionWasNotRecurred.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewRecurrence_52.ThisAuctionWasRecurred0Times.table_detail",null,null,context.getFormattedValue(getObject("Auction:Definition:MaxRepeatingCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewRecurrence_52.RecurrenceInterval.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Hour",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewRecurrence_52.TheRecurringIntervalWasSetTo0HourS.table_detail",null,null,context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriod"),null),null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Day",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewRecurrence_52.TheRecurringIntervalWasSetTo0DayS.table_detail",null,null,context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriod"),null),null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Week",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewRecurrence_52.TheRecurringIntervalWasSetTo0WeekS.table_detail",null,null,context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriod"),null),null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Month",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewRecurrence_52.TheRecurringIntervalWasSetTo0MonthS.table_detail",null,null,context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriod"),null),null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewRecurrence_52.TheRecurringIntervalCouldNotBeDetermined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% }}}} %></tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxRepeatingCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:ParentID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("AuctionViewRecurrence_52.RecurredAuctions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Auction:ChildAuctions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% URLPipelineAction action179 = new URLPipelineAction("");String site179 = null;String serverGroup179 = null;String actionValue179 = "";if (site179 == null){  site179 = action179.getDomain();  if (site179 == null)  {      site179 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup179 == null){  serverGroup179 = action179.getServerGroup();  if (serverGroup179 == null)  {      serverGroup179 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(" action=\"");out.print("");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue179, site179, serverGroup179,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.StartTime.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.EndTime.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Auction:ChildAuctions","Child",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Child:UUID"),null))).addURLParameter(context.getFormattedValue("ListType",null),context.getFormattedValue(getObject("ListType"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Child:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Child:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Running.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Child:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extended.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Child:State")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.New.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Child:State")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Scheduled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Child:State")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Finished.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Child:State")).doubleValue() ==((Number)(new Double(16))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Canceled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Child:State")).doubleValue() ==((Number)(new Double(32))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Evaluated.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Unknown.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% }}}}}}} %><td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Child:StartTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Child:StartTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Child:EndTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Child:EndTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Child:CurrentBid:BidValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Child:CurrentBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Child:StartBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Child:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor -->
<table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewAuctionRecurrence_52-Paging"),
new TagParameter("item","childs"),
new TagParameter("formname","detailForm"),
new TagParameter("pageable","ChildAuctions")}, 122); %></tr>
</table>
<!-- End Page Cursor -->
</td>
</tr>
</table><% out.print("</form>"); %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewRecurrence_52.TheChildAuctionsWereNotFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } else { %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("AuctionViewRecurrence_52.OriginalAuction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% URLPipelineAction action180 = new URLPipelineAction("");String site180 = null;String serverGroup180 = null;String actionValue180 = "";if (site180 == null){  site180 = action180.getDomain();  if (site180 == null)  {      site180 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup180 == null){  serverGroup180 = action180.getServerGroup();  if (serverGroup180 == null)  {      serverGroup180 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(" action=\"");out.print("");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue180, site180, serverGroup180,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.StartTime.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.EndTime.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Parent:UUID"),null))).addURLParameter(context.getFormattedValue("ListType",null),context.getFormattedValue(getObject("ListType"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Parent:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parent:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Running.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parent:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extended.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parent:State")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.New.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parent:State")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Scheduled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parent:State")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Finished.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parent:State")).doubleValue() ==((Number)(new Double(16))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Canceled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parent:State")).doubleValue() ==((Number)(new Double(32))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Evaluated.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else { %><td class="table_detail e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Unknown.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% }}}}}}} %><td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Parent:StartTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Parent:StartTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Parent:EndTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Parent:EndTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parent:CurrentBid:BidValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Parent:CurrentBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Parent:StartBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Parent:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_title_description" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewRecurrence_52.TheParentAuctionsWasNotFound.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "209");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>