<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("LineItemInvoicing.Invoicing.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowLineItemInvoicing",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("status",null),context.getFormattedValue(getObject("status"),null))).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)).addURLParameter(context.getFormattedValue("LineItemUUID",null),context.getFormattedValue(getObject("LineItem:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("OrderDocumentNo",null),context.getFormattedValue(getObject("Order:DocumentNo"),null)).addURLParameter(context.getFormattedValue("OrganizationTypeCode",null),context.getFormattedValue(getObject("OrganizationTypeCode"),null)))),
new TagParameter("id",getObject("LineItem:UUID")),
new TagParameter("text",getObject("LineItem:ProductName"))}, 7); %><%
				getPipelineDictionary().put("SelectedTab", "Invoicing");
			%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/OrderLinItemDetailsTabs", null, "12");} %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("LineItemInvoicing.0Delivery.table_title",null,null,encodeString(context.getFormattedValue(getObject("LineItem:ProductName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td><% context.setCustomTagTemplateName("addressinfo","inc/OrderAddressInfo.isml",false,new String[]{"address"},null); %><% processOpenTag(response, pageContext, "addressinfo", new TagParameter[] {
new TagParameter("address",getObject("SelectedAddress"))}, 25); %></td>
</tr>
</table>
</td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "33");} %><% printFooter(out); %>