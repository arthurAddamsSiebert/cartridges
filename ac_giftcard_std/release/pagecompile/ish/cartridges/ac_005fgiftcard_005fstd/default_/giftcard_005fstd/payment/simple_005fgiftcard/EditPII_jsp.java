/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fgiftcard_005fstd.default_.giftcard_005fstd.payment.simple_005fgiftcard;

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
import org.apache.commons.lang.StringUtils;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;

public final class EditPII_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentOrganization:OwningDomain:DomainName")),
new TagParameter("preferencekey","intershop.CaptchaPreferences.RedemptionOfGiftCardsAndCertificates"),
new TagParameter("type","String"),
new TagParameter("return","GiftCardAndCertificateCaptchaPreference")}, 5); 
      out.write(' ');
      out.write('\n');

	PipelineDictionary dict = getPipelineDictionary();
	boolean isCaptchaEnable = false;
	String preferenceValue = (String)dict.get("GiftCardAndCertificateCaptchaPreference");
	if (StringUtils.isNotBlank(preferenceValue))
	{
		try
		{
			isCaptchaEnable="ON".equalsIgnoreCase(preferenceValue);
			dict.put("isEnableGiftCardAndCertificateCaptcha", isCaptchaEnable);
		}
		catch(Exception ex){}
	}

 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_zeroAmountPII"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<div class=\"ish-error\">");
 {out.write(localizeISText("checkout.payment.giftcard.empty","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("<div class=\"ish-field ish-field-button ish-field-last ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("PIIDataVerificationResult:isValid")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_GIFT_CARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("kor-error-field");
 } 
      out.write("\">\n<label class=\"ish-label-xs\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('_');
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.payment.giftcard.number.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_GiftCardInputFieldUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"text\" class=\"ish-input-xs kor-useGiftCart ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("PIIDataVerificationResult:isValid")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_GIFT_CARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("kor-field-error");
 } 
      out.write("\" maxlength=\"11\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('_');
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('_');
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardInputFieldUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("PIIDataVerificationResult:isValid")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_GIFT_CARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write(" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PIIDataVerificationResult:Values:get(PIIDataVerificationResult:Values:GiftCardInputFieldUUID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_currencyMismatch"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PIIDataMap:get(PIIDataMap:get(\"GiftCardInputFieldUUID\"))"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else { 
      out.write("\nvalue=\"\"\n");
 }} 
      out.write("\n/>\n<label class=\"ish-label-xs\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_GiftCardPIN\">");
 {out.write(localizeISText("checkout.payment.giftcard.pin.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input type=\"text\" class=\"ish-input-xs kor-useGiftCart ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("PIIDataVerificationResult:isValid")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_GIFT_CARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("kor-field-error");
 } 
      out.write("\" maxlength=\"4\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_GiftCardPIN\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_GiftCardPIN\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("PIIDataVerificationResult:isValid")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PIIDataVerificationResult:PaymentService:ID"),null).equals(context.getFormattedValue("BPS_GIFT_CARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PIIDataVerificationResult:Values:GiftCardPIN"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_currencyMismatch"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PIIDataMap:get(\"GiftCardPIN\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else { 
      out.write("\nvalue=\"\"\n");
 }} 
      out.write('\n');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CurrentSession:LoggedIn")).booleanValue() || !((Boolean) (getObject("isEnableGiftCardAndCertificateCaptcha"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<button type=\"submit\" name=\"applyGiftCard\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.payment.apply.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 } else { 
 processOpenTag(response, pageContext, "captchainclude", new TagParameter[] {
}, 52); 
      out.write("<button class=\"kor-anonymous-gift-card-submit\" type=\"submit\" name=\"applyGiftCardAnonymous\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentService:Configuration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-anonymous-giftcard-action=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutPayment-Dispatch",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.payment.apply.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 } 
 processOpenTag(response, pageContext, "tooltip", new TagParameter[] {
new TagParameter("contentkey","checkout.payment.giftcard.tooltip"),
new TagParameter("linktextkey","checkout.detail.text")}, 59); 
      out.write("</div>");
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
