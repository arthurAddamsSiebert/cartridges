<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelProducts_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue("ParentRepository",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","Assign Products"),
new TagParameter("text",localizeText(context.getFormattedValue("ParentChannelProductList_52.Step2AssignProducts.text",null)))}, 5); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% URLPipelineAction action418 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelProducts_52-Dispatch",null)))),null));String site418 = null;String serverGroup418 = null;String actionValue418 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelProducts_52-Dispatch",null)))),null);if (site418 == null){  site418 = action418.getDomain();  if (site418 == null)  {      site418 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup418 == null){  serverGroup418 = action418.getServerGroup();  if (serverGroup418 == null)  {      serverGroup418 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelProducts_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue418, site418, serverGroup418,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ParentChannelProductList_52.SearchToGetProductsAssignProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- nothing selected error --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("okbtnname","Assign"),
new TagParameter("type","mae")}, 19); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShowAssignAllConfirmation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("ParentChannelProductList_52.AreYouSureYouWantToAssignAllProductsAvailable.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right"> 
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelProductList_52.OK.button",null)),null)%>" class="button"/></td>
<td>
&nbsp;
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% while (loop("Products","Product",null)) { %><input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",40);}else{getLoopStack().pop();break;} %><% } %><input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Products:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableName" value="Objects"/>
<input type="hidden" name="ProcessDescription" value="Assigning products from parent channel repository to current channel."/>
<input type="hidden" name="OrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="button"><input type="submit" name="CancelAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelProductList_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table> 
</td> 
</tr>
</table>
</td>
</tr> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyndicationErrors"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><tr>
<td class="w e s"> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>&nbsp;<% {out.write(localizeISText("ParentChannelProductList_52.SyndicationFailed",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
</tr><% while (loop("SyndicationErrors","ProductUUID",null)) { %><tr>
<td class="error" nowrap="nowrap" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SyndicationErrorMap:get(ProductUUID):ErrorCode"),null).equals(context.getFormattedValue("ProductIDToLarge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {out.write(localizeISText("ParentChannelProductList_52.TheResultingProductIDForProduct0IsToLarge.error",null,null,encodeString(context.getFormattedValue(getObject("SyndicationErrorMap:get(ProductUUID):SourceProduct:Name"),null)),null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("ParentChannelProductList_52.ExceptionForProduct0Occurred1.error",null,null,encodeString(context.getFormattedValue(getObject("SyndicationErrorMap:get(ProductUUID):SourceProduct:Name"),null)),(getObject("SyndicationErrorMap:get(ProductUUID):Exception")),null,null,null,null,null,null,null,null));} %><% } %></td>
</tr> 
<% } %></table>
</td>
</tr><% } %> 
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ParentChannelProductList_52.Step2Of2TheListShowsProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% out.print("</form>"); %><!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewSyndicationParentChannelProducts_52-Dispatch"),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("searchtype",getObject("SearchType"))}, 89); %><!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% URLPipelineAction action419 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelProducts_52-Dispatch",null)))),null));String site419 = null;String serverGroup419 = null;String actionValue419 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelProducts_52-Dispatch",null)))),null);if (site419 == null){  site419 = action419.getDomain();  if (site419 == null)  {      site419 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup419 == null){  serverGroup419 = action419.getServerGroup();  if (serverGroup419 == null)  {      serverGroup419 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelProducts_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue419, site419, serverGroup419,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productsForm','ProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ParentChannelProductList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productsForm','ProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ParentChannelProductList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div> 
</td> 
<td class="table_header e s"><b><% {out.write(localizeISText("ParentChannelProductList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ParentChannelProductList_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ParentChannelProductList_52.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s right" nowrap="nowrap"><b><% {out.write(localizeISText("ParentChannelProductList_52.ListPrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</b></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ParentChannelProductList_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Products","Product",null)) { %> 
<tr>
<td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OfferMap:get(Product:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><input type="checkbox" name="UnavailableProductUUID" value="" checked="checked" disabled="disabled"/><% } else { %><input type="checkbox" name="SelectedProductUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ProductUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/> 
<% } %></td> 
<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue("ParentRepository",null)).addURLParameter(context.getFormattedValue("JumpTo",null),context.getFormattedValue("ParentChannelProducts",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue("ParentRepository",null)).addURLParameter(context.getFormattedValue("JumpTo",null),context.getFormattedValue("ParentChannelProducts",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "137");} %>&nbsp;</td>
</tr> 
<% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ShowAssignAllConfirmation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelProductList_52.AssignAll.button",null)),null)%>" class="button"/></td>
<td class="button">
<input type="hidden" name="OrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% while (loop("Products","Product",null)) { %><input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",153);}else{getLoopStack().pop();break;} %><% } %><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelProductList_52.AssignSelected.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelProductList_52.Cancel.button",null)),null)%>" class="button"/></td> 
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
new TagParameter("pageable","Products")}, 170); %><!-- End Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td class="backbar_left" width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelProductList_52.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table> 
</td> 
</tr> 
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.NoProductsFoundForYourSearch",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.TheRepositoryIsEmpty",null)))}, 195); %></table><% } %></td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>