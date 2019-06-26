<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPriceListExportSelectConfiguration.PriceListExportStep2ConfigureExport.text",null)))}, 4); %><% URLPipelineAction action218 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListExport-Dispatch",null)))),null));String site218 = null;String serverGroup218 = null;String actionValue218 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListExport-Dispatch",null)))),null);if (site218 == null){  site218 = action218.getDomain();  if (site218 == null)  {      site218 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup218 == null){  serverGroup218 = action218.getServerGroup();  if (serverGroup218 == null)  {      serverGroup218 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ChannelPriceListExportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue218, site218, serverGroup218,true)); %><input type="submit" name="Export" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPriceListExportSelectConfiguration.Export.input",null)),null)%>" style="position: absolute; width: 0px; height: 0px; margin: 0px; border: 0px; padding: 0px; font-size: 0px;"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.PriceListExportStep2ConfigureExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelPriceListExportForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("ChannelPriceListExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("ChannelPriceListExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.ExportCouldNotBeExecuted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelPriceListExportForm:isSubmitted")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("FILENAME_ALREADY_IN_USE")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ChannelPriceListExportForm:ExportFile:Value")); getPipelineDictionary().put("ExportFileName", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/inc/OverwriteExportFileConfirmation", null, "28");} %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.Step2Of2.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2" width="100%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_detail center s" width="1%"><input type="radio" name="ExportSearchResult" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail main w s" nowrap="nowrap"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.ExportSearchResult.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s" width="1%"><input type="radio" name="ExportSearchResult" value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %>checked="checked"<% } %>/></td>
<td class="table_detail main w s" nowrap="nowrap"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.ExportSelectedPriceLists.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ChannelPriceListExportForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ChannelPriceListExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("ChannelPriceListExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.ExportFile.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="fielditem2" width="100%"><input type="text" name="ChannelPriceListExportForm_ExportFile" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelPriceListExportForm:ExportFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelPriceListExportSelectConfiguration.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="fielditem2" width="100%"><input type="text" name="ChannelPriceListExportForm_ExportFile" size="40" class="inputfield_en"/></td><% } %></tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPriceListExportSelectConfiguration.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="BusinessObjectType" value="PriceList"
/><input type="hidden" name="Template" value="PriceListExport"
/><input type="hidden" name="DateTimePatternKey" value="impexDateTimePattern"
/><input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_base.ExportPriceScales.input",null)),null)%>"
/><input type="hidden" name="ExportDirectory" value="catalog"
/><input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><input type="hidden" name="DefaultButton" value="Export"
/><input type="submit" name="Export" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPriceListExportSelectConfiguration.Export.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPriceListExportSelectConfiguration.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>