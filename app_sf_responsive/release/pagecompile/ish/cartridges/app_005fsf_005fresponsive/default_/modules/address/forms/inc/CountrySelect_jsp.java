/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.address.forms.inc;

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

public final class CountrySelect_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.TRUE; } 
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
      out.write("<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("webform:CountryCode")))).booleanValue() && ((Boolean) getObject("webform:CountryCode:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
      out.write("has-error");
 } 
      out.write("\">\n<label class=\"control-label col-sm-4\" for=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.default_address.country.label","",getObject("locale"),null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("webform:CountryCode:Optional")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<span class=\"required\">*</span>");
 } 
      out.write("</label>\n<div class=\"col-sm-8\">");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","tabcount")}, 9); 
      out.write("<select class=\"form-control ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("webform:CountryCode")))).booleanValue() && ((Boolean) getObject("webform:CountryCode:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("has-error");
 } 
      out.write("\"\ndata-url=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAccount-ChangeAddressForm",null)))),null));
      out.write("\"\ndata-country-list=\"data-country-list\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-bv-field=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-validate=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("validationgroup"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("dependsOn(");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("validationgroup"),null)),null));
      out.write(')');
 } 
      out.write('"');
      out.write('\n');
 {String value = null;try{value=context.getFormattedValue(getObject("webform:CountryCode:ClientValidationConfig(\"html5\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} 
      out.write('\n');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("webform:CountryCode:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<option value=\"\" selected=\"selected\" disabled>");
 {out.write(localizeISText("account.option.select.text","",getObject("locale"),null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 while (loop("countrylist","Country",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("webform:CountryCode:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("webform:CountryCode:Value"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("\nselected = \"selected\"\n");
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("address")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("address:CountryCode"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("\nselected = \"selected\"\n");
 }} 
      out.write('\n');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</div>\n</div>");
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
