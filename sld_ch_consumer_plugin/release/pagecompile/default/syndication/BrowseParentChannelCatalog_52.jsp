<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="breadcrumb">
<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;&gt;&nbsp;<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ChannelCatalogs.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.SyndicationSynchronization.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-SelectCatalogSource",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SourceDomainUUID",null),context.getFormattedValue(getObject("SourceDomainUUID"),null))),null)%>"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.BrowseToGetProductsStep1SelectSource.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SourceDomainUUID",null),context.getFormattedValue(getObject("SourceDomainUUID"),null))),null)%>"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Step2SelectCatalog.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
<% {out.write(localizeISText("BrowseParentChannelCatalog_52.Step3BrowseAndAssignProducts.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% URLPipelineAction action405 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null));String site405 = null;String serverGroup405 = null;String actionValue405 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null);if (site405 == null){  site405 = action405.getDomain();  if (site405 == null)  {      site405 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup405 == null){  serverGroup405 = action405.getServerGroup();  if (serverGroup405 == null)  {      serverGroup405 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("categoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue405, site405, serverGroup405,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceDomainUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.BrowseToGetProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Step3Of3.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title w e s" nowrap="nowrap" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("BrowseParentChannelCatalog_52.Categories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShowAssignSelectedCategoriesConfirmation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s" >
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.AreYouSureYouWantToAssignAllProductsAvailable.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.OK.button",null)),null)%>" class="button"/></td>
<td>
&nbsp;
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategories:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DeterminePageablePipeline" value="BatchProcessSyndication-GetAssignedProducts"/>
<input type="hidden" name="ProcessDescription" value="<% {out.write(localizeISText("BrowseParentChannelCatalog_52.AssigningProductsFromCategoryChannelRepository","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</td>
<td class="button"><input type="submit" name="CancelAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.Category.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.HaveNotSelectedAnyCatalogCategories.message",null)))}, 66); %><% } %><% } %><tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.SelectCategoriesAndClickAssignToAssignAllProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Category:isRootCategory"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="2">
<table class="table_title_description" cellpadding="0" cellspacing="0" border="0" width="100%"><% while (loop("CategoriesPath","Cat",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Cat:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} %><% } else { %><% {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} %><% } %><tr>
<td><%
													int level = ((Double)getObject("level")).intValue();
													for (int i=0; i<level; i++) {
												%><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="30" height="6" alt="" border="0"/><%}%><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Cat:isRootCategory"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
