<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:TargetPrice:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ActionForm:TargetPrice:Errors"))))).booleanValue() && ((Boolean) ((hasLoopElements("ActionForm:TargetPrice:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% while (loop("ActionForm:TargetPrice:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.minmoney",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.order.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><br/><% } %><% } else { %><% while (loop("ActionForm:TargetPrice:Fields","Field",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Field:Errors"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% while (loop("Field:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.order.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><br/><% } %><% } %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:GrantedDiscount:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ActionForm:GrantedDiscount:Errors"))))).booleanValue() && ((Boolean) ((hasLoopElements("ActionForm:GrantedDiscount:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% while (loop("ActionForm:GrantedDiscount:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.minmoney",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.discount.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><br/><% } %><% } else { %><% while (loop("ActionForm:GrantedDiscount:Fields","Field",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Field:Errors"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% while (loop("Field:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.discount.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><br/><% } %><% } %><% } %><% } %><% } %><% } %><% printFooter(out); %>