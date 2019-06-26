<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/json;charset=utf-8" %><%setEncodingType("application/json"); %><% {Object temp_obj = ("com.intershop.adapter.gtm.internal.handler.ClickPromotionEventHandler"); getPipelineDictionary().put("gtmHandler", temp_obj);} %><% {Object temp_obj = (getObject("ServiceContainer:GetContainerForHandler(gtmHandler)")); getPipelineDictionary().put("gtmPromotionContainer", temp_obj);} %>
{
"event": "promotionClick",
"ecommerce": {
"promoClick": {
"promotions": [
{
"id": "<% {String value = null;try{value=context.getFormattedValue(getObject("gtmPromotionContainer:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"name": "<% {String value = null;try{value=context.getFormattedValue(getObject("gtmPromotionContainer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"creative": "<% {String value = null;try{value=context.getFormattedValue(getObject("gtmPromotionContainer:Creative"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"position": "<% {String value = null;try{value=context.getFormattedValue(getObject("gtmPromotionContainer:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
}]
}
}
}<% printFooter(out); %>