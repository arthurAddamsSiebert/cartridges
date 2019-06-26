<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("LineItemDelivery_52.Delivery.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowLineItemDetail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null))).addURLParameter(context.getFormattedValue("LineItemUUID",null),context.getFormattedValue(getObject("LineItemUUID"),null)).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("OrderDocumentNo",null),context.getFormattedValue(getObject("Order:DocumentNo"),null)).addURLParameter(context.getFormattedValue("ChannelID1",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("LineItemUUID")),
new TagParameter("text",getObject("LineItem:ProductName"))}, 4); %><%
getPipelineDictionary().put("SelectedTab", "Delivery");
%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderLineItemDetailsTabs_52.isml", null, "8");} %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_title s"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_title_description"><% {out.write(localizeISText("LineItemDelivery_52.DeliveryInformationOfThisLineItem.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>.</td>
</tr>
</table>
<!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<colgroup>
<col width="15%" />
<col width="85%" />
</colgroup>
<tr>
<td class="table_title2 s" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("LineItemDelivery_52.ShippingAddress.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LineItem:ShipToAddressBO")))).booleanValue() && ((Boolean) ((((context.getFormattedValue("EmailAddress",null).equals(context.getFormattedValue(getObject("LineItem:ShipToAddressBO:AddressName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("LineItemDelivery_52.Recipient.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="90%"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ShipToAddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ShipToAddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("LineItemDelivery_52.EmailAddress.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ShipToAddressBO:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } else { %> 
<% context.setCustomTagTemplateName("addressinfo","inc/OrderAddressInfo_52.isml",false,new String[]{"address"},null); %><% processOpenTag(response, pageContext, "addressinfo", new TagParameter[] {
new TagParameter("address",getObject("LineItem:ShipToAddressBO"))}, 39); %><% } %><tr>
<td class="table_title2 s" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("LineItemDelivery_52.DeliveryInformation.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("LineItemDelivery_52.DesiredDeliveryDate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:DesiredDeliveryDate"),"MM/dd/yyyy",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td> 
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "50");} %><% printFooter(out); %>