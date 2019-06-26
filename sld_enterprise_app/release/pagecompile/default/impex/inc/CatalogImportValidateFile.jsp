<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action589 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImport",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site589 = null;String serverGroup589 = null;String actionValue589 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImport",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site589 == null){  site589 = action589.getDomain();  if (site589 == null)  {      site589 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup589 == null){  serverGroup589 = action589.getServerGroup();  if (serverGroup589 == null)  {      serverGroup589 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImport",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue589, site589, serverGroup589,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.CategoryImportValidateFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ImageMetadataImportValidateFile.Step2Of3NextStepImportFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
<br/><% {out.write(localizeISText("CatalogImportValidateFile.TheChosenFileWillBeValidated.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImport",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-ValidateFileRefresh",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),"selection_link",null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ValidatingImportFile.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("PageletContentImportValidateFile.CurrentAction.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","CurrentActivity")}, 32); %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ValidatingImportFile.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("PageletContentImportValidateFile.CurrentAction.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><% {out.write(localizeISText("PageletContentImportValidateFile.PreparingSourceFileValidation.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletContentImportValidateFile.ImportFileContent.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail s"><% {out.write(localizeISText("CatalogImportValidateFile.ThisFileDoesNotContainValidEnfinityXML.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PageletContentImportValidateFile.ImportFileContent.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail s e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.RootCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:RootCategoryName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:RootCategoryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><input type="hidden" name="SelectedCatalogName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:RootCategoryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedCatalogShowInMenu" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:ShowInMenu"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } else { %>&nbsp;
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:ClassificationSystemName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><input type="hidden" name="ClassificationSystemName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:ClassificationSystemName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CustomCatalogType" value="Classification"/><% } %></td>
</tr>
<tr>
<td class="table_detail s e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("ProductSetProducts.Categories.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_category"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SourceCount_category"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0
<% } %></td>
</tr>
<tr>
<td class="table_detail s e" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportValidateFile.ProductTypes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail s"><% {Object temp_obj = ("SourceCount_product-type"); getPipelineDictionary().put("ProductTypeTag", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:Integer(ProductTypeTag)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:Integer(ProductTypeTag)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0
<% } %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LogFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LogContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("LogContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="fielditem2" width="100%"><textarea class="inputfield_en" cols="70" rows="15"><% {String value = null;try{value=context.getFormattedValue(getObject("LogContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImpex",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-DownloadFile",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue("log",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:UUID"),null) + context.getFormattedValue("-0.log",null),null))),null)%>" class="selection_link"><% {out.write(localizeISText("PageletContentImportValidateFile.DownloadLogFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThereAreNoLogMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% }} %><table class="w e s n" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Paging" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:CSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><input type="hidden" name="CSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:CSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("JobConfiguration:ImportCatalogType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><input type="hidden" name="ImportCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:ImportCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="SelectCatalog" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:SourceCount_category")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:Integer(ProductTypeTag)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:FinishedWithError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JobConfiguration:FinishedWithError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %>disabled="disabled"<% } %> /></td>
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
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>