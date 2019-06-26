<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ListConfirmationCheck", null, "5");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentUserWizard-ShowSearchResult",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("DepartmentSelectUsers.NewUsersStep1SelectUsers.text",null)))}, 7); %><% URLPipelineAction action224 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentUserWizard-Dispatch",null)))),null));String site224 = null;String serverGroup224 = null;String actionValue224 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentUserWizard-Dispatch",null)))),null);if (site224 == null){  site224 = action224.getDomain();  if (site224 == null)  {      site224 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup224 == null){  serverGroup224 = action224.getServerGroup();  if (serverGroup224 == null)  {      serverGroup224 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentUserWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("newUserList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue224, site224, serverGroup224,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("DepartmentSelectUsers.NewUsersStep1SelectUsers.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("nextStep"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("DepartmentSelectUsers.YouHaveNotSelectedAUser.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("DepartmentSelectUsers.Step1Of2NextStepSelectRoles.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content -->
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td colspan="3" class="infobox_title"><% {out.write(localizeISText("DepartmentSelectUsers.FindUsers.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("PageletEntryPointSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><input type="text" name="SearchTerm" id="SearchTerm" maxlength="35" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
<td width="100%" align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null)%>" class="button"/><input type="hidden" name="DepartmentUUID" value="<%=context.getFormattedValue(getObject("Department:UUID"),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentUserPermissionMap"),
new TagParameter("value6",getObject("AssignedUsers")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("Department")),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","Department"),
new TagParameter("value1",getObject("CurrentUserPermissionMap")),
new TagParameter("key6","AssignedUsers"),
new TagParameter("key3","SelectedItemsName"),
new TagParameter("value4","user"),
new TagParameter("value3","SelectedUser"),
new TagParameter("key4","AvailableItemsName"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 50); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","inc/GridUserColumns.isml"),
new TagParameter("configuration","departmentselectusers"),
new TagParameter("datatemplate","inc/GridUserData.isml"),
new TagParameter("pageable",getObject("Users")),
new TagParameter("id","DepartmentSelectUsers"),
new TagParameter("pageablename","Users"),
new TagParameter("params",getObject("params"))}, 59); %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="5" class="table_detail w e s"><% {out.write(localizeISText("DepartmentSelectUsers.ThereAreCurrentlyNoUsersToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="DepartmentUUID" value="<%=context.getFormattedValue(getObject("Department:UUID"),null)%>"/><input class="button" type="submit" name="nextStep" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>&nbsp;&gt;&gt;"/></td>
<td class="button"><input class="button" type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Main Content --><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>