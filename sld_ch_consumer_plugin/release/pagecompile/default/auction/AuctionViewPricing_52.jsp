<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Pricing.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("id",getObject("Auction:UUID")),
new TagParameter("text",getObject("Auction:DisplayName"))}, 4); %> 
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCodeUpdate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr valign="top">
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%">
<b><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCodeUpdate"),null).equals(context.getFormattedValue("WrongState",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.ItHasNotGotAnAppropriateState.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% } %><!-- end errors-->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis" ><% {out.write(localizeISText("sld_ch_consumer_plugin.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extension.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionBidHistory_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.BidHistory.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(32))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionEvaluation_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Evaluation.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:Definition:MaxRepeatingCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionRecurrence_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("AuctionViewPricing_52.AuctionPricing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action176 = new URLPipelineAction("");String site176 = null;String serverGroup176 = null;String actionValue176 = "";if (site176 == null){  site176 = action176.getDomain();  if (site176 == null)  {      site176 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup176 == null){  serverGroup176 = action176.getServerGroup();  if (serverGroup176 == null)  {      serverGroup176 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(" action=\"");out.print("");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue176, site176, serverGroup176,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewPricing_52.StartPrice.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewPricing_52.ReservePrice.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("ReservePrice:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("Auction:Definition:IsHidden"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewPricing_52.SmallestPriceStep.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:IncrementValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewPricing_52.CurrentPrice.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:CurrentBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(16))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.EndPrice.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {out.write(localizeISText("AuctionViewPricing_52.0AuctionWasCanceled.table_detail",null,null,context.getFormattedValue(getObject("Auction:CurrentBid:BidValue"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.EndPrice.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:CurrentBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% }} %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewPricing_52.ShippingCosts.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ShippingPrice:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:StartBid:TaxAmount:Value")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewPricing_52.TaxAmount.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:TaxAmount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } else { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionViewPricing_52.TaxRate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:TaxRate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> %</td>
</tr><% } %><tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "100");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>