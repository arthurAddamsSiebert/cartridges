/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fwarranty.default_.warranty.inc;

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

public final class MoreThanScaledPriceConfig_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = (getObject("ScaledPriceMoreThanForm:SubForm(LastCurrencyCode)")); getPipelineDictionary().put("LastCurrencyScaledPriceMoreThanForm", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastCurrencyScaledPriceMoreThanForm"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {try{executePipeline("ProcessWarrantyPrices-IsDerivedProductOverRangeScaledPrice",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Product",getObject("Product")))).addParameter(new ParameterEntry("WarrantyBO",getObject("WarrantyBO"))).addParameter(new ParameterEntry("BaseProductWarrantyBO",getObject("BaseProductWarrantyBO"))).addParameter(new ParameterEntry("CurrencyCode",getObject("LastCurrencyCode"))).addParameter(new ParameterEntry("PriceValue",getObject("LastCurrencyScaledPriceMoreThanForm:Price:Value")))))),"WarrantOverRangeyScaledPriceResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WarrantOverRangeyScaledPriceResult:IsDerivedProductOverRangeScaledPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("BaseProductOverRangeScaledPrice", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("BaseProductOverRangeScaledPrice", temp_obj);} 
 } 
 } 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<td class=\"table_bg e s center\">&nbsp;\n<input type=\"hidden\" name=\"ScaledPriceMoreThanFormID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ScaledPriceMoreThanForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } 
      out.write("<td class=\"table_detail2 e s\"> \n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyScaledPriceMoreThanForm:Price:PriceCurrency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail2 e s\">");
 {out.write(localizeISText("MoreThanScaledPriceConfig.MoreThan0.table_detail2","",null,context.getFormattedValue(getObject("LastThreshold"),new Integer(MONEY_SHORT)),null,null,null,null,null,null,null,null,null));} 
      out.write("<input type=\"hidden\" name=\"ScaledPriceCurrency\" value=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("LastCurrencyCode"),null)),null));
      out.write("\"/>\n</td>\n<td class=\"table_detail2 s\">\n<table cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyScaledPriceMoreThanForm:Price:PriceValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyScaledPriceMoreThanForm:Price:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nmaxlength=\"30\" size=\"30\" \nclass=\"inputfield_en\"/>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyScaledPriceMoreThanForm:Price:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("<input type=\"hidden\" name=\"Old_");
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyScaledPriceMoreThanForm:Price:PriceValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LastCurrencyScaledPriceMoreThanForm:Submitted")).booleanValue() && ((Boolean) getObject("LastCurrencyScaledPriceMoreThanForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyScaledPriceMoreThanForm:Price:PriceValue:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else { 
      out.write("\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyScaledPriceMoreThanForm:Price:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('\n');
 } 
      out.write("\n/>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<td>&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BaseProductOverRangeScaledPrice")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BaseProductOverRangeScaledPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
 {out.write(localizeISText("MoreThanScaledPriceConfig.SharedPrice","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WarrantyScaledPriceResult:BaseProductMoreThanValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 {out.write(localizeISText("MoreThanScaledPriceConfig.ChannelPriceSharedPrice0","",null,getObject("WarrantyScaledPriceResult:BaseProductMoreThanValue"),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("MoreThanScaledPriceConfig.ChannelPrice","",null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
      out.write("</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>");
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
