<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportCatalogType"),null).equals(context.getFormattedValue("classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = ("ViewCatalogImport-SelectClassificationCatalogFilePaging"); getPipelineDictionary().put("BreadcrumbPipeline", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("CatalogImportSelectFile.ClassificationCategoryImportStep1SelectFile.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %><% } else { %><% {Object temp_obj = ("ViewCatalogImport-Paging"); getPipelineDictionary().put("BreadcrumbPipeline", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("CatalogImportSelectFile.CategoryImportStep1SelectFile.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("BreadcrumbPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectFileForm_SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("CSVImport",null),context.getFormattedValue(getObject("CSVImport"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",getObject("BreadcrumbText"))}, 14); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("BreadcrumbPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectFileForm_SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",getObject("BreadcrumbText"))}, 16); %><% } %><!-- ISBreadCrumbTrail link="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-SelectFile",null)))),null)%>" text="Category Import Step 1 - Select File" -->
<!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportSelectFile.CategoryImportSelectFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/CSVImportFormValidation", null, "26");} %><% URLPipelineAction action615 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null));String site615 = null;String serverGroup615 = null;String actionValue615 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null);if (site615 == null){  site615 = action615.getDomain();  if (site615 == null)  {      site615 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup615 == null){  serverGroup615 = action615.getServerGroup();  if (serverGroup615 == null)  {      serverGroup615 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue615, site615, serverGroup615,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/CSVImportForm", null, "32");} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/ImportFileList", null, "34");} %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="JobDescription" value="Validates catalog import file."
/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CSVImport")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:CSVImport")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><input type="hidden" name="CSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImportCatalogType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><input type="hidden" name="ImportCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImportCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="ValidateFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CSVImport")))).booleanValue() && !((Boolean) ((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 63); %><% } %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>