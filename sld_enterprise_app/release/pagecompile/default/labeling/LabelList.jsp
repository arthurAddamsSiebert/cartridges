<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MassData",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.MassDataTasks.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.Labels.text",null)))}, 5); %><!-- Titel and Description --><% URLPipelineAction action681 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));String site681 = null;String serverGroup681 = null;String actionValue681 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null);if (site681 == null){  site681 = action681.getDomain();  if (site681 == null)  {      site681 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup681 == null){  serverGroup681 = action681.getServerGroup();  if (serverGroup681 == null)  {      serverGroup681 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue681, site681, serverGroup681,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("sld_enterprise_app.Labels.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- unassign confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 15); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAnyLabelToDeleteSelectAnyLabelsT.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.HeListShowsAllLabelsALabelIsASetOfDependentItemsCl.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.TheListShowsAllLabelsALabelIsASetOfDependentItemsT.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<!-- EO Titel and Description --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Labels") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail" ><% {out.write(localizeISText("sld_enterprise_app.CurrentlyThereAreNoLabelsDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.ClickNewToCreateNewLabels.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><td class="e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('labelListForm','SelectedLabelUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('labelListForm','SelectedLabelUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortOrder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% {Object temp_obj = ("desc"); getPipelineDictionary().put("NewSortOrder", temp_obj);} %><% } else { %><% {Object temp_obj = ("asc"); getPipelineDictionary().put("NewSortOrder", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = ("asc"); getPipelineDictionary().put("NewSortOrder", temp_obj);} %><% } %><td class="table_header e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("DisplayName",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewSortOrder"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("Name",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewSortOrder"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("UserName",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewSortOrder"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.CreatedBy.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><td class="table_header e s" width="10%"><div class="center w100"><% {out.write(localizeISText("sld_enterprise_app.Action.center",null,null,null,null,null,null,null,null,null,null,null,null));} %></div></td><% } %></tr><% while (loop("Labels","Label",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><td class="e s center top"><input type="checkbox" name="SelectedLabelUUID" value="<%=context.getFormattedValue(getObject("Label:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Label:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Label:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>checked="checked"<% } %> /><input type="hidden" name="LabelUUID" value="<%=context.getFormattedValue(getObject("Label:UUID"),null)%>"/></td><% } %><td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s top" ><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><td class="table_detail e s top center" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Label:AssignedTypes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("ContainsProducts", temp_obj);} %><% while (loop("Label:AssignedTypes","AssignedType",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignedType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ContainsProducts", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",122);}else{getLoopStack().pop();break;} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContainsProducts"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-SelectAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null)))),null)%>" class="action_link"><% {out.write(localizeISText("sld_enterprise_app.EditAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %>
&nbsp;
<% } %><% } %></td><% } else { %><td class="table_detail e s top center" nowrap="nowrap">&nbsp;</td><% } %></tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Labels")}, 154); %><!-- End Page Cursor --><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>