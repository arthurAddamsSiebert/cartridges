/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.product;

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

public final class ProductActionList_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!--ProductActionList.isml-->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null))).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductActionList_32.EditSelectedProductsStep1SelectAction.text",null))),
new TagParameter("id","Select Action")}, 6); 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ActionCount", temp_obj);} 
 URLPipelineAction action13 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null));String site13 = null;String serverGroup13 = null;String actionValue13 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null);if (site13 == null){  site13 = action13.getDomain();  if (site13 == null)  {      site13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup13 == null){  serverGroup13 = action13.getServerGroup();  if (serverGroup13 == null)  {      serverGroup13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue13, site13, serverGroup13,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\" colspan=\"2\">");
 {out.write(localizeISText("ProductActionList_32.Step1SelectAction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (hasLoopElements("AssignedLabels") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ProductActionList_32.NoLabelsToBeUnassigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionListFormSubmitted"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ProductActionList_32.YouHaveNotSelectedAnActionSelectAnActionAndThen.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 }} 
      out.write("<tr>\n<td class=\"w e s table_title_description\" colspan = \"2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductActionList_32.Step1SelectProductProcessingActionNextStepsDepend.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"8\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UpdateStandardProductAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UpdateStandardProductAttributes\" id=\"UpdateStandardProductAttributes\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UpdateStandardProductAttributes\" id=\"UpdateStandardProductAttributes\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"UpdateStandardProductAttributes\">");
 {out.write(localizeISText("ProductActionList_32.UpdateStandardProductAttributesProductStatus.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UpdateCustomProductAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UpdateCustomProductAttribute\" id=\"UpdateCustomProductAttribute\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UpdateCustomProductAttribute\" id=\"UpdateCustomProductAttribute\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"UpdateCustomProductAttribute\">");
 {out.write(localizeISText("ProductActionList_32.UpdateCreateCustomProductAttribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteCustomProductAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"DeleteCustomProductAttribute\" id=\"DeleteCustomProductAttribute\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"DeleteCustomProductAttribute\" id=\"DeleteCustomProductAttribute\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"DeleteCustomProductAttribute\">");
 {out.write(localizeISText("ProductActionList_32.DeleteCustomProductAttribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductToCatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignProductToCatalogCategory\" id=\"AssignProductToCatalogCategory\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignProductToCatalogCategory\" id=\"AssignProductToCatalogCategory\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"AssignProductToCatalogCategory\">");
 {out.write(localizeISText("ProductActionList_32.AssignProductsToCatalogCategory.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductToClassificationCatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignProductToClassificationCatalogCategory\" id=\"AssignProductToClassificationCatalogCategory\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignProductToClassificationCatalogCategory\" id=\"AssignProductToClassificationCatalogCategory\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"AssignProductToClassificationCatalogCategory\">");
 {out.write(localizeISText("ProductActionList_32.AssignProductsToClassificationCatalogCategory.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignProductLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignProductLinks\" id=\"AssignProductLinks\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignProductLinks\" id=\"AssignProductLinks\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"AssignProductLinks\">");
 {out.write(localizeISText("ProductActionList_32.AssignProductCategoryLinks.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignProductLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UnassignProductLinks\" id=\"UnassignProductLinks\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UnassignProductLinks\" id=\"UnassignProductLinks\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"UnassignProductLinks\">");
 {out.write(localizeISText("ProductActionList_32.UnassignProductCategoryLinks.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("CopyProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"CopyProducts\" id=\"CopyProducts\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"CopyProducts\" id=\"CopyProducts\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"CopyProducts\">");
 {out.write(localizeISText("ProductActionList_32.CopyProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"DeleteProducts\" id=\"DeleteProducts\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"DeleteProducts\" id=\"DeleteProducts\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"DeleteProducts\">");
 {out.write(localizeISText("ProductActionList_32.DeleteProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignLabel\" id=\"AssignLabel\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"AssignLabel\" id=\"AssignLabel\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"AssignLabel\">");
 {out.write(localizeISText("ProductActionList_32.AssignLabel.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UnassignLabel\" id=\"UnassignLabel\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"UnassignLabel\" id=\"UnassignLabel\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"UnassignLabel\">");
 {out.write(localizeISText("ProductActionList_32.UnassignLabel.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DATA_REPLICATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("ReplicateProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"ReplicateProducts\" id=\"ReplicateProducts\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"ReplicateProducts\" id=\"ReplicateProducts\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"ReplicateProducts\">");
 {out.write(localizeISText("ProductActionList_32.ReplicateProductsToAnotherIntershop7Cluster.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ActionCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionCount", temp_obj);} 
      out.write("<tr>\n<td class=\"select w e s center\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("CSVExport",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"CSVExport\" id=\"CSVExport\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ActionID\" value=\"CSVExport\" id=\"CSVExport\"/>");
 } 
      out.write("</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">\n<label for=\"CSVExport\">");
 {out.write(localizeISText("ProductActionList_32.ExportToCSV.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>");
 } 
      out.write("</table>\n</tr>\n</td>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ActionCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",238,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail top\">");
 {out.write(localizeISText("ProductActionList_32.ThereAreNoActionsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "252");} 
      out.write("<input type=\"hidden\" name=\"ActionListFormSubmitted\" value=\"true\"/>\n<input type=\"hidden\" name=\"SelectedMenuItem\" value=\"ChannelProducts\"/>\n<input type=\"hidden\" name=\"IsSearchFired\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {255}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"submit\" name=\"selectAction\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductActionList_32.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ActionCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",256,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n<td class=\"button\">\n<a href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ApplicationState:LastListView:Link"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"button\">");
 {out.write(localizeISText("ProductActionList_32.Cancel.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
