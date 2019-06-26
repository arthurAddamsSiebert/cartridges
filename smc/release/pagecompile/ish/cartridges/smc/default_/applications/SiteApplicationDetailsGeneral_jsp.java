/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_.applications;

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

public final class SiteApplicationDetailsGeneral_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n\n<div class=\"breadcrumb\" style=\"margin: 0 0 7px 0\">\n\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("SiteApplicationDetailsGeneral.Applications.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;&gt;&nbsp;");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.General.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n</div>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t<tr>\n\t\t<td>\n\t\t\t");
 {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
      out.write("\n\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"applications/SiteApplicationDetailsTabs", null, "11");} 
      out.write("\n\t\t</td>\n\t</tr>\n\t<tr>\n\t\t<td width=\"100%\" class=\"table_title w e s\">\n\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("Application:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(")\n\t\t</td>\n\t</tr>\n</table>\n\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n\t<tr>\n\t\t<td class=\"fielditem2\" style=\"white-space:nowrap; width: 148px\">");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.ApplicationType.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n\t</tr>\n\t<tr>\n\t\t<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.ApplicationName.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n\t</tr>\n\t<tr>\n\t\t<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.URLIdentifier.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n\t</tr>\n\t<tr>\n\t\t<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.Description.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n\t</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n\t<tr>\n\t\t<td class=\"table_detail\">\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Application:Default"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<p>\n\t\t\t\t\t");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.ThisIsTheDefaultApplication",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t</p>\n\t\t\t");
 } 
      out.write("\n\t\t\t\n\t\t\t<p>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Application:Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.ThisApplicationIsCurrentlyEnabled",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t");
 {out.write(localizeISText("SiteApplicationDetailsGeneral.ThisApplicationIsCurrentlyDisabled",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n\t\t\t\t");
 } 
      out.write("\n\t\t\t</p>\n\t\t</td>\n\t</tr>\n</table>\n\n");
 URLPipelineAction action103 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null));String site103 = null;String serverGroup103 = null;String actionValue103 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null);if (site103 == null){  site103 = action103.getDomain();  if (site103 == null)  {      site103 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup103 == null){  serverGroup103 = action103.getServerGroup();  if (serverGroup103 == null)  {      serverGroup103 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue103, site103, serverGroup103,true)); 
      out.write("\n\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n\t\t<tr>\n\t\t\t<td width=\"100%\" class=\"backbar_left\">\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"back\" value=\"&lt;&lt; ");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SiteApplicationDetailsGeneral.BackToSiteApplications.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\t\t\n");
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