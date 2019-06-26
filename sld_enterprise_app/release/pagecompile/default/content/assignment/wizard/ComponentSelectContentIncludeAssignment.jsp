<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectContentIncludeAssignment.SelectIncludes.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentContentIncludeAssignmentCreationWizard-SelectContentIncludes",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("ComponentSelectContentIncludeAssignment.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 4); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ActionID"),
new TagParameter("value0",getObject("ActionID")),
new TagParameter("mapname","TargetPipelineParameters")}, 6); %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","ModelUtils")}, 11); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("ModelUtils:ExtendingComponentEntryPointDefinitions(SystemManaged,Pagelet:PageletDefinition,PageletModelRepo):Size")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletentrypointsearch", new TagParameter[] {
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("extendedheadingtemplate","content/assignment/wizard/ComponentSelectContentIncludeAssignmentHeader"),
new TagParameter("disableselection","false"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","content/assignment/wizard/ComponentSelectContentIncludeAssignmentButtons"),
new TagParameter("hideselection","false"),
new TagParameter("page","false"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("targetpageletviewpipeline","ViewComponentContentIncludeAssignmentCreationWizard-Dispatch"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletEntryPointSearchResult"),
new TagParameter("uniqueid","ComponentAssignContentInclude")}, 13); %><% } else { %><% processOpenTag(response, pageContext, "pageletentrypointsearch", new TagParameter[] {
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("extendedheadingtemplate","content/assignment/wizard/ComponentSelectContentIncludeAssignmentHeader"),
new TagParameter("disableselection","false"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","content/assignment/wizard/ComponentSelectContentIncludeAssignmentButtons"),
new TagParameter("alloweddefinitions",getObject("ModelUtils:ExtendingComponentEntryPointDefinitions(SystemManaged,Pagelet:PageletDefinition,PageletModelRepo)")),
new TagParameter("hideselection","false"),
new TagParameter("page","false"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("targetpageletviewpipeline","ViewComponentContentIncludeAssignmentCreationWizard-Dispatch"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletEntryPointSearchResult"),
new TagParameter("uniqueid","ComponentAssignContentInclude")}, 29); %><% } %><% printFooter(out); %>