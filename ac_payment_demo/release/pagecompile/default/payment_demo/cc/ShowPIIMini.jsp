<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.adapter.payment_demo.internal.creditcard.CreditCardInformation"%>
<%@page import="com.intershop.component.payment.capi.PaymentInstrumentInfoBO"%>
<%@page import="com.intershop.beehive.bts.capi.payment.PaymentInstrumentInfo"%>
<% {Object temp_obj = (getObject("PII")); getPipelineDictionary().put("PIIBO", temp_obj);} %>
<%
	int nowMonth = new GregorianCalendar().get(GregorianCalendar.MONTH)+1;
	PipelineDictionary dict = getPipelineDictionary();
	
	PaymentInstrumentInfoBO pii = (PaymentInstrumentInfoBO) dict.get("PIIBO");
	if (pii == null)
	{
	    pii = (PaymentInstrumentInfoBO) getObject("PIIBO");
	}
	if (pii != null)
	{
		CreditCardInformation info = pii.getConfiguration(pii.getPaymentService().getPaymentParameterDefinitions());
		dict.put("piiDefinition", info);
		String sMonth = info.getCreditCardExpiryMonth();
		String sYear = info.getCreditCardExpiryYear();

	    if ((sMonth != null) && (sYear != null)) {
			int ccMonth = new Integer((String) sMonth).intValue();
			int ccYear = new Integer((String) sYear).intValue();
		
			int startYear = new GregorianCalendar().get(GregorianCalendar.YEAR);
		
			if(ccYear<100)
			{
				ccYear = ccYear+2000;
			}
		
			if((ccYear<startYear)||((ccYear==startYear)&&(ccMonth<nowMonth))){
				getPipelineDictionary().put("ccExpired", (String) getObject("PIIBO:ID"));
			}
	    }
	}
