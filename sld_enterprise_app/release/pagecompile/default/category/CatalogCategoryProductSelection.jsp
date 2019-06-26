<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "java.util.*,com.intershop.beehive.xcs.capi.product.*" %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("id","catalogCatProdSelect"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogCategoryProductSelection.AddProducts.text",null)))}, 5); %><table class="n s w e" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="table_title" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("CatalogCategoryProductSelection.AddProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assignSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("CatalogCategoryProductSelection.YouHaveNotSelectedAnyProductsToBeAssignedUseTheChe.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmAssignAllProducts"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td><% URLPipelineAction action254 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),null));String site254 = null;String serverGroup254 = null;String actionValue254 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),null);if (site254 == null){  site254 = action254.getDomain();  if (site254 == null)  {      site254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup254 == null){  serverGroup254 = action254.getServerGroup();  if (serverGroup254 == null)  {      serverGroup254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmAssignProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue254, site254, serverGroup254,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/AssignProductsToCategoryConfirmationQuestion", null, "32");} %><% out.print("</form>"); %></td>
</tr><% } %><tr>
<td class="table_title_description e w s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("IsSearchFired")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("IsSearchFired"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogCategoryProductSelection.TheListShowsAllSearchResults.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("CatalogCategoryProductSelection.TheListShowsAllProductsCurrentlyInTheCentralReposi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("CatalogCategoryProductSelection.UseTheCheckboxesAndTheAssignSelectedButtonToAddNew.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("CatalogCategoryProductSelection.CustomAttributesCase1.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<br/><% {out.write(localizeISText("CatalogCategoryProductSelection.CustomAttributesCase2.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
</tr>
</table>
<!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogCategoryProductAssignment-Dispatch"),
new TagParameter("parametername1","CatalogCategoryID"),
new TagParameter("parametervalue2",getObject("IsSearchFired")),
new TagParameter("parametervalue1",getObject("Category:UUID")),
new TagParameter("parametername2","IsSearchFired"),
new TagParameter("searchtype",getObject("SearchType"))}, 58); %><!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% URLPipelineAction action255 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));String site255 = null;String serverGroup255 = null;String actionValue255 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null);if (site255 == null){  site255 = action255.getDomain();  if (site255 == null)  {      site255 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup255 == null){  serverGroup255 = action255.getServerGroup();  if (serverGroup255 == null)  {      serverGroup255 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue255, site255, serverGroup255,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header e w s left" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('assignProductsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CatalogCategoryProductSelection.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('assignProductsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CatalogCategoryProductSelection.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("CatalogCategoryProductSelection.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("CatalogCategoryProductSelection.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("CatalogCategoryProductSelection.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("CatalogCategoryProductSelection.ListPrice0.table_header",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("CatalogCategoryProductSelection.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" width="10%"><% {out.write(localizeISText("CatalogCategoryProductSelection.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Products","Product",null)) { %><tr><% {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} %><% while (loop("CategoryProducts","AssignedProduct",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignedProduct:UUID"),null).equals(context.getFormattedValue(getObject("Product:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><td class="table_detail w e s center">
<input type="checkbox" checked="checked" disabled="disabled"/>
</td><% } else { %><td class="table_detail w e s center">
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Product:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
</td><% } %><td class="table_detail top e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %></td>
<td class="table_detail top e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %></td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s right" nowrap="nowrap" style="white-space: nowrap"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("Product"))}, 139); %>&nbsp;
</td>
<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "141");} %>&nbsp;</td>
<td class="table_detail top e s left"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.InStock.alt",null)),null)%>" border="0"/><% } %>&nbsp;
</td>
</tr><% } %><tr>
<td align="right" class="w e s" colspan="7">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/>
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>"/>
<input type="hidden" name="CategoryName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="confirmAssignAllProducts" value="<% {out.write(localizeISText("CatalogCategoryProductSelection.AssignAll0.button",null,null,encodeString(context.getFormattedValue(getObject("Products:ElementCount"),null)),null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
<td class="button">
<input type="submit" name="assignSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.AssignSelected.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.Cancel.button",null)),null)%>" class="button"/>
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
new TagParameter("pipeline","ViewCatalogCategoryProductAssignment-Paging"),
new TagParameter("parametername1","SearchType"),
new TagParameter("parametervalue2",getObject("IsSearchFired")),
new TagParameter("parametervalue1",getObject("SearchType")),
new TagParameter("parametername2","IsSearchFired"),
new TagParameter("formname","assignProductsForm"),
new TagParameter("pageable","Products")}, 177); %></tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- End Page Cursor --><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="e w s"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null)))}, 189); %></table><% URLPipelineAction action256 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));String site256 = null;String serverGroup256 = null;String actionValue256 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null);if (site256 == null){  site256 = action256.getDomain();  if (site256 == null)  {      site256 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup256 == null){  serverGroup256 = action256.getServerGroup();  if (serverGroup256 == null)  {      serverGroup256 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCategoryProductAssignment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue256, site256, serverGroup256,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right" class="w e s" colspan="7">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/>
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Category:UUID" value="<%=context.getFormattedValue(getObject("SelectedCategory:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>"/>
<input type="hidden" name="CategoryName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %></td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryProductSelection.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>