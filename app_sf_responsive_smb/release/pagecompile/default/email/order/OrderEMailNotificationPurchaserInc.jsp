<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CompanyCustomer", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO:CustomerBO")))).booleanValue() && ((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("OrderBO:InvoiceToAddressBO:CompanyName1"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:InvoiceToAddressBO:CompanyName1"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %> 
<h4><% {out.write(localizeISText("checkout.widget.purchaser.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OrderBO:InvoiceToAddressBO:CompanyName1"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:InvoiceToAddressBO:CompanyName1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:InvoiceToAddressBO:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:UserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:UserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OrderBO:UserBO:Login"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CompanyCustomer:Department"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:Department"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% } %><br /><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CompanyCustomer:TaxationID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("checkout.widget.purchaser.TaxationID","",null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:TaxationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("checkout.widget.purchaser.orderReferenceID","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } %><br />
</p><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"TaxationID\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"Department\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><h4><% {out.write(localizeISText("checkout.widget.purchaser.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"Department\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"Department\"):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"TaxationID\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.widget.purchaser.TaxationID","",null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"TaxationID\"):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /><% } %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("checkout.widget.purchaser.orderReferenceID","",null,null,null,null,null,null,null,null,null,null,null));} %>: 
<% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ExtensibleObject:AttributeValue(\"orderReferenceID\"):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% } %><% }} %><% printFooter(out); %>