&nbsp;&gt;&nbsp;
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Cat:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Cat:UUID"),null))).addURLParameter(context.getFormattedValue("SourceDomainUUID",null),context.getFormattedValue(getObject("SourceDomainUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))),null)%>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% } %></table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<!-- Subcategories -->
<tr>
<td class="w e s table_header center" nowrap="nowrap">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" width="80">
<tr>
<td nowrap="nowrap" class="table_header center">
<a href="javascript:selectAll('categoryForm','SelectedCategoryUUID','A','B');" class="tableheader"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" width="80">
<tr>
<td nowrap="nowrap" class="table_header center">
<a href="javascript:selectAll('categoryForm');" class="tableheader"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SubCategories","SubCategory",null)) { %><tr>
<td width="75" class="table_detail w e s center">
<input type="hidden" name="SubCategoryUUID" value="<%=context.getFormattedValue(getObject("SubCategory:UUID"),null)%>"/>
<input type="checkbox" name="SelectedCategoryUUID" value="<%=context.getFormattedValue(getObject("SubCategory:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SubCategory:UUID"),null).equals(context.getFormattedValue(getObject("CategoryClipboard:ObjectUUID(SubCategory:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SourceDomainUUID",null),context.getFormattedValue(getObject("SourceDomainUUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SourceDomainUUID",null),context.getFormattedValue(getObject("SourceDomainUUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SubCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
</tr><% } %></table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail w e s" colspan="2"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ThisCategoryIsEmpty.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% }} %><table border="0" cellspacing="4" cellpadding="0" class="w e s" width="100%">
<tr>
<td align="left"><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("Category:isRootCategory")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="BackToPreviousPage" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.Previous.button",null)),null)%>" class="button"/>
</td><% } else { %><td class="button"><input type="submit" name="BackToParent" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.BackToParent.button",null)),null)%>" class="button"/><input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/></td><% } %></tr>
</table>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ShowAssignSelectedCategoriesConfirmation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.Assign.button",null)),null)%>" class="button"/></td>
<td>&nbsp;</td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td><% } %></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","SubCategories")}, 192); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% } %></td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action406 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null));String site406 = null;String serverGroup406 = null;String actionValue406 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null);if (site406 == null){  site406 = action406.getDomain();  if (site406 == null)  {      site406 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup406 == null){  serverGroup406 = action406.getServerGroup();  if (serverGroup406 == null)  {      serverGroup406 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue406, site406, serverGroup406,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceDomainUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {206}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<!-- Products --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" valign="top">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title w e s " nowrap="nowrap" colspan="5"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("BrowseParentChannelCatalog_52.Products.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShowAssignAllConfirmation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %><tr>
<td colspan="5">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s" >
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.AreYouSureYouWantToAssignAllProductsAvailable.error1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.OK.button",null)),null)%>" class="button"/></td>
<td>
&nbsp;
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {231}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% while (loop("Products","Product",null)) { %><input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {233}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",234);}else{getLoopStack().pop();break;} %><% } %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {236}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Products:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {237}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableName" value="Objects"/>
<input type="hidden" name="ProcessDescription" value="<% {out.write(localizeISText("BrowseParentChannelCatalog_52.AssigningProductsFromCategoryChannelRepository","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</td>
<td class="button"><input type="submit" name="CancelAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="5"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ListShowsAllProductsInThisCategory.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s table_header center" nowrap="nowrap">
<div id="C">
<table border="0" cellspacing="0" cellpadding="0" width="80">
<tr>
<td nowrap="nowrap" class="table_header center">
<a href="javascript:selectAll('productForm','ProductUUID','C','D');" class="tableheader"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="D" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" width="80">
<tr>
<td nowrap="nowrap" class="table_header center">
<a href="javascript:selectAll('productForm','ProductUUID','C','D');" class="tableheader"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s left"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {279}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Products",null,null)) { %><tr>
<td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OfferMap:get(Products:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %><input type="checkbox" name="UnavailableProductUUID" value="" checked="checked" disabled="disabled"/><% } else { %><input type="checkbox" name="SelectedProductUUID" value="<%=context.getFormattedValue(getObject("Products:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Products:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Products:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",288,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ProductUUID" value="<%=context.getFormattedValue(getObject("Products:UUID"),null)%>"/><% } %></td>
<td class="table_detail3 e s left"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Products:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("JumpTo",null),context.getFormattedValue("MasterCatalog",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelSyndication",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Products:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {291}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s left" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Products:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("JumpTo",null),context.getFormattedValue("MasterCatalog",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelSyndication",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Products:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {292}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Products:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {293}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isBundled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",294,e);}if (_boolean_result) { %><% {out.write(localizeISText("BrowseParentChannelCatalog_52.BundledProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isMastered"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",295,e);}if (_boolean_result) { %><% {out.write(localizeISText("BrowseParentChannelCatalog_52.VariationProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isProductBundle"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",296,e);}if (_boolean_result) { %><% {out.write(localizeISText("BrowseParentChannelCatalog_52.ProductBundle.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Products:isProductMaster"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",297,e);}if (_boolean_result) { %><% {out.write(localizeISText("BrowseParentChannelCatalog_52.VariationMaster.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Products:isProductItem")).booleanValue() && !((Boolean) getObject("Products:isMastered")).booleanValue() && !((Boolean) getObject("Products:isBundled")).booleanValue() && !((Boolean) getObject("Products:isProductBundle")).booleanValue() && !((Boolean) getObject("Products:isProductMaster")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",298,e);}if (_boolean_result) { %><% {out.write(localizeISText("BrowseParentChannelCatalog_52.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;</td>
</tr><% } %></table>
<table border="0" cellspacing="4" cellpadding="0" class="w e s" width="100%">
<tr>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ShowAssignAllConfirmation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.AssignAll.button",null)),null)%>" class="button"/></td>
<td>&nbsp;</td>
<td class="button">
<input type="hidden" name="OrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {316}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {317}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {318}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductFormSubmitted" value="true"/><% while (loop("Products","Product",null)) { %><input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {321}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",322);}else{getLoopStack().pop();break;} %><% } %><input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {324}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.AssignSelected.button",null)),null)%>" class="button"/>
</td>
<td>&nbsp;</td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrowseParentChannelCatalog_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Products")}, 338); %><!-- End Page Cursor -->
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>