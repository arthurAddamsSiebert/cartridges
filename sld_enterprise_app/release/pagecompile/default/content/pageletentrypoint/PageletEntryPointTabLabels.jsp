<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ViewPageletLabels-GetLabelsByPagelet",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Object",getObject("PageletEntryPoint")))).addParameter(new ParameterEntry("LabelDomain",getObject("LabelDomain")))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 3.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 6); %><% processOpenTag(response, pageContext, "pageletentrypointeditable", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletEntryPointLockedForOther","PageletEntryPointLockedForOther")}, 7); %><% URLPipelineAction action402 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletLabels-Dispatch",null)))),null));String site402 = null;String serverGroup402 = null;String actionValue402 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletLabels-Dispatch",null)))),null);if (site402 == null){  site402 = action402.getDomain();  if (site402 == null)  {      site402 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup402 == null){  serverGroup402 = action402.getServerGroup();  if (serverGroup402 == null)  {      serverGroup402 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletLabels-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LabelListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue402, site402, serverGroup402,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:confirmUnassignLabels"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Result:Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("PageletEntryPointTabLabels.UnassignTheSelectedLabels.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="unassignLabels" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointTabLabels.OK.button",null)),null)%>" class="button sfe-action-dialog"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button">
<input type="submit" name="cancelUnassignLabels" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointTabLabels.Cancel.button",null)),null)%>" class="button sfe-action-dialog"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("PageletEntryPointTabLabels.YouHaveNotSelectedALabelUseTheCheckboxesToSelectTh.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("PageletEntryPointTabLabels.TheListShowsAllCurrentlyAssignedLabels.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("PageletEntryPointTabLabels.ClickNewToAssignAnotherLabelUseTheCheckboxesAndCli.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedLabels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><td class="e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('LabelListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletEntryPointTabLabels.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('LabelListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletEntryPointTabLabels.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s"><% {out.write(localizeISText("PageletEntryPointTabLabels.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PageletEntryPointTabLabels.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PageletEntryPointTabLabels.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PageletEntryPointTabLabels.CreatedBy.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("AssignedLabels","Label",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><td class="e s center top">
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Label:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Label:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Label:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletEntryPointLockedForOther"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("Label:UUID"),null)%>"/>
</td><% } %><td class="table_detail e s top" ><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewLabelPipeline"),null) + context.getFormattedValue("-Edit",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null)))),null)%>" class="table_detail_link sfe-action-dialog"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewLabelPipeline"),null) + context.getFormattedValue("-Edit",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null)))),null)%>" class="table_detail_link sfe-action-dialog"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s top" ><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s n">
<tr>
<td class="table_detail"><% {out.write(localizeISText("PageletEntryPointTabLabels.CurrentlyThereAreNoLabelsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><table class="w e s sfe-hidden" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LabelObjectType" value="PageletEntryPoint" />
<input type="hidden" name="TargetPipeline" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LabelDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LabelDomain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<td class="button">
<input type="submit" name="selectLabels" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointTabLabels.New.button",null)),null)%>" class="button sfe-action-dialog" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletEntryPointLockedForOther"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>disabled="disabled"<% } %> title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointTabLabels.NewLabel.button",null)),null)%>" id="sfe-selectLabels-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedLabels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmUnassignLabels" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointTabLabels.Unassign.button",null)),null)%>" class="button sfe-action-inline" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletEntryPointLockedForOther"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>disabled="disabled"<% } %> title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointTabLabels.UnassignLabel.button",null)),null)%>" id="sfe-unassignLabels-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>