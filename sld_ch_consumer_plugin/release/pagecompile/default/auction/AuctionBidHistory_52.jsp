<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "3");} %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.BidHistory.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("id",getObject("Auction:UUID")),
new TagParameter("text",getObject("Auction:DisplayName"))}, 8); %> 
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extension.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.BidHistory.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(32))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionEvaluation_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Evaluation.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxRepeatingCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionRecurrence_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr>
<td width="100%" class="table_title s"><% {out.write(localizeISText("AuctionBidHistory_52.AuctionBidHistory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<!-- confirmation if nothing is selected-->
<div id="nothing" style="display: none;">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AuctionBidHistory_52.PleaseSelectAtLeastOneBid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="pnlr" nowrap="nowrap">
<input type="button" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button" onclick="document.getElementById('nothing').style.display='none'"/>
</td>
</tr>
</table>
</div>
<!-- confirmation delete bid-->
<div id="confirm" style="display: none;">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="18" height="16" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AuctionBidHistory_52.DeleteTheSelectedBid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="pnlr" nowrap="nowrap">
<input type="button" name="ok" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.delete_button",null)),null)%>" class="delete_button" onclick="document.bidForm.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-CancelBid",null)))),null)%>'; document.bidForm.submit();"/>&nbsp;<input type="button" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.delete_button",null)),null)%>" class="delete_button" onclick="document.getElementById('confirm').style.display='none'"/>
</td>
</tr>
</table>
</div><% URLPipelineAction action170 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-View",null)))),null));String site170 = null;String serverGroup170 = null;String actionValue170 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-View",null)))),null);if (site170 == null){  site170 = action170.getDomain();  if (site170 == null)  {      site170 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup170 == null){  serverGroup170 = action170.getServerGroup();  if (serverGroup170 == null)  {      serverGroup170 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-View",null)))),null));out.print("\"");out.print(" name=\"");out.print("bidForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue170, site170, serverGroup170,true)); %><!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageableAuctionBids") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CancellationPermitted"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><td class="table_header n e s center" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Date.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Bidder.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n s" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Amount.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start auction bids loop--><% while (loop("PageableAuctionBids","bid",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CancellationPermitted"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><td class="table_detail e s center" width="10%"><input type="radio" name="CancelBidUUID" value ="<%=context.getFormattedValue(getObject("bid:UUID"),null)%>"/></td><% } %><td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("bid:CreationTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("bid:CreationTime"),"hh:mm:ss.SSS a",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("bid:Owner:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("bid:Owner:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("bid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><table class="w e" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CancellationPermitted"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><td class="button">
<input type="button" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" id="CancelButton" class="button" onclick="checkSelected('bidForm');"/>
</td><% } %><td class="button">
<input type="hidden" name="AuctionUUID" value="<%=context.getFormattedValue(getObject("Auction:UUID"),null)%>"/><input type="submit" name="Refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Refresh.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><!-- Start Page Cursor -->
<table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewAuctionBidHistory_52-Paging"),
new TagParameter("parametername1","AuctionUUID"),
new TagParameter("parametervalue1",getObject("Auction:UUID")),
new TagParameter("pageable","PageableAuctionBids")}, 111); %></tr>
</table>
<!-- EO Page Cursor --><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail aldi"><% {out.write(localizeISText("sld_ch_consumer_plugin.NoValidBidsFoundForThisAuction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="AuctionUUID" value="<%=context.getFormattedValue(getObject("Auction:UUID"),null)%>"/>
<input type="submit" name="Refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Refresh.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "144");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>