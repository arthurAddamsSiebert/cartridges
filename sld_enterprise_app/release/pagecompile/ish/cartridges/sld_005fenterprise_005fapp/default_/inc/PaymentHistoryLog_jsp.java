/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.inc;

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

public final class PaymentHistoryLog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" >");
 {Object temp_obj = (getObject("paymenthistoryentry:LoggedData")); getPipelineDictionary().put("LoggedData", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LoggedData:Values") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 while (loop("LoggedData:KeySet","AVKey",null)) { 
      out.write("<tr>\n<td class=\"fielditem\" width=\"150\">");
 {Object temp_obj = (localizeText(context.getFormattedValue(context.getFormattedValue(getObject("paymentservice:PaymentServiceID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("paymenthistoryentry:EventID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("AVKey"),null),null))); getPipelineDictionary().put("LocalizedAVKeyLabel", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizedAVKeyLabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("LocalizedAVKeyLabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(':');
      out.write('\n');
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AVKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(':');
      out.write('\n');
 } 
      out.write("</td>\n<td class=\"table_detail\">");
 {Object temp_obj = (replace(context.getFormattedValue(getObject("LoggedData:get(AVKey)"),null),(String)("^\\{|\\}$"),(String)(""))); getPipelineDictionary().put("AVValue", temp_obj);} 
 {Object temp_obj = (localizeText(context.getFormattedValue(getObject("AVValue"),null))); getPipelineDictionary().put("LocalicedAVValueLabel", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalicedAVValueLabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("LocalicedAVValueLabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AVValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\n&nbsp;\n</td>\n</tr>");
 } 
 } 
 {Object temp_obj = (getObject("paymenthistoryentry:LoggedData(CurrentRequest:Locale)")); getPipelineDictionary().put("LocalizedLoggedData", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalizedLoggedData:Values") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
 while (loop("LocalizedLoggedData:KeySet","AVKey",null)) { 
      out.write("<tr>\n<td class=\"fielditem\" width=\"150\">");
 {Object temp_obj = (localizeText(context.getFormattedValue(context.getFormattedValue(getObject("paymentservice:PaymentServiceID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("paymenthistoryentry:EventID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("AVKey"),null),null))); getPipelineDictionary().put("LocalizedAVKeyLabel", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizedAVKeyLabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("LocalizedAVKeyLabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(':');
      out.write('\n');
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AVKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(':');
      out.write('\n');
 } 
      out.write("</td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LocalizedLoggedData:get(AVKey)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n</tr>");
 } 
 } 
      out.write("</table>");
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