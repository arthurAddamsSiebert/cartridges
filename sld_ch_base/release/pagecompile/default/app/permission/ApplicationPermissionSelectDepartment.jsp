<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/DeptTreeScript", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ListConfirmationCheck", null, "5");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-DispatchDRWizard",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedDepartmentUUID",null),context.getFormattedValue(getObject("SelectedDepartmentUUID"),null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("RepositoryUUID"),null)).addURLParameter(context.getFormattedValue("PermissionType",null),context.getFormattedValue("DepartmentRole",null)).addURLParameter(context.getFormattedValue("back1",null),context.getFormattedValue("",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ApplicationPermissionSelectDepartment.Step1SelectDepartment.text",null)))}, 7); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Departments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% URLPipelineAction action333 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-DispatchDRWizard",null)))),null));String site333 = null;String serverGroup333 = null;String actionValue333 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-DispatchDRWizard",null)))),null);if (site333 == null){  site333 = action333.getDomain();  if (site333 == null)  {      site333 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup333 == null){  serverGroup333 = action333.getServerGroup();  if (serverGroup333 == null)  {      serverGroup333 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-DispatchDRWizard",null)))),null));out.print("\"");out.print(" name=\"");out.print("DepartmentSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue333, site333, serverGroup333,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title w e n s"><% {out.write(localizeISText("ApplicationPermissionSelectDepartment.Step1SelectDepartment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_CODE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_CODE"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="18" height="16" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ApplicationPermissionSelectDepartment.YouHaveNotSelectedADepartmentSelectOne.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr><td class="table_title_description w e s"><% {out.write(localizeISText("ApplicationPermissionSelectDepartment.Step1Of3NextStepsSelectRoles.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> &gt;&gt;".</td></tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td><% while (loop("Departments","dep",null)) { %><% processOpenTag(response, pageContext, "department", new TagParameter[] {
new TagParameter("HandlerPipeline","ViewApplicationPermissionWizard"),
new TagParameter("EnableDetailsLink","false"),
new TagParameter("SelectionType","single"),
new TagParameter("ParameterName1","RepositoryUUID"),
new TagParameter("alloweditdepartment","false"),
new TagParameter("department",getObject("dep")),
new TagParameter("FormName","DepartmentSelectionForm"),
new TagParameter("ExpandAll","true"),
new TagParameter("ParameterValue1",getObject("RepositoryUUID"))}, 41); %><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Main Content -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="RepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RepositoryUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="PermissionType" value="DepartmentRole"/><input type="submit" name="next1" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDepartment.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDepartment.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi"><% URLPipelineAction action334 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionList-SelectType",null)))),null));String site334 = null;String serverGroup334 = null;String actionValue334 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionList-SelectType",null)))),null);if (site334 == null){  site334 = action334.getDomain();  if (site334 == null)  {      site334 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup334 == null){  serverGroup334 = action334.getServerGroup();  if (serverGroup334 == null)  {      serverGroup334 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionList-SelectType",null)))),null));out.print("\"");out.print(" name=\"");out.print("CancelForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue334, site334, serverGroup334,true)); %><tr>
<td class="table_title s"><% {out.write(localizeISText("ApplicationPermissionSelectDepartment.Step1SelectDepartment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail s"><% {out.write(localizeISText("ApplicationPermissionSelectDepartment.ThereAreNoExistingDepartments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="RepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RepositoryUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="PermissionType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PermissionType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDepartment.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% out.print("</form>"); %></table><% } %><!-- EO Working Area --><% printFooter(out); %>