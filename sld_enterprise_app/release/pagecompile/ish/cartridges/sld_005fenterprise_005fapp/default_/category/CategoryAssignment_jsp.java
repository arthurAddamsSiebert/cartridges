/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
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
import java.util.ArrayList;
import java.util.Collection;

public final class CategoryAssignment_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 
setEncodingType("text/html"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CheckSelectProductWizardPrivileges", null, "6");} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsViewSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 15); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 23); 
      out.write(' ');
      out.write('\n');
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 32); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 39); 
      out.write(' ');
      out.write('\n');
 } 
 } 
      out.write("<!-- EO Page Navigator -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_title aldi\" width=\"100%\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateInclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignment.IncludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateExclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignment.ExcludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("CategoryLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignment.AssignCategoryLink.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }}} 
      out.write(" \n- ");
 {out.write(localizeISText("CategoryAssignment.SelectCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- delete confirmation if nothing is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("finish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Category.subject",null))),
new TagParameter("okbtnname","Finish"),
new TagParameter("type","nsebt"),
new TagParameter("message",localizeText(context.getFormattedValue("CategoryAssignment.YouHaveNotSelectedAnythingSelectACategoryAndClickO.message",null)))}, 63); 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" width=\"100%\">");
 {out.write(localizeISText("CategoryAssignment.BrowseToTheCategoriesThatYouWantToSelect.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignment.ClickTheCheckboxButtons0.table_title_description",null,null,context.getFormattedValue("<img src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif\" width=\"11\" height=\"11\" alt=\"\" border=\"0\"/>",null),null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
 {Object temp_obj = ("multiple"); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} 
 } else { 
 {Object temp_obj = (""); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AutoSelectSubCategories"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("AutoSelectSubCategories", temp_obj);} 
 } 
 URLPipelineAction action292 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site292 = null;String serverGroup292 = null;String actionValue292 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site292 == null){  site292 = action292.getDomain();  if (site292 == null)  {      site292 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup292 == null){  serverGroup292 = action292.getServerGroup();  if (serverGroup292 == null)  {      serverGroup292 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("functionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue292, site292, serverGroup292,true)); 
      out.write("<!-- save for further usage -->\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CatalogUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "95");} 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<tr>\n<td class=\"table_title2\" colspan=\"2\">");
 {out.write(localizeISText("CategoryAssignment.StandardCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</tr>\n<tr>\n<td>\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"6\" height=\"6\" alt=\"\" border=\"0\"/>\n</td>\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("parametervalue",getObject("ChannelID")),
new TagParameter("parametername1","PipelineComponentID"),
new TagParameter("parametervalue2",getObject("HideClassificationCatalogs")),
new TagParameter("parametervalue1",getObject("PipelineComponentID")),
new TagParameter("parametername2","HideClassificationCatalogs"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode",getObject("SelectMode")),
new TagParameter("selectedcategories",getObject("AlreadySelectedCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("disabledcategories",getObject("NotSelectableCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("lazycategories",getObject("LazyCategories")),
new TagParameter("treeid","tree1"),
new TagParameter("detailspageparameter","CategoryUUID"),
new TagParameter("detailspagepipeline","ViewCategorySelectWizard-CategoryDetails"),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("parametername","ChannelID"),
new TagParameter("autoselectdisablesubcategories",getObject("AutoDisableSelectedSubCategories")),
new TagParameter("categories",getObject("StandardCatalogCategories")),
new TagParameter("autoselectsubcategories",getObject("AutoSelectSubCategories"))}, 108); 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("HideClassificationCatalogs"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ClassificationCatalogCategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_title2\" colspan=\"2\">");
 {out.write(localizeISText("CategoryAssignment.ClassificationCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"6\" height=\"6\" alt=\"\" border=\"0\"/></td>\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("parametervalue",getObject("ChannelID")),
new TagParameter("parametername1","PipelineComponentID"),
new TagParameter("parametervalue2",getObject("HideClassificationCatalogs")),
new TagParameter("parametervalue1",getObject("PipelineComponentID")),
new TagParameter("parametername2","HideClassificationCatalogs"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode",getObject("SelectMode")),
new TagParameter("selectedcategories",getObject("AlreadySelectedCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("disabledcategories",getObject("NotSelectableCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("lazycategories",getObject("LazyCategories")),
new TagParameter("treeid","tree2"),
new TagParameter("detailspageparameter","CategoryUUID"),
new TagParameter("detailspagepipeline","ViewCategorySelectWizard-CategoryDetails"),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("parametername","ChannelID"),
new TagParameter("autoselectdisablesubcategories",getObject("AutoDisableSelectedSubCategories")),
new TagParameter("categories",getObject("ClassificationCatalogCategories")),
new TagParameter("autoselectsubcategories",getObject("AutoSelectSubCategories"))}, 137); 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/>\n</td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"StandardCategoryPrefix\" value=\"tree1\"/>\n<input type=\"hidden\" name=\"ClassificationCategoryPrefix\" value=\"tree2\"/>\n<input type=\"submit\" name=\"finish\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignment.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignment.Cancel.button",null)),null));
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
