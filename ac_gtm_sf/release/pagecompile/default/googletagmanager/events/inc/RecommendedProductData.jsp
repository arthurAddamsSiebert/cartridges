<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"googletagmanager/modules/TrackingModules", null, "2");} %><script type="text/javascript">
window.ish.GTMproducts = [];
window.ish.GTMproducts.push(
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("gtmProductsContainer")))).booleanValue() && ((Boolean) (hasLoopElements("gtmProductsContainer:Products") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% while (loop("gtmProductsContainer:Products","Product",null)) { %><% processOpenTag(response, pageContext, "trackingproduct", new TagParameter[] {
new TagParameter("tracking_product",getObject("Product")),
new TagParameter("include_list","true"),
new TagParameter("include_quantity","false"),
new TagParameter("tracking_list",getObject("gtmProductsContainer:ListName"))}, 9); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Product") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>,<% } %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceContainer:Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% while (loop("ServiceContainer:Products","Product",null)) { %><% processOpenTag(response, pageContext, "trackingproduct", new TagParameter[] {
new TagParameter("tracking_product",getObject("Product")),
new TagParameter("include_list","true"),
new TagParameter("include_quantity","false")}, 14); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Product") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>,<% } %><% } %><% }} %>
);
</script><% printFooter(out); %>