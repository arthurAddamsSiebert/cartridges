/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.inc;

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

public final class ProductClassificationSearchMask_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write(" \n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFClassificationSearch:CatalogID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<td class=\"label_select\"><label class=\"label label_select label_light label_indent label_error\" for=\"WFClassificationSearch_CatalogID\">");
 {out.write(localizeISText("ProductClassificationSearchMask.ClassificationCatalog.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td class=\"label_select\"><label class=\"label label_select label_light label_indent\" for=\"WFClassificationSearch_CatalogID\">");
 {out.write(localizeISText("ProductClassificationSearchMask.ClassificationCatalog.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<select name=\"WFClassificationSearch_CatalogID\" id=\"WFClassificationSearch_CatalogID\" class=\"select inputfield_en w100\">\n<option value=\"\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("WFClassificationSearch_CatalogID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("WFClassificationSearch_CatalogID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("ProductSortingForm.None.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("ClassificationCatalogs","Catalog",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFClassificationSearch_CatalogID"),null).equals(context.getFormattedValue(getObject("Catalog:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Catalog:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</select>\n</td>\n<td width=\"1%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"selectClassificationCatalog\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null));
      out.write("\" class=\"button\" />\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n<td colspan=\"2\">&nbsp;</td>\n</tr>");
 {Object temp_obj = ("false"); getPipelineDictionary().put("tempTitleWritten", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("WFClassificationSearch_CatalogID"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("WFClassificationSearch_CatalogID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedClassificationAttributes")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 while (loop("SelectedClassificationAttributes","SelectedClassificationAttribute",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("tempTitleWritten"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFClassificationSearch:ClassificationAttributes:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<td class=\"label_select\"><label class=\"label label_select label_light label_indent label_error\" for=\"\">");
 {out.write(localizeISText("ProductClassificationSearchMask.ClassificationAttributes.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td class=\"label_select\"><label class=\"label label_select label_light label_indent\" for=\"\">");
 {out.write(localizeISText("ProductClassificationSearchMask.ClassificationAttributes.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
 {Object temp_obj = ("true"); getPipelineDictionary().put("tempTitleWritten", temp_obj);} 
 } else { 
      out.write("<td>&nbsp;</td>");
 } 
      out.write("<td colspan=\"3\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td class=\"infobox_item\" width=\"23%\">\n<input type=\"hidden\" name=\"SelectedClassificationAttributeUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedClassificationAttribute:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write('<');
      out.write('p');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedClassificationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedClassificationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 } 
      out.write("</td> \n<td width=\"1%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr><td class=\"button\" >\n<input type=\"submit\" name=\"removeClassificationAttribute_");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditorRankingItem.Remove.button",null)),null));
      out.write("\" class=\"button\" />\n</td></tr>\n</table>\n</td>\n<td width=\"50%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 {Object temp_obj = (getObject("SelectedClassificationAttribute:UUID")); getPipelineDictionary().put("SelectedClassificationAttributeUUID", temp_obj);} 
      out.write("<td class=\"input_radio\">\n<input type=\"radio\" value=\"false\" name=\"SelectedClassificationAttributeDefined_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write("\" id=\"SelectedClassificationAttributeDefined_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write("_0\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SelectedClassificationAttributeDefinedMap:get(SelectedClassificationAttributeUUID)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" \n/>\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"SelectedClassificationAttributeDefined_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write("_0\">");
 {out.write(localizeISText("ProductClassificationSearchMask.Undefined.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"input_radio\">\n<input type=\"radio\" value=\"true\" name=\"SelectedClassificationAttributeDefined_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write("\" id=\"SelectedClassificationAttributeDefined_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write("_1\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedClassificationAttributeDefinedMap:get(SelectedClassificationAttributeUUID)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" \n/>\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"SelectedClassificationAttributeDefined_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write("_1\">");
 {out.write(localizeISText("ProductClassificationSearchMask.Defined.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"input_checkbox\">\n<input type=\"checkbox\" value=\"true\" name=\"SelectedClassificationAttributeSearchOnlyInProductType_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write("\" id=\"SelectedClassificationAttributeSearchOnlyInProductType_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedClassificationAttributeSearchOnlyInProductTypeMap:get(SelectedClassificationAttributeUUID)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" \n/>\n</td>\n<td class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"SelectedClassificationAttributeSearchOnlyInProductType_");
      out.print(context.getFormattedValue(getObject("SelectedClassificationAttribute:UUID"),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ProductClassificationSearchMask.SearchOnlyIn.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedClassificationAttribute:ProductType:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedClassificationAttribute:ProductType:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedClassificationAttribute:ProductType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write(" \n</label></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("tempTitleWritten"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFClassificationSearch:ClassificationAttributes:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<td class=\"label_select\"><label class=\"label label_select label_light label_indent label_error\" for=\"\">");
 {out.write(localizeISText("ProductClassificationSearchMask.ClassificationAttributes.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td class=\"label_select\"><label class=\"label label_select label_light label_indent\" for=\"\">");
 {out.write(localizeISText("ProductClassificationSearchMask.ClassificationAttributes.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
 {Object temp_obj = ("true"); getPipelineDictionary().put("tempTitleWritten", temp_obj);} 
 } else { 
      out.write("<td></td>");
 } 
      out.write("<td colspan=\"3\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr id=\"addAttribute\">\n<td>\n<table border=\"0\" cellspacing=\"1\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"addClassificationAttribute\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentProcessingSelectLabel.Add.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("WFClassificationSearch_CatalogID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("WFClassificationSearch_CatalogID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr><td colspan=\"4\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"0\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td class=\"label_select\"><label class=\"label label_select label_light label_indent\" for=\"WFClassificationSearch_SortBy\">");
 {out.write(localizeISText("ProductClassificationSearchMask.SortedBy.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td>\n<select name=\"WFClassificationSearch_SortBy\" id=\"WFClassificationSearch_SortBy\" class=\"select inputfield_en w100\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFClassificationSearch_SortBy"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
      out.write("<option value=\"name\" selected=\"selected\">");
 {out.write(localizeISText("ProductSortingForm.ProductName.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"name\">");
 {out.write(localizeISText("ProductSortingForm.ProductName.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFClassificationSearch_SortBy"),null).equals(context.getFormattedValue("SKU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { 
      out.write("<option value=\"SKU\" selected=\"selected\">");
 {out.write(localizeISText("PageletAssignmentsProductsSelection.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"SKU\">");
 {out.write(localizeISText("PageletAssignmentsProductsSelection.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFClassificationSearch_SortBy"),null).equals(context.getFormattedValue("value",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { 
      out.write("<option value=\"value\" selected=\"selected\">");
 {out.write(localizeISText("CategoryLinkProductList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"value\">");
 {out.write(localizeISText("CategoryLinkProductList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n<td colspan=\"3\">&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td colspan=\"3\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFClassificationSearch_SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { 
      out.write("<td class=\"input_radio\"><input type=\"radio\" name=\"WFClassificationSearch_SortDirection\" id=\"WFClassificationSearch_SortDirection_Asc\" value=\"ascending\"/></td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"WFClassificationSearch_SortDirection_Asc\">");
 {out.write(localizeISText("ProductClassificationSearchMask.Ascending.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"input_radio\"><input type=\"radio\" name=\"WFClassificationSearch_SortDirection\" id=\"WFClassificationSearch_SortDirection_Desc\" value=\"descending\" checked=\"checked\"/></td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"WFClassificationSearch_SortDirection_Desc\">");
 {out.write(localizeISText("ProductClassificationSearchMask.Descending.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>");
 } else { 
      out.write("<td class=\"input_radio\"><input type=\"radio\" name=\"WFClassificationSearch_SortDirection\" id=\"WFClassificationSearch_SortDirection_Asc\" value=\"ascending\" checked=\"checked\"/></td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"WFClassificationSearch_SortDirection_Asc\">");
 {out.write(localizeISText("ProductClassificationSearchMask.Ascending.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"input_radio\"><input type=\"radio\" name=\"WFClassificationSearch_SortDirection\" id=\"WFClassificationSearch_SortDirection_Desc\" value=\"descending\"/></td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text label_light\" for=\"WFClassificationSearch_SortDirection_Desc\">");
 {out.write(localizeISText("ProductClassificationSearchMask.Descending.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\">&nbsp;</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"findClassification\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
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