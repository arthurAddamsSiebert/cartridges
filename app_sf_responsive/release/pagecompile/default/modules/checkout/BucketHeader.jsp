<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("bucketnumber")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><h2><% while (loop("bucket:ProductLineItemBOs","PLI",null)) { %><% {Object temp_obj = (getObject("PLI:ProductBO:ServiceTypeBO:DigitalGiftCard")); getPipelineDictionary().put("DigitalGiftCard", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",8);}else{getLoopStack().pop();break;} %><% } %><% {out.write(localizeISText("checkout.order.items_shipping_to.text","",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("DigitalGiftCard"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("bucket:ShipToAddressBO:FirstName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %> <% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% } %> <% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:CompanyName1"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:CompanyName1"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:CompanyName1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>, <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:CompanyName2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:CompanyName2"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>, <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:AddressName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("bucket:ShipToAddress:Extension(\"Store\")"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("bucket:ShipToAddressBO:AddressLine1"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>, <% {String value = null;try{value=context.getFormattedValue(getObject("bucket:ShipToAddressBO:AddressLine1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></h2><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("displaydeliverytime"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("displaydeliverytime"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("bucket:DeliveryTimeMin")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("bucket:DeliveryTimeMax")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("bucketnumber")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><h5><% } else { %><h3><% } %> 
<% {out.write(localizeISText("checkout.receipt.delivery_time.description","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("bucket:DeliveryTimeMin"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("bucket:DeliveryTimeMax"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.receipt.shipping_time.within24","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.receipt.shipping_time.within","",null,getObject("bucket:DeliveryTimeMax"),null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% {out.write(localizeISText("checkout.receipt.delivery_time","",null,getObject("bucket:DeliveryTimeMin"),getObject("bucket:DeliveryTimeMax"),null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("recurringbasketextension")))).booleanValue() && ((Boolean) getObject("recurringbasketextension:isRecurring")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><span>&nbsp;<% {out.write(localizeISText("checkout.receipt.delivery_time.description.extension.recurrence","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("bucketnumber")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %></h5><% } else { %></h3><% } %><% } %><% } %><% printFooter(out); %>