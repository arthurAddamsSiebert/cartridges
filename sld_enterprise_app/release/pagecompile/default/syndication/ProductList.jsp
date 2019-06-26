<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("listview","true"),
new TagParameter("wizard","false"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductList.AssignProducts.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","false"),
new TagParameter("listview","true"),
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProducts-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceRepositoryID",null),context.getFormattedValue(getObject("SourceRepositoryID"),null))))),
new TagParameter("id","ProductParametricSearchCatalogSelection"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductList.Step2AssignProducts.text",null)))}, 6); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td><% URLPipelineAction action572 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProducts-Dispatch",null)))),null));String site572 = null;String serverGroup572 = null;String actionValue572 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProducts-Dispatch",null)))),null);if (site572 == null){  site572 = action572.getDomain();  if (site572 == null)  {      site572 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup572 == null){  serverGroup572 = action572.getServerGroup();  if (serverGroup572 == null)  {      serverGroup572 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProducts-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue572, site572, serverGroup572,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ProductList.SearchToGetProductsAssignProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- nothing selected error --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td class="e w s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductList.YouHaveNotSelectedAnythingSelectAndClickAssignSele.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShowAssignAllConfirmation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><tr><td>
<input type="hidden" name="SourceRepositoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepositoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("ProductList.AreYouSureYouWantToAssignAllProductsAvailableInThe.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/></td>
<td>
&nbsp;
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="OrganizationUUID" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/>
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Repository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% while (loop("Products","Product",null)) { %><input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",52);}else{getLoopStack().pop();break;} %><% } %><input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Products:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableName" value="Objects"/>
</td>
<td class="button"><input type="submit" name="CancelAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td></tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductList.Step2Of2TheListShowsAllProductsAvailableInTheParen.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content -->
<!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewSyndicationProducts-Dispatch"),
new TagParameter("embeddedinform","true"),
new TagParameter("parametervalue3",context.getFormattedValue(getObject("CatalogOwningDomainUUID"),null)),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue2",getObject("SourceRepositoryID")),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("parametername2","SourceRepositoryID"),
new TagParameter("searchtype",getObject("SearchType")),
new TagParameter("parametername3","CatalogOwningDomainUUID")}, 74); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="hidden" name="SourceRepositoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepositoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><b><% {out.write(localizeISText("ProductList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ProductList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ProductList.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s right" nowrap="nowrap"><b><% {out.write(localizeISText("ProductList.ListPrice0.table_header",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ProductList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr><% while (loop("Products","Product",null)) { %><tr>
<td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OfferMap:get(Product:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><input type="checkbox" name="UnavailableProductUUID" value="" checked="checked" disabled="disabled"/><% } else { %><input type="checkbox" name="SelectedProductUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ProductUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><% } %></td>
<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SourceRepositoryID",null),context.getFormattedValue(getObject("SourceRepositoryID"),null)).addURLParameter(context.getFormattedValue("cameFrom",null),context.getFormattedValue("parentChannelProductList",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Syndication",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SourceRepositoryID",null),context.getFormattedValue(getObject("SourceRepositoryID"),null)).addURLParameter(context.getFormattedValue("cameFrom",null),context.getFormattedValue("parentChannelProductList",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Syndication",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s right" nowrap="nowrap"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("Product"))}, 121); %></td>
<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "122");} %>&nbsp;</td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ShowAssignAllConfirmation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Repository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% while (loop("Products","Product",null)) { %><input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",139);}else{getLoopStack().pop();break;} %><% } %><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignSelected.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
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
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Products")}, 152); %><!-- End Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.ThereAreNoProductsInList",null)))}, 164); %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table> 
<% } %><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>