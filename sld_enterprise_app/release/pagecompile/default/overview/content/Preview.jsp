<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContentSharingChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentSharingChannel")),
new TagParameter("PermissionMap","PermissionMap")}, 3); %><!-- Master Page Browsing --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue() && ((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ContentSharingChannel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_DESIGN_VIEW_PREFERENCES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContentSharingChannel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContentSharingChannel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "navigationoverviewitem", new TagParameter[] {
new TagParameter("displayname","ContentOverview.Preview.link"),
new TagParameter("description","ContentOverview.OpenAndBrowseTheStorefront.overview_title_description"),
new TagParameter("linkurl",url(true,(new URLPipelineAction(context.getFormattedValue("EditView-StorefrontBrowsing",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetSiteUUID",null),context.getFormattedValue(getObject("ContentSharingChannel:RepositoryDomain:Site:UUID"),null)))))}, 8); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_DESIGN_VIEW_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "navigationoverviewitem", new TagParameter[] {
new TagParameter("displayname","ContentOverview.Preview.link"),
new TagParameter("description","ContentOverview.OpenAndBrowseTheStorefront.overview_title_description"),
new TagParameter("linkurl",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences-ChannelList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSharingChannelPreferenceNotExists",null),context.getFormattedValue("true",null)))))}, 10); %><% }} %><% } %><% } %><% } %><% printFooter(out); %>