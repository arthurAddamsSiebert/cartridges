<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%
	PipelineDictionary dict = getPipelineDictionary();
	String retName = (String)dict.get("return");
%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("promotionids")))).booleanValue() && ((Boolean) (hasLoopElements("promotionids") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("promotionsmap")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("TempPromotionText", temp_obj);} %><% while (loop("promotionids","promoids","promocount")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("promotionsmap:get(promoids):Attribute(\"Title\")")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("promotionsmap:get(promoids):Attribute(\"Title\")"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = (replace(context.getFormattedValue(getObject("promotionsmap:get(promoids):Attribute(\"Title\")"),null),(String)("<[^>]*>"),(String)(""))); getPipelineDictionary().put("PromoName", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("promotionsmap:get(promoids):DisplayName(CurrentSession:Locale)")); getPipelineDictionary().put("PromoName", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("promocount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("promoids") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("TempPromotionText"),null) + context.getFormattedValue(", ",null)); getPipelineDictionary().put("TempPromotionText", temp_obj);} %><% } else { %><% {Object temp_obj = (context.getFormattedValue(getObject("TempPromotionText"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("checkout.promotion.common.and.text",null)),null) + context.getFormattedValue(" ",null)); getPipelineDictionary().put("TempPromotionText", temp_obj);} %><% } %><% } %><% {Object temp_obj = (context.getFormattedValue(getObject("TempPromotionText"),null) + context.getFormattedValue("\"",null) + context.getFormattedValue(getObject("PromoName"),null) + context.getFormattedValue("\"",null)); getPipelineDictionary().put("TempPromotionText", temp_obj);} %><% } %><% dict.put(retName, (String)dict.get("TempPromotionText")); %><% } %><% printFooter(out); %>