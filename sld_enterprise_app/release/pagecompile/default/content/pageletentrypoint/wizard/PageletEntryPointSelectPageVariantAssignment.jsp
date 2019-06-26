<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagePageVariantAssignmentCreationWizard-SelectPageVariants",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletEntryPointSelectPageVariantAssignment.Step2SelectPageVariants.text",null)))}, 4); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value0",getObject("ContentRepositoryUUID")),
new TagParameter("mapname","TargetPipelineParameters")}, 6); %><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("submitbuttonstemplate","content/pageletentrypoint/wizard/PageletEntryPointSelectPageVariantAssignmentButtons"),
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("hideselection","false"),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("page","true"),
new TagParameter("extendedheadingtemplate","content/pageletentrypoint/wizard/PageletEntryPointSelectPageVariantAssignmentHeader"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("disableselection","false"),
new TagParameter("targetpageletviewpipeline","ViewPagePageVariantAssignmentCreationWizard-Dispatch"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("uniqueid","PageAssignToPageVariant")}, 10); %><% printFooter(out); %>