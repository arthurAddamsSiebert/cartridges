<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/DeptTreeScript", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ListConfirmationCheck", null, "4");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserDepartmentRolesWizard-SelectDepartment",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserUUID",null),context.getFormattedValue(getObject("User:ID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("SelectDepartment.NewStep1SelectDepartment.text",null)))}, 6); %><!-- Working Area --><% URLPipelineAction action475 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserDepartmentRolesWizard-Dispatch",null)))),null));String site475 = null;String serverGroup475 = null;String actionValue475 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserDepartmentRolesWizard-Dispatch",null)))),null);if (site475 == null){  site475 = action475.getDomain();  if (site475 == null)  {      site475 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup475 == null){  serverGroup475 = action475.getServerGroup();  if (serverGroup475 == null)  {      serverGroup475 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserDepartmentRolesWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DepartmentSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue475, site475, serverGroup475,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<input type="hidden" name="UserUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("User:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("SelectDepartment.Step1SelectDepartment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("next"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("SelectDepartment.YouHaveNotSelectedADepartmentSelectOneAndThenClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Departments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="table_title_description w e"><% {out.write(localizeISText("SelectDepartment.Step1Of2NextStepSelectRoleInThisDepartment.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% while (loop("Departments","dep",null)) { %><% processOpenTag(response, pageContext, "department", new TagParameter[] {
new TagParameter("HandlerPipeline","ViewUserDepartmentRolesWizard"),
new TagParameter("EnableDetailsLink","false"),
new TagParameter("SelectionType","single"),
new TagParameter("ParameterName1","UserUUID"),
new TagParameter("alloweditdepartment","false"),
new TagParameter("department",getObject("dep")),
new TagParameter("FormName","DepartmentSelectionForm"),
new TagParameter("ExpandAll","true"),
new TagParameter("ParameterValue1",getObject("UserUUID"))}, 45); %><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Main Content -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="submit" name="next" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectDepartment.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td class="table_detail s"><% {out.write(localizeISText("SelectDepartment.ThereAreNoExistingDepartments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>