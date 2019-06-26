<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td class="table_title w e s"><% {out.write(localizeISText("GiftCardTransactions.GiftCard.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Number"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("GiftCardTransactions.ViewTransactionsForThisGiftCardAccessDet.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GiftCard:Transactions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("GiftCardTransactions.Date.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("GiftCardTransactions.InitialValue.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("GiftCardTransactions.AmountSpent.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("GiftCardTransactions.RemainingValue.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("GiftCardTransactions.OrderNumber.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("GiftCard:Transactions","Transaction",null)) { %> 
<tr>
<td class="table_detail w e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Transaction:Date"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Transaction:Date"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Transaction:InitialValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Transaction:SpentValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Transaction:RemainingValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_ORDERS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Transaction:Order")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder_52-FindByNumber",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Transaction:Order:UUID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("Transaction:OrderDocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Transaction:OrderDocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% } %></table><% } else { %><!--if no transactions have been placed, show this text in the space where the table would be:-->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_detail"><% {out.write(localizeISText("GiftCardTransactions.CurrentlyThereAreNoGiftCardTransactionsF.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %></td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>