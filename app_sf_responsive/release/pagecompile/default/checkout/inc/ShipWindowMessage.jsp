<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pli:ProductBO:ServiceType:DigitalGiftCard"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("pli:ProductBO:ReadyForShipmentMin")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("pli:ProductBO:ReadyForShipmentMax")))).booleanValue() && ((Boolean) (getObject("pli:ProductBO:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("pli:ProductBO:ReadyForShipmentMin"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("pli:ProductBO:ReadyForShipmentMax"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.delivery.within24","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.delivery.within","",null,getObject("pli:ProductBO:ReadyForShipmentMax"),null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% {out.write(localizeISText("checkout.delivery.period.text","",null,getObject("pli:ProductBO:ReadyForShipmentMin"),getObject("pli:ProductBO:ReadyForShipmentMax"),null,null,null,null,null,null,null,null));} %><% } %><% processOpenTag(response, pageContext, "tooltip", new TagParameter[] {
new TagParameter("contentkey","checkout.order_delivery_date.text"),
new TagParameter("linktextkey","checkout.detail.text"),
new TagParameter("headlinekey","checkout.item.delivery.text"),
new TagParameter("placement","bottom"),
new TagParameter("linkclass","details-tooltip")}, 16); %></div><% } %><% } %><% printFooter(out); %>