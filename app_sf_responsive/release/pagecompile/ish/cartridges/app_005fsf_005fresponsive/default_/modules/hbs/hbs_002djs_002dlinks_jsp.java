/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.hbs;

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

public final class hbs_002djs_002dlinks_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div style=\"display: none;\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("excludeHandlebarsLib"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("excludeHandlebarsLib"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/handlebars-4.0.12.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("excludeRSVPLib"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("excludeRSVPLib"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/rsvp-4.8.4.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("excludeAccountingLib"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("excludeAccountingLib"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/accounting-0.4.2.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("excludeDateFormatLib"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("excludeDateFormatLib"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/dateFormat-1.0.2.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("excludeI18nLib"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("excludeI18nLib"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/jquery.i18n/jquery.i18n.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/jquery.i18n/jquery.i18n.messagestore.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/jquery.i18n/jquery.i18n.fallbacks.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/jquery.i18n/jquery.i18n.parser.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/jquery.i18n/jquery.i18n.emitter.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("vendor/jquery.i18n/jquery.i18n.language.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 out.print(context.prepareWAPlacement("JS_head")); 
      out.write("<script type=\"text/javascript\">\n$(function() {\n// Initialization the jquery.i18n plugin and set the current locale. (e.g. 'en_US')\nif (typeof $.i18n !== 'undefined') {\n$.i18n({\nlocale: RESTConfiguration.getLocale()\n});\n}\n});\n</script>");
 out.print("</waplacement>"); 
 } 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("ishREST.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("ishHbsController.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("excludeIshHbsHelpers"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("excludeIshHbsHelpers"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("ishHbsHelpers.js");
 out.print("</waplacement>"); 
      out.write(' ');
      out.write('\n');
 } 
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
