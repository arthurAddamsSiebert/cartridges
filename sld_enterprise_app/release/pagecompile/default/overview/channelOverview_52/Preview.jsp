<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>		<% {Object temp_obj = (getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.channel.consumer.capi.application.ManagementApplicationStorefrontApplicationBOExtension\")")); getPipelineDictionary().put("StorefrontApplicationSelector", temp_obj);} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("StorefrontApplicationSelector"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
			<% {Object temp_obj = (getObject("StorefrontApplicationSelector:StorefrontApplicationBO")); getPipelineDictionary().put("StorefrontApplicationBO", temp_obj);} %>
<% processOpenTag(response, pageContext, "navigationoverviewitem", new TagParameter[] {
new TagParameter("apptext","true"),
new TagParameter("displayname","content.preview.title"),
new TagParameter("description","content.preview.description"),
new TagParameter("linkurl",url(true,(new URLPipelineAction(context.getFormattedValue("EditView-StorefrontBrowsing",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetSiteUUID",null),context.getFormattedValue(getObject("StorefrontApplicationBO:Site:UUID"),null))).addURLParameter(context.getFormattedValue("StorefrontApplicationUUID",null),context.getFormattedValue(getObject("StorefrontApplicationBO:ID"),null))))}, 4); %>
<% } %>
<% printFooter(out); %>