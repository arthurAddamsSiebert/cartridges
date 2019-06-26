<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "java.util.*,com.intershop.beehive.xcs.capi.product.*" %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("AssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("AssignmentType",null),context.getFormattedValue(getObject("AssignmentType"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletAssignmentsProductsSelection.Step1SelectProducts.text",null)))}, 6); %><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><td width="100%" class="table_title aldi"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.AssignPageVariantToProductPagesStep1SelectProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } else { %><td width="100%" class="table_title aldi"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.AssignComponentToProductIncludesStep1SelectProduct.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } %></tr>
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("selectRelationType")))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.YouHaveNotSelectedAnyProductsUseTheCheckboxesToSel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="w e s table_title_description"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletAssignmentsProductsSelection.Step1Of3NextStepSelectPageType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletAssignmentsProductsSelection.Step1Of3NextStepSelectIncludeType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% URLPipelineAction action348 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-Dispatch",null)))),null));String site348 = null;String serverGroup348 = null;String actionValue348 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-Dispatch",null)))),null);if (site348 == null){  site348 = action348.getDomain();  if (site348 == null)  {      site348 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup348 == null){  serverGroup348 = action348.getServerGroup();  if (serverGroup348 == null)  {      serverGroup348 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue348, site348, serverGroup348,true)); %><!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewPageProductAssignmentsCreation-Dispatch"),
new TagParameter("parametervalue5","AssignableProductsList"),
new TagParameter("parametervalue3",getObject("AssignmentType")),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("searchtype",getObject("SearchType")),
new TagParameter("parametername3","AssignmentType"),
new TagParameter("parametername5","PageLocatorName"),
new TagParameter("embeddedInForm","true")}, 49); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header e s w left" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('assignProductsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('assignProductsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.ListPrice0.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" width="10%"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Products","ProductBO",null)) { %><tr>
<td class="table_detail w e s center">
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ProductBO:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>"/>
</td>
<td class="table_detail top e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail top e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s right" nowrap="nowrap" style="white-space: nowrap"><% processOpenTag(response, pageContext, "productboprice", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 109); %>&nbsp;
</td>
<td class="table_detail top e s left" nowrap="nowrap"><% processOpenTag(response, pageContext, "productbotypecode", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 111); %>&nbsp;</td>
<td class="table_detail top e s left"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsProductsSelection.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsProductsSelection.InStock.alt",null)),null)%>" border="0"/><% } %>&nbsp;
</td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td align="right" class="w e s" >
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SelectedTab" value="Assignments" />
<input type="submit" name="selectRelationType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsProductsSelection.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancelAssign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsProductsSelection.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pageable","Products"),
new TagParameter("variablepagesize","false")}, 138); %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
}, 141); %><tr>
<td align="right" class="n s" colspan="7">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SelectedTab" value="Assignments" />
<input type="submit" name="cancelAssign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsProductsSelection.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>