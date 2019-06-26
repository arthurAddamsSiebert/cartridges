<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("ProductCSVExportSelectConfiguration.Step2ConfigureExport.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductCSVExportForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("ProductCSVExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("ProductCSVExportForm:ExportFile:isInvalid")).booleanValue() || ((Boolean) getObject("ProductCSVExportForm:FieldDelimiter:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top" width="100%"><% {out.write(localizeISText("ProductCSVExportSelectConfigurationInc.ExportCouldNotBeExecuted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ProductCSVExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("ProductCSVExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductCSVExportSelectConfigurationInc.PleaseProvideAValidExportFileName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ProductCSVExportForm:FieldDelimiter:isMissing")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %> 
<% {out.write(localizeISText("ProductCSVExportSelectConfigurationInc.PleaseProvideAFieldDelimiter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductCSVExportForm:isSubmitted")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("FILENAME_ALREADY_IN_USE")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ProductCSVExportForm:ExportFile:Value")); getPipelineDictionary().put("ExportCSVFileName", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/inc/OverwriteExportFileConfirmation", null, "27");} %><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("products.assign.label.select.label.step2of3",null,null,null,null,null,null,null,null,null,null,null,null));} %><% {out.write(localizeISText("ProductCSVExportSelectConfigurationInc.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ProductCSVExportForm:isSubmitted")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ProductCSVExportForm:FieldDelimiter:isMissing")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CSVImportForm.FieldDelimiter.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CSVImportForm.FieldDelimiter.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td align="left" class="table_detail2"><input type="text" name="ProductCSVExportForm_FieldDelimiter" size="1" maxlength="1" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductCSVExportForm:FieldDelimiter:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td><% } else { %><td class="fielditem2" nowrap="nowrap" width="1%"><% {out.write(localizeISText("CSVImportForm.FieldDelimiter.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td align="left" class="table_detail2"><input type="text" name="ProductCSVExportForm_FieldDelimiter" size="1" maxlength="1" class="inputfield_en" /></td><% } %></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductCSVExportForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ProductCSVExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("ProductCSVExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="fielditem2" width="100%">
<input type="hidden" name="ExportSearchResult" value="true" />
<input type="text" name="ProductCSVExportForm_ExportFile" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductCSVExportForm:ExportFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="fielditem2" width="100%">
<input type="text" name="ProductCSVExportForm_ExportFile" size="40" class="inputfield_en"/>
</td><% } %></tr>
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</td>
</tr>
</table>
<table class="aldi" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "89");} %><input type="hidden" name="ActionID" value="CSVExport"/>
<input type="hidden" name="SearchType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JobDescription" value="Exports csv products."/>
<input type="hidden" name="ExportDirectory" value="catalog"/>
<input type="hidden" name="DefaultButton" value="Export"/>
<input type="hidden" name="ProcessName" value="csvExport"/>
<input type="hidden" name="ProcessDescription" value="Exports csv products"/>
<input type="hidden" name="ConfirmStep" value="3"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="confirm" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>