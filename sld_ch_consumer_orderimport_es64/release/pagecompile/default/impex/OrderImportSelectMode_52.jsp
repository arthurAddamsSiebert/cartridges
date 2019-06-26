<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-SelectMode",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("OrderImportSelectMode_52.Step3Import.breadcrumb",null)))}, 4); %><% URLPipelineAction action8 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-Dispatch",null)))),null));String site8 = null;String serverGroup8 = null;String actionValue8 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-Dispatch",null)))),null);if (site8 == null){  site8 = action8.getDomain();  if (site8 == null)  {      site8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup8 == null){  serverGroup8 = action8.getServerGroup();  if (serverGroup8 == null)  {      serverGroup8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue8, site8, serverGroup8,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("OrderImportSelectMode_52.OrderImportImport.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("OrderImportSelectMode_52.SelectAnImportModeAndStart.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="6" class="w e s">
<tr>
<td class="infobox_title" width="1%" nowrap="nowrap"><% {out.write(localizeISText("OrderImportSelectMode_52.ImportMode.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td align="left" colspan="2"><select name="ImportMode" size="1" class="inputfield_en" style="width:200px">
<option value="OMIT"><% {out.write(localizeISText("OrderImportSelectMode_52.OMIT.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="INITIAL" selected="selected"><% {out.write(localizeISText("OrderImportSelectMode_52.INITIAL.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DELETE"><% {out.write(localizeISText("OrderImportSelectMode_52.DELETE.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="REPLACE"><% {out.write(localizeISText("OrderImportSelectMode_52.REPLACE.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><input type="submit" name="ValidateFileRefresh" value="&lt;&lt;&nbsp;<% {out.write(localizeISText("OrderImportSelectMode_52.Previous.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><input type="hidden" name="OrderCSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrderCSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% } %><input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><input type="hidden" name="JobDescription" value="<% {out.write(localizeISText("OrderImportSelectMode_52.ImportOrderData.input","",null,null,null,null,null,null,null,null,null,null,null));} %>..."
/><input type="hidden" name="ProcessPipelineName" value="ProcessOrderImport"
/><input type="hidden" name="ProcessPipelineStartNode" value="Import"
/><input type="hidden" name="JobName" value="ProcessOrderImpex"
/><input type="submit" name="Import" value="<% {out.write(localizeISText("OrderImportSelectMode_52.Import.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
<td class="button"><input type="submit" name="Cancel" value="<% {out.write(localizeISText("OrderImportSelectMode_52.Cancel.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>