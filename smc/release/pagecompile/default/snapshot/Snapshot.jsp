<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="aldi table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null)%>"><% {out.write(localizeISText("Snapshot.Startup.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("Snapshot.Snapshot.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Tabs -->
<!-- Title -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="form_bg w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("Snapshot.ClusterInformationSnapshot.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Title -->
<!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("Snapshot.SpecifyWhichInformationIsCollected.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<!-- Errors --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ClusterInfoPropertyEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td> 
<td class="error top" width="100%"><% {out.write(localizeISText("Snapshot.PropertyChangesCouldNotBeDistributed.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Errors -->
<!-- Application server -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_subtitle w e s" colspan="2"><% {out.write(localizeISText("Snapshot.ApplicationServer.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Application server -->
<!-- ServerMenu --><% URLPipelineAction action19 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));String site19 = null;String serverGroup19 = null;String actionValue19 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null);if (site19 == null){  site19 = action19.getDomain();  if (site19 == null)  {      site19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup19 == null){  serverGroup19 = action19.getServerGroup();  if (serverGroup19 == null)  {      serverGroup19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SnapshotServer");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue19, site19, serverGroup19,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"snapshot/SnapshotServer", null, "57");} %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="SnapshotServerApply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Snapshot.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO ServerMenu --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GenerateSnapshot"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoServerSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon e" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("Snapshot.NoServerSelected.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoInformationSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon e" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("Snapshot.NoInformationTypeSelected.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr> 
<td class="confirm" width="100%"><% {out.write(localizeISText("Snapshot.GeneratedSnapshotForTheSelectedAppservers.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% }} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SnapshotEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td> 
<td class="error top" width="100%"><% {out.write(localizeISText("Snapshot.SnapshotGenerationError.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
</tr>
</table>
</td>
</tr><% }} %><% } %><!-- EO confirm settings -->
<!-- Snapshot Info -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_subtitle w e s" colspan="2"><% {out.write(localizeISText("Snapshot.SnapshotInformation.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Snapshot Info -->
<!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("Snapshot.UseTheCheckboxesToSelectTheIntendedTypes.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<!-- Properties Menu --><% URLPipelineAction action20 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));String site20 = null;String serverGroup20 = null;String actionValue20 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null);if (site20 == null){  site20 = action20.getDomain();  if (site20 == null)  {      site20 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup20 == null){  serverGroup20 = action20.getServerGroup();  if (serverGroup20 == null)  {      serverGroup20 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("Snapshot");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue20, site20, serverGroup20,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"snapshot/SnapshotProperties", null, "130");} %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="SnapshotPropertiesApply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Snapshot.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="GenerateSnapshot" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Snapshot.CreateSnapshot.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Properties Menu --><% printFooter(out); %>