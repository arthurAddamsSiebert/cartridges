<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-SelectClassificationCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignProductsActionBrowseClassificationCatalog_32.Step3SelectClassificationCategory.text",null)))}, 5); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.Step3AssignProductsToClassificationCatalogCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirm"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.YouHaveNotSelectedAClassificationCatalogCategory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.Step3Of4SelectCategory.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="5" class="infobox n w e"><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} %><% while (loop("CategoriesPath","Cat",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><td class="infobox_description" style="padding-left:<%=context.getFormattedValue((new Double( ((Number) (val(context.getFormattedValue((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(13)).doubleValue())),null)))).doubleValue() +((Number) new Double(6)).doubleValue())),null)%>px;"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.Catalog.infobox_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% } else { %><%int level = ((Double)getObject("level")).intValue();%><%=((com.intershop.component.mvc.capi.catalog.ClassificationSystem)getObject("Catalog:ClassificationSystem")).getLevelName(level) %><% } %></td><% } %><td class="infobox_description" width="92%" style="padding-left:<%=context.getFormattedValue((new Double( ((Number) (val(context.getFormattedValue((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(13)).doubleValue())),null)))).doubleValue() +((Number) new Double(6)).doubleValue())),null)%>px;"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Cat:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-BrowseClassificationCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Cat:UUID"),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null))),null)%>" class="infobox_link"><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("Cat:Name"),null),((Number)((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(2)).doubleValue())))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("Cat:Name"),null),((Number)((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(2)).doubleValue())))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} %><% } %><tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
</table><% URLPipelineAction action15 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null));String site15 = null;String serverGroup15 = null;String actionValue15 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null);if (site15 == null){  site15 = action15.getDomain();  if (site15 == null)  {      site15 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup15 == null){  serverGroup15 = action15.getServerGroup();  if (serverGroup15 == null)  {      serverGroup15 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Catalog:UUID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue15, site15, serverGroup15,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="e">
<tr>
<td class="table_header w n s" colspan="4"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.SubCategoriesOf0.table_header",null,null,encodeString(context.getFormattedValue(getObject("Category:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% while (loop("SubCategories","SubCategory",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategory:SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("LastLevel", temp_obj);} %><% } else { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("LastLevel", temp_obj);} %><% } %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",73);}else{getLoopStack().pop();break;} %><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LastLevel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><td class="table_header w s"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s" nowrap="nowrap" width="50%"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SubCategories","SubCategory",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LastLevel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><td class="center w s" width="1%">
<input type="radio" name="SelectedCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% } %><td class="w s" nowrap="nowrap">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LastLevel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-BrowseClassificationCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %></td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseClassificationCatalog_32.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("SubCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseClassificationCatalog_32.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %>&nbsp;
</td>
</tr>
</table>
</td>
<td class="table_detail w s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LastLevel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-BrowseClassificationCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } %></td>
<td class="table_detail w s"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w s" colspan="3"><% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.ThisCategoryDoesNotContainAnySubCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left" class="w s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseClassificationCatalog_32.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right" class="e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LastLevel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirm" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseClassificationCatalog_32.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
<input type="hidden" name="ProcessDescription" value="<% {out.write(localizeISText("AssignProductsActionBrowseClassificationCatalog_32.AssigningProductsToClassificationCatalogCategory",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;/&nbsp;"/>
</td><% } %><td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "149");} %><input type="hidden" name="ProcessName" value="assignProductToClassificationCatalogCategory"/>
<input type="hidden" name="ProcessDescription" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseClassificationCatalog_32.Cancel.button",null)),null)%>" class="button"/>
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ConfirmStep" value="4"/>
<input type="hidden" name="ActionID" value="AssignProductToClassificationCatalogCategory"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Category:UUID")),
new TagParameter("item","Sub-Categories"),
new TagParameter("parametervalue4",getObject("IsSearchFired")),
new TagParameter("parametervalue3",getObject("ChannelID")),
new TagParameter("parametername1","ProductPageableID"),
new TagParameter("parametervalue2",getObject("Catalog:UUID")),
new TagParameter("parametervalue1",getObject("PageableID")),
new TagParameter("parametername2","CatalogUUID"),
new TagParameter("parametername3","ChannelID"),
new TagParameter("pageable","SubCategories"),
new TagParameter("pipeline","ViewProductProcessingWizard_32-ClassificationCategoryPaging"),
new TagParameter("parametername4","IsSearchFired"),
new TagParameter("parametername","CatalogCategoryID")}, 172); %></tr>
</table><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>