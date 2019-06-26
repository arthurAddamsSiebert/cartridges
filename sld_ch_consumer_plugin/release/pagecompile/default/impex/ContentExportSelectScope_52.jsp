<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-SelectScope",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ExportScope",null),context.getFormattedValue(getObject("ExportScope"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","Consumer/ChannelContent/Export/SelectScope"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentExportSelectScope_52.Step1SelectExportScope.text",null)))}, 3); %><!-- Page Navigator --><% URLPipelineAction action485 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null));String site485 = null;String serverGroup485 = null;String actionValue485 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null);if (site485 == null){  site485 = action485.getDomain();  if (site485 == null)  {      site485 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup485 == null){  serverGroup485 = action485.getServerGroup();  if (serverGroup485 == null)  {      serverGroup485 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue485, site485, serverGroup485,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ContentExportSelectScope_52.SelectExportScope.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ContentExportSelectScope_52.Step1NextStepSelectEdition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- listing of export scopes -->
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExportScope"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
&nbsp;&nbsp;<input type="radio" name="ExportScope" value="Edition" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Edition",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
<% } else { %>
&nbsp;&nbsp;<input type="radio" name="ExportScope" value="Edition" checked="checked"/>&nbsp;
<% } %></td>
<td class="table_detail w e s" nowrap="nowrap"><% {out.write(localizeISText("ContentExportSelectScope_52.CompleteEdition.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail s"><% {out.write(localizeISText("ContentExportSelectScope_52.ExportsACompleteEditionIncludingAll.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="s">
&nbsp;&nbsp;<input type="radio" name="ExportScope" value="Library" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Library",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
</td>
<td class="table_detail w e s" nowrap="nowrap"><% {out.write(localizeISText("ContentExportSelectScope_52.Library.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail s"><% {out.write(localizeISText("ContentExportSelectScope_52.AllowsYouToSelectElementsFromTheLibrary.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
&nbsp;&nbsp;<input type="radio" name="ExportScope" value="Page" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
</td>
<td class="table_detail w e" nowrap="nowrap"><% {out.write(localizeISText("ContentExportSelectScope_52.Page.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><% {out.write(localizeISText("ContentExportSelectScope_52.AllowsSelectionOfPagesForExport.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationState:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SelectEdition" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectScope_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectScope_52.Cancel.button",null)),null)%>" class="button"/>
</td> 
</tr>
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>