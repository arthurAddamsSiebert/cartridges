<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectFileForm_SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImportSelectFile.CategoryImportStep1SelectFile.text",null)))}, 5); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportSelectFile.CategoryImportSelectFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryCSVImport")))).booleanValue() && ((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:SelectedFile:isMissing")).booleanValue() && ((Boolean) getObject("SelectFileForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error e s" width="100%"><% {out.write(localizeISText("CatalogImportSelectFile.YouHaveNotSelectedAFileToImportAndHaveNoDelimiter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryCSVImport")))).booleanValue() && ((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error e s" width="100%"><% {out.write(localizeISText("CatalogImportSelectFile.YouHaveNotProvidedAFieldDelimiter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidateFile")))).booleanValue() && ((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:SelectedFile:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error e s" width="100%"><% {out.write(localizeISText("CatalogImportSelectFile.YouHaveNotSelectedAFileToImport.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% }}} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("CatalogImportSelectFile.Step1Of3NextStepValidateImportFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action63 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null));String site63 = null;String serverGroup63 = null;String actionValue63 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null);if (site63 == null){  site63 = action63.getDomain();  if (site63 == null)  {      site63 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup63 == null){  serverGroup63 = action63.getServerGroup();  if (serverGroup63 == null)  {      serverGroup63 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue63, site63, serverGroup63,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImportCatalogType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><input type="hidden" name="ImportCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImportCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CategoryCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="fielditem2" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CatalogImportSelectFile.MappingTemplate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td align="left" class="table_detail2"><select name="SelectFileForm_MappingTemplate" size="1" class="inputfield_en" style="width:200px"><% while (loop("MappingTemplates","MappingTemplate",null)) { %><% {Object temp_obj = (split(context.getFormattedValue(getObject("MappingTemplate:ContentDescriptor"),null),(String)(":/"))); getPipelineDictionary().put("MappingTemplatesPath", temp_obj);} %><% while (loop("MappingTemplatesPath","MappingTemplatePath","count")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplatePath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectFileForm:MappingTemplate:Value"),null).equals(context.getFormattedValue(getObject("MappingTemplatePath"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("MappingTemplate:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) getObject("SelectFileForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CatalogImportSelectFile.FieldDelimiter.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CatalogImportSelectFile.FieldDelimiter.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectFileForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %> 
<td colspan="2" align="left" class="table_detail2"><input type="text" name="SelectFileForm_FieldDelimiter" size="2" maxlength="1" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:FieldDelimiter:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td><% } else { %><td align="left" colspan="2" class="table_detail2"><input type="text" name="SelectFileForm_FieldDelimiter" size="2" maxlength="1" class="inputfield_en" value=";"/></td><% } %></tr>
<tr>
<td class="fielditem2" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CatalogImportSelectFile.FormatLineNumber.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectFileForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %> 
<td colspan="2" align="left" class="table_detail2"><input type="text" name="SelectFileForm_FormatLineNumber" size="2" maxlength="2" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:FormatLineNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td><% } else { %><td colspan="2" align="left" class="table_detail2"><input type="text" name="SelectFileForm_FormatLineNumber" size="2" maxlength="2" class="inputfield_en" value="1"/></td><% } %></tr>
<tr>
<td class="fielditem2" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CatalogImportSelectFile.CustomFormatLine.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td colspan="2" align="left" class="table_detail2"><textarea cols="38" rows="5" name="SelectFileForm_CustomFormatLine"><% {String value = null;try{value=context.getFormattedValue(getObject("SelectFileForm:CustomFormatLine:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CatalogImportSelectFile.ThereAreNoMappingTemplatesForTheCSVConversion.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportSelectFile.Files.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->
<tr>
<td class="table_header s center"><% {out.write(localizeISText("CatalogImportSelectFile.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("CatalogImportSelectFile.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("CatalogImportSelectFile.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Files","File",null)) { %><tr>
<td class="s center top" width="70"><input type="radio" name="SelectFileForm_SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("SelectFileForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("File:FullName"),null).equals(context.getFormattedValue(getObject("SelectFileForm:SelectedFile:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedFile")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("File:FullName"),null).equals(context.getFormattedValue(getObject("SelectedFile"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="table_detail w s"><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 113); %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail s" colspan="3"><% {out.write(localizeISText("CatalogImportSelectFile.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSelectFile.ValidatesCatalogImportFile.input",null)),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CategoryCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><input type="hidden" name="CategoryCSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryCSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="ValidateFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSelectFile.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryCSVImport")))).booleanValue() && !((Boolean) ((hasLoopElements("MappingTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>disabled<% } %>/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSelectFile.Cancel.button",null)),null)%>" class="button"/></td>
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
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 147); %><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>