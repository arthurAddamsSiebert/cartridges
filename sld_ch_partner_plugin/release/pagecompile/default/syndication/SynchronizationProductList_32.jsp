<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Repository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChangedProducts_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("RepositoryUUID"),null))).addURLParameter(context.getFormattedValue("SelectedRepositoryUUID",null),context.getFormattedValue(getObject("SelectedRepositoryUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("SynchronizationProductList_32.MasterRepositoryChangedProducts.text",null)))}, 4); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChangedProducts_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("RepositoryUUID"),null))).addURLParameter(context.getFormattedValue("SelectedRepositoryUUID",null),context.getFormattedValue(getObject("SelectedRepositoryUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("SynchronizationProductList_32.ChannelRepositoryChangedProducts.text",null)))}, 6); %><% } %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e n s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Repository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {out.write(localizeISText("SynchronizationProductList_32.MasterRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SynchronizationProductList_32.ChannelRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;-&nbsp;<% {out.write(localizeISText("SynchronizationProductList_32.ChangedProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("SynchronizationProductList_32.ProductsListedHereHaveChangedInTheSourceRepository.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %> 
<% {out.write(localizeISText("SynchronizationProductList_32.UseTheCheckboxesAndClickApplyToManuallySelect.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% URLPipelineAction action215 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChangedProducts_32-Dispatch",null)))),null));String site215 = null;String serverGroup215 = null;String actionValue215 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChangedProducts_32-Dispatch",null)))),null);if (site215 == null){  site215 = action215.getDomain();  if (site215 == null)  {      site215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup215 == null){  serverGroup215 = action215.getServerGroup();  if (serverGroup215 == null)  {      serverGroup215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChangedProducts_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue215, site215, serverGroup215,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %> 
<td class="w e s n" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("SynchronizationProductList_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("SynchronizationProductList_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s"><% } else { %> 
<td class="table_header w n e s"><% } %><% {out.write(localizeISText("SynchronizationProductList_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/><input type="hidden" name="RepositoryUUID" value="<%=context.getFormattedValue(getObject("Repository:UUID"),null)%>"/></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("SynchronizationProductList_32.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s right">&nbsp;<% {out.write(localizeISText("SynchronizationProductList_32.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("SynchronizationProductList_32.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s left" width="10%"><% {out.write(localizeISText("SynchronizationProductList_32.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Products",null,null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><td class="table_detail top w e s center"><input type="checkbox" name="SelectedProductUUID" value="<%=context.getFormattedValue(getObject("Products:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Products:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Products:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ProductUUID" value="<%=context.getFormattedValue(getObject("Products:UUID"),null)%>"/></td>
<td class="table_detail top e s"><% } else { %><td class="table_detail top w e s"><% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChangedProducts_32-Compare",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Products:UUID"),null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Products:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChangedProducts_32-Compare",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Products:UUID"),null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Products:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s right"><% {String value = null;try{value=context.getFormattedValue(getObject("Products:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isBundled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% {out.write(localizeISText("SynchronizationProductList_32.BundledProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isMastered"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% {out.write(localizeISText("SynchronizationProductList_32.VariationProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isProductBundle"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% {out.write(localizeISText("SynchronizationProductList_32.ProductBundle.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isProductMaster"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% {out.write(localizeISText("SynchronizationProductList_32.VariationMaster.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Products:isProductItem")).booleanValue() && !((Boolean) getObject("Products:isMastered")).booleanValue() && !((Boolean) getObject("Products:isBundled")).booleanValue() && !((Boolean) getObject("Products:isProductBundle")).booleanValue() && !((Boolean) getObject("Products:isProductMaster")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% {out.write(localizeISText("SynchronizationProductList_32.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail top e s left"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationProductList_32.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationProductList_32.InStock.alt",null)),null)%>" border="0"/><% } %>&nbsp;
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td align="right" class="w e s" colspan="6">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="UpdateProductSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationProductList_32.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Products")}, 108); %></td>
</tr>
</table>
<!-- End Page Cursor --><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td class="table_detail" nowrap="nowrap"><% {out.write(localizeISText("SynchronizationProductList_32.ThereAreNoProductsInList.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "123");} %><% printFooter(out); %>