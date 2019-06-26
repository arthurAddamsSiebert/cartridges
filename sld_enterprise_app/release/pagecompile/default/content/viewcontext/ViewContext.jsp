<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 6); %><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("ViewContext")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Print","false"),
new TagParameter("NameableDisplayName","ViewContextDisplayName")}, 11); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Properties.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 14); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Assignments",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContext:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Pages.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Assignments",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 17); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Includes.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Assignments",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 19); %><% } %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Details.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Details",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 22); %><% }} %><% processOpenTag(response, pageContext, "viewcontexttabs", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ViewContext",getObject("ViewContext")),
new TagParameter("SelectedTab",getObject("SelectedTab")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 27); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("PageLocatorName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageLocatorName"),null).equals(context.getFormattedValue(getObject("ViewContext:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("parametervalue6",getObject("PageLocatorName")),
new TagParameter("parametervalue5",getObject("SelectedMenuItem")),
new TagParameter("parametervalue4",getObject("SelectedTab")),
new TagParameter("currentobject",getObject("ViewContext")),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("pagenumber",getObject("DetailsPageNumber")),
new TagParameter("nameforobjectuuid","ViewContextUUID"),
new TagParameter("pipeline","ViewViewContext-View"),
new TagParameter("parametername4","SelectedTab"),
new TagParameter("parametername5","SelectedMenuItem"),
new TagParameter("pagelocatorname",getObject("PageLocatorName")),
new TagParameter("parametername6","PageLocatorName")}, 36); %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "52");} %><% } %><% printFooter(out); %>