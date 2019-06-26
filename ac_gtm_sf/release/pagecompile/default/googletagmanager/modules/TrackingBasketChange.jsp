<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("changes_container:AddedProducts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("changes_container:RemovedProducts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><script type="text/javascript">
window.dataLayer = window.dataLayer || [];
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("changes_container:AddedProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
dataLayer.push({
'event': 'addToCart', 
'ecommerce': {
'currencyCode': '<% {String value = null;try{value=context.getFormattedValue(getObject("changes_container:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'add': { 
'products': 
<% processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("changes_container:AddedProducts")),
new TagParameter("include_quantity","true")}, 16); %>
}
}
});
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("changes_container:RemovedProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
dataLayer.push({
'event': 'removeFromCart', 
'ecommerce': {
'currencyCode': '<% {String value = null;try{value=context.getFormattedValue(getObject("changes_container:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'remove': { 
'products':
<% processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("changes_container:RemovedProducts")),
new TagParameter("include_quantity","true")}, 28); %>
}
}
});
<% } %></script><% } %><% printFooter(out); %>