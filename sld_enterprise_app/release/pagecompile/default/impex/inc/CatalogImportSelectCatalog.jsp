<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action590 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImport",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site590 = null;String serverGroup590 = null;String actionValue590 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImport",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site590 == null){  site590 = action590.getDomain();  if (site590 == null)  {      site590 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup590 == null){  serverGroup590 = action590.getServerGroup();  if (serverGroup590 == null)  {      serverGroup590 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCatalogImport",null) + context.getFormattedValue(getObject("PipelineSuffix"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue590, site590, serverGroup590,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CatalogImportSelectCatalog.CategoryImportImport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedCatalogName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedCatalogName"),null).equals(context.getFormattedValue(getObject("Catalog:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("Catalog:Proxy")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogImportSelectCatalog.YouHaveSelectedASharedCatalogToImportInto.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Import")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedCatalog"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogImportSelectCatalog.YouHaveNotSelectedACatalogToImportInto.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedCatalogName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr>
<td class="error_icon top w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogImportSelectCatalog.CatalogCouldNotBeCreatedSameID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CreateCatalogForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("CreateCatalogForm:CatalogID:isMissing")).booleanValue() || ((Boolean) getObject("CreateCatalogForm:CatalogID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogImportSelectCatalog.CatalogCouldNotBeCreatedValidID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("CatalogImportSelectCatalog.Step3Of3SelectAnImportMode.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedCatalogName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="5" class="w e s">
<tr>
<td nowrap="nowrap" width="1%" class="label_select"><label class="label label_select" for="ImportMode"><% {out.write(localizeISText("sld_enterprise_app.ImportMode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImportMode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><td align="left" colspan="2">
<select name="ImportMode" id="ImportMode" size="1" class="select inputfield_en" style="width:200px">
<option value="OMIT"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("OMIT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ImageMetadataImportSelectMode.OMIT.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="IGNORE"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("IGNORE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ImageMetadataImportSelectMode.IGNORE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="INITIAL"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("INITIAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ImageMetadataImportSelectMode.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DELETE"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("DELETE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ImageMetadataImportSelectMode.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="REPLACE"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("REPLACE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ImageMetadataImportSelectMode.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="UPDATE"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("UPDATE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ImageMetadataImportSelectMode.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td><% } else { %><td align="left" colspan="2">
<select name="ImportMode" id="ImportMode" size="1" class="select inputfield_en" style="width:200px">
<option value="OMIT"><% {out.write(localizeISText("ImageMetadataImportSelectMode.OMIT.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="IGNORE"><% {out.write(localizeISText("ImageMetadataImportSelectMode.IGNORE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="INITIAL"><% {out.write(localizeISText("ImageMetadataImportSelectMode.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DELETE"><% {out.write(localizeISText("ImageMetadataImportSelectMode.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="REPLACE"><% {out.write(localizeISText("ImageMetadataImportSelectMode.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="UPDATE" selected="selected"><% {out.write(localizeISText("ImageMetadataImportSelectMode.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td><% } %></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedCatalogName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedCatalogName"),null).equals(context.getFormattedValue(getObject("Catalog:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail e s center top" width="70" nowrap="nowrap"><% {out.write(localizeISText("BMEcatImportSelectCatalog.TargetCatalog.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s">
<input type="hidden" name="SelectedCatalogName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCatalogName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="4" class="infobox w e s">
<tr>
<td class="infobox_title" colspan="3"><% {out.write(localizeISText("BMEcatImportSelectCatalog.TargetCatalog.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label" width="1%"><label class="label" for="CreateCatalogForm_CatalogID"><% {out.write(localizeISText("BMEcatImportSelectCatalog.CreateCatalog.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td align="left">
<input type="hidden" name="SelectedCatalogName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCatalogName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="text" name="CreateCatalogForm_CatalogID" id="CreateCatalogForm_CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCatalogName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" style="width:200px">
</td>
<td align="left" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="CreateCatalog" value="&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentProcessingSelectLabel.Add.button",null)),null)%>&nbsp;" class="button">
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="4" class="infobox w e s">
<tr>
<td class="infobox_title" colspan="3"><% {out.write(localizeISText("BMEcatImportSelectCatalog.TargetCatalog.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label" width="1%"><label class="label label_light" for="CreateCatalogForm_CatalogID"><% {out.write(localizeISText("BMEcatImportSelectCatalog.CreateCatalog.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td align="left"><input type="text" name="CreateCatalogForm_CatalogID" id="CreateCatalogForm_CatalogID" value="" class="inputfield_en" style="width:200px"/></td>
<td align="left" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="CreateCatalog" value="&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentProcessingSelectLabel.Add.button",null)),null)%>&nbsp;" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><tr>
<td class="table_header e s center"><% {out.write(localizeISText("SearchQueryEditor.Select.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s"><% {out.write(localizeISText("BMEcatExportSelectCatalog.CatalogName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LocalCatalogs","Catalog",null)) { %><tr>
<td class="e s input_radio center" width="70">
<input type="radio" name="SelectedCatalogName"id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Catalog:DisplayName"),null)),null)%>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Catalog:Id"),null).equals(context.getFormattedValue(getObject("CreateCatalogForm_CatalogID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="label_radio_text s"><label class="label label_radio_text label_light" for="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Catalog:DisplayName"),null)),null)%>">&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail s" colspan="3"><% {out.write(localizeISText("CategoryAssignmentSelectCatalog.ThereAreCurrentlyNoCatalogsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% }} %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="fielditem2_error e s center top" width="70" nowrap="nowrap"><% {out.write(localizeISText("BMEcatImportSelectCatalog.TargetCatalog.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s">
<input type="hidden" name="SelectedCatalogName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCatalogName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCatalogName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ValidateFileRefresh" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JobDescription" value="Imports catalogs."/>
<input type="submit" name="Import" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>" class="button"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedCatalogName")))).booleanValue() && ((Boolean) (((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SelectedCatalogName"),null).equals(context.getFormattedValue(getObject("Catalog:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("Catalog:Proxy")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>