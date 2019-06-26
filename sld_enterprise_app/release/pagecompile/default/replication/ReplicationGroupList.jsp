<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationGroupList.ReplicationGroups.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ReplicationTaskUUID",null),context.getFormattedValue(getObject("ReplicationTask:UUID"),null))))),
new TagParameter("id",getObject("ReplicationTask:UUID")),
new TagParameter("text",getObject("ReplicationTask:TaskID"))}, 3); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% {Object temp_obj = ("Groups"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTaskTabs", null, "9");} %></td>
</tr>
</table><% URLPipelineAction action215 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-Dispatch",null)))),null));String site215 = null;String serverGroup215 = null;String actionValue215 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-Dispatch",null)))),null);if (site215 == null){  site215 = action215.getDomain();  if (site215 == null)  {      site215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup215 == null){  serverGroup215 = action215.getServerGroup();  if (serverGroup215 == null)  {      serverGroup215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue215, site215, serverGroup215,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ReplicationGroupList.0ReplicationGroups.table_title",null,null,encodeString(context.getFormattedValue(getObject("ReplicationTask:TaskID"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ReplicationGroup.subject",null))),
new TagParameter("cancelbtnname","Back"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ReplicationGroupList.AreYouSureYouWantToDeleteSelectedReplicationGroups.message",null)))}, 24); %><% } %><!-- eo delete confirmation-->
<!-- confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ReplicationGroup.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ReplicationGroupList.YouHaveNotSelectedAnyReplicationGroups.message",null)))}, 33); %><% } %><!-- eo confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ReplicationTask:State"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ReplicationGroupList.SelectTheBusinessUnitDataFromListClickNewToAddData.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ReplicationTask:State"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ReplicationTask:ReplicationGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('dispatch','SelectedReplicationGroup','A','B');" class="tableheader"><% {out.write(localizeISText("ReplicationGroupList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('dispatch','SelectedReplicationGroup','A','B');" class="tableheader"><% {out.write(localizeISText("ReplicationGroupList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationGroupList.ReplicationGroups.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationGroupList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ReplicationTask:ReplicationGroups","groupid",null)) { %><tr>
<td class="w e s top center">
<input type="checkbox" name="SelectedReplicationGroup" value="<% {String value = null;try{value=context.getFormattedValue(getObject("groupid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Selection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% while (loop("Selection",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selection"),null).equals(context.getFormattedValue(getObject("groupid"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",77);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s" colspan="2"><% {out.write(localizeISText("ReplicationGroupList.NoReplicationGroupsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ReplicationTaskUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ReplicationTask:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="Select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationGroupList.New.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ReplicationTask:ReplicationGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="DefaultButton" value="Select"/>
<input type="submit" name="ConfirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationGroupList.Delete.button",null)),null)%>" class="button"/>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ReplicationTask:ReplicationGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationGroupList.ReplicationGroups.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationGroupList.Description.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ReplicationTask:ReplicationGroups","groupid",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ReplicationGroupList.NoReplicationGroupsAssigned.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "142");} %><% printFooter(out); %>