/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.objectstatistics.inc;

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

public final class ChannelProductValidationResultTableInc_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"table_detail\" width=\"50%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Process")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:Configuration:String(ResultNode:ValidationRuleConfigurationID)"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ResultNode:LastModified")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Process:LastExecutionTime")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ResultNode:LastModified:Time")).doubleValue() >((Number)(getObject("Process:LastExecutionTime:Time"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ResultNode:FailuresCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<a class=\"table_detail_link\"\nhref=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ValidationRuleConfigurationID",null),context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationID"),null))).addURLParameter(context.getFormattedValue("ValidationAssortmentID",null),context.getFormattedValue(getObject("ProductValidationOverviewForm_ProductAssortmentName"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ResultNode:FailuresCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write(" \n<a class=\"table_detail_link\"\nhref=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ValidationRuleConfigurationID",null),context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationID"),null))).addURLParameter(context.getFormattedValue("ValidationAssortmentID",null),context.getFormattedValue(getObject("ProductValidationOverviewForm_ProductAssortmentName"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</td>\n<td align=\"right\" class=\"table_detail\" width=\"50%\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Process")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:Configuration:String(ResultNode:ValidationRuleConfigurationID)"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ResultNode:LastModified")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Process:LastExecutionTime")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ResultNode:LastModified:Time")).doubleValue() >((Number)(getObject("Process:LastExecutionTime:Time"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","product.validation.completeness.rule.edited")}, 42); 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:FailuresCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","product.validation.completeness.rule.edited")}, 47); 
 } 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:FailuresCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write(" \n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(((new Double( ((Number) getObject("All")).doubleValue() %((Number) new Double(2)).doubleValue()))),null).equals(context.getFormattedValue(new Double(0),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Counter")).doubleValue() <((Number)(getObject("All"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("<td class=\"overview_line\" colspan=\"3\">\n<img width=\"2\" border=\"0\" height=\"1\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\">\n</td>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Counter")).doubleValue() <((Number)(((new Double( ((Number) getObject("All")).doubleValue() -((Number) new Double(1)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<td class=\"overview_line\" colspan=\"3\">\n<img width=\"2\" border=\"0\" height=\"1\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\">\n</td>");
 } 
      out.write(' ');
      out.write('\n');
 } 
      out.write("</tr>\n</table>");
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
