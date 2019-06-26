/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.product;

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

public final class ChannelProductPricingValidationRule_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("validation/selectAssignment.js");
 out.print("</waplacement>"); 
      out.write("<script type=\"text/javascript\">\n$(document).ready(function() {\n$(document).delegate('#' + 'RuleDescriptorDiv_com_intershop_component_product_validation_internal_rules_pricing_ProductBOPricingAttributeValidationRuleDescriptor', 'onJSONReady', function(ev, data) {\n$.each(data, function(key, value) {\nvar cfgKey = key;\n$(this).each(function(key, value) {\nif (cfgKey === 'Prices') {\nvar prices = value.split(',');\nfor (var i = 0; i < prices.length; i++) {\n$('#ProductPricingValidationRuleConfigurationForm_' + prices[i]).prop('checked', 'true');\n}\n}\nif (cfgKey === 'Currencies') {\nvar currencyInformations = value.split(',');\nvar assignedCurrencies = $('#AssignedCurrencies:enabled');\nvar availableCurrencies = $('#AvailableCurrencies:enabled');\nfor (var i = 0; i < currencyInformations.length; i++) {\nvar currencyInformation = currencyInformations[i].split(':');\nassignedCurrencies.append('<option value=' + currencyInformation[0] + '>' + currencyInformation[1] + '</option>');\navailableCurrencies.children(\"option[value='\" + currencyInformation[0] + \"']\").remove();\n");
      out.write("}\n}\n});\n});\nsetupRuleCurrencies();\n});\n});\n</script>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<th align=\"left\" class=\"table_detail_without_bground\">");
 {out.write(localizeISText("validationrule.product.pricing.checkStandardPricesForSelectedCurrencies","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</th>\n</tr>\n<tr\nid=\"ProductPricingValidationRuleConfigurationForm_EmptyRuleParameter_ErrorContainer\"\nclass=\"ErrorContainer\" style=\"display: none;\">\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\"\nclass=\"error_box\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\"\nheight=\"15\" alt=\"\" border=\"0\" /></td>\n<td width=\"100%\" class=\"product_validation_error\">");
 {out.write(localizeISText("validationrule.page.selectAtLeastOneProductPrice","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("!</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr\nid=\"ProductPricingValidationRuleConfigurationForm_InvalidCurrenciesParameter_ErrorContainer\"\nclass=\"ErrorContainer\" style=\"display: none;\">\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\"\nclass=\"error_box\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\"\nheight=\"15\" alt=\"\" border=\"0\" /></td>\n<td width=\"100%\" class=\"product_validation_error\">");
 {out.write(localizeISText("validationrule.page.selectCurrencyWhenProductPriceIsSelected","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("!</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td nowrap=\"nowrap\" class=\"table_detail_without_bground\"><label for=\"ProductPricingValidationRuleConfigurationForm_ListPrice\">");
 {out.write(localizeISText("validationrule.product.pricing.page.listPrice","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td><input id=\"ProductPricingValidationRuleConfigurationForm_ListPrice\" name=\"ProductPricingValidationRuleConfigurationForm_ListPrice\" type=\"checkbox\" /></td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"table_detail_without_bground\"><label for=\"ProductPricingValidationRuleConfigurationForm_CostPrice\">");
 {out.write(localizeISText("validationrule.product.pricing.page.costPrice","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td><input id=\"ProductPricingValidationRuleConfigurationForm_CostPrice\" name=\"ProductPricingValidationRuleConfigurationForm_CostPrice\" type=\"checkbox\" /></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td><img height=\"20\" border=\"0\" width=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/></td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<th align=\"left\" class=\"table_detail_without_bground\"><label for=\"AvailableCurrencies\" class=\"label_select label_light\">");
 {out.write(localizeISText("validationrule.page.availableCurrencies","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></th>\n<th></th>\n<th align=\"left\" class=\"table_detail_without_bground\"><label for=\"AssignedCurrencies\" class=\"label_select label_light\">");
 {out.write(localizeISText("validationrule.page.selectedCurrencies","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></th>\n</tr>\n<tr>\n<td class=\"table_detail_without_bground\" width=\"45%\"><select\nid=\"AvailableCurrencies\" name=\"AvailableCurrencies\"\nclass=\"select inputfield_en w100 rule_configuration_input availableSelect\"\nmultiple=\"multiple\" size=\"8\">");
 while (loop("SystemCurrencies","Currency",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select></td>\n<td nowrap=\"nowrap\" width=\"10%\">\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\n<tr>\n<td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"assignPricingCurrency\" value=\"");
 {out.write(localizeISText("validationrule.page.add","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" &gt;\" class=\"button shuttleButton currencyShuttleButton rule_configuration_input\" style=\"width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;\" /></td>\n</tr>\n<tr>\n<td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"assignAllPricingCurrencies\" value=\"");
 {out.write(localizeISText("validationrule.page.addAll","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" &gt;&gt;\" class=\"button shuttleButton currencyShuttleButton rule_configuration_input\" style=\"width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;\" /></td>\n</tr>\n<tr>\n<td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"unassignAllPricingCurrencies\" value=\"&lt;&lt; ");
 {out.write(localizeISText("validationrule.page.removeAll","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button shuttleButton currencyShuttleButton rule_configuration_input\" style=\"width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;\" /></td>\n</tr>\n<tr>\n<td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"unassignPricingCurrency\" value=\"&lt; ");
 {out.write(localizeISText("validationrule.page.remove","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button shuttleButton currencyShuttleButton rule_configuration_input\" style=\"width: 110px; white-space: pre-wrap; height: auto; word-wrap:break-word;\" /></td>\n</tr>\n</table>\n</td>\n<td class=\"table_detail_without_bground\" width=\"45%\">\n<input type=\"hidden\" id=\"RuleCurrencies\" name=\"RuleCurrencies\" />\n<input type=\"hidden\" id=\"AllCurrencies\" name=\"AllCurrencies\" value=\"");
 while (loop("SystemCurrencies","Currency",null)) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(':');
 {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Currency") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write(';');
 } 
 } 
      out.write("\" />\n<select id=\"AssignedCurrencies\" name=\"AssignedCurrencies\" class=\"select inputfield_en w100 rule_configuration_input assignedSelect\" multiple=\"multiple\" size=\"8\" />\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
