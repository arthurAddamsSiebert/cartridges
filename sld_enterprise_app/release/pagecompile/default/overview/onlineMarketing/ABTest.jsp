<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_ABTESTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ApplicationBO:getExtension(\"ApplicationSelector\"):Type"),null).equals(context.getFormattedValue("channel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "navigationoverviewitem", new TagParameter[] {
new TagParameter("apptext","true"),
new TagParameter("displayname","marketing.abtest.title"),
new TagParameter("description","marketing.abtest.description"),
new TagParameter("linkurl",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))))}, 4); %><% } %><% printFooter(out); %>