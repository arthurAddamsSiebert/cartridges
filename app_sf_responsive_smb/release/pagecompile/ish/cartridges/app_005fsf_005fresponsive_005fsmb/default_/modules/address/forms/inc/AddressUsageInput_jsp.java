/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fsmb.default_.modules.address.forms.inc;

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

public final class AddressUsageInput_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} 
      out.write("<div class=\"form-group\">\n<div class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("checkoutAddressType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("col-sm-12");
 } else { 
      out.write("col-sm-8 col-sm-push-4");
 } 
      out.write("\">\n<div class=\"checkbox\">\n<label class=\"control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:UseAsBillingAddress:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"checkbox\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("webform:UseAsBillingAddress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-dependent-checkbox=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:PreferredBillingAddress:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("webform:UseAsBillingAddress:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("webform:UseAsBillingAddress:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addressBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("addressBO:InvoiceToAddress"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("checkoutAddressType"),null).equals(context.getFormattedValue("invoice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("checkoutAddressType"),null).equals(context.getFormattedValue("invoice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("required data-bv-notempty-message=\"");
 {out.write(localizeISText("account.address.preferred_billing.error.default","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
 } 
      out.write('\n');
      out.write('/');
      out.write('>');
 {out.write(localizeISText("account.address.use_as_billing.checkbox.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</div>\n<div class=\"checkbox checkbox-inline\">\n<p>\n<label class=\"control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:PreferredBillingAddress:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"checkbox\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("webform:PreferredBillingAddress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("webform:PreferredBillingAddress:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("webform:PreferredBillingAddress:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addressBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("addressBO:ID"),null).equals(context.getFormattedValue(getObject("userBO:PreferredBillingAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("customerBO:AddressBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("\ntitle=\"");
 {out.write(localizeISText("account.address.preferred_billing_first.checkbox.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('\n');
 } 
      out.write('\n');
      out.write('/');
      out.write('>');
 {out.write(localizeISText("account.address.preferred_billing.checkbox.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</p>\n</div>\n</div>\n</div>\n<div class=\"form-group\">\n<div class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("checkoutAddressType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("col-sm-12");
 } else { 
      out.write("col-sm-8 col-sm-push-4");
 } 
      out.write("\">\n<div class=\"checkbox\">\n<label class=\"control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:UseAsShippingAddress:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"checkbox\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("webform:UseAsShippingAddress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-dependent-checkbox=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:PreferredShippingAddress:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("webform:UseAsShippingAddress:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("webform:UseAsShippingAddress:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addressBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("addressBO:ShipToAddress"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("checkoutAddressType"),null).equals(context.getFormattedValue("shipping",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"\n");
 }}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("checkoutAddressType"),null).equals(context.getFormattedValue("shipping",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("required data-bv-notempty-message=\"");
 {out.write(localizeISText("account.address.preferred_shipping.error.default","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
 } 
      out.write('\n');
      out.write('/');
      out.write('>');
 {out.write(localizeISText("account.address.use_as_shipping.checkbox.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</div>\n<div class=\"checkbox checkbox-inline\">\n<p>\n<label class=\"control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:PreferredShippingAddress:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"checkbox\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("webform:PreferredShippingAddress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("webform:PreferredShippingAddress:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("webform:PreferredShippingAddress:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addressBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("addressBO:ID"),null).equals(context.getFormattedValue(getObject("userBO:PreferredShippingAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
      out.write('\n');
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("customerBO:AddressBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("\ntitle=\"");
 {out.write(localizeISText("account.address.preferred_shipping_first.checkbox.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('\n');
 } 
      out.write("\n/> \n");
 {out.write(localizeISText("account.address.preferred_shipping.checkbox.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</p>\n</div>\n</div>\n</div>\n<script type=\"text/javascript\">\n$(\".checkbox input[data-dependent-checkbox]\").trigger('change'); \n</script>");
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