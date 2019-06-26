<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("ChannelAuctionPreference_52.Auction.text",null)))}, 6); %><% URLPipelineAction action21 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPreferences_52-Update",null)))),null));String site21 = null;String serverGroup21 = null;String actionValue21 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPreferences_52-Update",null)))),null);if (site21 == null){  site21 = action21.getDomain();  if (site21 == null)  {      site21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup21 == null){  serverGroup21 = action21.getServerGroup();  if (serverGroup21 == null)  {      serverGroup21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPreferences_52-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateAuctionPreferenceForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue21, site21, serverGroup21,true)); %><input name="webform-id" type="hidden" value="UpdateAuctionPreferenceForm"/>
<!-- EO Page Navigator -->
<!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("ChannelAuctionPreference_52.AuctionPreferences.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelAuctionPreference_52.TheBidAgentPolicyDefinesHowToEvaluateAGivenBidValue.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_AUCTIONS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %> js-form-disabled<% } %>"
>
<tr>
<td class="table_title3" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.BidOptions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"></td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.BidAgentPolicy.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" >
<select name="RegFormUpdateAuctionPreference_BidAgentPolicy" class="select inputfield_en" style="width:350px">
<option value="0" selected="selected"><% {out.write(localizeISText("sld_ch_consumer_plugin.AllBidsPlacedAsAutoBids.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidAgentPolicy")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.AllBidsPlacedAsFixedValueBids.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.HiddenAuctionBidPolicy.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<select name="RegFormUpdateAuctionPreference_HiddenAuctionBidPolicy" class="select inputfield_en w100">
<option value="0" selected="selected"><% {out.write(localizeISText("sld_ch_consumer_plugin.SingleBidPerParticipant.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("HiddenAuctionBidPolicy")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.SeveralBidsPerParticipant.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="table_title3" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.ItemOptions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail" colspan="2"></td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.AuctionItemPolicy.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<select name="RegFormUpdateAuctionPreference_AuctionItemPolicy" class="select inputfield_en w100">
<option value="0" selected="selected"><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionItemsLockedWhileAuctionIsRunning.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuctionItemPolicy")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionItemsEditableWhileAuctionIsRunning.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="table_title3" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.CancelOptions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail" colspan="2"></td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.BidCancelPolicy.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<select name="RegFormUpdateAuctionPreference_BidCancelPolicy" class="select inputfield_en w100">
<option value="0" selected="selected"><% {out.write(localizeISText("sld_ch_consumer_plugin.NoCancellation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.CancellationByBidderOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.CancellationByBackOfficeUserOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="3" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.CancellationByBidderAndBackOfficeUser.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.LimitedBidCancelPeriod.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><input type="hidden" name="RegFormUpdateAuctionPreference_LimitedBidCancelPeriod" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LimitedBidCancelPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_AUCTIONS_PREFERENCES")))).booleanValue() || ((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><select name="RegFormUpdateAuctionPreference_LimitedBidCancelPeriod" class="select inputfield_en w100" disabled="disabled">
<option value="0"><% {out.write(localizeISText("sld_ch_consumer_plugin.NoLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LimitedBidCancelPeriod")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.1HourLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="12" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LimitedBidCancelPeriod")).doubleValue() ==((Number)(new Double(12))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.12HoursLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="24" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LimitedBidCancelPeriod")).doubleValue() ==((Number)(new Double(24))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.24HoursLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% } else { %><select name="RegFormUpdateAuctionPreference_LimitedBidCancelPeriod" class="select inputfield_en w100">
<option value="0"><% {out.write(localizeISText("sld_ch_consumer_plugin.NoLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LimitedBidCancelPeriod")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.1HourLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="12" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LimitedBidCancelPeriod")).doubleValue() ==((Number)(new Double(12))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.12HoursLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="24" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("LimitedBidCancelPeriod")).doubleValue() ==((Number)(new Double(24))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.24HoursLimitedCancelPeriod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% } %></td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("ChannelAuctionPreference_52.BidCancelPeriod.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><input type="hidden" name="RegFormUpdateAuctionPreference_BidCancelPeriod" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BidCancelPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_AUCTIONS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("BidCancelPolicy")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><select name="RegFormUpdateAuctionPreference_BidCancelPeriod" class="select inputfield_en w100" disabled="disabled">
<option value="1" selected="selected"><% {out.write(localizeISText("sld_ch_consumer_plugin.1HourWithinBidPlacement.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidCancelPeriod")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.2HoursWithinBidPlacement.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="3" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidCancelPeriod")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.3HoursWithinBidPlacement.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% } else { %><select name="RegFormUpdateAuctionPreference_BidCancelPeriod" class="select inputfield_en w100">
<option value="1" selected="selected"><% {out.write(localizeISText("sld_ch_consumer_plugin.1HourWithinBidPlacement.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidCancelPeriod")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.2HoursWithinBidPlacement.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="3" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("BidCancelPeriod")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.3HoursWithinBidPlacement.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% } %></td>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_AUCTIONS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "167");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>