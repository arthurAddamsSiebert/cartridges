/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.search;

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

public final class PageletEntryPointSearchModule_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("<!-- TEMPLATENAME: PageletEntryPointSearchModule.isml -->\n");
 
setEncodingType("text/html"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/PageletEntryPointSearchModuleInternal", null, "3");} 
 processOpenTag(response, pageContext, "pageletentrypointsearchinternal", new TagParameter[] {
new TagParameter("sortdirection",getObject("SortDirection")),
new TagParameter("disablesharedpagelets",getObject("disablesharedpagelets")),
new TagParameter("targetpageletviewpipelineparams",getObject("targetpageletviewpipelineparams")),
new TagParameter("channel",getObject("CurrentChannel")),
new TagParameter("submitbuttonincludetype",getObject("submitbuttonincludetype")),
new TagParameter("extendedheadingtemplate",getObject("extendedheadingtemplate")),
new TagParameter("disableselection",getObject("disableselection")),
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("DisableNonPublicPagelets",getObject("DisableNonPublicPagelets")),
new TagParameter("CurrentDomain",getObject("CurrentDomain")),
new TagParameter("submitbuttonstemplate",getObject("submitbuttonstemplate")),
new TagParameter("hidelockbutton",getObject("hidelockbutton")),
new TagParameter("StartDate",getObject("StartDate")),
new TagParameter("confirmdelete",getObject("confirmdelete")),
new TagParameter("SelectedApplicationTypeID",getObject("CurrentSession:Object(\"CMS_SELECTED_APP\")")),
new TagParameter("hideselection",getObject("hideselection")),
new TagParameter("searchtype",getObject("SearchType")),
new TagParameter("pageletclipboard",getObject("pageletclipboard")),
new TagParameter("notfoundtemplate",getObject("notfoundtemplate")),
new TagParameter("uniqueid",getObject("uniqueid")),
new TagParameter("InsertIntoExport",getObject("InsertIntoExport")),
new TagParameter("currentrequest",getObject("CurrentRequest")),
new TagParameter("ApplicationState",getObject("ApplicationState")),
new TagParameter("start",getObject("start")),
new TagParameter("hidecopybutton",getObject("hidecopybutton")),
new TagParameter("AppendSearchIDParamToBreadcrumb",getObject("AppendSearchIDParamToBreadcrumb")),
new TagParameter("ChannelConfiguration",getObject("CurrentChannel:RepositoryDomain:Site:DefaultApplication:Configuration")),
new TagParameter("radiobuttons",getObject("radiobuttons")),
new TagParameter("alloweddefinitions",getObject("alloweddefinitions")),
new TagParameter("sortby",getObject("SortBy")),
new TagParameter("page",getObject("page")),
new TagParameter("targetpageletviewpipeline",getObject("targetpageletviewpipeline")),
new TagParameter("performsearch",getObject("PerformPageletSearch")),
new TagParameter("selectedpageletuuid",getObject("SelectedPageletUUID"))}, 5); 
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
