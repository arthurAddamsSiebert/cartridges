/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_.snapshot;

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

public final class Snapshot_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"aldi table_tabs_dis_background\" nowrap=\"nowrap\"><a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("Snapshot.Startup.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("Snapshot.Snapshot.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"100%\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<!-- EO Tabs -->\n<!-- Title -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"form_bg w e s\">\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title\">");
 {out.write(localizeISText("Snapshot.ClusterInformationSnapshot.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- EO Title -->\n<!-- Description -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"2\">");
 {out.write(localizeISText("Snapshot.SpecifyWhichInformationIsCollected.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- EO Description -->\n<!-- Errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ClusterInfoPropertyEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td> \n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("Snapshot.PropertyChangesCouldNotBeDistributed.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- EO Errors -->\n<!-- Application server -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_subtitle w e s\" colspan=\"2\">");
 {out.write(localizeISText("Snapshot.ApplicationServer.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- EO Application server -->\n<!-- ServerMenu -->");
 URLPipelineAction action19 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));String site19 = null;String serverGroup19 = null;String actionValue19 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null);if (site19 == null){  site19 = action19.getDomain();  if (site19 == null)  {      site19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup19 == null){  serverGroup19 = action19.getServerGroup();  if (serverGroup19 == null)  {      serverGroup19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SnapshotServer");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue19, site19, serverGroup19,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"snapshot/SnapshotServer", null, "57");} 
      out.write("<tr>\n<td> \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"SnapshotServerApply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("Snapshot.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td> \n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO ServerMenu -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GenerateSnapshot"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoServerSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr> \n<td class=\"error_icon e\" width=\"20\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("Snapshot.NoServerSelected.confirm","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoInformationSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr> \n<td class=\"error_icon e\" width=\"20\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("Snapshot.NoInformationTypeSelected.confirm","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr> \n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("Snapshot.GeneratedSnapshotForTheSelectedAppservers.confirm","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 }} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SnapshotEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td> \n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("Snapshot.SnapshotGenerationError.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/></td>\n</tr>\n</table>\n</td>\n</tr>");
 }} 
 } 
      out.write("<!-- EO confirm settings -->\n<!-- Snapshot Info -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_subtitle w e s\" colspan=\"2\">");
 {out.write(localizeISText("Snapshot.SnapshotInformation.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- EO Snapshot Info -->\n<!-- Description -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"2\">");
 {out.write(localizeISText("Snapshot.UseTheCheckboxesToSelectTheIntendedTypes.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- EO Description -->\n<!-- Properties Menu -->");
 URLPipelineAction action20 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));String site20 = null;String serverGroup20 = null;String actionValue20 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null);if (site20 == null){  site20 = action20.getDomain();  if (site20 == null)  {      site20 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup20 == null){  serverGroup20 = action20.getServerGroup();  if (serverGroup20 == null)  {      serverGroup20 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Snapshot-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("Snapshot");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue20, site20, serverGroup20,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"snapshot/SnapshotProperties", null, "130");} 
      out.write("<tr>\n<td> \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"SnapshotPropertiesApply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("Snapshot.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"GenerateSnapshot\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("Snapshot.CreateSnapshot.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td> \n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Properties Menu -->");
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
