/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.inc.product.bulkwizard;

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

public final class UpdateCustomProductAttributeAction_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!--UpdateCustomProductAttributeAction.isml-->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("BreadcrumbPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UpdateCustomProductAttribute",null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UpdateCustomProductAttributeAction.Step2DefineCustomAttributeValue.text",null)))}, 7); 
      out.write("<!-- EO Page Navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("UpdateCustomProductAttributeAction.Step2UpdateCreateCustomProductAttribute.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomAttributeNameMissing")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CustomAttributeValueMissing")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr> \n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeNameMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write('<');
      out.write('b');
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.PleaseProvideAnAttributeName.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b><br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeValueMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write('<');
      out.write('b');
      out.write('>');
 {out.write(localizeISText("UpdateCustomProductAttributeAction.PleaseProvideAnAttributeValue.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write('<');
      out.write('b');
      out.write('>');
 {out.write(localizeISText("CustomAttributesEditor.TheAttributeValueCouldNotBeParsed.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"w e s table_title_description\">");
 {out.write(localizeISText("UpdateCustomProductAttributeAction.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 {out.write(localizeISText("UpdateCustomProductAttributeAction.Step2Of3EnterOrSelectValues.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null)),encodeString(context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputTimePatternUserHint"),null)),null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action188 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));String site188 = null;String serverGroup188 = null;String actionValue188 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null);if (site188 == null){  site188 = action188.getDomain();  if (site188 == null)  {      site188 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup188 == null){  serverGroup188 = action188.getServerGroup();  if (serverGroup188 == null)  {      serverGroup188 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue188, site188, serverGroup188,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeNameMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write(" nowrap=\"nowrap\">");
 {out.write(localizeISText("DeleteCustomProductAttributeAction.AttributeName",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>\n<td class=\"table_detail\" width=\"100%\">\n<input type=\"text\" name=\"CustomAttributeName\" maxlength=\"400\" size=\"40\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomAttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.AttributeType.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail\">\n<select name=\"CustomAttributeType\" class=\"inputfield_en\" style=\"width:255px;\" width=\"100%\">\n<option value=\"String\" selected=\"selected\">");
 {out.write(localizeISText("VariationTypeExportSelectVariationTypes.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option> \n<option value=\"Integer\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("VariationTypeExportSelectVariationTypes.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Double\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Double",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("VariationTypeExportSelectVariationTypes.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Decimal\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Decimal",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.Decimal.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Date\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Date",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.Date.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Long\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Long",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.Long.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Boolean\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Boolean",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.Boolean.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Money\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Money",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.Money.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Quantity\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Quantity",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.Quantity.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Text\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.Text.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"MultipleString\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleString",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.MultipleString.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"MultipleInteger\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleInteger",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.MultipleInteger.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"MultipleDouble\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleDouble",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.MultipleDouble.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"MultipleLong\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleLong",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.MultipleLong.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"MultipleBoolean\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleBoolean",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.MultipleBoolean.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"MultipleDate\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.MultipleDate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"MultipleDecimal\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleDecimal",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("sld_enterprise_app.MultipleDecimal.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n</tr>\n<tr>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeValueMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write(" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.AttributeValue.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>\n<td class=\"table_detail\">\n<input type=\"text\" name=\"CustomAttributeValue\" maxlength=\"400\" size=\"40\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomAttributeValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("DeleteCustomProductAttributeAction.Locale.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail\">\n<select name=\"CustomAttributeLocale\" class=\"inputfield_en\" style=\"width: 255px;\">\n<option value=\"\" selected=\"selected\">");
 {out.write(localizeISText("sld_enterprise_app.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("CustomAttributeLocale"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"8\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "111");} 
      out.write("<input type=\"hidden\" name=\"updateCustomAttribute\" value=\"true\"/>\n<input type=\"hidden\" name=\"ProcessName\" value=\"updateCustomAttribute\"/>\n<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
 {out.write(localizeISText("UpdateCustomProductAttributeAction.UpdateCreateCustomProductAttribute","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ActionID\" value=\"UpdateCustomProductAttribute\"/>\n<input type=\"hidden\" name=\"ConfirmStep\" value=\"3\"/>\n<input type=\"hidden\" name=\"IsSearchFired\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"submit\" name=\"actionList\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"confirm\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->");
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
