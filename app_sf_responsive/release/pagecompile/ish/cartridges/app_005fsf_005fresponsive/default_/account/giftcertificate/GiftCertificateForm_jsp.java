/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.giftcertificate;

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

public final class GiftCertificateForm_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
      out.write("<div class=\"modal-dialog\">\n<div class=\"modal-content\">\n<div class=\"modal-header\">\n<button type=\"button\" class=\"close\" data-dismiss=\"modal\" title=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" aria-label=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"><span aria-hidden=\"true\">&times;</span></button>\n<h2 class=\"modal-title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h2>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("addToCartBehavior"),null).equals(context.getFormattedValue("expresscart",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewExpressShop-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))))); getPipelineDictionary().put("GiftCertificateFormAction", temp_obj);} 
 } else { 
 {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificates-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))).addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null)))); getPipelineDictionary().put("GiftCertificateFormAction", temp_obj);} 
 } 
 URLPipelineAction action11 = new URLPipelineAction(context.getFormattedValue(getObject("GiftCertificateFormAction"),null));String site11 = null;String serverGroup11 = null;String actionValue11 = context.getFormattedValue(getObject("GiftCertificateFormAction"),null);if (site11 == null){  site11 = action11.getDomain();  if (site11 == null)  {      site11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup11 == null){  serverGroup11 = action11.getServerGroup();  if (serverGroup11 == null)  {      serverGroup11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("GiftCertificateFormAction"),null));out.print("\"");out.print(" name=\"");out.print("GiftCertificateForm");out.print("\"");out.print(" id=\"");out.print("gift-certificate-form");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue11, site11, serverGroup11,true)); 
      out.write("<div class=\"modal-body\">\n<p>");
 {out.write(localizeISText("account.giftcard_helptitle.msg","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\">");
 {out.write(localizeISText("account.giftcard.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("<p class=\"indicates-required\"><span class=\"required\">*</span>");
 {out.write(localizeISText("account.required_field.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"PLIID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PLIID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("addToCartBehavior")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"addToCartBehavior\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("addToCartBehavior"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"control-label col-sm-4\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.giftcard_recipient_email.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<span class=\"required\">*</span></label>\n<div class=\"col-sm-8\">\n<input\ntype=\"email\" required maxlength=\"256\" aria-required=\"true\"\nclass=\"form-control\"\nrequired\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_RecipientEmail"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_RecipientEmail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientEmail:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("\"\ndata-bv-notempty-message=\"");
 {out.write(localizeISText("account.giftcard_recipient_email.required.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-emailaddress-message=\"");
 {out.write(localizeISText("account.giftcard_recipient_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n/>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("<small class=\"help-block col-sm-8 col-sm-offset-4\">");
 {out.write(localizeISText("account.giftcard_recipient_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</small>");
 } 
      out.write("</div>\n<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"control-label col-sm-4\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.giftcard_recipient_name.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-8\">\n<input maxlength=\"35\" \ntype=\"text\" aria-required=\"true\"\nclass=\"form-control\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_RecipientName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_RecipientName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:RecipientName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:RecipientName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("\"\ndata-validate-error-message=\"");
 {out.write(localizeISText("account.giftcard_recipient_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-flash-error-keys=\"fieldFailureMessageGlobal\"\n/>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<small class=\"help-block col-sm-8 col-sm-offset-4\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:RecipientName:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n");
 } else { 
 {out.write(localizeISText("account.giftcard_recipient_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</small>");
 } 
      out.write("</div>\n<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"control-label col-sm-4\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.giftcard_user_email.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<span class=\"required\">*</span></label>\n<div class=\"col-sm-8\">\n<input\ntype=\"email\" required maxlength=\"256\" aria-required=\"true\"\nclass=\"form-control\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_SenderEmail:StringValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_SenderEmail:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserEmail:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentSession:LoggedIn"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("CurrentUser:Profile:DefaultAddress:EMail"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:DefaultAddress:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
 } 
 } 
      out.write("\"\ndata-bv-notempty-message=\"");
 {out.write(localizeISText("account.giftcard_user_email.required.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-emailaddress-message=\"");
 {out.write(localizeISText("account.giftcard_user_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n/>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserEmail:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("<small class=\"help-block col-sm-8 col-sm-offset-4\">");
 {out.write(localizeISText("account.giftcard_user_email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</small>");
 } 
      out.write("</div>\n<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"control-label col-sm-4\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.giftcard_user_name.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-8\">\n<input maxlength=\"35\" type=\"text\"\nclass=\"form-control\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_SenderName:StringValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_SenderName:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:UserName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentSession:LoggedIn"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
 } 
      out.write("\"\ndata-validate-error-message=\"");
 {out.write(localizeISText("account.giftcard_user_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-flash-error-keys=\"fieldFailureMessageGlobal\"\n/>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
      out.write("<small class=\"help-block col-sm-8 col-sm-offset-4\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:UserName:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n");
 } else { 
 {out.write(localizeISText("account.giftcard_user_name.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</small>");
 } 
      out.write("</div>\n<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Greeting:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"control-label col-sm-4\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.giftcard_greeting.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<span class=\"required\">*</span></label>\n<div class=\"col-sm-8\">\n<textarea required maxlength=\"4000\" \nclass=\"form-control\"\ndata-charactercounter=\"cCounter");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-bv-notempty-message=\"");
 {out.write(localizeISText("account.giftcard_greeting.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('\n');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GiftCardParameters:GIFTCARD_GreetingMessage:TextValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCardParameters:GIFTCARD_GreetingMessage:TextValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</textarea>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Greeting:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
      out.write("<small class=\"help-block col-sm-8 col-sm-offset-4\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GiftCertificateForm:Greeting:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n");
 } else { 
 {out.write(localizeISText("account.giftcard_greeting.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</small>");
 } 
      out.write("<div class=\"col-sm-8 col-sm-offset-4\">\n<small class=\"input-help\">");
 {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.pre.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <span id=\"cCounter");
 {String value = null;try{value=context.getFormattedValue(getObject("GiftCertificateForm:Greeting:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">4000</span> ");
 {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.post.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</small>\n</div>\n</div>\n</div>\n<div class=\"modal-footer\">\n<input type=\"hidden\" data-form-action=\"true\"/>\n<button type=\"submit\" class=\"btn btn-primary\" name=\"addProduct\" value=\"Ok\">");
 {out.write(localizeISText("account.giftcard.form.ok","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<input type=\"hidden\" name=\"addProduct\" value=\"Ok\"/>\n<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" name=\"cancel\">");
 {out.write(localizeISText("account.giftcard.form.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>");
 out.print("</form>"); 
      out.write("</div>\n</div>");
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