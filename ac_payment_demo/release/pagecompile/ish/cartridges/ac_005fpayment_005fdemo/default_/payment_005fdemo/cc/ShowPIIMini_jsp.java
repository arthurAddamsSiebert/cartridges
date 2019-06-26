/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fpayment_005fdemo.default_.payment_005fdemo.cc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import com.intershop.beehive.core.internal.template.*;
import com.intershop.beehive.core.internal.template.isml.*;
import com.intershop.beehive.core.capi.log.*;
import com.intershop.beehive.core.capi.resource.*;
import com.intershop.beehive.core.capi.util.UUIDMgr;
import com.intershop.beehive.core.capi.util.XMLHelper;
import com.intershop.beehive.foundation.util.*;
import com.intershop.beehive.core.internal.url.*;
import com.intershop.beehive.core.internal.resource.*;
import com.intershop.beehive.core.internal.wsrp.*;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.pagecache.PageCacheMgr;
import com.intershop.beehive.core.capi.request.SessionMgr;
import com.intershop.beehive.core.internal.request.SessionMgrImpl;
import com.intershop.beehive.core.pipelet.PipelineConstants;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import com.intershop.adapter.payment_demo.internal.creditcard.CreditCardInformation;
import com.intershop.component.payment.capi.PaymentInstrumentInfoBO;
import com.intershop.beehive.bts.capi.payment.PaymentInstrumentInfo;

public final class ShowPIIMini_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 
setEncodingType("text/html"); 
      out.write("\n\n\n\n");
 {Object temp_obj = (getObject("PII")); getPipelineDictionary().put("PIIBO", temp_obj);} 
      out.write('\n');

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

      out.write('\n');
 
