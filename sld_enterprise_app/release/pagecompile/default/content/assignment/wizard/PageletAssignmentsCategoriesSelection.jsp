<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentsCreationWizard-BackToCategories",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("RecursiveBoolean",null),context.getFormattedValue(getObject("RecursiveBoolean"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","PageletAssignmentsCategoriesSelection"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletAssignmentsCategoriesSelection.Step2SelectCategories.text",null)))}, 6); %><!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td width="100%" class="table_title aldi"><% {out.write(localizeISText("PageletAssignmentsCategoriesSelection.AssignPageVariantToCategoryPagesStep2SelectCategor.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } else { %><td width="100%" class="table_title aldi"><% {out.write(localizeISText("PageletAssignmentsCategoriesSelection.AssignComponentToCategoryIncludesStep2SelectCatego.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } %></tr>
<!-- Error Handling -->
<!-- confirmation if nothing is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATEGORIES_NOT_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PageletAssignmentsCategoriesSelection.YouHaveNotSelectedCategoriesUseTheCheckboxesToSele.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling --> 
<tr>
<td class="w e s table_title_description"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletAssignmentsCategoriesSelection.Step2Of4NextStepSelectPageType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletAssignmentsCategoriesSelection.Step2Of4NextStepSelectIncludeType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action349 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentsCreationWizard-Dispatch",null)))),null));String site349 = null;String serverGroup349 = null;String actionValue349 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentsCreationWizard-Dispatch",null)))),null);if (site349 == null){  site349 = action349.getDomain();  if (site349 == null)  {      site349 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup349 == null){  serverGroup349 = action349.getServerGroup();  if (serverGroup349 == null)  {      serverGroup349 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentsCreationWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CategoryTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue349, site349, serverGroup349,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item e w s">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td style="padding: 4px;">
<input type="checkbox" name="RecursiveBoolean" value="true"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RecursiveBoolean"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>checked="checked"<% } %> id="RecursiveBoolean"/>
</td>
<td width="100%">
<label for="RecursiveBoolean">&nbsp;<% {out.write(localizeISText("PageletAssignmentsCategoriesSelection.AddToSubCategoriesAlso.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("handlerpipeline","ViewPageCategoryAssignmentsCreationWizard"),
new TagParameter("selectiontype","multiple"),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("enabledetailslink","false"),
new TagParameter("formname","CategoryTreeForm"),
new TagParameter("checkedcategoryuuidmap",getObject("CheckedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("category",getObject("Catalog:Root"))}, 73); %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectCatalog" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsCategoriesSelection.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedTab" value="Assignments" />
<input type="submit" name="selectRelationType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsCategoriesSelection.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsCategoriesSelection.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><!-- EO Main Content --> 
<!-- EO Working Area --><% printFooter(out); %>