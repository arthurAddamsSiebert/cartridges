<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "4");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-SimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ListProducts_52.AssignProducts.text",null)))}, 6); %><!-- confirmation if nothing is selected-->
<div id="nothing" style="display: none;">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ListProducts_52.PleaseSelectAtLeastOneProduct.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e n s">
<tr>
<td width="100%" class="table_title s"><% {out.write(localizeISText("ListProducts_52.0Products.table_title",null,null,encodeString(context.getFormattedValue(getObject("CurrentChannel:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Check simple search mask--><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFSimpleSearch:NameOrID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ListProducts_52.PleaseProvideAValidSearchMaskUseAtLeast3Characters.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoProductsSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ListProducts_52.YouHaveNotSelectedAnyProductsToBeAssignedSelectThe.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td width="100%" class="table_title_description"><% {out.write(localizeISText("ListProducts_52.TheListShowsAllProductsCurrentlyAssignedToAnAuctio.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action168 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));String site168 = null;String serverGroup168 = null;String actionValue168 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null);if (site168 == null){  site168 = action168.getDomain();  if (site168 == null)  {      site168 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup168 == null){  serverGroup168 = action168.getServerGroup();  if (serverGroup168 == null)  {      serverGroup168 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SimSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue168, site168, serverGroup168,true)); %><% {Object temp_obj = ("ViewProductsForAuction_52-Dispatch"); getPipelineDictionary().put("pagingpipeline", temp_obj);} %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="e w">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("ListProducts_52.SimpleSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="webform-id" value="WFSimpleSearch"/><input type="hidden" name="SearchType" value="simple"/><input type="hidden" name="AuctionUUID" value="<%=context.getFormattedValue(getObject("Auction:UUID"),null)%>"/></td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSimpleSearchMask", null, "60");} %></table><% out.print("</form>"); %><% URLPipelineAction action169 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));String site169 = null;String serverGroup169 = null;String actionValue169 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null);if (site169 == null){  site169 = action169.getDomain();  if (site169 == null)  {      site169 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup169 == null){  serverGroup169 = action169.getServerGroup();  if (serverGroup169 == null)  {      serverGroup169 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductsForAuction_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue169, site169, serverGroup169,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header center w n e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ListProducts_52.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s right" nowrap="nowrap"><% {out.write(localizeISText("ListProducts_52.Price0.table_header",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s left" width="10%"><% {out.write(localizeISText("sld_ch_consumer_plugin.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Products","ProductBO",null)) { %><tr>
<td class="table_detail w e s center"><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isProductMaster"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><input type="radio" name="SelectedObjectUUID" disabled="disabled"/><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ProductBO:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><input type="radio" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>" checked="checked"/><% } else { %><input type="radio" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>"/><% } %><% } %> 
</td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.InStock.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:hasCatalogCategories"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_explicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Categorized.alt",null)),null)%>" border="0"/><% } %>&nbsp;
<% {Object temp_obj = ("false"); getPipelineDictionary().put("hasOffersInBuyerDomain", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductBO:getOffersCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% while (loop("ProductBO:Offers","Offer",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Offer:DomainID"),null).equals(context.getFormattedValue(getObject("ContractRepository:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("hasOffersInBuyerDomain", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("hasOffersInBuyerDomain"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_offers.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Offered.alt",null)),null)%>" border="0"/><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from_m.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.SharedFromAnotherAndEdited.alt",null)),null)%>" border="0"/><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.SharedFromAnother.alt",null)),null)%>" border="0"/><% } %><% } %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ListProducts_52.Assign.button",null)),null)%>" class="button"/>
<input type="hidden" name="AuctionUUID" value="<%=context.getFormattedValue(getObject("Auction:UUID"),null)%>"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor -->
<table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewProductsForAuction_52-Paging"),
new TagParameter("item","products"),
new TagParameter("formname","detailForm"),
new TagParameter("pageable","Products")}, 138); %></tr>
</table>
<!-- End Page Cursor --><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.NoProductsFoundForYourSearch",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.TheRepositoryIsEmpty",null)))}, 144); %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="AuctionUUID" value="<%=context.getFormattedValue(getObject("Auction:UUID"),null)%>"/>
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>