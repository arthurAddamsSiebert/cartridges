/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.syndication;

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

public final class NewProductPriceMappingRuleEnterpriseInc_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<tr>\n<td class=\"table_detail\">\n<input type=\"radio\" name=\"CreatePriceMappingRule_MappingRule\" value=\"UseListPriceAsCostPrice\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostPrice_TargetDeclarationMap:get(SourceDeclaration:currency)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail\" colspan=\"2\">");
 {out.write(localizeISText("NewProductPriceMappingRuleEnterpriseInc.UseListPriceAsCostPrice.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 {Object temp_obj = ("false"); getPipelineDictionary().put("CostPrice_hasValidElements", temp_obj);} 
 while (loop("Currencies","Currency",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CostPrice_TargetDeclarationMap:get(Currency:Mnemonic)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("CostPrice_hasValidElements", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",15);}else{getLoopStack().pop();break;} 
 } 
 } 
      out.write("<tr>\n<td class=\"table_detail\">\n<input type=\"radio\" name=\"CreatePriceMappingRule_MappingRule\" value=\"UseListPriceAsCostPriceAndConvert\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n<td class=\"table_detail\" colspan=\"2\">");
 {out.write(localizeISText("NewProductPriceMappingRuleEnterpriseInc.UseListPriceAsCostPriceAndConvertToDifferentCurren.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail\">&nbsp;</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">&nbsp;&nbsp;&nbsp;");
 {out.write(localizeISText("NewProductPriceMappingRuleEnterpriseInc.TargetCurrency.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(": </td>\n<td class=\"table_detail\">\n<select name=\"CreatePriceMappingRule_UseListPriceAsCostPriceAndConvertCurrency\" class=\"select\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostPrice_hasValidElements"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 while (loop("Currencies","Currency",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CostPrice_TargetDeclarationMap:get(Currency:Mnemonic)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
 } else { 
      out.write("<option value=\"\" name=\"\">");
 {out.write(localizeISText("NewProductPriceMappingRuleEnterpriseInc.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>");
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
