<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("CSVImport",null),context.getFormattedValue(getObject("CSVImport"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductImportSelectFile_52.ProductImportStep1SelectFile.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductImportSelectFile_52.ProductImportStep1SelectFile.text",null)))}, 8); %><% } %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectFile_52.ProductImportSelectFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/CSVImportFormValidation", null, "17");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ProductImportSelectFile_52.Step1Of3NextStepValidateImportFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action479 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-Dispatch",null)))),null));String site479 = null;String serverGroup479 = null;String actionValue479 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-Dispatch",null)))),null);if (site479 == null){  site479 = action479.getDomain();  if (site479 == null)  {      site479 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup479 == null){  serverGroup479 = action479.getServerGroup();  if (serverGroup479 == null)  {      serverGroup479 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue479, site479, serverGroup479,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/CSVImportForm", null, "25");} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/ImportFileList", null, "27");} %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="JobDescription" value="Validates product import file."/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><input type="hidden" name="CSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="ValidateFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductImportSelectFile_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CSVImport")))).booleanValue() && !((Boolean) ((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductImportSelectFile_52.Cancel.button",null)),null)%>" class="button"/>
</td>
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
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 56); %><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>