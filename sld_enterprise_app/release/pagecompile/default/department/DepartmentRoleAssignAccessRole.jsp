<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("DepartmentRoleAssignAccessRole.AccessPrivileges.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-SelectAccessRoles",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DepartmentUUID",null),context.getFormattedValue(getObject("Department:UUID"),null))).addURLParameter(context.getFormattedValue("RoleID",null),context.getFormattedValue(getObject("Role:ID"),null)))),
new TagParameter("id","Organization/Departments/Role"),
new TagParameter("text",getObject("Role:Name"))}, 3); %><% URLPipelineAction action228 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-DispatchAR",null)))),null));String site228 = null;String serverGroup228 = null;String actionValue228 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-DispatchAR",null)))),null);if (site228 == null){  site228 = action228.getDomain();  if (site228 == null)  {      site228 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup228 == null){  serverGroup228 = action228.getServerGroup();  if (serverGroup228 == null)  {      serverGroup228 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentRoles-DispatchAR",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue228, site228, serverGroup228,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td><% {Object temp_obj = ("AccessPrivileges"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"department/DepartmentRoleTabs", null, "10");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Role"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Role:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("ProductPriceMappingRuleList.New.button",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> - <% {out.write(localizeISText("DepartmentMasterRoleAssignAccessRole.AccessPrivileges.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header aldi center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','RoleIDs','A','B');" class="tableheader"><% {out.write(localizeISText("PageletLabels.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','RoleIDs','A','B');" class="tableheader"><% {out.write(localizeISText("NewProductSetChannelAssignment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.AccessPrivilege.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationGroupList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("DomainAccessRoles","aRole",null)) { %><tr>
<td class="table_detail w e s center top"><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("found", temp_obj);} %><% while (loop("CurrentUserRoles",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CurrentUserRoles:ID"),null).equals(context.getFormattedValue(getObject("aRole:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CurrentUserRoles:DomainID"),null).equals(context.getFormattedValue(getObject("aRole:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("found", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",59);}else{getLoopStack().pop();break;} %><% } %><% } %><input type="checkbox" name="RoleIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aRole:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("found")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DirectAssignedRolesHash:get(aRole:ID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
checked="checked"
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("found")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
/><input type="hidden" name="RoleIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aRole:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% } %>
/>
</td>
<td class="table_detail3 e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("aRole:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("aRole:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><tr><td class="table_title2 w e s" colspan="3"><% {out.write(localizeISText("ChannelPermissionSelectDRAccessRoles.IndirectlyAssignedAccessPrivileges.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IndirectAssignedRoles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><tr>
<td colspan="2" class="table_header w s e" nowrap="nowrap"><% {out.write(localizeISText("ChannelPermissionSelectDRAccessRoles.IndirectlyAssignedAccessPrivileges.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s " nowrap="nowrap"><% {out.write(localizeISText("ReplicationGroupList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("IndirectAssignedRoles","iRole",null)) { %><tr>
<td colspan="2" class="table_detail w s e"><% {String value = null;try{value=context.getFormattedValue(getObject("iRole:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("iRole:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s" colspan="3"><% {out.write(localizeISText("DepartmentRoleAssignAccessRole.ThisDepartmentRoleDoesNotHaveAnyIndirect.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td align="right" width="100%" colspan="3" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="DepartmentUUID" value='<% {String value = null;try{value=context.getFormattedValue(getObject("Department:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'/><input type="hidden" name="RoleID" value='<% {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'/><input class="button" type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>"/></td>
<td class="button"><input class="button" type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Main Content -->
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "113");} %><!-- EO Working Area --><% printFooter(out); %>