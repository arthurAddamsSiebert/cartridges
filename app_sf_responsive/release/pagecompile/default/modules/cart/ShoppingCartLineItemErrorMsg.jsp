<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("failedAdjustBasketResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><ul class="list-unstyled alert alert-danger">
<li><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("shopping_cart.warning.",null) + context.getFormattedValue(getObject("failedAdjustBasketResult:FailureCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></li>
<li><% {out.write(localizeISText("shopping_cart.quantity.invalid.error.w.correction","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("addToBasketResult")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("addToBasketResult:ResultCode"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("addToBasketResult:ResultCode"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><div class="alert alert-info <% {String value = null;try{value=context.getFormattedValue(getObject("cssClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" role="alert"><% {out.write(localizeISText("shopping_cart.quantity.invalid.error.w.correction","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("adjustBasketResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><div class="alert alert-info <% {String value = null;try{value=context.getFormattedValue(getObject("cssClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" role="alert"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("shopping_cart.warning.",null) + context.getFormattedValue(getObject("adjustBasketResult:AdjustmentReasonCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("adjustBasketResultByInventory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><div class="alert alert-info <% {String value = null;try{value=context.getFormattedValue(getObject("cssClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" role="alert"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("shopping_cart.warning.",null) + context.getFormattedValue(getObject("adjustBasketResultByInventory:AdjustmentReasonCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("failedUpdateVariationResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><ul class="list-unstyled alert alert-danger">
<li><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("shopping_cart.warning.",null) + context.getFormattedValue(getObject("failedUpdateVariationResult:FailureCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("adjustedUpdateVariationResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><div class="alert alert-info <% {String value = null;try{value=context.getFormattedValue(getObject("cssClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" role="alert"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("shopping_cart.warning.",null) + context.getFormattedValue(getObject("adjustedUpdateVariationResult:AdjustmentReasonCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("adjustBasketValidationResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><div class="alert alert-info <% {String value = null;try{value=context.getFormattedValue(getObject("cssClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" role="alert"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("shopping_cart.warning.",null) + context.getFormattedValue(getObject("adjustBasketValidationResult:AdjustmentCode"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% printFooter(out); %>