%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("short",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("piiDefinition:CreditCardNumber"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedCreditCardNumber"),
new TagParameter("character","*"),
new TagParameter("length","4"),
new TagParameter("text",getObject("piiDefinition:CreditCardNumber")),
new TagParameter("direction","begin")}, 43); %>
		<span class="ws-card-type"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("payment.checkout.cc_type.",null) + context.getFormattedValue(getObject("piiDefinition:CreditCardType"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>:</span>
		<span class="ws-card-ending-value"><% {String value = null;try{value=context.getFormattedValue(getObject("truncatedCreditCardNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
	<% } %>
<% } else { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("myaccount"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
		<div class="ish-paymentMethods-item-links">
			<a class="kor-edit-credit-card-link <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PIIBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %> errorCCEditLink<% } %>" href=""><% {out.write(localizeISText("checkout.payment.method.edit.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
			<br />
			<a class="kor-csrf-guarded-link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutPayment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PaymentInstrumentInfoUUID",null),context.getFormattedValue(getObject("PIIBO:ID"),null))).addURLParameter(context.getFormattedValue("deletePayment",null),context.getFormattedValue("",null))),null)%>"><% {out.write(localizeISText("checkout.payment.method.delete.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
		</div>
	<% } %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PaymentDisplayMode"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("long",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (getObject("PIIBO:CustomAttributes:CreditCardNumber")); getPipelineDictionary().put("ccNumberString", temp_obj);} %>
<%
	String ccNumber = (String) dict.get("ccNumberString");
	
	if (pii != null)
	{
		CreditCardInformation info = pii.getConfiguration(pii.getPaymentService().getPaymentParameterDefinitions());
		if (info != null)
		{
			ccNumber= info.getCreditCardNumber();
		}
	
		if ( null != ccNumber && ccNumber.length()>4){
			dict.put("ccEndString", ccNumber.substring(ccNumber.length()-4));
		}
	}
%>
	<div class="ish-paymentMethods-creditCard">
			<span class="ish-paymentMethods-creditCard-type"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("payment.checkout.cc_type.",null) + context.getFormattedValue(getObject("PIIBO:CustomAttributes:CreditCardType"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></span>
			<span class="ish-paymentMethods-creditCard-number">***********<% {String value = null;try{value=context.getFormattedValue(getObject("ccEndString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
			
			<span class="ish-paymentMethods-creditCard-availableCards kor-paymentMethods-creditCard-<% {String value = null;try{value=context.getFormattedValue(getObject("PIIBO:CustomAttributes:CreditCardType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> ish-paymentMethods-creditCard-<% {String value = null;try{value=context.getFormattedValue(getObject("PIIBO:CustomAttributes:CreditCardType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				&nbsp;
			</span>
	</div>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("walletView")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("walletView"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>

		<div class="ish-paymentMethods-newPaymentForm kor-edit-credit-card-section
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PIIEditError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIEditError"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
				kor-toggleable-active
			<% } %>
			">
			<div class="ish-field kor-field-error">

				
				<label class="ish-label-s" for="card-expires-on-month"><% {out.write(localizeISText("checkout.credit_card.expiration_date.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
				<input type="text" data-editfields="true" class="ish-paymentMethods-creditCard-expireMonth kor-expiration-date-month<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>kor-error<% } %>" id="card-expires-on-month" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_CreditCardExpiryMonth"
					value="<%=context.getFormattedValue(context.getFormattedValue(getObject("PII:CustomAttributes:CreditCardExpiryMonth"),"##"),null)%>"
					maxlength="2"
				/>
				
				<span class="ish-paymentMethods-creditCard-expirationSlash">/</span>
				
				
				<input type="text" data-editfields="true" class="ish-paymentMethods-creditCard-expireYear kor-expiration-date-year<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>kor-error<% } %>" id="card-expires-on-year" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_CreditCardExpiryYear"
					value="<%=context.getFormattedValue(context.getFormattedValue(getObject("PII:CustomAttributes:CreditCardExpiryYear"),"####"),null)%>"
					maxlength="2"
				/>
				<span class="ish-note ish-note-field"><% {out.write(localizeISText("ShowPIIMini.MmYy.ish","",null,null,null,null,null,null,null,null,null,null,null));} %></span>

				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>
				   <div class="kor-field-error-message-placeholder kor-field-error-right" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_CreditCardExpiryDateError">
						<div role="alert" class="kor-field-error-message">
							<div class="kor-field-error-message-contents">
								<ul class="kor-field-error-list">
									<li class="kor-field-error-list-item"><% {out.write(localizeISText("checkout.credit_card.expiry_date.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
								</ul>
							</div>
						</div>
					</div>
				<% } %>

			</div>

			<div class="ish-field-buttonGroup">
				<button name="edit" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="editCC" type="submit"><% {out.write(localizeISText("checkout.credit_card.save","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
			</div>
		</div>
		<div class="kor-edit-credit-card-section
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PIIEditError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIEditError"),null).equals(context.getFormattedValue(getObject("PII:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>
				kor-toggleable-active
			<% } %>
			">
	        <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("PaymentService:Delegate:CardSecurityCodeCheckEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>
	            <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PaymentService:CardSecurityCodeAvailable(PII)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>
	                <div class="kor-field-error">
	                    <% processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("name_override",context.getFormattedValue(getObject("PII:ID"),null) + context.getFormattedValue("_CreditCardSecurityCode",null)),
new TagParameter("ext_string_prefix","checkout.credit_card.security_code")}, 135); %>
	                    <label for="security-code"><% {out.write(localizeISText("checkout.credit_card.security_code.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
	                    <input maxlength="4" type="text" class="kor-error" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_CreditCardSecurityCode" id="security-code"
	                        data-validate="<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ccvalidationgroup"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>dependsOn('<% {String value = null;try{value=context.getFormattedValue(getObject("ccvalidationgroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','<% {String value = null;try{value=context.getFormattedValue(getObject("ccvalidationgroupvalue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>') <% } %>required"
	                        value="">
	                    <% processOpenTag(response, pageContext, "tooltip", new TagParameter[] {
new TagParameter("contentkey","checkout.payment.creditcard.securitycode.tooltip"),
new TagParameter("linktextkey","checkout.detail.text"),
new TagParameter("headlinekey","checkout.payment.creditcard.securitycode.tooltip.headline")}, 140); %>
	                    <div class="kor-field-error-message-placeholder kor-field-error-right" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("SimpleCCInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_CreditCardSecurityCodeError">
	                        <div role="alert" class="kor-field-error-message">
	                            <div class="kor-field-error-message-contents">
	                                <ul class="kor-field-error-list">
	                                    <li class="kor-field-error-list-item"><% {out.write(localizeISText("checkout.credit_card.security_code.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            <% } %>
	        <% } %>
	
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ccExpired")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ccExpired"),null).equals(context.getFormattedValue(getObject("PIIBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>
				<p class="kor-error-text"><% {out.write(localizeISText("checkout.payment.cc_expired","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
			<% } %>
		</div

	<% } %>
<% } %><% printFooter(out); %>