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

public final class CategoryAssignmentSelectCatalogCategories_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = (""); getPipelineDictionary().put("BreadCrumbText", temp_obj);} 
      out.write("<!-- Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","assignCatSelectCatalog"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","assignCatSelectCatalog"),
new TagParameter("text",localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.AssignProductCategoryLinksSelectCategories.text",null)))}, 11); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","assignCatSelectCatalog"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))))),
new TagParameter("id","assignCatSelectCatalog"),
new TagParameter("text",localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.AssignProductCategoryLinksSelectCategories.text1",null)))}, 15); 
 } 
      out.write("<!-- Working Area -->");
 URLPipelineAction action284 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site284 = null;String serverGroup284 = null;String actionValue284 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site284 == null){  site284 = action284.getDomain();  if (site284 == null)  {      site284 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup284 == null){  serverGroup284 = action284.getServerGroup();  if (serverGroup284 == null)  {      serverGroup284 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue284, site284, serverGroup284,true)); 
      out.write("<!-- save for further usage -->\n<input type=\"hidden\" name=\"submittedForm\" value=\"CatalogSelectionForm\"/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "27");} 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" data-testing-id=\"bo-catalog-selection-page\">\n<tr>\n<td class=\"table_title aldi\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.AssignProductCategoryLinksSelectCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- if nothing is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoSelectedCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"5\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.YouHaveNotSelectedAnyTargetCategories.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s table_title_description\" colspan=\"5\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StandardCatalogCategories"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.ClickTheCheckboxButtons0.table_title_description",null,null,context.getFormattedValue("<img src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif\" width=\"11\" height=\"11\" alt=\"\" border=\"0\"/>",null),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.ThisProductDoesNotContainAnyCategoryLinks",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(" \n</td>\n</tr> \n");
 } 
      out.write("<tr>\n<td width=\"100%\" valign=\"top\">\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("treeid","tree"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode","multi"),
new TagParameter("selectedcategories",getObject("AlreadySelectedCategoryUUIDs")),
new TagParameter("categories",getObject("StandardCatalogCategories")),
new TagParameter("disabledcategories",getObject("AlreadySelectedCategoryUUIDs"))}, 66); 
      out.write(" \n</td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<!-- Next/Cancel button -->\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("IsManageSelectProductWizardAllowed")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("StandardCatalogCategories")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"finish\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SourceCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"submittedForm\" value=\"CatalogSelectionForm\"/>");
 } 
      out.write("<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Working Area -->");
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
