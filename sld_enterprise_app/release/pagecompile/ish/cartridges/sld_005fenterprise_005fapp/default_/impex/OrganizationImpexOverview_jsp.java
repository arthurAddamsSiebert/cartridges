/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.impex;

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

public final class OrganizationImpexOverview_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Organization",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("OrganizationMenu",null))).addURLParameter(context.getFormattedValue("OverviewPage",null),context.getFormattedValue("ViewOverview-Organization",null)))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSetChannels.Organization.table_header",null)))}, 3); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationImpex-Status",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ImportExport.text",null)))}, 4); 
 URLPipelineAction action585 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationImpex-Dispatch",null)))),null));String site585 = null;String serverGroup585 = null;String actionValue585 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationImpex-Dispatch",null)))),null);if (site585 == null){  site585 = action585.getDomain();  if (site585 == null)  {      site585 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup585 == null){  serverGroup585 = action585.getServerGroup();  if (serverGroup585 == null)  {      serverGroup585 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue585, site585, serverGroup585,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogsImportExport.ImportExport.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrganizationImpexOverview.UsersXML.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("OrganizationImpexOverview.ManageUserXMLImportsExports.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserImport-SelectFile",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserExport-SimpleSearch",null)))),null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"UserImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"UserExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrganizationImpexOverview.UsersCSV.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("OrganizationImpexOverview.ManageUserCSVImports.table_title_description1",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserImport-SelectCSVFile",null)))),"selection_link",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"UserCSVImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrganizationImpexOverview.UploadImportFilesAndDownloadExportFiles.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationImportFiles-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationExportFiles-BrowseDirectory",null)))),null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("OrganizationImpexOverview.ViewUploadedImportFilesAndDownloadExportFiles.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationImportFiles-BrowseDirectory",null)))),"selection_link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationExportFiles-BrowseDirectory",null)))),null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ImportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImportSourceFiles.Upload.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ExportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Download.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrganizationImpexOverview", null, "83");} 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewOrganizationImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs"))}, 88); 
 } else { 
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewOrganizationImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true")}, 90); 
 } 
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<script language=\"javascript\" type=\"text/javascript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationImpex-Status",null)))),null));
      out.write("'\", 10000)\n</script>");
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
