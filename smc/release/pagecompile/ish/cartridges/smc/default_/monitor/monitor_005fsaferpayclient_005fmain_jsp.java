/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_.monitor;

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
import com.intershop.beehive.core.capi.url.*;

public final class monitor_005fsaferpayclient_005fmain_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"> \n<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("monitor_saferpayclient_main.SaferpayClientInstallationOverview.table_title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("monitor_saferpayclient_main.ThisPageProvidesAnOverviewAboutSaferpay.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("PerformLogout-GlobalLogout",null)))),"table_title_description",null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"aldi\"> \n<tr>\n<td class=\"table_header s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.ServerName.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.Host.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.Port.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor.InstallationID.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_saferpayclient_main.Installation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_saferpayclient_main.Communication.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("monitor_saferpayclient_main.BusinessInterface.table_header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td> \n</tr> \n");
 while (loop("ServerRegistrations","TargetServer",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TargetServer:Type"),null).equals(context.getFormattedValue("AppServer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSaferpayClientMiniStatus-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServer:ServerID"),null)))),null), null, null, "24");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
 } else { 
      out.write("<tr>\n<td class=\"table_detail e\" valign=\"top\">");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TargetServer:Name"),null)),null));
      out.write("&nbsp;</td>\n<td class=\"table_detail e\" valign=\"top\">");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TargetServer:Host"),null)),null));
      out.write("&nbsp;</td>\n<td class=\"table_detail e\" valign=\"top\" align=\"right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("TargetServer:Port"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e\" valign=\"top\">");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("TargetServer:InstallationID"),null)),null));
      out.write("&nbsp;</td>\n<td class=\"table_detail e\" valign=\"top\" align=\"center\">");
 {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e\" valign=\"top\" align=\"center\">");
 {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e\" valign=\"top\" align=\"center\">");
 {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td> \n</tr>");
 } 
 } 
      out.write("</table>\n</td>\n</tr> \n</table>");
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
