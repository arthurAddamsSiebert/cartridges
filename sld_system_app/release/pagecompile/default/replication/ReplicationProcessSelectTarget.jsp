<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessWizard-SelectTarget",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ReplicationProcessSelectTarget.ReplicationProcessStep2SelectTargetCluster.text",null)))}, 2); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProcess:ProcessID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ReplicationProcessSelectTarget.TargetCluster.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorSelectTarget"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("ReplicationProcessSelectTarget.CouldNotConnectToSelectedTargetCluster.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/></td>
</tr>
</table><% } %><!-- EO errors-->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ReplicationProcessSelectTarget.Step2Of4NextStepSelectReplicationType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action12 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessWizard-Dispatch",null)))),null));String site12 = null;String serverGroup12 = null;String actionValue12 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessWizard-Dispatch",null)))),null);if (site12 == null){  site12 = action12.getDomain();  if (site12 == null)  {      site12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup12 == null){  serverGroup12 = action12.getServerGroup();  if (serverGroup12 == null)  {      serverGroup12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue12, site12, serverGroup12,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr>
<td class="table_header e s" width="70">&nbsp;</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationProcessSelectTarget.TargetCluster.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationProcessSelectTarget.WebServerURL.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationProcessSelectTarget.ServerGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {Object temp_obj = ("true"); getPipelineDictionary().put("IsFirstTargetCluster", temp_obj);} %><% while (loop("TargetClusters","target",null)) { %><tr>
<td class="table_detail center e s" width="70">
<input type="Radio" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CreateProcess:TargetClusterID:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreateProcess:TargetClusterID:Value"),null).equals(context.getFormattedValue(getObject("target:ClusterID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("IsFirstTargetCluster"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>checked=checked<% } %> name="CreateProcess_TargetClusterID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("target:ClusterID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% while (loop("target:TargetSystemsIterator","TargetSystem",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("TargetSystem:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("TargetSystem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><br/><% } %><% } %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% while (loop("target:TargetSystemsIterator","TargetSystem",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("TargetSystem:WebServerURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("TargetSystem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><br/><% } %><% } %>&nbsp;</td>
<td class="table_detail s" nowrap="nowrap"><% while (loop("target:TargetSystemsIterator","TargetSystem",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("TargetSystem:TargetServerGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("TargetSystem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><br/><% } %><% } %>&nbsp;</td>
</tr><% {Object temp_obj = ("false"); getPipelineDictionary().put("IsFirstTargetCluster", temp_obj);} %><% } %></table><% } else { %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr>
<td class="table_detail s"><% {out.write(localizeISText("ReplicationProcessSelectTarget.NoTargetClusterAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CorrelatedLockingEnabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s"><img src="/INTERSHOP/static/WFS/SLDSystem/-/-/en_US/images/space.gif" width="1" height="2" alt="" border="0"></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td width="100%" class="infobox_title w e s"><% {out.write(localizeISText("ReplicationProcessSelectTarget.UserLockingConflictResolution.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ReplicationProcessSelectTarget.SelectThePreferredConflictResolution.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="CreateProcess_CorrelatedLockingEnabled" value="true"/>
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail center w e s" width="70"><input type="Radio" checked="checked" name="CreateProcess_UserLockingConflictPolicy" value="steal"/></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationProcessSelectTarget.StealLocks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center w e s" width="70"><input type="Radio" name="CreateProcess_UserLockingConflictPolicy" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreateProcess:UserLockingConflictPolicy:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreateProcess:UserLockingConflictPolicy:Value"),null).equals(context.getFormattedValue("fail",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>checked=checked<% } %> value="fail"/></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationProcessSelectTarget.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s"><img src="/INTERSHOP/static/WFS/SLDSystem/-/-/en_US/images/space.gif" width="1" height="2" alt="" border="0"></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td width="100%" class="infobox_title w e s"><% {out.write(localizeISText("ReplicationProcessSelectTarget.SystemProcessLockingConflictResolution.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ReplicationProcessSelectTarget.SelectThePreferredConflictResolution.table_title_description1",null,null,context.getFormattedValue(getObject("LockingWaitTimeout"),null),context.getFormattedValue(getObject("LockingWaitTimeout"),null),context.getFormattedValue(getObject("LockingWaitTimeout"),null),null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail center w e s" width="70">
<input type="Radio" checked="checked" name="CreateProcess_SystemLockingConflictPolicy" value="wait"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationProcessSelectTarget.WaitXSeconds.table_detail",null,null,context.getFormattedValue(getObject("LockingWaitTimeout"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center w e s" width="70">
<input type="Radio" name="CreateProcess_SystemLockingConflictPolicy" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreateProcess:SystemLockingConflictPolicy:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreateProcess:SystemLockingConflictPolicy:Value"),null).equals(context.getFormattedValue("fail",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>checked=checked<% } %> value="fail"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationProcessSelectTarget.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="BackToNew" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationProcessSelectTarget.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="SelectType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationProcessSelectTarget.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="hidden" name="DefaultButton" value="SelectType"/><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationProcessSelectTarget.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>