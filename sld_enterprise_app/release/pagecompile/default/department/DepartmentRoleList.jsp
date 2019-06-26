<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("DepartmentRoleList.Roles.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DepartmentUUID",null),context.getFormattedValue(getObject("Department:UUID"),null))))),
new TagParameter("id",getObject("Department:UUID")),
new TagParameter("text",getObject("Department:DisplayName"))}, 6); %><% {Object temp_obj = ("Roles"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"department/DepartmentTabs", null, "9");} %><% URLPipelineAction action226 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-DispatchList",null)))),null));String site226 = null;String serverGroup226 = null;String actionValue226 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-DispatchList",null)))),null);if (site226 == null){  site226 = action226.getDomain();  if (site226 == null)  {      site226 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup226 == null){  serverGroup226 = action226.getServerGroup();  if (serverGroup226 == null)  {      serverGroup226 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-DispatchList",null)))),null));out.print("\"");out.print(" name=\"");out.print("DepartmentRolesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue226, site226, serverGroup226,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Department:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<!-- simple delete confirmation --><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("DepartmentRoleList.AreYouSureThatYouWantToDeleteTheseRoles.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCategory.OK.button",null)),null)%>" class="button"/></td><td>&nbsp;</td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><!-- Check Display Name --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("DepartmentMasterRoleList.YouHaveNotSelectedAnyRolesToBeDeletedUse.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("DepartmentRoleList.TheseRolesAreDefinedForThisDepartment.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% {out.write(localizeISText("DepartmentRoleList.UseTheNewButtonToCreateANewRole.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %></td>
</tr>
</table>
<!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Roles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><td class="table_header aldi left" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('DepartmentRolesForm','SelectedRoles','A','B');" class="tableheader"><% {out.write(localizeISText("PageletLabels.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('DepartmentRolesForm','SelectedRoles','A','B');" class="tableheader"><% {out.write(localizeISText("NewProductSetChannelAssignment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ProductRetailSetDetail.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header aldi left" nowrap="nowrap"><% {out.write(localizeISText("ProductRetailSetDetail.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ReplicationGroupList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Roles",null,null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><td class="table_detail w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Roles:isFix"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><input type="checkbox" disabled="disabled" /><% } else { %><input type="checkbox" name="SelectedRoles" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Roles:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PrefixIterator")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% while (loop("PrefixIterator","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("Roles:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",100);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/><% {Object temp_obj = ("YES"); getPipelineDictionary().put("DeleteBtn", temp_obj);} %><% } %></td>
<!--td class="table_detail e s left small"><% {String value = null;try{value=context.getFormattedValue(getObject("Roles:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td-->
<td class="table_detail e s left">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-EditDepartmentRole",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RoleID",null),context.getFormattedValue(getObject("Roles:ID"),null))).addURLParameter(context.getFormattedValue("DepartmentUUID",null),context.getFormattedValue(getObject("Department:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Roles:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td><% } else { %><td class="table_detail w e s left"><% {String value = null;try{value=context.getFormattedValue(getObject("Roles:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td><% } %><td class="table_detail e s left"><% {String value = null;try{value=context.getFormattedValue(getObject("Roles:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="5" class="table_detail aldi"><% {out.write(localizeISText("DepartmentRoleList.ThereAreCurrentlyNoRolesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentMasterRoleList.ClickNewToCreateANewRole.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="DepartmentUUID" value='<% {String value = null;try{value=context.getFormattedValue(getObject("Department:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'/><input class="button" type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductPriceMappingRuleList.New.button",null)),null)%>"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DeleteBtn"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><td class="button"><input class="button" type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><!-- EO Main Content -->
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "148");} %><% printFooter(out); %>