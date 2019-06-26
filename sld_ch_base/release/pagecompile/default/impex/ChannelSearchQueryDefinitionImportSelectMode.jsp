<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionImport-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelSearchQueryDefinitionImportSelectMode.Step3Import.text",null))),
new TagParameter("id","3")}, 4); %><% URLPipelineAction action227 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionImport-Dispatch",null)))),null));String site227 = null;String serverGroup227 = null;String actionValue227 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionImport-Dispatch",null)))),null);if (site227 == null){  site227 = action227.getDomain();  if (site227 == null)  {      site227 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup227 == null){  serverGroup227 = action227.getServerGroup();  if (serverGroup227 == null)  {      serverGroup227 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSearchQueryDefinitionImport-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue227, site227, serverGroup227,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ChannelSearchQueryDefinitionImportSelectMode.ProductFilterImportImport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ChannelSearchQueryDefinitionImportSelectMode.Step3Of3SelectAnImportMode.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="6" class="w e s">
<tr>
<td class="infobox_title" width="1%" nowrap="nowrap"><% {out.write(localizeISText("ChannelSearchQueryDefinitionImportSelectMode.ImportMode.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td align="left" colspan="2">
<select name="ImportMode" size="1" class="inputfield_en" style="width:200px">
<option value="INITIAL"><% {out.write(localizeISText("ChannelSearchQueryDefinitionImportSelectMode.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="REPLACE" selected="selected"><% {out.write(localizeISText("ChannelSearchQueryDefinitionImportSelectMode.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="UPDATE"><% {out.write(localizeISText("ChannelSearchQueryDefinitionImportSelectMode.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DELETE"><% {out.write(localizeISText("ChannelSearchQueryDefinitionImportSelectMode.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
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
<input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ValidateFileRefresh" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSearchQueryDefinitionImportSelectMode.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_base.ImportsPriceLists.input",null)),null)%>"
/><input type="submit" name="Import" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSearchQueryDefinitionImportSelectMode.Import.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSearchQueryDefinitionImportSelectMode.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>