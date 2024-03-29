/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.checkout.gifting;

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

public final class GiftMessage_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 {Object temp_obj = (getObject("PliBO:ProductBO:Extension(\"Gifting\"):ApplicableGiftMessages")); getPipelineDictionary().put("It", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("It:Size"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("It:Size"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<div class=\"form-group\">\n<label class=\"col-sm-4 control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.gifting.giftmessage.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-8\">\n<select class=\"form-control\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 while (loop("It","message",null)) { 
 {Object temp_obj = (getObject("message:Extension(\"Pricing\")")); getPipelineDictionary().put("ProductPrice", temp_obj);} 
 processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 16); 
 processOpenTag(response, pageContext, "getproductpricecontext", new TagParameter[] {
new TagParameter("CustomerBO",getObject("CustomerBO")),
new TagParameter("ProductPriceContext","ProductPriceContext")}, 17); 
 {Object temp_obj = (getObject("ProductPrice:Price(\"SalePrice\",CurrentRequest:Currency,ProductPriceContext)")); getPipelineDictionary().put("salePrice", temp_obj);} 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("message:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("Subform:GiftMessageSelection:ValueMissing"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("message:ID"),null).equals(context.getFormattedValue(getObject("Subform:GiftMessageSelection:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("\nselected=\"selected\"\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("Subform:GiftMessageSelection:ValueMissing"))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SplitInfo:get(\"GiftMessageProduct\")")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("message:ID"),null).equals(context.getFormattedValue(getObject("SplitInfo:get(\"GiftMessageProduct\"):ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("\nselected=\"selected\"\n");
 }} 
      out.write('\n');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("message:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("salePrice:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("message"))}, 27); 
      out.write("</option>");
 } 
      out.write("</select>\n</div>\n</div>");
 } else { 
      out.write("<div class=\"form-group\">\n<label class=\"col-sm-4 control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.gifting.giftmessage.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>");
 while (loop("It","message",null)) { 
 {Object temp_obj = (getObject("message:Extension(\"Pricing\")")); getPipelineDictionary().put("ProductPrice", temp_obj);} 
 processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 41); 
 processOpenTag(response, pageContext, "getproductpricecontext", new TagParameter[] {
new TagParameter("CustomerBO",getObject("CustomerBO")),
new TagParameter("ProductPriceContext","ProductPriceContext")}, 42); 
 {Object temp_obj = (getObject("ProductPrice:Price(\"SalePrice\",CurrentRequest:Currency,ProductPriceContext)")); getPipelineDictionary().put("salePrice", temp_obj);} 
      out.write("<span>");
 {String value = null;try{value=context.getFormattedValue(getObject("message:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("salePrice:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("message"))}, 46); 
      out.write("</span>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("message:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageTo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("<div role=\"alertdialog\" class=\"alert alert-danger\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageTo:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.gifting.maxlength.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("checkout.gifting.profanitycheck.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</div>");
 } 
      out.write("<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageTo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("has-error");
 } 
      out.write("\">\n<label class=\"col-sm-4 control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageTo:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.gifting.to","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-8\">\n<input class=\"form-control\" type=\"text\" maxlength=\"35\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageTo:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Subform:GiftMessageTo:ValueMissing"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageTo:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("SplitInfo:get(\"GiftMessageMessage\"):To"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\"/>\n</div>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageFrom:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<div role=\"alertdialog\" class=\"alert alert-danger\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageFrom:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.gifting.maxlength.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("checkout.gifting.profanitycheck.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</div>");
 } 
      out.write("<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageFrom:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("has-error");
 } 
      out.write("\">\n<label class=\"col-sm-4 control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageFrom:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.gifting.from","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-8\">\n<input class=\"form-control\" type=\"text\" maxlength=\"35\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageFrom:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Subform:GiftMessageFrom:ValueMissing"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageFrom:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("SplitInfo:get(\"GiftMessageMessage\"):From"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\"/>\n</div>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageText:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
      out.write("<div role=\"alertdialog\" class=\"alert alert-danger\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageText:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.gifting.maxlength.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageText:isValueMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.gifting.message.required.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("checkout.gifting.profanitycheck.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("errorcheck", temp_obj);} 
 {Object temp_obj = (((new Double( ((Number) getObject("index")).doubleValue() -((Number) new Double(1)).doubleValue())))); getPipelineDictionary().put("errorindex", temp_obj);} 
      out.write("</div>");
 } 
      out.write("<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:GiftMessageText:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("has-error");
 } 
      out.write("\">\n<label class=\"col-sm-4 control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageText:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.gifting.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<span class=\"required\">*</span>\n</label>\n<div class=\"col-sm-8\">\n<textarea \nclass=\"form-control\"\nrequired\nmaxlength=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftMessage_Form_MessageLength"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \ndata-charactercounter=\"cCounter");
 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("SplitInfo:ID"),null),(String)("\\."),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageText:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageText:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-bv-notempty-message=\"");
 {out.write(localizeISText("checkout.gifting.message.required.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('\n');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Subform:GiftMessageText:ValueMissing"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Subform:GiftMessageText:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("SplitInfo:get(\"GiftMessageMessage\"):Message"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</textarea>\n<small class=\"input-help\">");
 {out.write(localizeISText("checkout.gifting.entered.1","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <span id=\"cCounter");
 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("SplitInfo:ID"),null),(String)("\\."),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"></span> ");
 {out.write(localizeISText("checkout.gifting.entered.2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</small>\n</div>\n</div>");
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
