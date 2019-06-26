<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" valign="top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_locking_breadcrumb", null, "8");} %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" width="100%" nowrap="nowrap"><% {out.write(localizeISText("monitor.LockingConflicts.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e" width="100%"><% {out.write(localizeISText("monitor_locking_contentions.SearchForLockingConflicts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% URLPipelineAction action65 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockContentions-Start",null)))),null));String site65 = null;String serverGroup65 = null;String actionValue65 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockContentions-Start",null)))),null);if (site65 == null){  site65 = action65.getDomain();  if (site65 == null)  {      site65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup65 == null){  serverGroup65 = action65.getServerGroup();  if (serverGroup65 == null)  {      serverGroup65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockContentions-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("FindLockContentions");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue65, site65, serverGroup65,true)); %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox aldi">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_contentions.LockingConflictsSearch.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_contentions.ProcessName.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>: <input type="text" name="ProcessNameSearchString" class="inputfield_en" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProcessNameSearchString"),null)),null)%>"/></td>
<td class="infobox_item" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("monitor_locking_contentions.ResourceName.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>: <input type="text" name="ResourceNameSearchString" class="inputfield_en" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ResourceNameSearchString"),null)),null)%>"/></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" height="1" width="10" alt=""/></td>
<td><table border="0" cellpadding="0" cellspacing="0"><tr><td class="button"><input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor_locking_contentions.Find.button",null)),null)%>" class="button"/></td></tr></table></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LockContentions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_contentions.Date.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_contentions.Process.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_contentions.ConflictingProcess.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("monitor_locking_contentions.ConflictingResource.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LockContentions","LockContention",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("LockContention:AcquisitionDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("LockContention:AcquisitionDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessID",null),context.getFormattedValue(getObject("LockContention:Process:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("LockContention:Process:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingProcesses-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessID",null),context.getFormattedValue(getObject("LockContention:ContentionProcess:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("LockContention:ContentionProcess:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s"><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingResources-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ResourceName",null),context.getFormattedValue(getObject("LockContention:ContentionResource:Name"),null))).addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("LockContention:ContentionResource:Domain:UUID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("LockContention:ContentionResource:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s" colspan="4"><% {out.write(localizeISText("monitor_locking_contentions.ThereAreNoLockingConflicts.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LockContentions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% URLPipelineAction action66 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockContentions-Start",null)))),null));String site66 = null;String serverGroup66 = null;String actionValue66 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockContentions-Start",null)))),null);if (site66 == null){  site66 = action66.getDomain();  if (site66 == null)  {      site66 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup66 == null){  serverGroup66 = action66.getServerGroup();  if (serverGroup66 == null)  {      serverGroup66 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockContentions-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue66, site66, serverGroup66,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","LockContentions")}, 81); %></td>
</tr>
</table><% out.print("</form>"); %><% } %><!-- End Page Cursor -->
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>