<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "java.util.*,com.intershop.beehive.xcs.capi.product.*" %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-BackToProcessAssignmentMethod",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.VariationProductAssignmentStep2SelectProducts.text",null)))}, 5); %><!-- Main Content -->
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.VariationProductAssignmentSelectProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoProductSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAnyProductsToAddToTheVariationMa.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("sld_enterprise_app.Step2Of2SelectProductsUseTheCheckboxesToSelectProd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content -->
<!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewProductVariations-Dispatch"),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("searchtype",getObject("SearchType"))}, 33); %><!-- Main Content --><% URLPipelineAction action81 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-Dispatch",null)))),null));String site81 = null;String serverGroup81 = null;String actionValue81 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-Dispatch",null)))),null);if (site81 == null){  site81 = action81.getDomain();  if (site81 == null)  {      site81 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup81 == null){  serverGroup81 = action81.getServerGroup();  if (serverGroup81 == null)  {      serverGroup81 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue81, site81, serverGroup81,true)); %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e s left" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right">&nbsp;<% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" width="75"><% {out.write(localizeISText("sld_enterprise_app.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Products","ProductBO",null)) { %><tr>
<td class="table_detail w e s center top">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Product:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("ProductBO:isProductMaster"))).booleanValue() && !((Boolean) (getObject("ProductBO:isProductBundle"))).booleanValue() && !((Boolean) (getObject("ProductBO:isMastered"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProductBO:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isMastered"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><input type="checkbox" disabled="disabled" checked="checked"/><% } else { %><input type="checkbox" disabled="disabled"/><% }} %></td>
<td class="table_detail e s top">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Products",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s top">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Products",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s right top" nowrap="nowrap"><% processOpenTag(response, pageContext, "productboprice", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 84); %></td>
<td class="table_detail e s left" nowrap="nowrap"><% processOpenTag(response, pageContext, "productbotypecode", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 85); %>&nbsp;</td>
<td class="table_detail e s left top"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.title",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.alt",null)),null)%>" border="0"title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.title",null)),null)%>" /><% } %>&nbsp;
</td>
</tr><% } %><tr>
<td class="w s" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="backToAssignmentMethod" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td class="right e s" colspan="4">
<table border="0" cellspacing="4" cellpadding="0" align="right">
<tr>
<td class="button">
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Finish.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancelSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
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
new TagParameter("pipeline","ViewProductVariations-SearchPaging"),
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("formname","detailForm"),
new TagParameter("pageable","Products"),
new TagParameter("parametername","ProductID")}, 122); %></tr>
</table>
<!-- End Page Cursor --><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null)))}, 131); %></table>
<table class="w e s" width="100%"> 
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="backToAssignmentMethod" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td class="right" colspan="4">
<table border="0" cellpadding="0" align="right">
<tr>
<td class="button">
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="cancelSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr> 
</table><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>