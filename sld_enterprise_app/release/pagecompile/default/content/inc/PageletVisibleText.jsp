<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("online"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("start"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletVisibleFrom.Hidden",null))); getPipelineDictionary().put("text", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletVisibleTo.Hidden",null))); getPipelineDictionary().put("text", temp_obj);} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("date"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(context.getFormattedValue(getObject("date"),new Integer(DATE_INPUT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("date"),new Integer(TIME_INPUT)),null)); getPipelineDictionary().put("text", temp_obj);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("start"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletVisibleFrom.NoStartDate",null))); getPipelineDictionary().put("text", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletVisibleTo.NoEndDate",null))); getPipelineDictionary().put("text", temp_obj);} %><% } %><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("print"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% printFooter(out); %>