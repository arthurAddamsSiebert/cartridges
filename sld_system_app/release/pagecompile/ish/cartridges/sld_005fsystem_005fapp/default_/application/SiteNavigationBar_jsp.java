/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fsystem_005fapp.default_.application;

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

public final class SiteNavigationBar_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Menu Area -->\n<ul class=\"siteMenu\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:Enterprises"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write("class=\"active expanded\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:Enterprises"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-CompressMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("Enterprises",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewOrganizationEnterpriseList-ListAll",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.SalesOrganizations.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ExpandMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("Enterprises",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewOrganizationEnterpriseList-ListAll",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.SalesOrganizations.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</li>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("class=\"active expanded\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-CompressMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("User",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewUserList-List",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.Users.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ExpandMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("User",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewUserList-List",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.Users.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</li>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:ClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("class=\"active expanded\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:ClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-CompressMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("ClassificationCatalogs",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewCatalogList-ListAll",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.ClassificationCatalogs.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ExpandMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("ClassificationCatalogs",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewCatalogList-ListAll",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.ClassificationCatalogs.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</li>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:Impex"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("class=\"active expanded\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:Impex"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-CompressMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("Impex",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewImpex-Start",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.ImportExport.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ExpandMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("Impex",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewImpex-Start",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.ImportExport.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</li>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:Applications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("class=\"active expanded\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:Applications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-CompressMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("Applications",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewApplicationList-ListAll",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ExpandMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("Applications",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewApplicationList-ListAll",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</li>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_DATA_REPLICATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:DataReplication"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("class=\"expanded");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write(" active");
 } 
      out.write('"');
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:DataReplication"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-CompressMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("DataReplication",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewOverview-DataReplication",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.DataReplication.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ExpandMenuGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("DataReplication",null))).addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewOverview-DataReplication",null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.DataReplication.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationState:DataReplication"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("<ul>\n<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("ReplicationTasks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("class=\"active\"");
 } 
      out.write(">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTaskList-List",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.DataReplicationTasks.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</li>\n<li ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("ReplicationProcesses",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("class=\"active\"");
 } 
      out.write(">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessList-List",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("SiteNavigationBar.DataReplicationProcesses.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</li>\n</ul>");
 } 
      out.write("</li>");
 } 
      out.write(' ');
      out.write('\n');
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OperationsBackofficeNavigation", null, "82");} 
      out.write("</ul>");
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