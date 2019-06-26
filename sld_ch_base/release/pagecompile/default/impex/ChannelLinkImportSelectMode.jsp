<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkImport-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfigurationUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelLinkImportSelectMode.Step3SelectImportMode.text",null)))}, 4); %><!-- EO Page Navigator --><% URLPipelineAction action220 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkImport-Dispatch",null)))),null));String site220 = null;String serverGroup220 = null;String actionValue220 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkImport-Dispatch",null)))),null);if (site220 == null){  site220 = action220.getDomain();  if (site220 == null)  {      site220 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup220 == null){  serverGroup220 = action220.getServerGroup();  if (serverGroup220 == null)  {      serverGroup220 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkImport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue220, site220, serverGroup220,true)); %><!-- Want to update SearchIndexes -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ChannelLinkImportSelectMode.LinkImportSelectImportMode.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ChannelLinkImportSelectMode.Step3Of3SelectAnImportMode.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>&quot;.
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="6" class="w e s">
<tr>
<td class="infobox_title" width="1%" nowrap="nowrap"><% {out.write(localizeISText("ChannelLinkImportSelectMode.ImportMode.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td align="left" colspan="2">
<select name="ImportMode" size="1" class="inputfield_en" style="width:200px">
<option value="UPDATE" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("UPDATE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ImportMode")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelLinkImportSelectMode.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="REPLACE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportMode"),null).equals(context.getFormattedValue("REPLACE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelLinkImportSelectMode.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option> 
</select>
</td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ValidateFileRefresh" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLinkImportSelectMode.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><input type="hidden" name="LinkCSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkCSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CurrentOrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentOrganization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLinkImportSelectMode.ImportsLinks.input",null)),null)%>"/>
<input type="submit" name="Import" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLinkImportSelectMode.Import.button",null)),null)%>" class="button"/> 
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLinkImportSelectMode.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>