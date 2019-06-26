/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.address;

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

public final class AddressListItem_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = (replace(context.getFormattedValue(getObject("addressBO:ID"),null),(String)("\\."),(String)("\\-C"))); getPipelineDictionary().put("rowid", temp_obj);} 
      out.write("<div class=\"col-md-12\">\n<div class=\"row myAccount-addressBox\" data-testing-id=\"account-address-details\">\n<div class=\"col-xs-11 col-sm-7 col-md-5\">\n<div class=\"pull-right\" id=\"myAccount-actionLinks-");
 {String value = null;try{value=context.getFormattedValue(getObject("rowid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<a class=\"btn-tool update-address\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("rowid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ntitle=\"");
 {out.write(localizeISText("account.addresses.edit_address.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\nhref=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("addressBO:ID"),null))).addURLParameter(context.getFormattedValue("PreferredShipping",null),context.getFormattedValue((((context.getFormattedValue(getObject("addressBO:ID"),null).equals(context.getFormattedValue(getObject("userBO:PreferredShipToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE),null)).addURLParameter(context.getFormattedValue("PreferredBilling",null),context.getFormattedValue((((context.getFormattedValue(getObject("addressBO:ID"),null).equals(context.getFormattedValue(getObject("userBO:PreferredInvoiceToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE),null)).addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))),null));
      out.write("\"\n>\n<span class=\"glyphicon glyphicon-pencil\"></span>\n</a>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("removable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<a class=\"btn-tool remove-address\"\ndata-dialog\ntitle=\"");
 {out.write(localizeISText("account.addresses.delete_address.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\nhref=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddresses",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("addressBO:ID"),null))).addURLParameter(context.getFormattedValue("DeleteAddress",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))),null));
      out.write("\"\n>\n<span class=\"glyphicon glyphicon-trash\"></span>\n</a>");
 } 
      out.write("</div>");
 processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("address",getObject("addressBO"))}, 25); 
      out.write("</div>\n</div>\n<div class=\"section myAccount-editBox-");
 {String value = null;try{value=context.getFormattedValue(getObject("rowid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" myAccount-editBox my-account-address-form-container\" style=\"display:none;\"></div>\n</div>");
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
