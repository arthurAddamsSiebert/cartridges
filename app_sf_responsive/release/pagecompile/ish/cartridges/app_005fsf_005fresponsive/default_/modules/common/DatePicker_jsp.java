/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.common;

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
import com.intershop.beehive.core.capi.localization.LocaleInformation;
import java.text.SimpleDateFormat;

public final class DatePicker_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
      out.write("<input type=\"hidden\" id=\"hidden");
 {String value = null;try{value=context.getFormattedValue(getObject("input_id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("input_id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<script type=\"text/javascript\">\nvar initializeDatepicker = function() {\nvar target = $(document.getElementById('");
 {String value = null;try{value=context.getFormattedValue(getObject("input_id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'));\nvar hiddenInput = $(document.getElementById('hidden");
 {String value = null;try{value=context.getFormattedValue(getObject("input_id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("')); \nhiddenInput.val(target.val());\ntarget.on(\"change\", function() {\nif(target.val() == \"\") {\nhiddenInput.val(\"\");\n}\n});\n// send also wrong values to the server to display a server side error message\ntarget.on(\"blur\", function() {\nif(target.val() != \"\") {\nhiddenInput.val(target.val());\n}\n});\ntarget.on(\"changeDate\", function() {\nvar d = $(document.getElementById('");
 {String value = null;try{value=context.getFormattedValue(getObject("input_id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("')).datepicker('getUTCDate');\n$(document.getElementById('hidden");
 {String value = null;try{value=context.getFormattedValue(getObject("input_id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("')).val(d.getDate() + \"/\" + (d.getMonth() + 1) + \"/\" + d.getFullYear());\n});\nif (Modernizr.touchevents && Modernizr.inputtypes.date) {\ntarget.attr(\"type\", \"date\"); \n} else {\ntarget.datepicker({\nautoclose: true,\nforceParse: false,\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("locale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("language: '");
 {String value = null;try{value=context.getFormattedValue(getObject("locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\nformat: '");
 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null),(String)("MM"),(String)("mm")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write('\'');
      out.write(',');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dates_disabled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("datesDisabled: ");
 {String value = null;try{value=context.getFormattedValue(getObject("dates_disabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";out.write(value);} 
      out.write(',');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("start_date"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("startDate: '");
 {String value = null;try{value=context.getFormattedValue(getObject("start_date"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write('\'');
      out.write(',');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("end_date"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("endDate: '");
 {String value = null;try{value=context.getFormattedValue(getObject("end_date"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write('\'');
      out.write(',');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("select_month"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("minViewMode: 1,");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("days_of_week_disabled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("daysOfWeekDisabled: ");
 {String value = null;try{value=context.getFormattedValue(getObject("days_of_week_disabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write(',');
 } 
      out.write(" \ntodayHighlight: true\n});\n}\n};\n$(initializeDatepicker);\n</script>");
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
