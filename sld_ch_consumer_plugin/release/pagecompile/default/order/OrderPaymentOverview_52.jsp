<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Order"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(getObject("Order:DocumentNo"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrderPaymentOverview_52.Breadcrumb.Payment.text",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowGiftcards",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID1",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id",getObject("Order:UUID")),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("OrderPaymentOverview_52.Order.text",null)),null) + context.getFormattedValue(": ",null))}, 4); %><% } %><% {Object temp_obj = ("Giftcards"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderTabs_52", null, "7");} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("OrderPayment", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Order"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("OrderPaymentOverview_52.Order.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td width="100%" class="table_title_description w e s"><% {out.write(localizeISText("OrderPaymentOverview_52.AllPaymentsForThisOrder.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" nowrap="nowrap"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("OrderPayment:PaymentTransactions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("OrderPaymentOverview_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("OrderPaymentOverview_52.TransactionID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("OrderPaymentOverview_52.Amount.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("OrderPaymentOverview_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("OrderPaymentOverview_52.LastStatusChange.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("OrderPaymentOverview_52.Details.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header center e s"><% {out.write(localizeISText("OrderPaymentOverview_52.PaymentHistory.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr><% while (loop("OrderPayment:PaymentTransactionBOs","PT",null)) { %><tr>
<td class="table_detail w e s"> 
<% {String value = null;try{value=context.getFormattedValue(getObject("PT:PaymentBO:PaymentServiceBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PT:ServiceTransactionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("PT:AmountAuthorized:Available")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PT:Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("PT:CanBeCaptured"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PT:MaxCaptureAmount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PT:AmountCaptured:Value")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PT:MaxRefundAmount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PT:AmountAuthorized"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }}} %>&nbsp;
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(getObject("PT:StatusDisplayName"),null).toLowerCase()),null).equals(context.getFormattedValue("not successful",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><td class="table_detail error e s"><% } else { %><td class="table_detail e s"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("PT:StatusDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PT:StatusPending"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% {out.write(localizeISText("PaymentHistory.Status.pending",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PT:TransactionData:LastModified"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("PT:TransactionData:LastModified"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PT:PaymentBO:PaymentInstrumentBO:AccountIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
&nbsp;
</td>
<td class="table_detail center e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentHistory-ShowPaymentHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)).addURLParameter(context.getFormattedValue("PaymentServiceID",null),context.getFormattedValue(getObject("PT:PaymentService:ID"),null)).addURLParameter(context.getFormattedValue("PaymentTransactionUUID",null),context.getFormattedValue(getObject("PT:ID"),null))),null)%>" class="action_link"><% {out.write(localizeISText("OrderPaymentOverview_52.History.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% } %></table><% } %> 
</td>
</tr>
</table><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "74");} %><% printFooter(out); %>