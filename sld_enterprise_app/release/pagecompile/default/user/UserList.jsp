<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "java.util.Calendar" %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "5");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Organization",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("OrganizationMenu",null))).addURLParameter(context.getFormattedValue("OverviewPage",null),context.getFormattedValue("ViewOverview-Organization",null)))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.Organization.text",null)))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-Paging",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.Users.text",null)))}, 8); %><% URLPipelineAction action469 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-Dispatch",null)))),null));String site469 = null;String serverGroup469 = null;String actionValue469 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-Dispatch",null)))),null);if (site469 == null){  site469 = action469.getDomain();  if (site469 == null)  {      site469 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup469 == null){  serverGroup469 = action469.getServerGroup();  if (serverGroup469 == null)  {      serverGroup469 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("userList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue469, site469, serverGroup469,true)); %><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("UserList.UserList.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"MessageBoxExtension", null, "17");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("messageBox"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %> 
<!-- delete confirmation if one is selected --> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPermissionList.User.error",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("UserList.AreYouSureThatYouWantToDeleteTheseUsers.message",null)))}, 22); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmReactivate")))).booleanValue() && ((Boolean) (hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPermissionList.User.error",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","reactivate"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("UserList.AreYouSureThatYouWantToReactivateTheseUsers.message",null)))}, 26); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("selectStagingTarget")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("UserList.YouHaveNotSelectedAnyUsersToBePublished.message",null)))}, 30); %><% } %><% } %> 
<!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UserList.YouHaveNotSelectedAnyUserToBeDeletedUseTheCheckbox.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- reactivate confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmReactivate")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UserList.YouHaveNotSelectedAnyUserToBeReactivatedUseTheChec.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class=" table_title_description w e"><% {out.write(localizeISText("UserList.TheListShowsAllUsersInThisOrganization.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("UserList.ClickNewToAddANewUserUseTheCheckboxesAndTheReactiv.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="s">
<!-- Simple and advanced search --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"user/UserSearch", null, "78");} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 83); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader" data-for="OrganizationUsers">
<thead>
<tr>
<th align="left">
<table width="100%" cellpadding="0" cellspacing="4" border="0" class="w e s">
<tr>
<td class="button">
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserList.New.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_REPLICATE_USER_WO_PROVIDER"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_REPLICATE_USER_WO_PROVIDER"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="selectStagingTarget" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserList.PublishToLiveSystem.button",null)),null)%>" class="button"/></td><% } %><% } %><td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button"/>
</td><% } %><td width="26">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmReactivate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserList.ReactivateAccount.button",null)),null)%>" class="button"/>
</td><% } %><td width="100%">&nbsp;</td>
</tr>
</table>
</th>
</tr>
</thead>
</table><% } %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentUserPermissionMap"),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("CurrentUser")),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","CurrentUser"),
new TagParameter("value1",getObject("CurrentUserPermissionMap")),
new TagParameter("key3","SelectedItemsName"),
new TagParameter("value4","user"),
new TagParameter("value3","DeleteUser"),
new TagParameter("key4","AvailableItemsName"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 122); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","inc/GridUserColumns.isml"),
new TagParameter("configuration","organizationusers"),
new TagParameter("datatemplate","inc/GridUserData.isml"),
new TagParameter("pageable",getObject("Users")),
new TagParameter("id","OrganizationUsers"),
new TagParameter("pageablename","Users"),
new TagParameter("params",getObject("params"))}, 130); %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("UserList.NoResultsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.NameOrIDI0",null,null,encodeString(context.getFormattedValue(getObject("SearchTerm"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("BusinessPartnerNo"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.UserIDI0",null,null,encodeString(context.getFormattedValue(getObject("BusinessPartnerNo"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.FirstNameI0",null,null,encodeString(context.getFormattedValue(getObject("FirstName"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.LastNameI0",null,null,encodeString(context.getFormattedValue(getObject("LastName"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Login"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.LoginI0",null,null,encodeString(context.getFormattedValue(getObject("Login"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("AccessRoleID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.AccessRoleI0",null,null,encodeString(context.getFormattedValue(getObject("AccessRoleID"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("DepartmentName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.DepartmentNameI0",null,null,encodeString(context.getFormattedValue(getObject("DepartmentName"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("UserList.StatusI",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><% {out.write(localizeISText("UserList.All",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><% {out.write(localizeISText("UserList.Active",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><% {out.write(localizeISText("UserList.Inactive",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><% {out.write(localizeISText("UserList.TemporarilyDeactivated",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}} %><% } %><br/><br/><% {out.write(localizeISText("UserList.CheckTheSpellingOrTryANewSearchWithDifferentKeywor",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% out.print("</form>"); %><% printFooter(out); %>