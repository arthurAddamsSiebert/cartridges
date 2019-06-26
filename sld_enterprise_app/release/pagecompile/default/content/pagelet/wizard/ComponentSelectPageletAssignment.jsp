<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: ComponentSelectPageletAssignment.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.SelectPageVariants.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-SelectPagelets",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("ComponentSelectPageletAssignment.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 7); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.SelectPageTemplates.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-SelectPagelets",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("ComponentSelectPageletAssignment.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 9); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.SelectComponents.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-SelectPagelets",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("ComponentSelectPageletAssignment.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 11); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.SelectComponentTemplates.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-SelectPagelets",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("ComponentSelectPageletAssignment.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 13); %><% }}}} %><!-- EO: Page Navigator --><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ActionID"),
new TagParameter("value0",getObject("ActionID")),
new TagParameter("mapname","TargetPipelineParameters")}, 17); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TemplateFlag"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("excludedpagelets",getObject("ExcludedPageletUUIDs")),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("allowedtemplates",getObject("PlaceholderDefinitionMap:Values")),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("extendedheadingtemplate","content/pagelet/wizard/ComponentSelectPageletAssignmentHeader"),
new TagParameter("disableselection","false"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","content/pagelet/wizard/ComponentSelectPageletAssignmentButtons"),
new TagParameter("alloweddefinitions",getObject("AllowedPageletDefinitions:Iterator")),
new TagParameter("hideselection","false"),
new TagParameter("page",getObject("PageFlagString")),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("targetpageletviewpipeline","ViewComponentPageletAssignmentCreationWizard-Dispatch"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("uniqueid","ComponentAssignToPagelets")}, 23); %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageFlag"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.AssignComponentsToPageTemplatesStep1SelectPageTemp.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.AssignComponentToPageTemplatesStep1SelectPageTempl.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.AssignComponentsToComponentTemplatesStep1SelectCom.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.AssignComponentToComponentTemplatesStep1SelectComp.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
</table>
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectSlots")))).booleanValue() && !((Boolean) ((hasLoopElements("SelectedPageletsUUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageFlag"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.YouHaveNotSelectedAPageTemplateUseTheCheckboxesToS.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.YouHaveNotSelectedAComponentTemplateUseTheCheckbox.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ComponentSelectPageletAssignment.Step1Of2.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageFlag"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.SelectThePageTemplatesYouWantTheComponentApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("ComponentSelectPageletAssignment.SelectTheComponentTemplatesYouWantTheComponentAppl.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% {out.write(localizeISText("ComponentSelectPageletAssignment.NextStepSelectSlotsPlaceholders.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedPageletsUUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><%
		java.util.Collection sv = new java.util.ArrayList();
		com.google.common.collect.Iterators.addAll(sv, ((Iterator)getPipelineDictionary().get("SelectedPageletsUUIDIterator")));
		getPipelineDictionary().put("SelectionValues", sv);
	%><% } %><% URLPipelineAction action433 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-Dispatch",null)))),null));String site433 = null;String serverGroup433 = null;String actionValue433 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-Dispatch",null)))),null);if (site433 == null){  site433 = action433.getDomain();  if (site433 == null)  {      site433 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup433 == null){  serverGroup433 = action433.getServerGroup();  if (serverGroup433 == null)  {      serverGroup433 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentPageTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue433, site433, serverGroup433,true)); %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="SelectSlots" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Component:Template"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% {Object temp_obj = (((new ParameterMap().addParameter(new ParameterEntry("OwningPagelet4Placeholder",getObject("Component:UUID")))))); getPipelineDictionary().put("ExcludedPageletMap", temp_obj);} %><% processOpenTag(response, pageContext, "pagelettemplatetree", new TagParameter[] {
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("ExcludedPagelets",getObject("ExcludedPageletMap:Values")),
new TagParameter("PageFlag",getObject("PageFlagString")),
new TagParameter("SelectionType","wizard"),
new TagParameter("SelectionName","SelectedTemplateUUID"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionListing","true"),
new TagParameter("ContextPipeline","ViewComponentPageletAssignmentCreationWizard-SelectPagelets"),
new TagParameter("SelectionValues",getObject("SelectionValues"))}, 115); %> 
<% } else { %><% processOpenTag(response, pageContext, "pagelettemplatetree", new TagParameter[] {
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageFlag",getObject("PageFlagString")),
new TagParameter("SelectionType","wizard"),
new TagParameter("SelectionName","SelectedTemplateUUID"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionListing","true"),
new TagParameter("ContextPipeline","ViewComponentPageletAssignmentCreationWizard-SelectPagelets"),
new TagParameter("SelectionValues",getObject("SelectionValues"))}, 128); %><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="SelectSlots" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignment.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><% printFooter(out); %>