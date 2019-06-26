<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentImport_52-SelectApproval",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("SelectedDirectoryPath",null),context.getFormattedValue(getObject("SelectedDirectoryPath"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentImportSelectApproval_52.ImportContentStep2SelectApproval.text",null)))}, 4); %><!-- Page Navigator --><% URLPipelineAction action470 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentImport_52-Dispatch",null)))),null));String site470 = null;String serverGroup470 = null;String actionValue470 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentImport_52-Dispatch",null)))),null);if (site470 == null){  site470 = action470.getDomain();  if (site470 == null)  {      site470 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup470 == null){  serverGroup470 = action470.getServerGroup();  if (serverGroup470 == null)  {      serverGroup470 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentImport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue470, site470, serverGroup470,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
<tr>
<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ContentImportSelectApproval_52.ImportContentSelectApproval.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPublishingLock"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ContentImportSelectApproval_52.ThereIsCurrentlyAPublishingRunning.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ContentImportSelectApproval_52.Step2Of2SelectApprovalStatus.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s center"><% {out.write(localizeISText("ContentImportSelectApproval_52.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ContentImportSelectApproval_52.Approval.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center top" width="75"><input type="radio" name="SelectedApproval" value="true" checked="checked"/>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><b><% {out.write(localizeISText("ContentImportSelectApproval_52.ApproveAutomatically.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr>
<tr>
<td class="w e s center top" width="75"><input type="radio" name="SelectedApproval" value="false"/>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><b><% {out.write(localizeISText("ContentImportSelectApproval_52.ApproveManuallyLater.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationState:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedDirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ProcessDescription" value="Import content resources into channel content repository of <% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPublishingLock"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><input type="submit" name="StartImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentImportSelectApproval_52.Import.button",null)),null)%>" class="button" disabled="disabled"/></td><% } else { %><input type="submit" name="StartImport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentImportSelectApproval_52.Import.button",null)),null)%>" class="button"/></td><% } %><td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentImportSelectApproval_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "67");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>