setEncodingType("text/html"); 
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("short",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("piiDefinition:CreditCardNumber"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedCreditCardNumber"),
new TagParameter("character","*"),
new TagParameter("length","4"),
new TagParameter("text",getObject("piiDefinition:CreditCardNumber")),
new TagParameter("direction","begin")}, 43); 
      out.write("\n\t\t<span class=\"ws-card-type\">");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("payment.checkout.cc_type.",null) + context.getFormattedValue(getObject("piiDefinition:CreditCardType"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</span>\n\t\t<span class=\"ws-card-ending-value\">");
 {String value = null;try{value=context.getFormattedValue(getObject("truncatedCreditCardNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n\t");
 } 
      out.write('\n');
 } else { 
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("myaccount"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("\n\t\t<div class=\"ish-paymentMethods-item-links\">\n\t\t\t<a class=\"kor-edit-credit-card-link ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PIIBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write(" errorCCEditLink");
 } 
      out.write("\" href=\"\">");
 {out.write(localizeISText("checkout.payment.method.edit.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t<br />\n\t\t\t<a class=\"kor-csrf-guarded-link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutPayment-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PaymentInstrumentInfoUUID",null),context.getFormattedValue(getObject("PIIBO:ID"),null))).addURLParameter(context.getFormattedValue("deletePayment",null),context.getFormattedValue("",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.payment.method.delete.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t</div>\n\t");
 } 
      out.write('\n');
 } 
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PaymentDisplayMode"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("long",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (getObject("PIIBO:CustomAttributes:CreditCardNumber")); getPipelineDictionary().put("ccNumberString", temp_obj);} 
      out.write('\n');

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

      out.write("\n\t<div class=\"ish-paymentMethods-creditCard\">\n\t\t\t<span class=\"ish-paymentMethods-creditCard-type\">");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("payment.checkout.cc_type.",null) + context.getFormattedValue(getObject("PIIBO:CustomAttributes:CreditCardType"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n\t\t\t<span class=\"ish-paymentMethods-creditCard-number\">***********");
 {String value = null;try{value=context.getFormattedValue(getObject("ccEndString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n\t\t\t\n\t\t\t<span class=\"ish-paymentMethods-creditCard-availableCards kor-paymentMethods-creditCard-");
 {String value = null;try{value=context.getFormattedValue(getObject("PIIBO:CustomAttributes:CreditCardType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" ish-paymentMethods-creditCard-");
 {String value = null;try{value=context.getFormattedValue(getObject("PIIBO:CustomAttributes:CreditCardType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\t\t\t\t&nbsp;\n\t\t\t</span>\n\t</div>\n\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("walletView")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("walletView"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("\n\n\t\t<div class=\"ish-paymentMethods-newPaymentForm kor-edit-credit-card-section\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PIIEditError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIEditError"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\tkor-toggleable-active\n\t\t\t");
 } 
      out.write("\n\t\t\t\">\n\t\t\t<div class=\"ish-field kor-field-error\">\n\n\t\t\t\t\n\t\t\t\t<label class=\"ish-label-s\" for=\"card-expires-on-month\">");
 {out.write(localizeISText("checkout.credit_card.expiration_date.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n\t\t\t\t<input type=\"text\" data-editfields=\"true\" class=\"ish-paymentMethods-creditCard-expireMonth kor-expiration-date-month");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("kor-error");
 } 
      out.write("\" id=\"card-expires-on-month\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_CreditCardExpiryMonth\"\n\t\t\t\t\tvalue=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(getObject("PII:CustomAttributes:CreditCardExpiryMonth"),"##"),null));
      out.write("\"\n\t\t\t\t\tmaxlength=\"2\"\n\t\t\t\t/>\n\t\t\t\t\n\t\t\t\t<span class=\"ish-paymentMethods-creditCard-expirationSlash\">/</span>\n\t\t\t\t\n\t\t\t\t\n\t\t\t\t<input type=\"text\" data-editfields=\"true\" class=\"ish-paymentMethods-creditCard-expireYear kor-expiration-date-year");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("kor-error");
 } 
      out.write("\" id=\"card-expires-on-year\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_CreditCardExpiryYear\"\n\t\t\t\t\tvalue=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(getObject("PII:CustomAttributes:CreditCardExpiryYear"),"####"),null));
      out.write("\"\n\t\t\t\t\tmaxlength=\"2\"\n\t\t\t\t/>\n\t\t\t\t<span class=\"ish-note ish-note-field\">");
 {out.write(localizeISText("ShowPIIMini.MmYy.ish","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PIIDataVerificationResult:Valid"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("edit")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("edit"),null).equals(context.getFormattedValue(getObject("PII:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t   <div class=\"kor-field-error-message-placeholder kor-field-error-right\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_CreditCardExpiryDateError\">\n\t\t\t\t\t\t<div role=\"alert\" class=\"kor-field-error-message\">\n\t\t\t\t\t\t\t<div class=\"kor-field-error-message-contents\">\n\t\t\t\t\t\t\t\t<ul class=\"kor-field-error-list\">\n\t\t\t\t\t\t\t\t\t<li class=\"kor-field-error-list-item\">");
 {out.write(localizeISText("checkout.credit_card.expiry_date.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n\t\t\t\t\t\t\t\t</ul>\n\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t</div>\n\t\t\t\t\t</div>\n\t\t\t\t");
 } 
      out.write("\n\n\t\t\t</div>\n\n\t\t\t<div class=\"ish-field-buttonGroup\">\n\t\t\t\t<button name=\"edit\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"editCC\" type=\"submit\">");
 {out.write(localizeISText("checkout.credit_card.save","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n\t\t\t</div>\n\t\t</div>\n\t\t<div class=\"kor-edit-credit-card-section\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PIIEditError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIEditError"),null).equals(context.getFormattedValue(getObject("PII:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\tkor-toggleable-active\n\t\t\t");
 } 
      out.write("\n\t\t\t\">\n\t        ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("PaymentService:Delegate:CardSecurityCodeCheckEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
      out.write("\n\t            ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PaymentService:CardSecurityCodeAvailable(PII)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("\n\t                <div class=\"kor-field-error\">\n\t                    ");
 processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("name_override",context.getFormattedValue(getObject("PII:ID"),null) + context.getFormattedValue("_CreditCardSecurityCode",null)),
new TagParameter("ext_string_prefix","checkout.credit_card.security_code")}, 135); 
      out.write("\n\t                    <label for=\"security-code\">");
 {out.write(localizeISText("checkout.credit_card.security_code.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n\t                    <input maxlength=\"4\" type=\"text\" class=\"kor-error\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PII:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_CreditCardSecurityCode\" id=\"security-code\"\n\t                        data-validate=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ccvalidationgroup"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("dependsOn('");
 {String value = null;try{value=context.getFormattedValue(getObject("ccvalidationgroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(',');
      out.write('\'');
 {String value = null;try{value=context.getFormattedValue(getObject("ccvalidationgroupvalue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write(' ');
 } 
      out.write("required\"\n\t                        value=\"\">\n\t                    ");
 processOpenTag(response, pageContext, "tooltip", new TagParameter[] {
new TagParameter("contentkey","checkout.payment.creditcard.securitycode.tooltip"),
new TagParameter("linktextkey","checkout.detail.text"),
new TagParameter("headlinekey","checkout.payment.creditcard.securitycode.tooltip.headline")}, 140); 
      out.write("\n\t                    <div class=\"kor-field-error-message-placeholder kor-field-error-right\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('_');
 {String value = null;try{value=context.getFormattedValue(getObject("SimpleCCInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_CreditCardSecurityCodeError\">\n\t                        <div role=\"alert\" class=\"kor-field-error-message\">\n\t                            <div class=\"kor-field-error-message-contents\">\n\t                                <ul class=\"kor-field-error-list\">\n\t                                    <li class=\"kor-field-error-list-item\">");
 {out.write(localizeISText("checkout.credit_card.security_code.error.required","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>\n\t                                </ul>\n\t                            </div>\n\t                        </div>\n\t                    </div>\n\t                </div>\n\t            ");
 } 
      out.write("\n\t        ");
 } 
      out.write("\n\t\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ccExpired")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ccExpired"),null).equals(context.getFormattedValue(getObject("PIIBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<p class=\"kor-error-text\">");
 {out.write(localizeISText("checkout.payment.cc_expired","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n\t\t\t");
 } 
      out.write("\n\t\t</div\n\n\t");
 } 
      out.write('\n');
 } 
 printFooter(out); 
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}