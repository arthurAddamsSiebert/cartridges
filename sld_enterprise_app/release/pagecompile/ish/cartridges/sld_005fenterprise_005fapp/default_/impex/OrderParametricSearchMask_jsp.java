/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.impex;

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

public final class OrderParametricSearchMask_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\">\n<tr>\n<td class=\"infobox_subtitle\" colspan=\"3\">");
 {out.write(localizeISText("OrderParametricSearchMask.GeneralOrderAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:DocumentNo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\">");
 {out.write(localizeISText("OrderParametricSearchMask.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderParametricSearchMask.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td align=\"left\" colspan=\"2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WFAdvancedSearch_DocumentNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"WFAdvancedSearch_DocumentNo\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=35 size=\"35\" class=\"inputfield_en\"/>");
 } else { 
      out.write("<input type=\"text\" name=\"WFAdvancedSearch_DocumentNo\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=35 size=\"35\" class=\"inputfield_en\"/>");
 } 
      out.write("</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:CustomerName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\">");
 {out.write(localizeISText("OrderParametricSearchMask.Customer.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderParametricSearchMask.Customer.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td align=\"left\" colspan=\"2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WFAdvancedSearch_DocumentNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"WFAdvancedSearch_CustomerName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=35 size=\"35\" class=\"inputfield_en\"/>");
 } else { 
      out.write("<input type=\"text\" name=\"WFAdvancedSearch_CustomerName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=35 size=\"35\" class=\"inputfield_en\"/>");
 } 
      out.write("</td>\n</tr>\n<tr><td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderParametricSearchMask.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n</tr>\n<tr>\n<td class=\"infobox_item\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"16\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n<td align=\"left\" colspan=\"2\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateFrom_Date"),
new TagParameter("DateString",getObject("WFAdvancedSearch_CreationDateFrom_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 55); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateFrom_Time"),
new TagParameter("TimeString",getObject("WFAdvancedSearch_CreationDateFrom_Time")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 61); 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
 {out.write(localizeISText("OrderExportConditions.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n</tr>\n<tr>\n<td class=\"infobox_item\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"16\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n<td align=\"left\" colspan=\"2\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateTo_Date"),
new TagParameter("DateString",getObject("WFAdvancedSearch_CreationDateTo_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 85); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateTo_Time"),
new TagParameter("TimeString",getObject("WFAdvancedSearch_CreationDateTo_Time")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 91); 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderSimpleSearchMask.Channel.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td align=\"left\" colspan=\"2\">\n<select name=\"ChannelUUID\" style=\"1\" class=\"inputfield_en\" >\n<option value=\"\" selected=\"selected\">");
 {out.write(localizeISText("OrderExportConditions.AllChannels.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("Repositories","Channel",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelUUID"),null).equals(context.getFormattedValue(getObject("Channel:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(getObject("Channel:UUID"),null));
      out.write("\" selected=\"selected\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</option>");
 } else { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(getObject("Channel:UUID"),null));
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</option>");
 } 
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TotalFromError")))).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:TotalFrom:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\">");
 {out.write(localizeISText("OrderParametricSearchMask.TotalAmountFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderParametricSearchMask.TotalAmountFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td align=\"left\" colspan=\"2\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<input type=\"text\" name=\"WFAdvancedSearch_TotalFrom\" maxlength=\"10\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_TotalFrom"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>&nbsp;\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TotalToError")))).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:TotalTo:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\">");
 {out.write(localizeISText("OrderExportConditions.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\">");
 {out.write(localizeISText("OrderExportConditions.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td>\n<input type=\"text\" name=\"WFAdvancedSearch_TotalTo\" maxlength=\"10\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_TotalTo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>&nbsp;\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td class=\"infobox_subtitle\" colspan=\"3\">");
 {out.write(localizeISText("OrderParametricSearchMask.OrderDetails.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:ProductSKU:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\">");
 {out.write(localizeISText("OrderParametricSearchMask.OrderedProduct.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderParametricSearchMask.OrderedProduct.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td class=\"infobox_item\" colspan=\"2\"><input type=\"text\" name=\"WFAdvancedSearch_ProductSKU\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_ProductSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=35 size=\"35\" class=\"inputfield_en\"/>&nbsp;");
 {out.write(localizeISText("OrderParametricSearchMask.NameOrID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("OrderParametricSearchMask.ProductAvailability.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td align=\"left\" colspan=\"2\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
      out.write("<td><input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"\" checked=\"checked\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;<input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"1\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("PageletAssignmentsProductsSelection.InStock.alt",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;<input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"0\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("OrderParametricSearchMask.OutOfStock.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { 
      out.write("<td><input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;<input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"1\" checked=\"checked\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("PageletAssignmentsProductsSelection.InStock.alt",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;<input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"0\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("OrderParametricSearchMask.OutOfStock.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { 
      out.write("<td><input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;<input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"1\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("PageletAssignmentsProductsSelection.InStock.alt",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;<input type=\"radio\" name=\"WFAdvancedSearch_Available\" value=\"0\" checked=\"checked\"/></td>\n<td class=\"infobox_item\">");
 {out.write(localizeISText("OrderParametricSearchMask.OutOfStock.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 }}} 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td align=\"right\" colspan=\"3\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SearchType\" value=\"parametric\"/>\n<input type=\"submit\" name=\"find\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
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