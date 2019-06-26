<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.property.PropertyEngineMgr"%>
<%@page import="com.intershop.platform.property.capi.PropertyGroupValue"%>
<%@page import="com.intershop.platform.property.capi.PropertyEngine"%>
<%@page import="com.intershop.adapter.payment.demo.internal.creditcard.CreditCardInformation"%>
<%@page import="com.intershop.component.payment.capi.PaymentInstrumentInfoBO"%>
<%@page import="com.intershop.adapter.payment.demo.internal.creditcard.CreditCardConstants"%>
<%@page import="com.intershop.beehive.bts.capi.payment.PaymentInstrumentInfo"%>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PII:PaymentService:Delegate:CardSecurityCodeCheckEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><div class="ish-section">
<div class="ish-bar">
<h3><% {out.write(localizeISText("CheckoutMini.ConfirmPaymentMethod","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
</div>
<div class="ish-shiftContent">
<div><% {out.write(localizeISText("CheckoutMini.PleaseEnterTheSecurityCodeOfYourCreditCa","",null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutPayment-Review",null)))),null)%>"><% {out.write(localizeISText("CheckoutMini.SelectAnotherFormOfPayment.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>.</div>
<div><% {out.write(localizeISText("CheckoutMini.ForTestingPurposesUseThe","",null,null,null,null,null,null,null,null,null,null,null));} %> <a href="javascript:void(0)" class="kor-open-as-dialog-without-ajax"><% {out.write(localizeISText("CheckoutMini.DemoData.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>.
<div class="kor-dialog-content">
<div class="kor-content-contents">
<h3><% {out.write(localizeISText("CheckoutMini.ISHCreditCardDemoData","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<p><% {out.write(localizeISText("CheckoutMini.PleaseUseOneOfTheFollowingCreditCardsFor","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment_demo/ishpay/inc/CreditCardDemoData", null, "23");} %></div>
</div>
</div>
<p></p>
<div class="ish-field"><%
	PipelineDictionary dict = getPipelineDictionary();
	
	Object piiObject = dict.get("PII");
	if (piiObject instanceof PaymentInstrumentInfoBO)
	{
		PaymentInstrumentInfoBO pii = (PaymentInstrumentInfoBO) piiObject;
		CreditCardInformation info = pii.getConfiguration(pii.getPaymentService().getPaymentParameterDefinitions());
		dict.put("CardNumber", info.getCreditCardNumber());
		dict.put("CardType", info.getCreditCardType());
	}
	else
	{
		PaymentInstrumentInfo pii = (PaymentInstrumentInfo) piiObject;
		PropertyEngine engine = NamingMgr.getManager(PropertyEngineMgr.class).getPropertyEngine();
		PropertyGroupValue piiValues = engine.getConfigurationForOwner(pii, pii.getPaymentService().getPaymentParameterDefinitions());
		
		dict.put("CardNumber", piiValues.getProperty("creditCardNumber"));
		dict.put("CardType", piiValues.getProperty("creditCardType"));
	}
%><% processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedCreditCardNumber"),
new TagParameter("character","x"),
new TagParameter("length","4"),
new TagParameter("text",getObject("CardNumber")),
new TagParameter("direction","begin")}, 52); %><label for="truncatedCreditCardNumber" class="ish-label-s"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("payment.checkout.cc_type.",null) + context.getFormattedValue(getObject("CardType"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<span id="truncatedCreditCardNumber" class="ish-field-text"><% {String value = null;try{value=context.getFormattedValue(getObject("truncatedCreditCardNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div>
<div class="ish-field ish-field-last"><% processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("name_override",context.getFormattedValue(getObject("PII:PaymentService:ID"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("SimpleCCInputFieldUUID"),null)),
new TagParameter("ext_string_prefix","todo"),
new TagParameter("class","ish-formShift-s")}, 58); %><label for="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("SimpleCCInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="ish-label-s"><% {out.write(localizeISText("CheckoutMini.SecurityCode.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_SimpleCCInputFieldUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SimpleCCInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="text" class="ish-input-xs 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:Valid"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
ish-error
<% } %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("SimpleCCInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("SimpleCCInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("PIIDataVerificationResult:isValid")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PIIDataVerificationResult:Values:get(PIIDataVerificationResult:Values:SimpleCCInputFieldUUID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value=""
<% } %>
maxlength="4" 
data-validate="required" 
data-validate-synchronized="true"
data-validate-error-message="<% {out.write(localizeISText("checkout.payment.creditcard.securitycode.invalid.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
/><% processOpenTag(response, pageContext, "tooltip", new TagParameter[] {
new TagParameter("contentkey","checkout.payment.creditcard.securitycode.tooltip"),
new TagParameter("linktextkey","checkout.detail.text"),
new TagParameter("headlinekey","checkout.payment.creditcard.securitycode.tooltip.headline")}, 76); %></div>
</div>
</div><% } %><% printFooter(out); %>