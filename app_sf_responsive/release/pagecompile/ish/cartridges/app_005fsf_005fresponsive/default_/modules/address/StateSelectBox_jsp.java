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

public final class StateSelectBox_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{executePipeline("ProcessWebforms-GetStates",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CountryCode",getObject("countrycode"))))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 2.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("autosuggestion")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("autosuggestion")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autosuggestion"),null).equals(context.getFormattedValue("off",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("width")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("width"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<select required data-bv-notempty-message=\"Please select a state\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("inputfieldid"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("inputfieldid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("class"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" form-control\" size=\"1\" style=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else { 
      out.write(" \n<select required data-bv-notempty-message=\"Please select a state\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("inputfieldid"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("inputfieldid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("class"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" form-control\" size=\"1\" style=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } 
      out.write('\n');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("displaymode")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("displaymode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("showNames",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<option value=\"\" selected=\"selected\">");
 {out.write(localizeISText("account.option.select.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("dict:StatesProvinces") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 while (loop("dict:StatesProvinces","StateProvince",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("StateProvince:Id"),null).equals(context.getFormattedValue("XU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("StateProvince:DisplayName"),null).equals(context.getFormattedValue("null",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<option value = \"");
 {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("StateProvince:Id"),null).equals(context.getFormattedValue(getObject("state"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("selected = \"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("displaymode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("showAbbreviationCodes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<option value=\"\">--</option>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("dict:StatesProvinces") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 while (loop("dict:StatesProvinces","StateProvince",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StateProvince:Id"),null).equals(context.getFormattedValue("XU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<option value = \"");
 {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("StateProvince:Id"),null).equals(context.getFormattedValue(getObject("state"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("selected = \"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } 
 }} 
      out.write("</select>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("autosuggestion")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autosuggestion"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","stateValues")}, 37); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("width")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("width"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<select class=\"form-control\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nstyle=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nrequired data-bv-notempty-message=\"Please select a state\" >");
 } else { 
      out.write("<select class=\"form-control\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nstyle=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nrequired data-bv-notempty-message=\"Please select a state\">");
 } 
      out.write("<option value=\"\">");
 {out.write(localizeISText("account.option.select.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("dict:StatesProvinces") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
 while (loop("dict:StatesProvinces","StateProvince",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StateProvince:Id"),null).equals(context.getFormattedValue("XU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("StateProvince:Id"),null).equals(context.getFormattedValue(getObject("state"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("selected = \"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } 
      out.write("</select>");
 }} 
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
