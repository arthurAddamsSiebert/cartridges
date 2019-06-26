<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeComponentAssignmentCreationWizard-SelectVisibilityAndPriority",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentIncludeSelectComponentAssignmentVisibility.Step3SelectVisibilityAndPriority.text",null)))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentIncludeSelectComponentAssignmentVisibility.EditAllContentIncludesStep3SelectVisibilityAndPrio.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentIncludeSelectComponentAssignmentVisibility.EditSelectedContentIncludesStep3SelectVisibility.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
</table><% URLPipelineAction action395 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeComponentAssignmentCreationWizard-Dispatch",null)))),null));String site395 = null;String serverGroup395 = null;String actionValue395 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeComponentAssignmentCreationWizard-Dispatch",null)))),null);if (site395 == null){  site395 = action395.getDomain();  if (site395 == null)  {      site395 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup395 == null){  serverGroup395 = action395.getServerGroup();  if (serverGroup395 == null)  {      serverGroup395 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeComponentAssignmentCreationWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AssignmentVisibility");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue395, site395, serverGroup395,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ContentIncludeSelectComponentAssignmentVisibility.Step3Of3SelectTheVisibilityAndThePriorityOfTheAssignment.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>&quot;.
</td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/PageletAssignmentPropertiesErrors", null, "33");} %><% processOpenTag(response, pageContext, "pageletassignmentproperties", new TagParameter[] {
new TagParameter("DatePatternLocale",getObject("CurrentSession:Locale")),
new TagParameter("ShowHeading","true")}, 35); %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="previous" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIncludeSelectComponentAssignmentVisibility.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIncludeSelectComponentAssignmentVisibility.AssignComponentsToIncludes.input",null)),null)%>"/>
<input type="submit" name="Finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIncludeSelectComponentAssignmentVisibility.Finish.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIncludeSelectComponentAssignmentVisibility.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr> 
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>