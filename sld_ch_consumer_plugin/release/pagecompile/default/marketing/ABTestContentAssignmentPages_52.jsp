<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-ContentPagingPages",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedABTestGroupID",null),context.getFormattedValue(getObject("ABTestGroup:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedTestGroupID",null),context.getFormattedValue(getObject("UserGroup:ID"),null)).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","AssignPageToObject"),
new TagParameter("text",localizeText(context.getFormattedValue("ABTestContentAssignmentPages_52.AssignTestContentStep2Of2.text",null)))}, 5); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","SelectedTestGroupID"),
new TagParameter("key2","ABTestUUID"),
new TagParameter("key0","SelectedABTestGroupID"),
new TagParameter("value2",getObject("ABTest:UUID")),
new TagParameter("value1",getObject("UserGroup:ID")),
new TagParameter("value0",getObject("ABTestGroup:UUID")),
new TagParameter("mapname","TargetPipelineParams")}, 7); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ABTestContentAssignmentPages_52.AssignTestContentChooseAnObject.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","Previous"),
new TagParameter("okbtnname","Assign"),
new TagParameter("type","mae2")}, 19); %><% } %><% } %></table><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("selectedmenuitem","OnlineMarketing"),
new TagParameter("excludedpagelets",getObject("PageletsAssignedToABTestGroup")),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParams")),
new TagParameter("start",getObject("SearchStartFlag")),
new TagParameter("extendedheadingtemplate","marketing/ABTestContentAssignmentProperties_52"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","marketing/inc/ContentPageletAssignmentButtons"),
new TagParameter("page","true"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("targetpageletviewpipeline","ViewABTestAssignments_52-DispatchContentAssignmentPages"),
new TagParameter("uniqueid","ABTestContentPageletAssignment_52")}, 23); %><% printFooter(out); %>