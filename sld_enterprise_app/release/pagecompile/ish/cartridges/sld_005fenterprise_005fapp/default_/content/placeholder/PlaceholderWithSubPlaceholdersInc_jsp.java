/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.placeholder;

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

public final class PlaceholderWithSubPlaceholdersInc_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n");
 processOpenTag(response, pageContext, "placeholderpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametervalue7",getObject("parametervalue7")),
new TagParameter("Placeholder",getObject("Placeholder")),
new TagParameter("ContextType",getObject("Placeholder:UUID")),
new TagParameter("parametervalue6",getObject("parametervalue6")),
new TagParameter("parametervalue5",getObject("parametervalue5")),
new TagParameter("parametervalue4",getObject("parametervalue4")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0",getObject("parametername0")),
new TagParameter("parametervalue3",getObject("parametervalue3")),
new TagParameter("parametername1",getObject("parametername1")),
new TagParameter("parametervalue2",getObject("parametervalue2")),
new TagParameter("parametervalue1",getObject("parametervalue1")),
new TagParameter("parametername2",getObject("parametername2")),
new TagParameter("parametervalue0",getObject("parametervalue0")),
new TagParameter("parametername3",getObject("parametername3")),
new TagParameter("ContextPipeline",getObject("ContextPipeline")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("parametername4",getObject("parametername4")),
new TagParameter("parametername5",getObject("parametername5")),
new TagParameter("parametername6",getObject("parametername6")),
new TagParameter("parametername7",getObject("parametername7"))}, 5); 
      out.write('\n');
      out.write('\n');
 processOpenTag(response, pageContext, "pageletplaceholderutils", new TagParameter[] {
new TagParameter("PageletPlaceholderUtils","PlaceholderUtils")}, 31); 
      out.write('\n');
 {Object temp_obj = (getObject("PlaceholderUtils:PlaceholdersForPlaceholder(Placeholder,ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("PlaceholderPlaceholders", temp_obj);} 
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PlaceholderPlaceholders") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 while (loop("PlaceholderPlaceholders","PlaceholderPlaceholder",null)) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "placeholderwithsubplaceholders", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametervalue7",getObject("parametervalue7")),
new TagParameter("Placeholder",getObject("PlaceholderPlaceholder")),
new TagParameter("ContextType",getObject("Placeholder:UUID")),
new TagParameter("parametervalue6",getObject("parametervalue6")),
new TagParameter("parametervalue5",getObject("parametervalue5")),
new TagParameter("parametervalue4",getObject("parametervalue4")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0",getObject("parametername0")),
new TagParameter("parametervalue3",getObject("parametervalue3")),
new TagParameter("parametername1",getObject("parametername1")),
new TagParameter("parametervalue2",getObject("parametervalue2")),
new TagParameter("parametervalue1",getObject("parametervalue1")),
new TagParameter("parametername2",getObject("parametername2")),
new TagParameter("parametervalue0",getObject("parametervalue0")),
new TagParameter("parametername3",getObject("parametername3")),
new TagParameter("ContextPipeline",getObject("ContextPipeline")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("parametername4",getObject("parametername4")),
new TagParameter("parametername5",getObject("parametername5")),
new TagParameter("parametername6",getObject("parametername6")),
new TagParameter("parametername7",getObject("parametername7"))}, 35); 
      out.write('\n');
      out.write('	');
 } 
      out.write('\n');
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