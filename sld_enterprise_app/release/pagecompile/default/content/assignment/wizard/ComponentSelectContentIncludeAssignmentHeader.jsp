<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","Parameters")}, 3); %><% {try{executePipeline("ViewComponentContentIncludeAssignmentCreationWizard-ProcessValuesInContainer",((java.util.Map)(getObject("Parameters"))),"Parameters");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parameters:ActionID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.EditAllComponentsStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Parameters:ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.EditSelectedComponentsStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.EditSelectedComponentStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } %><% }} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.AssignComponentsToIncludesStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Parameters:ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.AssignComponentsToIncludesStep0SelectIncludes.table_title1",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.AssignComponentToIncludesStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } %><% }} %> 
<% } %></td>
</tr>
<tr>
<td width="100%" class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parameters:ActionID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.Step0Of3.table_title_description",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><br/><br/><% } else { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.Step0Of2.table_title_description",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><br/><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parameters:ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.SelectTheIncludesYouWantTheComponentsApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></br></br><% } else { %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.SelectTheIncludesYouWantTheComponentApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></br></br><% } %><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.NextStepSetPriorityAndVisibility.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletEntryPointSearchTitleAndErrors", null, "51");} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","Errors")}, 53); %><% {try{executePipeline("ViewComponentContentIncludeAssignmentCreationWizard-RestoreErrors",((java.util.Map)(getObject("Errors"))),"Errors");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 54.",e);}} %><!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Errors:ErrorNoContentIncludeSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.YouHaveNotSelectedContentIncludesUseTheCheckboxesT.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% printFooter(out); %>