<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Pricing.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("id",getObject("Auction:UUID")),
new TagParameter("text",getObject("Auction:DisplayName"))}, 5); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis" ><% {out.write(localizeISText("sld_ch_consumer_plugin.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extension.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionPricing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:StartPrice:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:StartPrice:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:PriceStep:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:PriceStep:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:Shipping:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:Shipping:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ParseError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("AuctionUpdatePricing_52.AuctionCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:StartPrice:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:StartPrice:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("StartPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdatePricing_52.StartPriceIsMandatoryPleaseProvideACorrectStartPri.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:PriceStep:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:PriceStep:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("PriceStep",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdatePricing_52.PriceStepIsMandatoryPleaseProvideACorrectPriceStep.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:Shipping:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:Shipping:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("ShippingPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdatePricing_52.ShippingPriceIsMandatoryPleaseProvideACorrectShipp.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:ReservePrice:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:ReservePrice:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("ReservePrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdatePricing_52.ReservePriceIsMandatoryPleaseProvideACorrectReserv.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("TaxRate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("TaxAmount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdatePricing_52.TaxIsMandatoryPleaseProvideACorrectTaxValue.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><!-- end errors-->
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action163 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-Update",null)))),null));String site163 = null;String serverGroup163 = null;String actionValue163 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-Update",null)))),null);if (site163 == null){  site163 = action163.getDomain();  if (site163 == null)  {      site163 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup163 == null){  serverGroup163 = action163.getServerGroup();  if (serverGroup163 == null)  {      serverGroup163 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue163, site163, serverGroup163,true)); %><input type="hidden" name="webform-id" value="WFAuctionPrice"/>
<input type="hidden" name="AuctionUUID" value="<%=context.getFormattedValue(getObject("Auction:UUID"),null)%>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s"> 
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionUpdatePricing_52.Currency.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td> 
<td class="table_detail" width="80%">
<select name="CurrencyMnemonic" class="select"><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuctionPrice:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>selected="selected" <% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Auction:StartBid:BidValue:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>selected="selected" <% } %><% } %> 
><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select> 
</td> 
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:StartPrice:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:StartPrice:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("StartPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">Start Price:<span class="star">*</span></td> 
<% } else { %><td class="fielditem2" nowrap="nowrap">Start Price:<span class="star">*</span></td> 
<% } %> 
<td class="table_detail" width="80%"><input type="text" name="WFAuctionPrice_StartPrice" maxlength="10" size="10"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuctionPrice:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuctionPrice:StartPrice:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %> class="inputfield_en"/> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:ReservePrice:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:ReservePrice:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("ReservePrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">Reserve Price:<span class="star">*</span></td> 
<% } else { %><td class="fielditem2" nowrap="nowrap">Reserve Price:<span class="star">*</span></td> 
<% } %> 
<td class="table_detail" width="80%"><input type="text" name="WFAuctionPrice_ReservePrice" maxlength="10" size="10"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuctionPrice:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuctionPrice:ReservePrice:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %><% {Object temp_obj = ("ReservePriceName"); getPipelineDictionary().put("ReservePriceName", temp_obj);} %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ReservePrice:Price"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %> class="inputfield_en"/> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("Auction:Definition:IsHidden"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:PriceStep:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:PriceStep:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("PriceStep",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">Smallest Price Step:<span class="star">*</span></td> 
<% } else { %><td class="fielditem2" nowrap="nowrap">Smallest Price Step:<span class="star">*</span></td> 
<% } %> 
<td class="table_detail"><input type="text" name="WFAuctionPrice_PriceStep" maxlength="10" size="10"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuctionPrice:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuctionPrice:PriceStep:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:IncrementValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %> class="inputfield_en"/> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr><% } else { %><tr style="display:none">
<td><input type="hidden" name="WFAuctionPrice_PriceStep" value="0"/></td>
</tr><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuctionPrice:Shipping:isMissing")).booleanValue() || ((Boolean) getObject("WFAuctionPrice:Shipping:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("ShippingPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">Shipping:<span class="star">*</span></td> 
<% } else { %><td class="fielditem2" nowrap="nowrap">Shipping:<span class="star">*</span></td> 
<% } %> 
<td class="table_detail"><input type="text" name="WFAuctionPrice_Shipping" maxlength="10" size="10" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuctionPrice:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuctionPrice:Shipping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingPrice:Price"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %> class="inputfield_en"/> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("TaxRate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("TaxAmount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">Tax:<span class="star">*</span></td> 
<% } else { %><td class="fielditem2" nowrap="nowrap">Tax:<span class="star">*</span></td> 
<% } %> 
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuctionPrice:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("TaxRate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap">
<input type="radio" name="TaxMode" value="rate" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TaxMode"),null).equals(context.getFormattedValue("rate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>Tax Rate:<span class="star">*</span>&nbsp;
</td>
<td class="table_detail">
<input name="WFAuctionPrice_TaxRate" maxlength="6" size="10" class="inputfield_en"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuctionPrice_TaxRate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>&nbsp; %
</td>
</tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ParseError"),null).equals(context.getFormattedValue("TaxAmount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap">
<input type="radio" name="TaxMode" value="amount" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TaxMode"),null).equals(context.getFormattedValue("amount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>Tax Amount:<span class="star">*</span>
</td>
<td class="table_detail">
<input name="WFAuctionPrice_TaxAmount" maxlength="10" size="10" class="inputfield_en"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuctionPrice_TaxAmount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } else { %><tr>
<td class="fielditem2" nowrap="nowrap">
<input type="radio" name="TaxMode" value="rate" checked="checked"/>Tax Rate:
</td>
<td class="table_detail">
<input name="WFAuctionPrice_TaxRate" maxlength="6" size="10" class="inputfield_en"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:TaxRate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/> %
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">
<input type="radio" name="TaxMode" value="amount" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:StartBid:TaxAmount:Value")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>checked="checked"<% } %>/>Tax Amount:
</td>
<td class="table_detail">
<input name="WFAuctionPrice_TaxAmount" maxlength=10 size=10 class="inputfield_en"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:TaxAmount"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr> 
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="update" value="Update" class="button"/>
</td>
<td class="button">
<input type="button" name="cancel" value="Cancel" class="button" onclick="javascript:window.location.href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctions_52-DispatchList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>'"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "221");} %><!-- EO Main Content -->
<!-- EO Working Area --> 
<script language="javascript" type="text/javascript">
<!-- 
document.formMask.WFAuctionPrice_StartPrice.focus();
-->
</script><% printFooter(out); %>