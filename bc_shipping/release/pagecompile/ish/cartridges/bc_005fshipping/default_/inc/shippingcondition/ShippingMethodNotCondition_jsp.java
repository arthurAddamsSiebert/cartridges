/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fshipping.default_.inc.shippingcondition;

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
import java.util.HashMap;

public final class ShippingMethodNotCondition_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{executePipeline("ProcessShippingConditionConfiguration-GetShippingMethods",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("ChannelDomain"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} 
 {Object temp_obj = (getObject("resultDict:ShippingMethods")); getPipelineDictionary().put("ShippingMethods", temp_obj);} 
 {Object temp_obj = (getObject("resultDict:ShippingMethodsMap")); getPipelineDictionary().put("ShippingMethodsMap", temp_obj);} 
      out.write("<input type=\"hidden\" name=\"EditConditionID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Condition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionForm:ShippingMethods:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 getPipelineDictionary().put("AssignedMethodsMap", new HashMap<String, String>()); 
 while (loop("ConditionForm:ShippingMethods:Value:Iterator","SM",null)) { 
  ((HashMap)getObject("AssignedMethodsMap")).put(getObject("SM"), true); 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:ShippingMethods:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SM"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingMethods") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 while (loop("ShippingMethods","SM",null)) { 
      out.write("<input type=\"hidden\" name=\"AvailableShippingMethods\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SM:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } 
      out.write("<table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"4\">\n<tr>\n<td class=\"label_text\"><label class=\"label label_text\">");
 {out.write(localizeISText("ShippingMethodNotCondition.Condition.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"table_detail\">");
 {out.write(localizeISText("ShippingMethodNotCondition.ShippingMethodIsNotOneOfTheFollowing.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"label_textarea\"><label class=\"label label_textarea\">");
 {out.write(localizeISText("ShippingMethodNotCondition.Method.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<span class=\"star\">*</span></label></td>\n<td class=\"table_detail\">\n<select name=\"MethodsToAdd\" class=\"select\" size=\"8\" multiple=\"multiple\" style=\"width:300px\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingMethods") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 while (loop("ShippingMethods","SM",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedMethodsMap:get(SM:Id)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SM:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("SM:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } 
      out.write("</select>\n</td>\n<td class=\"table_detail\" align=\"center\" vertical-align=\"middle\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr><td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodNotCondition.Add.button",null)),null));
      out.write(" \" name=\"addShippingMethods\" /></td></tr>\n</table>\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" height=\"6\" alt=\"\" border=\"0\"/>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr><td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ShippingMethodNotCondition.Remove.button",null)),null));
      out.write("\" name=\"removeShippingMethods\" /></td></tr>\n</table>\n</td>\n<td class=\"table_detail w100\">\n<select name=\"MethodsToRemove\" class=\"select\" size=\"8\" multiple=\"multiple\" style=\"width:300px\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionForm:ShippingMethods:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
 while (loop("ConditionForm:ShippingMethods:Value:Iterator","SMID",null)) { 
 {Object temp_obj = (getObject("ShippingMethodsMap:get(SMID)")); getPipelineDictionary().put("ThisMethod", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ThisMethod"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SMID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ThisMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } 
      out.write("</select>\n</td>\n</tr>\n</table>");
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
