<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = (getObject("BasketBO:Extension(\"BasketBOCostCenterExtension\")")); getPipelineDictionary().put("CostCenter", temp_obj);} %><% {Object temp_obj = (getObject("BasketBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} %><% {Object temp_obj = (getObject("RecurringBasket:isRecurring")); getPipelineDictionary().put("IsSubscription", temp_obj);} %><% {Object temp_obj = (getObject("BasketBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayTypeName", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsSubscription"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {Object temp_obj = ("email.pending_order_confirmation.id_of_subscription.label"); getPipelineDictionary().put("DocumentNoLabelKey", temp_obj);} %><% {Object temp_obj = (getObject("RecurringBasket:RecurringOrderDocumentNo")); getPipelineDictionary().put("DocumentNo", temp_obj);} %><% } else { %><% {Object temp_obj = ("email.order_approval.id_of_order.label"); getPipelineDictionary().put("DocumentNoLabelKey", temp_obj);} %><% {Object temp_obj = (getObject("BasketBO:RequisitionDocumentNo")); getPipelineDictionary().put("DocumentNo", temp_obj);} %><% } %><table cellpadding="10" cellspacing="0" class="pattern">
<tr class="mobileTable">
<td width="600" class="orderConfirmationBucketInfo">
<table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr>
<td valign="top"><% {out.write(localizeISText(context.getFormattedValue(getObject("DocumentNoLabelKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td valign="top"><% {out.write(localizeISText("email.reject_order.order_date.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:CreationDate"),"dd-MMM-yyyy",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td valign="top"><% {out.write(localizeISText("email.pending_order_confirmation.order_total.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("BasketBO:BasketTotalPriceMinusLimitedTenderGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowBuyer"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><tr>
<td valign="top"><% {out.write(localizeISText("email.order_approval.purchaser.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("BasketBO:User:Profile:DataSheet:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("BasketBO:User:Profile:DataSheet:LastName"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenter:CostCenterBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><tr>
<td valign="top"><% {out.write(localizeISText("email.order_approval.cost_center.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenter:CostCenterBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("CostCenter:CostCenterBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsSubscription"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td valign="top"><% {out.write(localizeISText("subscription.display.recurrence.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% processOpenTag(response, pageContext, "perioddisplay", new TagParameter[] {
new TagParameter("period",getObject("RecurringBasket:RecurrenceInformation:Interval"))}, 75); %></td>
</tr>
<tr>
<td valign="top"><% {out.write(localizeISText("subscription.display.start_date.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:StartDate"),"dd-MMM-yyyy",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td valign="top"><% {out.write(localizeISText("subscription.display.end_date.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:EndDate"),"dd-MMM-yyyy",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table>
</td>
</tr>
</table><% printFooter(out); %>