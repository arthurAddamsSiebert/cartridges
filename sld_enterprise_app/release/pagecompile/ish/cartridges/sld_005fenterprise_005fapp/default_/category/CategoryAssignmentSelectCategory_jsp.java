/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.category;

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

public final class CategoryAssignmentSelectCategory_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CheckSelectProductWizardPrivileges", null, "3");} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsViewSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 12); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 18); 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 25); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 30); 
 } 
 } 
      out.write(" \n<!-- EO Page Navigator -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_title aldi\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryAssignmentSelectCategory.Step0.table_title",null,null,context.getFormattedValue(getObject("SelectCategoryStepNo"),null),null,null,null,null,null,null,null,null,null));} 
      out.write(':');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateInclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignmentSelectCategory.IncludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateExclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignmentSelectCategory.ExcludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("CategoryLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignmentSelectCategory.AssignCategoryLink.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }}} 
      out.write(" \n- ");
 {out.write(localizeISText("CategoryAssignmentSelectCategory.SelectCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- delete confirmation if nothing is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("finish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Category.subject",null))),
new TagParameter("okbtnname","Finish"),
new TagParameter("type","nsebt")}, 53); 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" width=\"100%\">");
 {out.write(localizeISText("CategoryAssignmentSelectCategory.Step0Of1BrowseToTheCategoriesThatYouWantToSelect.table_title_description",null,null,context.getFormattedValue(getObject("SelectCategoryStepNo"),null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null),null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignmentSelectCategory.ClickTheCheckboxButtons0.table_title_description",null,null,context.getFormattedValue("<img src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif\" width=\"11\" height=\"11\" alt=\"\" border=\"0\"/>",null),null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
 {Object temp_obj = ("multiple"); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} 
 } else { 
 {Object temp_obj = (""); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} 
 } 
 URLPipelineAction action293 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site293 = null;String serverGroup293 = null;String actionValue293 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site293 == null){  site293 = action293.getDomain();  if (site293 == null)  {      site293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup293 == null){  serverGroup293 = action293.getServerGroup();  if (serverGroup293 == null)  {      serverGroup293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("functionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue293, site293, serverGroup293,true)); 
      out.write("<!-- save for further usage -->\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CatalogUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"HideClassificationCatalogs\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("HideClassificationCatalogs"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "81");} 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td colspan=\"2\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"10\" alt=\"\" border=\"0\"/>\n</td>\n</tr>\n<tr>\n<td>\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"6\" height=\"6\" alt=\"\" border=\"0\"/>\n</td>\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("parametervalue3",getObject("HideClassificationCatalogs")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("parametername3","HideClassificationCatalogs"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 97); 
 } else { 
 processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("parametervalue3",getObject("HideClassificationCatalogs")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("parametername3","HideClassificationCatalogs"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 112); 
 } 
      out.write(' ');
      out.write('\n');
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 128); 
 } else { 
 processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 142); 
 } 
 } 
      out.write(" \n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/>\n</td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"previousStep3\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCategory.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"finish\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCategory.Finish.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCategory.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->");
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