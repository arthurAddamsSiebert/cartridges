/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:28:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fdashboard.default_.application.globalmenu;

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

public final class DashboardMenu_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("dashboard/dialog.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("dashboard/menu.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/jquery-ui.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/themes/base/jquery.ui.theme.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/themes/backoffice/jquery.ui.theme.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery/lightbox/jquery.dialog.css");
 out.print("</waplacement>"); 
      out.write("<li class=\"nav-item dashboardMenu\">\n<a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("dashboards\" class=\"js-dashboard-menu-default\" title=\"");
 {out.write(localizeISText("dashboard.menu.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("dashboard.menu.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n<ul>");
 {try{executePipeline("ViewDashboard-GetDashboardBORepository",java.util.Collections.emptyMap(),"DashboardDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 14.",e);}} 
 while (loop("DashboardDictionary:DashboardBORepository:DashboardBOs","DashboardBO",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasNext("DashboardBO") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {Object temp_obj = ("dashboardMenu_separator"); getPipelineDictionary().put("DashboardCSS", temp_obj);} 
 } 
      out.write("<li class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DashboardCSS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DashboardID",null),context.getFormattedValue(getObject("DashboardBO:ID"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("DashboardBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</li>");
 } 
      out.write("<li><a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("\" class=\"dashboard-menu-create js-dashboard-menu-create\">");
 {out.write(localizeISText("dashboard.menu.create.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></li>\n</ul>\n<div id=\"dashboard-dialog-create\" class=\"js-dialog\" width=\"450\" height=\"167\" data-title=\"");
 {out.write(localizeISText("dashboard.dialog.create.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\">\n<iframe name=\"createDashboardFrame\" class=\"dialog-iframe js-dashboard-dialog-create\"></iframe>\n</div>");
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("dashboard/dashboard.new.js");
 out.print("</waplacement>"); 
      out.write("<script type=\"text/javascript\">\ninitDashboardDialog('");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-New",null)))),null));
      out.write("');\n</script>\n</li>");
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