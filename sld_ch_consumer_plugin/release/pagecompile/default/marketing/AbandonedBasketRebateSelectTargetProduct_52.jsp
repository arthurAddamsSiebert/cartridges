<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MultipleProductSelection"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Show",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AbandonedBasketRebateSelectTargetProduct_52.SelectProduct.text",null)))}, 5); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Show",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AbandonedBasketRebateSelectTargetProduct_52.SelectProducts.text",null)))}, 7); %><% } %><% URLPipelineAction action551 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Dispatch",null)))),null));String site551 = null;String serverGroup551 = null;String actionValue551 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Dispatch",null)))),null);if (site551 == null){  site551 = action551.getDomain();  if (site551 == null)  {      site551 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup551 == null){  serverGroup551 = action551.getServerGroup();  if (serverGroup551 == null)  {      serverGroup551 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue551, site551, serverGroup551,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MultipleProductSelection"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.SelectProduct.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.SelectProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<!-- nothing selected error --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("okbtnname","Select"),
new TagParameter("type","mae")}, 23); %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.TheListShowsAllAvailableProductsInThisChannelRepos.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% out.print("</form>"); %><!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewEmailMarketing_52-Dispatch"),
new TagParameter("parametervalue3",getObject("MultipleProductSelection")),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue2",getObject("Rebate:UUID")),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("parametername2","RebateUUID"),
new TagParameter("searchtype",getObject("SearchType")),
new TagParameter("parametername3","MultipleProductSelection")}, 33); %><!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><!-- Main Content --><% URLPipelineAction action552 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Dispatch",null)))),null));String site552 = null;String serverGroup552 = null;String actionValue552 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Dispatch",null)))),null);if (site552 == null){  site552 = action552.getDomain();  if (site552 == null)  {      site552 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup552 == null){  serverGroup552 = action552.getServerGroup();  if (serverGroup552 == null)  {      serverGroup552 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketing_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue552, site552, serverGroup552,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MultipleProductSelection"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><td class="w e s table_header center" nowrap="nowrap" width="70">&nbsp;</td><% } else { %><td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productsForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productsForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s"><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.ListPrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("AbandonedBasketRebateSelectTargetProduct_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr><% while (loop("Products","ProductBO",null)) { %><tr>
<td class="w e s top center">
<input type="checkbox" name="SelectedProductUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProductBO:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
<input type="hidden" name="ProductUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>"/>
</td>
<td class="table_detail3 top e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail3 top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductBOTypeCode", null, "81");} %>&nbsp;
</td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("MultipleProductSelection"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AbandonedBasketRebateSelectTargetProduct_52.Select.button",null)),null)%>" class="button"/></td><% } %><td class="button">
<input type="hidden" name="RebateUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="MultipleProductSelection" value="<% {String value = null;try{value=context.getFormattedValue(getObject("MultipleProductSelection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% while (loop("Products","ProductBO",null)) { %><input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Repository:RepositoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",101);}else{getLoopStack().pop();break;} %><% } %><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AbandonedBasketRebateSelectTargetProduct_52.Cancel.button",null)),null)%>" class="button"/>
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
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Products")}, 116); %><!-- End Page Cursor --><% out.print("</form>"); %><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSearch.NoProductsFoundForYourSearch",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSearch.TheRepositoryIsEmpty",null)))}, 121); %></table><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>