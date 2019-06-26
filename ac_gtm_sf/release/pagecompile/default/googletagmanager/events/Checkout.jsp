<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"googletagmanager/modules/TrackingModules", null, "2");} %><% {Object temp_obj = ("com.intershop.adapter.gtm.internal.handler.ViewCheckoutEventHandler"); getPipelineDictionary().put("gtmHandler", temp_obj);} %><% {Object temp_obj = (getObject("ServiceContainer:GetContainerForHandler(gtmHandler)")); getPipelineDictionary().put("gtmCheckOutContainer", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("gtmCheckOutContainer:Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><script type="text/javascript">
window.dataLayer = window.dataLayer || [];
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
dataLayer.push({
'event': 'checkout',
'ecommerce': {
'currencyCode': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'checkout': {
'actionField': {'step': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'},
'products': <% processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 19); %>
}
}
});
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
dataLayer.push({
'event': 'checkout',
'ecommerce': {
'currencyCode': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'checkout': {
'actionField': {
'step': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'option': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:ShippingMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
},
'products': <% processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 37); %>
}
}
});
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
dataLayer.push({
'event': 'checkout',
'ecommerce': {
'currencyCode': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'checkout': {
'actionField': {
'step': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'option': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:PaymentMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
},
'products': <% processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 54); %>
}
}
});
$(document).ready(function() {
$('<%=context.getFormattedValue("#",null)%>payment-accordion input[type=radio]').change(function() {
var sPaymentMethodId = $(this).closest('label').children('strong').text();
console.log(sPaymentMethodId);
window.dataLayer = window.dataLayer || [];
dataLayer.push({
'event': 'checkoutOption',
'ecommerce': {
'checkout_option': {
'actionField': {
'step': 3,
'option': sPaymentMethodId || ''
}
}
}
});
});
});
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
dataLayer.push({
'event': 'checkout',
'ecommerce': {
'currencyCode': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'checkout': {
'actionField': {
'step': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:Step"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'option': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmCheckOutContainer:PaymentMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
},
'products': <% processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmCheckOutContainer:Products")),
new TagParameter("include_quantity","true")}, 90); %>
}
}
});
<% }}}} %></script><% } %><% printFooter(out); %>