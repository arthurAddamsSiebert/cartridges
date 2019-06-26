<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignment.SelectPages.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageVariantPageAssignmentCreationWizard-SelectPages",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("PageVariantSelectPageAssignment.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 4); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ActionID"),
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value1",getObject("ActionID")),
new TagParameter("value0",getObject("ContentRepositoryUUID")),
new TagParameter("mapname","TargetPipelineParameters")}, 6); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("PageEntryPointDefinitions:Size")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletentrypointsearch", new TagParameter[] {
new TagParameter("submitbuttonstemplate","content/assignment/wizard/PageVariantSelectPageAssignmentButtons"),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("hideselection","false"),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("page","true"),
new TagParameter("extendedheadingtemplate","content/assignment/wizard/PageVariantSelectPageAssignmentHeader"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("disableselection","false"),
new TagParameter("targetpageletviewpipeline","ViewPageVariantPageAssignmentCreationWizard-Dispatch"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletEntryPointSearchResult"),
new TagParameter("uniqueid",getObject("UniquePageletSearchID"))}, 12); %><% } else { %><% processOpenTag(response, pageContext, "pageletentrypointsearch", new TagParameter[] {
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("extendedheadingtemplate","content/assignment/wizard/PageVariantSelectPageAssignmentHeader"),
new TagParameter("disableselection","false"),
new TagParameter("submitbuttonstemplate","content/assignment/wizard/PageVariantSelectPageAssignmentButtons"),
new TagParameter("alloweddefinitions",getObject("PageEntryPointDefinitions")),
new TagParameter("hideselection","false"),
new TagParameter("page","true"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("targetpageletviewpipeline","ViewPageVariantPageAssignmentCreationWizard-Dispatch"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletEntryPointSearchResult"),
new TagParameter("uniqueid",getObject("UniquePageletSearchID"))}, 27); %><% } %><% printFooter(out); %>