<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td class="form_bg w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_header e s" nowrap="nowrap">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('Snapshot');" class="tableheader"><% {out.write(localizeISText("SnapshotProperties.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('Snapshot');" class="tableheader"><% {out.write(localizeISText("SnapshotProperties.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header s e" width="40%"><% {out.write(localizeISText("SnapshotProperties.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" width="60%"><% {out.write(localizeISText("SnapshotProperties.Description.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="ASProcess" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AsProcess"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("SnapshotProperties.ApplicationServerProcess.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("SnapshotProperties.BasicValues.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_detail center s e"><input type="checkbox" name="ORMCache" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OrmCacheInformation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("SnapshotProperties.ORMCache.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("SnapshotProperties.LoadedPersistentObjects.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="JVMResourceUsage" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("JvmResourceUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("SnapshotProperties.JVMResources.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("SnapshotProperties.JVMHeapUsageInformation.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_detail center s e"><input type="checkbox" name="Threads" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ThreadInformation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("SnapshotProperties.Threads.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("SnapshotProperties.ActiveThreadsWithDetailedInformation.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="Properties" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Properties"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("SnapshotProperties.Properties.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("SnapshotProperties.ListOfAllUsedProperties.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="Pipelets" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LoadedPipelets"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("SnapshotProperties.LoadedPipelets.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("SnapshotProperties.ListOfAllLoadedPipelets.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_detail center e"><input type="checkbox" name="Locking" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LockingConflictsInformation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail e"><% {out.write(localizeISText("SnapshotProperties.LockingConflicts.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description"><% {out.write(localizeISText("SnapshotProperties.InformationAboutProcessesWithLockingConflicts.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table>
</td>
</tr><% printFooter(out); %>