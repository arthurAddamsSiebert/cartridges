<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- SharedCatalogCategories.isml -->
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" nowrap="nowrap"><% {out.write(localizeISText("SharedCatalogCategories.Categories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SharedCatalogCategories.TheseCategoriesAreCustomCategoriesCreatedHereOrImp.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<!-- sub categories --><% URLPipelineAction action274 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Dispatch",null)))),null));String site274 = null;String serverGroup274 = null;String actionValue274 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Dispatch",null)))),null);if (site274 == null){  site274 = action274.getDomain();  if (site274 == null)  {      site274 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup274 == null){  serverGroup274 = action274.getServerGroup();  if (serverGroup274 == null)  {      serverGroup274 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CategoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue274, site274, serverGroup274,true)); %><input type="hidden" name="SubCategoryFormSubmitted" value="true"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("SharedCatalogCategories.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="75%"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {out.write(localizeISText("SharedCatalogCategories.Keywords.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SharedCatalogCategories.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SharedCatalogCategories.Published.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("Catalog:isProxy")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OrganizationDomain:DomainName"),null).equals(context.getFormattedValue(getObject("Catalog:OwningDomain:DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><td class="table_header e s" width="10%">&nbsp;</td><% } %></tr><% while (loop("SubCategories","SubCategory",null)) { %><!-- Checks if the sub-category has dynamic product binding (SQD in the current channel domain) --><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","Name"),
new TagParameter("value0",getObject("SubCategory:SearchQueryDefinitionName")),
new TagParameter("mapname","GetSQDByNameParamMap")}, 39); %><% {try{executePipeline("ProcessSearchQueryDefinitionBySearchIndex-GetCategorySQDByName",((java.util.Map)(getObject("GetSQDByNameParamMap"))),"GetSubCategorySQDByNameResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 40.",e);}} %><tr> 
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:ID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("HideEmpty",null),context.getFormattedValue(getObject("HideEmpty"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "catalogcategorybodisplayname", new TagParameter[] {
new TagParameter("UseIDFallback","true"),
new TagParameter("CatalogCategoryBO",getObject("SubCategory"))}, 49); %></a></td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SharedCatalogCategories.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetSubCategorySQDByNameResultDict:SearchQueryDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SharedCatalogCategories.DynamicProductBinding.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SharedCatalogCategories.DynamicProductBinding.title",null)),null)%>" border="0"/><% } %></td>
</tr>
</table>
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SubCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SubCategory:PublishedDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:PublishedDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:PublishedDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("SharedCatalogCategories.NotPublished.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td><% } %></tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("hide")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("HideEmpty")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("HideEmpty"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><input type="hidden" name="HideEmpty" value="off"/>
<input type="submit" name="show" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SharedCatalogCategories.ShowEmptyClassifications.button",null)),null)%>" class="button"/><% } else { %><input type="hidden" name="HideEmpty" value="on"/>
<input type="submit" name="hide" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SharedCatalogCategories.HideEmptyClassifications.button",null)),null)%>" class="button"/><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_REPLICATE_CATALOG_WO_PROVIDER"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_REPLICATE_CATALOG_WO_PROVIDER"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="selectStagingTarget" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SharedCatalogCategories.PublishToLiveSystem.button",null)),null)%>" class="button"/>
</td><% } %><% } %></tr>
</table>
</td>
</tr>
</table><% } %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%"><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","SubCategories")}, 110); %></td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("SharedCatalogCategories.ThisCategoryDoesNotContainAnySubCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("HideEmpty")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("HideEmpty"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="HideEmpty" value="off"/>
<input type="submit" name="show" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SharedCatalogCategories.ShowEmptyClassifications.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><% } %></table><% out.print("</form>"); %><!-- end of SharedCatalogCategories.isml --><% printFooter(out); %>