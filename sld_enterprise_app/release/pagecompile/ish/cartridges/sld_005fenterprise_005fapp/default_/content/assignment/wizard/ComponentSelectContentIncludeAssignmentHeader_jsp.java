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

public final class ComponentSelectContentIncludeAssignmentHeader_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","Parameters")}, 3); 
 {try{executePipeline("ViewComponentContentIncludeAssignmentCreationWizard-ProcessValuesInContainer",((java.util.Map)(getObject("Parameters"))),"Parameters");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parameters:ActionID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.EditAllComponentsStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Parameters:ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.EditSelectedComponentsStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.EditSelectedComponentStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } 
 }} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.AssignComponentsToIncludesStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Parameters:ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.AssignComponentsToIncludesStep0SelectIncludes.table_title1",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.AssignComponentToIncludesStep0SelectIncludes.table_title",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
 } 
 }} 
      out.write(' ');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n<tr>\n<td width=\"100%\" class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Parameters:ActionID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.Step0Of3.table_title_description",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 } else { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.Step0Of2.table_title_description",null,null,context.getFormattedValue(getObject("Parameters:StepCounter"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Parameters:ComponentPageable:ElementCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.SelectTheIncludesYouWantTheComponentsApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</br></br>");
 } else { 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.SelectTheIncludesYouWantTheComponentApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</br></br>");
 } 
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.NextStepSetPriorityAndVisibility.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletEntryPointSearchTitleAndErrors", null, "51");} 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","Errors")}, 53); 
 {try{executePipeline("ViewComponentContentIncludeAssignmentCreationWizard-RestoreErrors",((java.util.Map)(getObject("Errors"))),"Errors");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 54.",e);}} 
      out.write("<!-- Error Handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Errors:ErrorNoContentIncludeSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error middle\" width=\"100%\">");
 {out.write(localizeISText("ComponentSelectContentIncludeAssignmentHeader.YouHaveNotSelectedContentIncludesUseTheCheckboxesT.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
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
