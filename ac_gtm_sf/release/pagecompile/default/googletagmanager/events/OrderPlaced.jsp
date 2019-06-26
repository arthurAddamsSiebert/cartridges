<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"googletagmanager/modules/TrackingModules", null, "2");} %><% {Object temp_obj = ("com.intershop.adapter.gtm.internal.handler.OrderPlacedEventHandler"); getPipelineDictionary().put("gtmHandler", temp_obj);} %><% {Object temp_obj = (getObject("ServiceContainer:GetContainerForHandler(gtmHandler)")); getPipelineDictionary().put("gtmOrderPlacedContainer", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("gtmOrderPlacedContainer:Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><script type="text/javascript">
window.dataLayer = window.dataLayer || [];
dataLayer.push({
'ecommerce': {
'currencyCode': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmOrderPlacedContainer:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'purchase': {
'actionField': {
'step': 5,
'id': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmOrderPlacedContainer:Identifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'affiliation': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmOrderPlacedContainer:AffiliateId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'revenue': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmOrderPlacedContainer:GrandTotalGross"),"0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'tax': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmOrderPlacedContainer:Tax"),"0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'shipping': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmOrderPlacedContainer:ShippingTotal"),"0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'coupon': '<% {String value = null;try{value=context.getFormattedValue(getObject("gtmOrderPlacedContainer:PromoCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
},
'products':
<% processOpenTag(response, pageContext, "trackingproducts", new TagParameter[] {
new TagParameter("products_container",getObject("gtmOrderPlacedContainer:Products")),
new TagParameter("include_quantity","true")}, 23); %>
}
}
});
</script><% } %><% printFooter(out); %>