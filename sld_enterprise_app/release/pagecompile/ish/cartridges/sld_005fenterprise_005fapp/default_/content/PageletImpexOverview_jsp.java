/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content;

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

public final class PageletImpexOverview_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletImpexOverview.MasterContent.text",null)))}, 5); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PageletImpexOverview.ContentImportExport.text",null)))}, 6); 
      out.write("<!-- EO Page Navigator -->");
 {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} 
 URLPipelineAction action418 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Dispatch",null)))),null));String site418 = null;String serverGroup418 = null;String actionValue418 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Dispatch",null)))),null);if (site418 == null){  site418 = action418.getDomain();  if (site418 == null)  {      site418 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup418 == null){  serverGroup418 = action418.getServerGroup();  if (serverGroup418 == null)  {      serverGroup418 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue418, site418, serverGroup418,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.ImportExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.Content.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.content.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentImport-SelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))),null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ContentRepositoryUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" class=\"button\" name=\"PageletContentImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null));
      out.write("\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageletContentExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Pages -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.Pages.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.page.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("Page",null))),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Includes -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.Includes.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.include.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("Include",null)).addURLParameter(context.getFormattedValue("ExportExecutionDomainUUID",null),context.getFormattedValue(getObject("CurrentChannel:RepositoryDomain:UUID"),null))),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"IncludeExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Page Templates -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.PageTemplates.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.pagetemplate.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("PageVariantTemplate",null))),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageVariantTemplateExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Component Templates -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.ComponentTemplates.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.componenttemplate.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("ComponentTemplate",null))),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ComponentTemplateExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Page Variants -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.PageVariants.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.pagevariant.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("PageVariant",null))),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageVariantExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Components -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.Components.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.component.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue("Component",null))),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ComponentExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: View Contexts -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.ViewContexts.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 {out.write(localizeISText("PageletImpexOverview.Imports.manage.viewcontext.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextExport-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ViewContextExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<!-- IMPEX: Upload & Download -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletImpexOverview.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",243,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageletImpexOverview.Imports.files.upload.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImportFiles-BrowseDirectory",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExportFiles-BrowseDirectory",null)))),null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PageletImpexOverview.Imports.files.view.text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImportFiles-BrowseDirectory",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExportFiles-BrowseDirectory",null)))),null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ImportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Upload.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ExportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Download.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 271); 
 } else { 
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true"),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 273); 
 } 
 out.print("</form>"); 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogImpexOverview_52", null, "277");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",279,e);}if (_boolean_result) { 
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImpex-Status",null)))),null));
      out.write("'\", 10000)\n</script>");
 } 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->");
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
