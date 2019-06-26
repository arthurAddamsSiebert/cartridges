<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-PagingAssignProducts",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductSetID",null),context.getFormattedValue(getObject("ProductSet:UUID"),null))))),
new TagParameter("id","ProductSetProductSearch"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSetAssignProducts_32.AssignProductsBySearch.text",null)))}, 3); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% URLPipelineAction action179 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-DispatchAssignProducts",null)))),null));String site179 = null;String serverGroup179 = null;String actionValue179 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-DispatchAssignProducts",null)))),null);if (site179 == null){  site179 = action179.getDomain();  if (site179 == null)  {      site179 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup179 == null){  serverGroup179 = action179.getServerGroup();  if (serverGroup179 == null)  {      serverGroup179 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-DispatchAssignProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue179, site179, serverGroup179,true)); %><input type="hidden" name="ProductSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ProductSetAssignProducts_32.AssignProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assignSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","product"),
new TagParameter("okbtnname","Assign selected"),
new TagParameter("type","mae")}, 18); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmAssignAllProducts"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/AssignProductsToSharingGroupConfirmationQuestion", null, "24");} %></td>
</tr><% } %><tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductSetAssignProducts_32.TheListShowsProductsOfTheChannelRepositoryThatAre.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% out.print("</form>"); %><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewProductSet_32-DispatchAssignProducts"),
new TagParameter("parametername1","ProductSetID"),
new TagParameter("parametervalue2",getObject("assignBySearch")),
new TagParameter("parametervalue1",getObject("ProductSet:UUID")),
new TagParameter("parametername2","assignBySearch"),
new TagParameter("searchtype",getObject("SearchType"))}, 35); %><% URLPipelineAction action180 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-DispatchAssignProducts",null)))),null));String site180 = null;String serverGroup180 = null;String actionValue180 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-DispatchAssignProducts",null)))),null);if (site180 == null){  site180 = action180.getDomain();  if (site180 == null)  {      site180 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup180 == null){  serverGroup180 = action180.getServerGroup();  if (serverGroup180 == null)  {      serverGroup180 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-DispatchAssignProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("productsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue180, site180, serverGroup180,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e s" width="70">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSetAssignProducts_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSetAssignProducts_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("ProductSetAssignProducts_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductSetAssignProducts_32.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductSetAssignProducts_32.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("ProductSetAssignProducts_32.ListPrice0.table_header",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ProductSetAssignProducts_32.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr><% while (loop("Products","Product",null)) { %><tr>
<td class="w e s top center">
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
</td>
<td class="table_detail top e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelSharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelSharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s right" nowrap="nowrap"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("Product"))}, 70); %></td>
<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "71");} %>&nbsp;</td>
</tr><% } %></table><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSetAssignProducts_32.ThereAreNoFurtherProductsAvailableForAssigningToTh",null)))}, 77); %></table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<input type="hidden" name="ProductSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmAssignAllProducts" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetAssignProducts_32.AssignAll.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="assignSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetAssignProducts_32.AssignSelected.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetAssignProducts_32.Cancel.button",null)),null)%>" class="button"/></td>
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
new TagParameter("pageable","Products")}, 102); %><!-- End Page Cursor --><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO Working Area --><% printFooter(out); %>