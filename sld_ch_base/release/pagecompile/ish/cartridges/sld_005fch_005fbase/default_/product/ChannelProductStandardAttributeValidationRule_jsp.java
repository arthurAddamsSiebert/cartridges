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

public final class ChannelProductStandardAttributeValidationRule_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("validation/selectAssignment.js");
 out.print("</waplacement>"); 
      out.write("<script type=\"text/javascript\">\n$(document).ready(function() {\n$(document).delegate('#' + 'RuleDescriptorDiv_com_intershop_component_product_validation_internal_rules_standardattribute_ProductBOStandardAttributeValidationRuleDescriptor', 'onJSONReady', function(ev, data) {\n$.each(data, function(key, value){\nvar cfgKey = key;\n$(this).each(function(key, value){\nif (cfgKey === 'Attributes') {\nvar attributes = value.split(',');\nfor (var i = 0; i < attributes.length; i++) { \n$('#ProductStandardAttributesValidationRuleConfigurationForm_' + attributes[i]).prop('checked', 'true');\n}\n}\nif (cfgKey === 'Locales') {\nvar localeInformations = value.split(',');\nvar assignedLocales = $('#AssignedLocales:enabled');\nvar availableLocales = $('#AvailableLocales:enabled');\nfor (var i = 0; i < localeInformations.length; i++) {\nvar localeInformation = localeInformations[i].split(':');\nassignedLocales.append('<option value=' + localeInformation[0] + '>' + localeInformation[1] + '</option>');\navailableLocales.children(\"option[value='\" + localeInformation[0] + \"']\").remove();\n");
      out.write("}\n} \n});\n});\nsetupRuleLocales();\n});\n});\n</script>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr valign=\"top\">\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr><th colspan=\"2\" align=\"left\" class=\"table_detail_without_bground\" width=\"100%\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.checkForStandardAttributes","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</th></tr>\n<tr id=\"ProductStandardAttributesValidationRuleConfigurationForm_EmptyRuleParameter_ErrorContainer\" class=\"ErrorContainer\" style=\"display:none;\">\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td width=\"100%\" class=\"product_validation_error\">");
 {out.write(localizeISText("validationrule.page.selectAtLeastOneAttribute","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("!</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr valign=\"top\">\n<td width=\"50%\">\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_SKU\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_SKU\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_SKU\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.sku","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_SupplierName\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_SupplierName\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_SupplierName\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.supplierName","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_SupplierSKU\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_SupplierSKU\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_SupplierSKU\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.suppliersku","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_manufacturerName\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_manufacturerName\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_manufacturerName\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.manufacturerName","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_manufacturerSKU\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_manufacturerSKU\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_manufacturerSKU\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.manufacturersku","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_EANCode\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_EANCode\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_EanCode\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.eanCode","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_FreightClassID\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_FreightClassID\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_FreightClassID\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.freightClassID","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n</td>\n<td width=\"50%\">\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_MinOrderQuantity\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_MinOrderQuantity\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_MinOrderQuantity\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.minOrderQuantity","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_MaxOrderQuantity\"/ name=\"ProductStandardAttributesValidationRuleConfigurationForm_MaxOrderQuantity\" class=\"rule_configuration_input\"></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_MaxOrderQuantity\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.maxOrderQuantity","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_StepQuantity\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_StepQuantity\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_StepQuantity\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.stepQuantity","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td> \n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_BaseUnit\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_BaseUnit\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_BaseUnit\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.baseUnit","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_QuantityUnit\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_QuantityUnit\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_QuantityUnit\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.quantityUnit","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_RatioBasePackingUnit\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_RatioBasePackingUnit\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_RatioBasePackingUnit\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.ratioBasePackingUnit","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMin\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMin\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMin\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.readyForShipmentMin","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMax\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMax\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_ReadyForShipmentMax\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.readyForShipmentMax","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr><th align=\"left\" class=\"table_detail_without_bground\">");
 {out.write(localizeISText("validationrule.page.checkLocalizedAttributesForSelectedLocales","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</th></tr>\n<tr id=\"ProductStandardAttributesValidationRuleConfigurationForm_InvalidLocalesParameter_ErrorContainer\" class=\"ErrorContainer\" style=\"display:none;\">\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td width=\"100%\" class=\"product_validation_error\">");
 {out.write(localizeISText("validationrule.page.selectLocaleWhenLocalizedAttributesAreSelected","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("!</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr valign=\"top\">\n<td>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"\">\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_name\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_name\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_name\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.name","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_shortDescription\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_shortDescription\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_shortDescription\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.shortDescription","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" id=\"ProductStandardAttributesValidationRuleConfigurationForm_longDescription\" name=\"ProductStandardAttributesValidationRuleConfigurationForm_longDescription\" class=\"rule_configuration_input\"/></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ProductStandardAttributesValidationRuleConfigurationForm_longDescription\">");
 {out.write(localizeISText("validationrule.product.standard.attr.page.longDescription","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table> \n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<th align=\"left\" class=\"table_detail_without_bground\"><label for=\"AvailableLocales\" class=\"label_select label_light\">");
 {out.write(localizeISText("validationrule.page.availableLocales","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></th>\n<th></th>\n<th align=\"left\" class=\"table_detail_without_bground\"><label for=\"AssignedLocales\" class=\"label_select label_light\">");
 {out.write(localizeISText("validationrule.page.selectedLocales","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></th>\n</tr>\n<tr>\n<td class=\"table_detail_without_bground\" width=\"38%\">\n<select id=\"AvailableLocales\" name=\"AvailableLocales\" class=\"select inputfield_en w100 rule_configuration_input availableSelect\" multiple=\"multiple\" size=\"9\">");
 while (loop("Locales","Locale",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n<td nowrap=\"nowrap\" width=\"24%\">\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\n<tr><td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"assignStadardAttrLocale\" value=\"");
 {out.write(localizeISText("validationrule.page.add","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" &gt;\" class=\"button shuttleButton localeShuttleButton locale rule_configuration_input w100\" style=\"white-space: pre-wrap; height: auto; word-wrap:break-word;\" /></td></tr>\n<tr><td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"assignAllStadardAttrLocales\" value=\"");
 {out.write(localizeISText("validationrule.page.addAll","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" &gt;&gt;\" class=\"button shuttleButton localeShuttleButton rule_configuration_input w100\" style=\"white-space: pre-wrap; height: auto; word-wrap:break-word;\"/></td></tr>\n<tr><td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"unassignAllStadardAttrLocales\" value=\"&lt;&lt; ");
 {out.write(localizeISText("validationrule.page.removeAll","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button shuttleButton localeShuttleButton rule_configuration_input w100\" style=\"white-space: pre-wrap; height: auto; word-wrap:break-word;\"/></td></tr>\n<tr><td class=\"button table_detail_without_bgrond_and_padding\"><input type=\"button\" id=\"unassignStadardAttrLocale\" value=\"&lt; ");
 {out.write(localizeISText("validationrule.page.remove","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button shuttleButton localeShuttleButton rule_configuration_input w100\" style=\"white-space: pre-wrap; height: auto; word-wrap:break-word;\"/></td></tr>\n</table>\n</td>\n<td class=\"table_detail_without_bground\" width=\"38%\">\n<input type=\"hidden\" id=\"RuleLocales\" name=\"RuleLocales\" />\n<input type=\"hidden\" id=\"AllLocales\" name=\"AllLocales\" value=\"");
 while (loop("Locales","Locale",null)) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(':');
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Locale") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { 
      out.write(';');
 } 
 } 
      out.write("\" />\n<select id=\"AssignedLocales\" name=\"AssignedLocales\" class=\"select inputfield_en w100 rule_configuration_input assignedSelect\" multiple=\"multiple\" size=\"9\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
