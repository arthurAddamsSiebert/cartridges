/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.content;

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

public final class ChannelPageletImpexOverview_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Content",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Content.text",null)))}, 5); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.ImportAndExport.text",null)))}, 6); 
      out.write("<!-- EO Page Navigator -->");
 URLPipelineAction action75 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null)))),null));String site75 = null;String serverGroup75 = null;String actionValue75 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null)))),null);if (site75 == null){  site75 = action75.getDomain();  if (site75 == null)  {      site75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup75 == null){  serverGroup75 = action75.getServerGroup();  if (serverGroup75 == null)  {      serverGroup75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue75, site75, serverGroup75,true)); 
 {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} 
      out.write("<input type=\"hidden\" name=\"ContentRepositoryUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null));
      out.write("\"/>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.title")}, 14); 
      out.write("</td>\n</tr>\n</table> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmPrepareChannel")))).booleanValue() && ((Boolean) (getObject("ShowConfirmMessage"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ImportMode\" value=\"REPLACE\"/>\n<input type=\"hidden\" name=\"JobDescription\" value=\"Imports components.\"/>\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Page.subject",null))),
new TagParameter("cancelbtnname","CancelPrepare"),
new TagParameter("disableparameters","true"),
new TagParameter("okbtnname","Prepare"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.DoYouReallyWantToReplaceTheCurrentContent.message",null))),
new TagParameter("type","mdc")}, 22); 
      out.write("</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ERROR_JobAlreadyRunning"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\"\nclass=\"error_box s\">\n<tr>\n<td class=\"error_icon e w\"><img\nsrc=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\"\nborder=\"0\" /></td>\n<td class=\"error e\" width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","pagelet.impex.jobalreadyrunning.error")}, 33); 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.title")}, 42); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentImport-SelectFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.content.text"),
new TagParameter("parameter1",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)))))}, 48); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageletContentImport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Import.button",null)),null));
      out.write("\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageletContentExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Pages -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pages.title")}, 71); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.page.text")}, 77); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Includes -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.includes.title")}, 96); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("IncludeExport",null),context.getFormattedValue("Export",null)).addURLParameter(context.getFormattedValue("ExportExecutionDomainUUID",null),context.getFormattedValue(getObject("CurrentChannel:RepositoryDomain:UUID"),null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.include.text")}, 102); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"IncludeExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Page Templates -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagetemplates.title")}, 121); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageVariantTemplateExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.pagetemplate.text")}, 127); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageVariantTemplateExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Component Templates -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.componenttemplates.title")}, 146); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ComponentTemplateExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.componenttemplate.text")}, 152); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ComponentTemplateExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Page Variants -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagevariants.title")}, 171); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageVariantExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.pagevariant.text")}, 177); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"PageVariantExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Components -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.components.title")}, 196); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ComponentExport",null),context.getFormattedValue("Export",null)))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.component.text")}, 202); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ComponentExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WhiteChannelContent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { 
      out.write("<!-- IMPEX: Components -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.whitestore.header")}, 222); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.whitestore.description")}, 227); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ConfirmPrepareChannel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Prepare.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<!-- IMPEX: View Contexts -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.viewcontexts.title")}, 244); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextExport-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.manage.viewcontext.text")}, 250); 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"ViewContextExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Export.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- IMPEX: Upload & Download -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_header\" width=\"100%\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.impex.files.title")}, 269); 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr class=\"table_title_description\">\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImportFiles-BrowseDirectory",null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.files.upload.text"),
new TagParameter("parameter1",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletExportFiles-BrowseDirectory",null)))))}, 276); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImportFiles-BrowseDirectory",null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.impex.files.view.text"),
new TagParameter("parameter1",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletExportFiles-BrowseDirectory",null)))))}, 281); 
 } 
      out.write("</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ImportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Upload.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"ExportFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Download.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewChannelPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 302); 
 } else { 
 processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewChannelPageletImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true"),
new TagParameter("pipelineparametervalue1",getObject("cms:ContentRepository:UUID")),
new TagParameter("pipelineparametername1","ContentRepositoryUUID")}, 304); 
 } 
 out.print("</form>"); 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ChannelPageletImpexOverview", null, "308");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",310,e);}if (_boolean_result) { 
      out.write("<script language=\"JavaScript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageletImpex-Status",null)))),null));
      out.write("'\", 10000)\n</script> \n");
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