/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.inc;

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
import com.intershop.component.pmc.capi.pagelet.assignment.PageletAssignment;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import java.util.Date;

public final class PageletAssignmentStatus_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "5");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("StatusPagelet"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("PageletAssignment:From")); getPipelineDictionary().put("StatusPagelet", temp_obj);} 
 } 
 processOpenTag(response, pageContext, "pageletstatus", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Date",getObject("Date")),
new TagParameter("Pagelet",getObject("StatusPagelet"))}, 10); 
 
    PageletAssignment<?> pageletAssignment = (PageletAssignment<?>)getPipelineDictionary().get("PageletAssignment"); 
    long validFrom = pageletAssignment.getValidFrom() != null ? pageletAssignment.getValidFrom().getTime() : Long.MIN_VALUE;
    long validTo = pageletAssignment.getValidTo() != null ? pageletAssignment.getValidTo().getTime() : Long.MAX_VALUE;
    Date currentDateDate = (Date)getPipelineDictionary().get("Date");
    long currentDate = currentDateDate != null ? currentDateDate.getTime() : new Date().getTime();
    PipelineDictionary dict = getPipelineDictionary();
    dict.put("CurrentDate", currentDate);
    dict.put("ValidFrom", validFrom);
    dict.put("ValidTo", validTo);

 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PageletAssignment:Active"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_content_not_visible.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.Hidden.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.Hidden.title",null)),null));
      out.write("\" border=\"0\"/>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ValidTo")).doubleValue() <((Number)(getObject("CurrentDate"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_content_visible_past3.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.CurrentlyNotVisibleButInThePast.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.CurrentlyNotVisibleButInThePast.title",null)),null));
      out.write("\" border=\"0\"/>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ValidFrom")).doubleValue() >((Number)(getObject("CurrentDate"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_content_visible_future3.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.CurrentlyNotVisibleButInTheFuture.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.CurrentlyNotVisibleButInTheFuture.title",null)),null));
      out.write("\" border=\"0\"/>");
 } else { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_content_visible.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.CurrentlyVisible.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentStatus.CurrentlyVisible.title",null)),null));
      out.write("\" border=\"0\"/>");
 }} 
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