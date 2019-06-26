<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("wishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("trailtext1",getObject("wishlistBO:Name")),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("link1",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewWishlist-ViewAll",null))))),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("text1",localizeText(context.getFormattedValue("account.wishlists.link",null))),
new TagParameter("showhomelink","true")}, 5); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("link"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("trailtext1",getObject("trailtext")),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("link1",getObject("link")),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("text1",getObject("text")),
new TagParameter("showhomelink","true")}, 16); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("trailtext0",getObject("trailtext")),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("showhomelink","true")}, 27); %><% }} %><% printFooter(out); %>