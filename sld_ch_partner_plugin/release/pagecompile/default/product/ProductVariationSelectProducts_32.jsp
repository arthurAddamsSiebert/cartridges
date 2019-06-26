<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "java.util.*,com.intershop.beehive.xcs.capi.product.*" %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-BackToProcessAssignmentMethod",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.VariationProductAssignmentStep2SelectProducts.text",null)))}, 5); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e n" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectProducts_32.SelectVariationProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoProductSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e n">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductVariationSelectProducts_32.YouHaveNotSelectedAnyProductsToAddToTheVariation.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("ProductVariationSelectProducts_32.Step2Of2UseTheCheckboxesToSelectProductsAndThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewProductVariations_32-Dispatch"),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("searchtype",getObject("SearchType"))}, 31); %><!-- Main Content --><% URLPipelineAction action14 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-Dispatch",null)))),null));String site14 = null;String serverGroup14 = null;String actionValue14 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-Dispatch",null)))),null);if (site14 == null){  site14 = action14.getDomain();  if (site14 == null)  {      site14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup14 == null){  serverGroup14 = action14.getServerGroup();  if (serverGroup14 == null)  {      serverGroup14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue14, site14, serverGroup14,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s left" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductVariationSelectProducts_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductVariationSelectProducts_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("ProductVariationSelectProducts_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectProducts_32.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right">&nbsp;<% {out.write(localizeISText("ProductVariationSelectProducts_32.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectProducts_32.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" width="75"><% {out.write(localizeISText("ProductVariationSelectProducts_32.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Products","ProductBO",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Product:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("ProductBO:isProductMaster"))).booleanValue() && !((Boolean) (getObject("ProductBO:isProductBundle"))).booleanValue() && !((Boolean) (getObject("ProductBO:isMastered"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><td class="table_detail w e s center top"><input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProductBO:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isMastered"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><td class="table_detail w e s center top"><input type="checkbox" disabled="disabled" checked="checked"/></td><% } else { %><td class="table_detail w e s center top"><input type="checkbox" disabled="disabled"/></td><% }} %><td class="table_detail e s top">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>"/>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelProducts",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s top">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelProducts",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s right top" nowrap="nowrap"><% processOpenTag(response, pageContext, "productboprice", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 79); %></td>
<td class="table_detail e s left" nowrap="nowrap"><% processOpenTag(response, pageContext, "productbotypecode", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 80); %>&nbsp;</td>
<td class="table_detail e s left top"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Online.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Online.title",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.InStock.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.InStock.title",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:hasDerivedProducts"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_to.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedToOthers.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedToOthers.title",null)),null)%>" border="0"/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:DerivedProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from_m.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnotherAndEdited.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnotherAndEdited.title",null)),null)%>" border="0"/><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnother.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.SharedFromAnother.title",null)),null)%>" border="0"/><% } %><% } else { %>
&nbsp;
<% }} %></td>
</tr><% } %><tr>
<td class="w s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="backToAssignmentMethod" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td class="e s" colspan="6" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Finish.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancelSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor -->
<table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewProductVariations_32-SearchPaging"),
new TagParameter("formname","detailForm"),
new TagParameter("pageable","Products")}, 128); %></tr>
</table>
<!-- End Page Cursor --><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.NoProductsFoundForYourSearch",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.TheRepositoryIsEmpty",null)))}, 135); %></table>
<table class="w e s" width="100%"> 
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="backToAssignmentMethod" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td class="right" colspan="4">
<table border="0" cellpadding="0" align="right">
<tr>
<td class="button">
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="cancelSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectProducts_32.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr> 
</table><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>