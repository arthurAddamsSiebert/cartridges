/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.pricing;

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

public final class PricingPreferences_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("preferences.breadcrumb",null)))}, 5); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("pricing.preference.breadcrumb",null)))}, 6); 
      out.write("<script type=\"text/javascript\">\n$(document).ready(function(){\n$(\"input[type=checkbox][data-additional-text-customer-type]\").each(function(){\n$(this).change(function(event){\nvar checkbox = $(this);\nvar customerTypeID = checkbox.attr(\"data-additional-text-customer-type\");\nvar rows = $(\"tr[data-additional-text-customer-type=\" + customerTypeID + \"]\")\nif(checkbox.prop(\"checked\"))\n{\nrows.each(function(){$(this).show()});\n}\nelse\n{\nrows.each(function(){$(this).hide()});\n}\n})\n.change();\n});\n});\n</script>");
 URLPipelineAction action258 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-Dispatch",null)))),null));String site258 = null;String serverGroup258 = null;String actionValue258 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-Dispatch",null)))),null);if (site258 == null){  site258 = action258.getDomain();  if (site258 == null)  {      site258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup258 == null){  serverGroup258 = action258.getServerGroup();  if (serverGroup258 == null)  {      serverGroup258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PricingPreferencesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue258, site258, serverGroup258,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s n\" colspan=\"4\">");
 {out.write(localizeISText("pricing.preference.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PricingPreferencesForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s n\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e top\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\"> \n");
 {out.write(localizeISText(context.getFormattedValue(getObject("PricingPreferencesForm:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" colspan=\"4\">");
 {out.write(localizeISText("pricing.preference.helptext",null,null,context.getFormattedValue("<a class=\'selection_link\' target=\'_blank\' href=\'",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/help/con_cat.html#con_cat_pricesNet\'>",null) + context.getFormattedValue(localizeText(context.getFormattedValue("pricing.preference.documentation",null)),null) + context.getFormattedValue("</a>",null),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e s\" colspan=\"4\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tr><td colspan=\"4\"><img width=\"1\" height=\"6\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"></td></tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("pricing.preference.PriceType.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_detail\">\n<select name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"select inputfield_en\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n>\n<option value=\"gross\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:PriceType:Value"),null).equals(context.getFormattedValue("gross",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("pricing.preference.PriceType.gross","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"net\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:PriceType:Value"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("pricing.preference.PriceType.net","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n<td class=\"table_detail\">");
 {out.write(localizeISText("pricing.preference.PriceType.description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("CustomerTypes","CustomerType",null)) { 
 {Object temp_obj = (getObject("CustomerTypePricingPreferencesForm:SubForm(CustomerType:CustomerTypeID)")); getPipelineDictionary().put("PreferenceForm", temp_obj);} 
      out.write("<tr>\n<td class=\"fielditem2\">");
 {out.write(localizeISText("pricing.preference.PriceDisplay.label","",null,localizeText(context.getFormattedValue(context.getFormattedValue("pricing.preference.CustomerType.",null) + context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null) + context.getFormattedValue(".plural.capitalized",null),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_detail\">\n<select name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:PriceDisplayType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"select inputfield_en\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n>\n<option value=\"gross\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceForm:PriceDisplayType:Value"),null).equals(context.getFormattedValue("gross",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("pricing.preference.PriceType.gross","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"net\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceForm:PriceDisplayType:Value"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("pricing.preference.PriceType.net","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n<td class=\"table_detail\">");
 {out.write(localizeISText("pricing.preference.PriceDisplay.description","",null,localizeText(context.getFormattedValue(context.getFormattedValue("pricing.preference.CustomerType.",null) + context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null) + context.getFormattedValue(".plural.lowercase",null),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td></td>\n<td class=\"table_detail\">\n<input id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" type=\"checkbox\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\ndata-additional-text-customer-type=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n> \n&nbsp;<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("pricing.preference.AdditionalTextEnabled.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n<td class=\"table_detail\">");
 {out.write(localizeISText("pricing.preference.AdditionalTextEnabled.description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("Locales","Locale",null)) { 
      out.write("<tr data-additional-text-customer-type=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<td></td>\n<td class=\"table_detail fielditem2\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(":\n</td>\n<td class=\"table_detail\">");
 {Object temp_obj = (context.getFormattedValue("AdditionalText_",null) + context.getFormattedValue(getObject("Locale:LocaleID"),null)); getPipelineDictionary().put("AdditionalTextParameterName", temp_obj);} 
      out.write("<input name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:getParameter(AdditionalTextParameterName):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" type=\"text\" class=\"inputfield_en\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:getParameter(AdditionalTextParameterName):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n>\n</td>\n</tr>");
 } 
 } 
 while (loop("CustomerTypes","CustomerType","Counter")) { 
      out.write("<tr>\n<td class=\"fielditem\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
 {out.write(localizeISText("pricing.preference.DefaultPriceDisplay.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("\n&nbsp\n");
 } 
      out.write("</td>\n<td class=\"table_detail\">\n<input type=\"radio\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('_');
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:Value"),null).equals(context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n>\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('_');
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue(getObject("CustomerType:LocalizationKeyForName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</label>\n</td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
 {out.write(localizeISText("pricing.preference.DefaultPriceDisplay.description","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("\n&nbsp\n");
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"fielditem\" nowrap=\"nowrap\">");
 {out.write(localizeISText("pricing.preference.PriceChangeEventTracking.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_detail\" nowrap=\"nowrap\">\n<input type=\"checkbox\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { 
      out.write(" disabled=\"disabled\"");
 } 
      out.write("\n/>\n&nbsp;<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("PricingPreferences.Enabled.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n<td class=\"table_detail\">");
 {out.write(localizeISText("pricing.preference.PriceChangeEventTracking.description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr><td colspan=\"4\"><img width=\"1\" height=\"6\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"></td></tr>\n</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { 
      out.write(" \n<tr>\n<td align=\"right\" colspan=\"4\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"updateSettings\" value=\"");
 {out.write(localizeISText("pricing.preference.apply.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\" /></td>\n<td class=\"button\"><input type=\"reset\" name=\"resetSettings\" value=\"");
 {out.write(localizeISText("pricing.preference.reset.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\" /></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "198");} 
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