<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("Order:DocumentNo")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPaymentHistory-ShowPaymentHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)).addURLParameter(context.getFormattedValue("PaymentTransactionUUID",null),context.getFormattedValue(getObject("PaymentTransaction:UUID"),null)))),
new TagParameter("id",getObject("Order:UUID")),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPaymentHistory.Order.text",null)),null) + context.getFormattedValue(":",null))}, 3); %><% {Object temp_obj = (getObject("PaymentTransaction:UUID")); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("order/OrderTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "6");} %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ChannelPaymentHistory.Order.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Order:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("PaymentTransaction:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CancelResult")))).booleanValue() && ((Boolean) ((( ((Number) getObject("CancelResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CaptureResult")))).booleanValue() && ((Boolean) ((( ((Number) getObject("CaptureResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("RefundResult")))).booleanValue() && ((Boolean) ((( ((Number) getObject("RefundResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("AuthorizationResult")))).booleanValue() && ((Boolean) ((( ((Number) getObject("AuthorizationResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ReduceResult")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ReduceResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top"> 
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelPaymentHistory.ErrorOccurredDuringPaymentProcessing.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CancelResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorCode.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("CancelResult:ErrorCode"),"###",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CancelResult:getAdditionalData(\"ErrorMessage\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorMessage.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("CancelResult:getAdditionalData(\"ErrorMessage\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CaptureResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorCode.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("CaptureResult:ErrorCode"),"###",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CaptureResult:getAdditionalData(\"ErrorMessage\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorMessage.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("CaptureResult:getAdditionalData(\"ErrorMessage\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RefundResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorCode.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("RefundResult:ErrorCode"),"###",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% {out.write(localizeISText("ChannelPaymentHistory.ErrorMessage.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("RefundResult:getAdditionalData(\"ErrorMessage\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuthorizationResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorCode.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("AuthorizationResult:ErrorCode"),"###",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AuthorizationResult:getAdditionalData(\"ErrorMessage\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorMessage.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("AuthorizationResult:getAdditionalData(\"ErrorMessage\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ReduceResult:ErrorCode")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorCode.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("ReduceResult:ErrorCode"),"###",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ReduceResult:getAdditionalData(\"ErrorMessage\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPaymentHistory.ErrorMessage.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("ReduceResult:getAdditionalData(\"ErrorMessage\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% }}}}} %></td>
</tr>
</table> 
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ChannelPaymentHistory.TheListShowsPaymentTransactionEventsOfThisOrder.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% {Object temp_obj = (getObject("PaymentTransaction:PaymentInstrumentInfo")); getPipelineDictionary().put("PII", temp_obj);} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail infobox w e s"><% {Object temp_obj = ("short"); getPipelineDictionary().put("PaymentDisplayMode", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PaymentTransaction:PaymentService:Capabilities:ShowPIIMiniTemplate"),null), null, "69");} %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PaymentTransaction:PaymentService:Capabilities:PaymentHistoryBOTemplate"),null), null, "73");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("PaymentTransaction:Order:Status")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("PaymentTransaction:Order:Status")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% URLPipelineAction action343 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPaymentHistory-Dispatch",null)))),null));String site343 = null;String serverGroup343 = null;String actionValue343 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPaymentHistory-Dispatch",null)))),null);if (site343 == null){  site343 = action343.getDomain();  if (site343 == null)  {      site343 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup343 == null){  serverGroup343 = action343.getServerGroup();  if (serverGroup343 == null)  {      serverGroup343 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPaymentHistory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("paymentHistoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue343, site343, serverGroup343,false)); %><input name="webform_id" type="hidden" value="paymentHistoryForm"/>
<input name="ChannelID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="OrderID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Order:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="historyStatus" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("historyStatus"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="PaymentTransactionUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentTransaction:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="2"><img width="1" height="6" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr>
<tr>
<td colspan="2" width="100%" class="table_title aldi top"><% {out.write(localizeISText("ChannelPaymentHistory.PaymentActions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentTransaction:CanBeAuthorized"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s "><% {out.write(localizeISText("ChannelPaymentHistory.ReAuthorizesThisTransactionAuthorizationAmount.table_detail",null,null,context.getFormattedValue(getObject("Order:GrandTotalGrossPricePC"),null),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s " nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %> 
<input type="submit" class="button" name="reauthorize" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPaymentHistory.ReAuthorize.button",null)),null)%>"/><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentTransaction:CanBeCaptured"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s "><% {out.write(localizeISText("ChannelPaymentHistory.CapturesThisTransactionCaptureAmount0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("PaymentTransaction:Amount"),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s " nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %> 
<input type="submit" class="button" name="capture" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPaymentHistory.Capture.button",null)),null)%>"/><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PaymentTransaction:CanBeRefunded"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s "><% {out.write(localizeISText("ChannelPaymentHistory.RefundsTheEnteredAmountForThisTransaction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_detail e s " nowrap="nowrap">
<table>
<tr>
<td class="table_detail"><% {out.write(localizeISText("ChannelPaymentHistory.AmountToRefund.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentTransaction:Amount:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefundAmountErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><div class="error"><% {out.write(localizeISText("ChannelPaymentHistory.PleaseEnterAValidAmount.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %></td>
<td class="table_detail"><input type="text" name="RefundAmount" size="6"/></td>
</tr>
<tr>
<td class="table_detail"><% {out.write(localizeISText("ChannelPaymentHistory.RefundReason.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><input type="text" name="RefundReason" size="40"/></td>
</tr>
<tr>
<td class="table_detail">&nbsp;</td>
<td class="table_detail"><input type="submit" class="button" name="refund" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPaymentHistory.Refund.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PaymentTransaction:CanBeReduced"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s "><% {out.write(localizeISText("ChannelPaymentHistory.ReducesTheAuthorizedAmountForThisTransaction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_detail e s " nowrap="nowrap">
<table>
<tr>
<td class="table_detail"><% {out.write(localizeISText("ChannelPaymentHistory.AmountToReduce.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentTransaction:Amount:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ReduceAmountErrorCode")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ReduceError"),null).equals(context.getFormattedValue("AmountExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><div class="error"><% {out.write(localizeISText("ChannelPaymentHistory.PleaseEnterAValidAmount.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %></td>
<td class="table_detail"><input type="text" name="AmountToReduce" size="6"/></td>
</tr>
<tr>
<td class="table_detail"><% {out.write(localizeISText("ChannelPaymentHistory.ReduceReason.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><input type="text" name="ReduceReason" size="40"/></td>
</tr>
<tr>
<td class="table_detail">&nbsp;</td>
<td class="table_detail"><input type="submit" class="button" name="reduce" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPaymentHistory.Reduce.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PaymentTransaction:CanBeCancelled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s "><% {out.write(localizeISText("ChannelPaymentHistory.CancelsThePaymentTransaction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s " nowrap="nowrap"> 
<input type="submit" class="button" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPaymentHistory.Cancel.button",null)),null)%>"/>
</td>
</tr><% } %></table><% out.print("</form>"); %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "174");} %></td>
</tr>
</table><% printFooter(out); %>