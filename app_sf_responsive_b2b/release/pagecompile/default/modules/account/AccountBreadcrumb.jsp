<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("wishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("trailtext1",getObject("wishlistBO:Name")),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("link1",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-ViewAll",null))))),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("text1",localizeText(context.getFormattedValue("account.ordertemplates.link",null))),
new TagParameter("showhomelink","true")}, 6); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("orderBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("trailtext"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeTextEx(context.getFormattedValue("account.orderdetails.breadcrumb",null),new ParameterList().addParameter(getObject("orderBO:DocumentNo")))); getPipelineDictionary().put("trailtext", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("link"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-MyApproved",null))))); getPipelineDictionary().put("link", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("text"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("account.order_history.link",null))); getPipelineDictionary().put("text", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("trailtext1",getObject("trailtext")),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("link1",getObject("link")),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("text1",getObject("text")),
new TagParameter("showhomelink","true")}, 26); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("link1"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("trailtext1",getObject("trailtext")),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("link1",getObject("link")),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("text1",getObject("text")),
new TagParameter("text2",getObject("text1")),
new TagParameter("showhomelink","true"),
new TagParameter("link2",getObject("link1"))}, 37); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("link"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("trailtext1",getObject("trailtext")),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("link1",getObject("link")),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("text1",getObject("text")),
new TagParameter("showhomelink","true")}, 50); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("separatetrailtext","true"),
new TagParameter("text0",localizeText(context.getFormattedValue("account.my_account.link",null))),
new TagParameter("trailtext0",getObject("trailtext")),
new TagParameter("link0",url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null))))),
new TagParameter("showhomelink","true")}, 61); %><% }}}} %><% printFooter(out); %>