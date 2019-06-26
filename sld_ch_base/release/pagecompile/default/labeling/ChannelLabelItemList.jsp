<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("labelitem","labeling/inc/ChannelLabelItem.isml",false,new String[]{"labelassignment","displaytype"},null); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelItemList.Items.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelItems-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("LabelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue(getObject("LabelObjectType"),null)))),
new TagParameter("id","Label:UUID"),
new TagParameter("text",getObject("Label:Name"))}, 14); %><!-- EO Page Navigator -->
<!-- tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue(getObject("LabelObjectType"),null))),null)%>"><% {out.write(localizeISText("ChannelLabelItemList.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("ChannelLabelItemList.Items.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<!-- unassign confirmation if items selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td><% URLPipelineAction action351 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelItems-Dispatch",null)))),null));String site351 = null;String serverGroup351 = null;String actionValue351 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelItems-Dispatch",null)))),null);if (site351 == null){  site351 = action351.getDomain();  if (site351 == null)  {      site351 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup351 == null){  serverGroup351 = action351.getServerGroup();  if (serverGroup351 == null)  {      serverGroup351 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelItems-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("unassignForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue351, site351, serverGroup351,true)); %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ChannelLabelItemList.UnassignTheSelectedItemsFromTheLabel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="LabelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><input type="submit" name="unassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelItemList.OK.button",null)),null)%>" class="button"/></td><td>&nbsp;</td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelItemList.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% } %><!-- unassign confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("okbtnname","Unassign"),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelLabelItemList.YouHaveNotSelectedAnItem.message",null)))}, 55); %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelLabelItemList.TheListShowsAllItemsOfThisLabel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Titel and Description --><% URLPipelineAction action352 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelItems-Dispatch",null)))),null));String site352 = null;String serverGroup352 = null;String actionValue352 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelItems-Dispatch",null)))),null);if (site352 == null){  site352 = action352.getDomain();  if (site352 == null)  {      site352 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup352 == null){  serverGroup352 = action352.getServerGroup();  if (serverGroup352 == null)  {      serverGroup352 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelItems-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelItemListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue352, site352, serverGroup352,true)); %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("LabelAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail" ><% {out.write(localizeISText("ChannelLabelItemList.CurrentlyThereAreNoItemsAssignedToThisLabel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><td class="table_header e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap" >
<a href="javascript:selectAll('labelItemListForm','SelectedLabelAssignmentUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelLabelItemList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap" >
<a href="javascript:selectAll('labelItemListForm','SelectedLabelAssignmentUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelLabelItemList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("ChannelLabelItemList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("ChannelLabelItemList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("ChannelLabelItemList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LabelAssignments","la",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><td class="e s center"><% processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","checkbox"),
new TagParameter("labelassignment",getObject("la"))}, 108); %><input type="hidden" name="LabelAssignmentUUID" value="<%=context.getFormattedValue(getObject("la:UUID"),null)%>"/></td><% } %><td class="table_detail e s top" ><% processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","viewlink_name"),
new TagParameter("labelassignment",getObject("la"))}, 110); %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","viewlink_id"),
new TagParameter("labelassignment",getObject("la"))}, 111); %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","type"),
new TagParameter("labelassignment",getObject("la"))}, 112); %>&nbsp;</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% {Object temp_obj = ("false"); getPipelineDictionary().put("ContainsProducts", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Label:AssignedTypes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><% while (loop("Label:AssignedTypes","AssignedType",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignedType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ContainsProducts", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",127);}else{getLoopStack().pop();break;} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ContainsProducts"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.EditAll.button",null)),null)%>" class="button" /></td><% } else { %><td class="button"><input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.EditAll.button",null)),null)%>" class="button" disabled="disabled"/></td><% } %><% } else { %><td class="button"><input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.EditAll.button",null)),null)%>" class="button" disabled="disabled"/></td><% } %><td class="button">
<input type = "hidden" name="LabelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type = "hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="LabelObjectType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LabelObjectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelItemList.Unassign.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","LabelAssignments")}, 156); %></td>
</tr>
</table>
<!-- End Page Cursor -->
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "165");} %><% printFooter(out); %>