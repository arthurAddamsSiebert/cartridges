<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><script type="text/javascript" language="JavaScript"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CategoryCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryCSVImport",null),context.getFormattedValue(getObject("CategoryCSVImport"),null))),null)%>'", 10000)
<% } else { %>
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),null)%>'", 10000)
<% } %></script><% } %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfigurationUUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","System/Catalog/Export/Step2"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImportValidateFile.Step2ValidateFile.text",null)))}, 14); %><% URLPipelineAction action54 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null));String site54 = null;String serverGroup54 = null;String actionValue54 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null);if (site54 == null){  site54 = action54.getDomain();  if (site54 == null)  {      site54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup54 == null){  serverGroup54 = action54.getServerGroup();  if (serverGroup54 == null)  {      serverGroup54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue54, site54, serverGroup54,true)); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.CategoryImportValidateFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("CatalogAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error e s" width="100%"><% {out.write(localizeISText("CatalogImportValidateFile.TheSelectedRootCatalogDeletedButJobNotRun.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" nowrap="nowrap" width="100%"><% {out.write(localizeISText("CatalogImportValidateFile.Step2Of3NextStepImportFile.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),"breadcrumb",null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.ValidatingImportFile.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail s e" width="1%" nowrap><% {out.write(localizeISText("CatalogImportValidateFile.CurrentAction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail s"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","CurrentActivity")}, 45); %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.ValidatingImportFile.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail s e" width="1%" nowrap><% {out.write(localizeISText("CatalogImportValidateFile.CurrentAction.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail s"><% {out.write(localizeISText("CatalogImportValidateFile.PreparingSourceFileValidation.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr>
</table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.ImportFileContent.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail s"><% {out.write(localizeISText("CatalogImportValidateFile.ThisFileDoesNotContainValidEnfinityXMLIf.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.ImportFileContent.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail s e" width="1%" nowrap><% {out.write(localizeISText("CatalogImportValidateFile.RootCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:RootCategoryName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:RootCategoryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><input type="hidden" name="SelectedCatalogName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:RootCategoryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } else { %>
&nbsp;
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:ClassificationSystemName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><input type="hidden" name="ClassificationSystemName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:ClassificationSystemName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CustomCatalogType" value="Classification"/><% } %></td>
</tr>
<tr>
<td class="table_detail s e" width="1%" nowrap><% {out.write(localizeISText("CatalogImportValidateFile.Categories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_category"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_category"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0<% } %></td>
</tr>
<tr>
<td class="table_detail s e" nowrap><% {out.write(localizeISText("CatalogImportValidateFile.ProductTypes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SourceCountPT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SourceCountPT"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0<% } %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_header" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.LogFile.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LogContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("LogContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="fielditem2" wrap width="100%"><textarea class="inputfield_en" cols="70" rows="15"><% {String value = null;try{value=context.getFormattedValue(getObject("LogContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue("log",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:UUID"),null) + context.getFormattedValue("-0.log",null),null))),null)%>" class="table_detail_link2"><% {out.write(localizeISText("CatalogImportValidateFile.DownloadLogFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"> 
<tr>
<td class="table_detail"><% {out.write(localizeISText("CatalogImportValidateFile.ThereAreNoLogMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% } %><% }} %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImportCatalogType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><input type="hidden" name="ImportCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImportCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
<input type="submit" name="SelectFile" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportValidateFile.Previous.button",null)),null)%>" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>disabled<% } %> /></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CategoryCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><input type="hidden" name="CategoryCSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryCSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% } %><input type="hidden" name="JobConfigurationUUID" value="<%=context.getFormattedValue(getObject("JobConfiguration:UUID"),null)%>"
/><input type="submit" name="SelectCatalog" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportValidateFile.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_category")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("SourceCountPT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FileIsNotValid")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FileIsNotValid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("JobConfiguration:Domain:UUID"),null).equals(context.getFormattedValue(getObject("OrganizationDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>disabled<% } %> />
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportValidateFile.Cancel.button",null)),null)%>" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %>disabled<% } %> />
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
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>