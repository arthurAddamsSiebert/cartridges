<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("CatalogExportSelectCatalog.CategoryExport.text",null)))}, 3); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("CatalogExportSelectCatalog.CategoryExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryExportForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("CategoryExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("CategoryExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("CategoryExportForm:CatalogDomainUUID:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogExportSelectCatalog.ExportCouldNotBeExecutedPleaseProvideFileAndCatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("CategoryExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("CategoryExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogExportSelectCatalog.ExportCouldNotBeExecutedPleaseProvideFile.error1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryExportForm:CatalogDomainUUID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogExportSelectCatalog.ExportCouldNotBeExecutedPleaseSelectACatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% }}} %><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("CatalogExportSelectCatalog.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action55 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport-Dispatch",null)))),null));String site55 = null;String serverGroup55 = null;String actionValue55 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport-Dispatch",null)))),null);if (site55 == null){  site55 = action55.getDomain();  if (site55 == null)  {      site55 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup55 == null){  serverGroup55 = action55.getServerGroup();  if (serverGroup55 == null)  {      serverGroup55 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CategoryExportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue55, site55, serverGroup55,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Catalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryExportForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CategoryExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("CategoryExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("CatalogExportSelectCatalog.ExportFile.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("CatalogExportSelectCatalog.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail" width="100%"><input type="text" name="CategoryExportForm_ExportFile" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryExportForm:ExportFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("CatalogExportSelectCatalog.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail" width="100%"><input type="text" name="CategoryExportForm_ExportFile" size="40" class="inputfield_en"/></td><% } %></tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_header e s center"><% {out.write(localizeISText("CatalogExportSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s"><% {out.write(localizeISText("CatalogExportSelectCatalog.CatalogName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Catalogs","Catalog",null)) { %><tr>
<td class="e s center top" width="70"><input type="radio" name="CategoryExportForm_CatalogDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Domain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CategoryExportForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Catalog:Domain:UUID"),null).equals(context.getFormattedValue(getObject("CategoryExportForm:CatalogDomainUUID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>checked<% } %> /></td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_detail s" colspan="3"><% {out.write(localizeISText("CatalogExportSelectCatalog.ThereAreCurrentlyNoCatalogsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Catalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogExportSelectCatalog.ExportCategories.input",null)),null)%>"/>
<input type="hidden" name="ExportDirectory" value="catalog"
/><input type="hidden" name="DefaultButton" value="Export"
/><input type="submit" name="Export" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogExportSelectCatalog.Export.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogExportSelectCatalog.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>