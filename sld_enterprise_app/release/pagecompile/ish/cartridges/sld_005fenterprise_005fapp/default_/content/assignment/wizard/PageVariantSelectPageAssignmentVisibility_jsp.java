/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.assignment.wizard;

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

public final class PageVariantSelectPageAssignmentVisibility_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.SelectVisibilityAndPriority.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageVariantPageAssignmentCreationWizard-SelectVisibilityAndPriority",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 4); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageVariantSelectPageAssignmentVisibility.AssignPageVariantsToContentSystemPagesStep0SetPrio.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Pageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageVariantSelectPageAssignmentVisibility.AssignPageVariantsToContentSystemPagesStep0SetPrio.table_title1",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PageVariantSelectPageAssignmentVisibility.AssignPageVariantToContentSystemPagesStep0SetPrior.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } 
 }} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action347 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageVariantPageAssignmentCreationWizard-Dispatch",null)))),null));String site347 = null;String serverGroup347 = null;String actionValue347 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageVariantPageAssignmentCreationWizard-Dispatch",null)))),null);if (site347 == null){  site347 = action347.getDomain();  if (site347 == null)  {      site347 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup347 == null){  serverGroup347 = action347.getServerGroup();  if (serverGroup347 == null)  {      serverGroup347 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageVariantPageAssignmentCreationWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AssignmentVisibility");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue347, site347, serverGroup347,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageVariantSelectPageAssignmentVisibility.Step0Of3.table_title_description",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 } else { 
 {out.write(localizeISText("PageVariantSelectPageAssignmentVisibility.Step0Of2.table_title_description",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 } 
 {out.write(localizeISText("PageVariantSelectPageAssignmentVisibility.SetThePriorityAndVisibilityForTheSelectedPages.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/PageletAssignmentPropertiesErrors", null, "40");} 
 processOpenTag(response, pageContext, "pageletassignmentproperties", new TagParameter[] {
new TagParameter("DatePatternLocale",getObject("CurrentSession:Locale")),
new TagParameter("ShowHeading","true")}, 42); 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"BackToSelectPages\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("MoveToPages",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Pageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.MovePageVariantsToPages.input",null)),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.MovePageVariantToPages.input",null)),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Pageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.AssignPageVariantsToPages.input",null)),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.AssignPageVariantToPages.input",null)),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } 
      out.write("<input type=\"submit\" name=\"Finish\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.Finish.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageVariantSelectPageAssignmentVisibility.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr> \n</table> \n</td> \n</tr>\n</table>");
 out.print("</form>"); 
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
