/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.localization;

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

public final class LocalizationImpexOverview_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations-Start",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.Localization.text",null)))}, 3); 
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ImportExport.text",null)))}, 4); 
      out.write('\n');
 URLPipelineAction action314 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Dispatch",null)))),null));String site314 = null;String serverGroup314 = null;String actionValue314 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Dispatch",null)))),null);if (site314 == null){  site314 = action314.getDomain();  if (site314 == null)  {      site314 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup314 == null){  serverGroup314 = action314.getServerGroup();  if (serverGroup314 == null)  {      serverGroup314 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue314, site314, serverGroup314,true)); 
      out.write("\t\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n\t\t<tr>\n\t\t\t<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ImportExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t</tr>\n\t</table>\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t<tr>\n\t\t\t<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\" /></td>\n\t\t</tr>\n\t</table>\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("\n\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.TextLocalizationXLIFF.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t</tr>\n\t\t</table>\n\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t\t<tr class=\"table_title_description\">\n\t\t\t\t<td width=\"100%\">");
 {out.write(localizeISText("sld_enterprise_app.ManageTextLocalization",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-SelectFile",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("sld_enterprise_app.Imports.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> &amp; <a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-ExportToXliff",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("sld_enterprise_app.Exports.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 {out.write(localizeISText("sld_enterprise_app.ImportOrExportStorefrontLocalizationTextFromOrInto.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td>\n\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"LocalizationImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Import.button",null)),null));
      out.write("\" /></td>\n\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"LocalizationExportXliff\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Export.button",null)),null));
      out.write("\" /></td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t</table>\n\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.TextLocalizationProperties.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t</tr>\n\t\t</table>\n\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t\t<tr class=\"table_title_description\">\n\t\t\t\t<td width=\"100%\">");
 {out.write(localizeISText("sld_enterprise_app.ManageTextLocalization1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-ExportToProperties",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("sld_enterprise_app.Exports.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 {out.write(localizeISText("sld_enterprise_app.ExportStorefrontLocalizationTextIntoPropertiesFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td>\n\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"LocalizationExportProperties\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Export.button",null)),null));
      out.write("\" /></td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t</table>\n\t");
 } 
      out.write("\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t<tr>\n\t\t\t<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ImportAndExportFiles.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t</tr>\n\t</table>\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t<tr class=\"table_title_description\">\n\t\t\t<td width=\"100%\">\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<a  href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-BrowseDirectory",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("sld_enterprise_app.Upload.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> ");
 {out.write(localizeISText("sld_enterprise_app.ImportFilesAnd.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExportFiles-BrowseDirectory",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("sld_enterprise_app.Download.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> ");
 {out.write(localizeISText("sld_enterprise_app.ExportFiles.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t");
 {out.write(localizeISText("sld_enterprise_app.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <a  href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-BrowseDirectory",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("sld_enterprise_app.Uploaded.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> ");
 {out.write(localizeISText("sld_enterprise_app.ImportFilesAnd.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExportFiles-BrowseDirectory",null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("sld_enterprise_app.Download.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> ");
 {out.write(localizeISText("sld_enterprise_app.ExportFiles.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</td>\n\t\t\t<td>\n\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ImportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Upload.button",null)),null));
      out.write("\" /></td>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ExportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Download.button",null)),null));
      out.write("\" /></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t\n\t<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewLocalizationImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs"))}, 81); 
      out.write('\n');
      out.write('	');
 } else { 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewLocalizationImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true")}, 83); 
      out.write('\n');
      out.write('	');
 } 
      out.write('\n');
 out.print("</form>"); 
      out.write('\n');
      out.write('\n');
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"LocalizationImpexOverview", null, "87");} 
      out.write('\n');
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