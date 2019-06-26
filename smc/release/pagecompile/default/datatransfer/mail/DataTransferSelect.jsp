<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><!-- Title -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="form_bg w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title n"><% {out.write(localizeISText("DataTransferSelect.DataTransferSelect.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Title -->
<!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("DataTransferSelect.ThisListShowsAllGeneratedInformationFiles.table_title_description","",null,getObject("LogFileMaxSize"),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<!-- Search mask --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/LogFilesSearchMask", null, "27");} %><!-- EO Search mask -->
<!-- Mail Menu --><% URLPipelineAction action75 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Dispatch",null)))),null));String site75 = null;String serverGroup75 = null;String actionValue75 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Dispatch",null)))),null);if (site75 == null){  site75 = action75.getDomain();  if (site75 == null)  {      site75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup75 == null){  serverGroup75 = action75.getServerGroup();  if (serverGroup75 == null)  {      serverGroup75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dataTransferForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue75, site75, serverGroup75,true)); %><!-- File Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LogFilesPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><!-- File Menu -->
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"datatransfer/Files", null, "35");} %></table>
<!-- EO File Menu -->
<!-- Button File Menu --> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr> 
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %> 
<input type="submit" name="Select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DataTransferSelect.Send.button",null)),null)%>" class="button"/><% } else { %><input type="hidden" name="SearchName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="Select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DataTransferSelect.Send.button",null)),null)%>" class="button"/><% } %></td> 
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DataTransferSelect.Delete.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
<!-- EO Button File Menu -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" /></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","LogFilesPageable"),
new TagParameter("variablepagesize","true")}, 66); %></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<!-- message about deleted log files, if any -->
<tr>
<td class="form_bg"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Delete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DeletedFilesCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
<tr> 
<td class="confirm" width="100%"><% {out.write(localizeISText("DataTransferSelect.FilesDeleted.confirm","",null,context.getFormattedValue(getObject("DeletedFilesCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %></td>
</tr><% processOpenTag(response, pageContext, "logfilesearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",""),
new TagParameter("EmptyRepositoryDesc","No log files found! Please activate startup logs, create some snapshot logs, thread dumps, or heapdumps.")}, 86); %></table> 
<% } %><% out.print("</form>"); %> <% printFooter(out); %>