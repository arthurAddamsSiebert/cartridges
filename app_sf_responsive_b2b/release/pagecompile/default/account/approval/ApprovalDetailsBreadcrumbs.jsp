<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BasketBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BasketType"),null).equals(context.getFormattedValue("subscription",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeTextEx(context.getFormattedValue("approval.details.breadcrumb.subscription.label",null),new ParameterList().addParameter(getObject("BasketBO:RecurringOrderDocumentNo")))); getPipelineDictionary().put("BreadcrumbTrailText", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeTextEx(context.getFormattedValue("approval.details.breadcrumb.order.label",null),new ParameterList().addParameter(getObject("BasketBO:DocumentNo")))); getPipelineDictionary().put("BreadcrumbTrailText", temp_obj);} %><% } %><div class="breadcrumbs row"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("breadcrumbKey"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("backLinkAction"),null))))),
new TagParameter("trailtext",getObject("BreadcrumbTrailText")),
new TagParameter("text",localizeText(context.getFormattedValue(getObject("breadcrumbKey"),null)))}, 13); %><% } %></div><% } %><% printFooter(out); %>