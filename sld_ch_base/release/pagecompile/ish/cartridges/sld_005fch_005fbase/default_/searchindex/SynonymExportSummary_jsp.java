/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.searchindex;

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

public final class SynonymExportSummary_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("id","ExportSynonyms"),
new TagParameter("text",localizeText(context.getFormattedValue("SynonymExportSummary.ExportMonitor.text",null)))}, 4); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SynonymExportSummary.SynonymExportMonitor.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("SynonymExportSummary.SynonymExportStartedAtAndFinishedAt.table_detail",null,null,context.getFormattedValue(context.getFormattedValue(getObject("ExportStartTime"),new Integer(DATE_SHORT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("ExportStartTime"),new Integer(DATE_TIME)),null),context.getFormattedValue(context.getFormattedValue(getObject("ExportEndTime"),new Integer(DATE_SHORT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("ExportEndTime"),new Integer(DATE_TIME)),null),null,null,null,null,null,null,null,null));} 
      out.write(" \n</td>\n</tr>\n</table> \n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SynonymExportSummary.LogFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LogContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("LogContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td class=\"fielditem2\" width=\"100%\"><textarea class=\"inputfield_en\" cols=\"70\" rows=\"15\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LogContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n</tr>\n</table> \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImpex-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue("log",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(context.getFormattedValue(getObject("JobConfiguration:UUID"),null) + context.getFormattedValue("-0.log",null),null)).addURLParameter(context.getFormattedValue("DynamicTemplate",null),context.getFormattedValue("impex/DownloadFile",null))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("SynonymExportSummary.DownloadLogFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("SynonymExportSummary.ThereAreNoLogMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s n\">\n<tr>\n<td class=\"table_title2\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SynonymExportSummary.ExportFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td class=\"table_detail\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexSynonyms-DownloadFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("ExportFileName"),null)))),null));
      out.write("\" class=\"selection_link\">");
 {out.write(localizeISText("SynonymExportSummary.DownloadExportFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" &lt;");
 {String value = null;try{value=context.getFormattedValue(getObject("ExportFileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&gt;\n</a>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 URLPipelineAction action187 = new URLPipelineAction(context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null));String site187 = null;String serverGroup187 = null;String actionValue187 = context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null);if (site187 == null){  site187 = action187.getDomain();  if (site187 == null)  {      site187 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup187 == null){  serverGroup187 = action187.getServerGroup();  if (serverGroup187 == null)  {      serverGroup187 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue187, site187, serverGroup187,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"backbar_left\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"back\" value=\"&lt;&lt; ");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SynonymExportSummary.BackToSynonyms.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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
