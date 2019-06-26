<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><%@page import = "java.util.Vector"%><%@page import = "com.intershop.beehive.bts.capi.orderprocess.BundledProductLineItem"%><%
	Vector parents = new Vector();
	BundledProductLineItem li = (BundledProductLineItem) getObject("LineItem");
	BundledProductLineItem parent = li.getParentItem();
	while (parent != null)
	{
		getPipelineDictionary().put("ProductLineItem", parent.getProductLineItem());
		parents.insertElementAt(parent,0);
		parent = parent.getParentItem();
	}
	if (parents.size() > 0)	{ getPipelineDictionary().put("LineItemParents", Iterators.createIterator(parents)); }
	else { getPipelineDictionary().put("ProductLineItem", li.getProductLineItem()); }
%><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("LineItem:ProductName")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowBundledItem",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LineItemUUID",null),context.getFormattedValue(getObject("LineItem:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("OrderID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)))),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("LineItemBundledItem.BundledItem.text",null)),null) + context.getFormattedValue(" - ",null))}, 25); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_title n s" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.BundledItem0.table_title",null,null,encodeString(context.getFormattedValue(getObject("LineItem:ProductName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ProductShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";out.write(value);} %></td>
</tr>
</table>
<!-- Main product description -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_header s" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("LineItemBundledItem.ProductInformation.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem2 s e" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.Seller.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:SellerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2 s e" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.SellerProductID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:SellerID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2 s e" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.Supplier.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2 s e" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.SupplierProductID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:SupplierID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2 s e" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.Manufacturer.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2 s e" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.ManufacturerProductID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ManufacturerID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LineItemAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><tr>
<td class="table_header s" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("LineItemBundledItem.OrderInformation.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LineItemAttributes","LineItemAttribute",null)) { %><tr>
<td class="fielditem2 s e" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItemAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItemAttribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %><tr>
<td class="table_header s" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("LineItemBundledItem.Packaging.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem2 e s" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.PackingUnit.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:Quantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2 e s" nowrap="nowrap"><% {out.write(localizeISText("LineItemBundledItem.PurchaseQuantity.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:Quantity:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/LineItemBundledItems", null, "90");} %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "94");} %><% printFooter(out); %>