<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "2");} %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationMasteredProduct_52.Variations.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("id","ChannelProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 5); %><!-- Tabs--><%
getPipelineDictionary().put("SelectedTab", "Variations");
%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs_52", null, "10");} %><!-- EO Page Navigator --><% URLPipelineAction action48 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-Dispatch",null)))),null));String site48 = null;String serverGroup48 = null;String actionValue48 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-Dispatch",null)))),null);if (site48 == null){  site48 = action48.getDomain();  if (site48 == null)  {      site48 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup48 == null){  serverGroup48 = action48.getServerGroup();  if (serverGroup48 == null)  {      serverGroup48 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue48, site48, serverGroup48,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- product locking information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation_52", null, "26");} %><!-- end product locking information -->
<!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "29");} %><!-- end product sharing information -->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ProductVariationMasteredProduct_52.ThisProductIsAVariationProduct.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td class="table_header e s"><% {out.write(localizeISText("ProductVariationMasteredProduct_52.MasterProductName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ProductVariationMasteredProduct_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationMasteredProduct_52.ListPrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_header s"><% {out.write(localizeISText("ProductVariationMasteredProduct_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail e" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:ProductMaster:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelProducts",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ProductMaster:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:ProductMaster:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelProducts",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ProductMaster:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ProductMaster:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:ProductMaster:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationMasteredProduct_52.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:ProductMaster:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationMasteredProduct_52.InStock.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:ProductMaster:hasCatalogCategories"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_explicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationMasteredProduct_52.Categorized.alt",null)),null)%>" border="0"/><% } %>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Product:ProductMaster:getOffersCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_offers.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationMasteredProduct_52.Offered.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:ProductMaster:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:ProductMaster:DerivedProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from_m.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationMasteredProduct_52.SharedFromAnotherAndEdited.alt",null)),null)%>" border="0"/><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationMasteredProduct_52.SharedFromAnother.alt",null)),null)%>" border="0"/><% } %><% } %></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductVariations_52-View"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 62); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>