<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/DeptTreeScript", null, "3");} %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Organization",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("OrganizationMenu",null))).addURLParameter(context.getFormattedValue("OverviewPage",null),context.getFormattedValue("ViewOverview-Organization",null)))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSetChannels.Organization.table_header",null)))}, 8); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-List",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("Departments.Departments.link",null)))}, 9); %><% URLPipelineAction action237 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-DispatchDepList",null)))),null));String site237 = null;String serverGroup237 = null;String actionValue237 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-DispatchDepList",null)))),null);if (site237 == null){  site237 = action237.getDomain();  if (site237 == null)  {      site237 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup237 == null){  serverGroup237 = action237.getServerGroup();  if (serverGroup237 == null)  {      serverGroup237 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-DispatchDepList",null)))),null));out.print("\"");out.print(" name=\"");out.print("DepartmentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue237, site237, serverGroup237,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("department:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% {out.write(localizeISText("Departments.Departments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("DepartmentList.AreYouSureThatYouWantToDeleteTheseDepartments.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCategory.OK.button",null)),null)%>" class="button"/></td>
<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("DepartmentList.YouHaveNotSelectedAnyDepartmentsToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("DepartmentList.TheTreeDiagramShowsAllDepartments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("DepartmentList.UseThePlusAndMinusButtons.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Departments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% while (loop("Departments","dep",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "department", new TagParameter[] {
new TagParameter("HandlerPipeline","ViewDepartment"),
new TagParameter("currentidx",new Double(1)),
new TagParameter("EnableDetailsLink","true"),
new TagParameter("SelectionType","multiple"),
new TagParameter("ParameterName1","param1"),
new TagParameter("department",getObject("dep")),
new TagParameter("FormName","DepartmentForm"),
new TagParameter("ExpandAll","true"),
new TagParameter("elementcount",new Double(1)),
new TagParameter("ParameterValue1",getObject("dep:ID"))}, 73); %><% } else { %><% processOpenTag(response, pageContext, "department", new TagParameter[] {
new TagParameter("HandlerPipeline","ViewDepartment"),
new TagParameter("currentidx",new Double(1)),
new TagParameter("EnableDetailsLink","true"),
new TagParameter("SelectionType","none"),
new TagParameter("ParameterName1","param1"),
new TagParameter("department",getObject("dep")),
new TagParameter("FormName","DepartmentForm"),
new TagParameter("ExpandAll","true"),
new TagParameter("elementcount",new Double(1)),
new TagParameter("ParameterValue1",getObject("dep:ID"))}, 85); %><% } %><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductPriceMappingRuleList.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table width="100%" class="w e s n">
<tr>
<td class="table_detail"><% {out.write(localizeISText("DepartmentList.ThereAreCurrentlyNoDepartmentsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentList.ClickNewToCreateANewDepartment.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><table width="100%" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductPriceMappingRuleList.New.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>