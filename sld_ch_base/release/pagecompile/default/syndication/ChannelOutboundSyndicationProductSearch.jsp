<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","OutboundSyndication-SearchProducts"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.SearchToAssignProducts.text",null)))}, 8); %><% URLPipelineAction action141 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-Dispatch",null)))),null));String site141 = null;String serverGroup141 = null;String actionValue141 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-Dispatch",null)))),null);if (site141 == null){  site141 = action141.getDomain();  if (site141 == null)  {      site141 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup141 == null){  serverGroup141 = action141.getServerGroup();  if (serverGroup141 == null)  {      serverGroup141 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue141, site141, serverGroup141,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.SearchToAssignProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><!-- Start Errors -->
<tr>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MissingSyndication",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.NoTargetDefined.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MissingWebForm",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.NoSearchParametersDefined.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NothingSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.YouHaveNotSelectedAnythingSelectAndClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% } %></td>
</tr>
</table>
</td>
</tr>
<!-- EO Errors--><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.TheListShowsProductsOfTheChannelRepository.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% out.print("</form>"); %><!-- include Standard Product search mask for simple and parametric search --><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewChannelOutboundSyndicationSearch-Dispatch"),
new TagParameter("parametername1","SyndicationUUID"),
new TagParameter("parametervalue1",getObject("Syndication:UUID")),
new TagParameter("searchtype",getObject("SearchType"))}, 41); %><!-- Main Content --><% URLPipelineAction action142 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-Dispatch",null)))),null));String site142 = null;String serverGroup142 = null;String actionValue142 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-Dispatch",null)))),null);if (site142 == null){  site142 = action142.getDomain();  if (site142 == null)  {      site142 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup142 == null){  serverGroup142 = action142.getServerGroup();  if (serverGroup142 == null)  {      serverGroup142 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue142, site142, serverGroup142,true)); %><input type="hidden" name="SearchType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productsForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productsForm','SelectedProductUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.ListPrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr><% while (loop("Products","ProductBO",null)) { %><tr>
<td class="w e s top center">
<input type="checkbox" name="SelectedProductUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProductBO:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ProductUUID" value="<%=context.getFormattedValue(getObject("ProductBO:ID"),null)%>"/>
</td>
<td class="table_detail top e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null)).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSearch-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null)).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductBOTypeCode", null, "86");} %>&nbsp;</td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.AssignAll.button",null)),null)%>" class="button"/>
<input type="hidden" name="OrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SyndicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="button"><input type="submit" name="AssignSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.AssignSelected.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.Cancel.button",null)),null)%>" class="button"/></td>
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
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pageable","Products"),
new TagParameter("variablepagesize","true")}, 115); %><!-- End Page Cursor --><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Products"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.PressFindButtonToSearchForProducts",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.TheRepositoryIsEmpty",null)))}, 120); %><% } else { %><tr><td class="table_detail"><% {out.write(localizeISText("ChannelOutboundSyndicationProductSearch.PressTheFindButtonToSearchForProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/></tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.Assign.button",null)),null)%>" class="button" disabled="disabled"/>
<input type="hidden" name="OrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SyndicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="button"><input type="submit" name="AssignSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.AssignSelected.button",null)),null)%>" class="button" disabled="disabled"/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationProductSearch.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>