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
import com.intershop.beehive.core.capi.url.*;

public final class ApplicationFrame_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<!-- Template Name: ");
 {String value = null;try{value=context.getFormattedValue(getObject("WorkingTemplate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" -->\n<!-- Template Location: ");
 {String value = null;try{value=context.getFormattedValue(getTemplateSourceLocation(context.getFormattedValue(getObject("WorkingTemplate"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" -->\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" lang=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<head>\n<title>");
 {out.write(localizeISText("ApplicationFrame.Intershop7SellSideSystemBackOffice.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</title>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/opensans.css\"/>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/systemsite.css\"/>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "10");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledStyleSheet.isml", null, "12");} 
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/logo_is7.ico\" />\n</head>\n<body>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledOverlay.isml", null, "17");} 
      out.write("<div id=\"main-body\">\n<div id=\"siteMenuBg\"></div>\n<div id=\"main-header\">\n<!-- Global Navigation Area -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"application/GlobalNavigationBar", null, "23");} 
      out.write("<!-- EO Global Navigation Area -->\n<a id=\"brand\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null));
      out.write("\" class=\"main-header-logo\">");
 {out.write(localizeISText("GlobalNavigation.link.home","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n<a id=\"brand_title\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("GlobalNavigation.link.brandtitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"top\">\n<!-- Site Navigation Area -->");
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplaySiteNavigationBar",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),null), null, null, "34");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
      out.write("<!-- EO Site Navigation Area -->\n</td>\n<td id=\"main-content\" class=\"top\" width=\"100%\">\n<!-- Start Main Content Table-->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"top\">\n<!-- Working Area -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("WorkingTemplate"),null), null, "43");} 
      out.write("<!-- EO Working Area -->\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" id=\"main-footer\">");
 {try{executePipeline("IncludeProductInformation-Start",java.util.Collections.emptyMap(),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 52.",e);}} 
      out.write("<tr>\n<td nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationFrame.UserName","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationFrame.Organization","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationFrame.LastTimeLoggedIn","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td align=\"right\" width=\"100%\">");
 {String value = null;try{value=context.getFormattedValue(getObject("resultDict:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("resultDict:ProductVersion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("&nbsp;-&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("resultDict:ProductVersion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("&nbsp;(");
 {out.write(localizeISText("ApplicationFrame.UnknownVersion.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(')');
 } 
      out.write("&nbsp;&copy;&nbsp;");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("resultDict:CopyrightOwner"),null)),null));
      out.write(',');
      out.write(' ');
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("resultDict:CopyrightFrom"),null)),null));
      out.write('-');
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("resultDict:CopyrightTo"),null)),null));
      out.write("</td>\n</tr>\n<!-- Login Information -->\n<tr>\n<td nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserProfile:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserProfile:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentOrganization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td nowrap=\"nowrap\" colspan=\"2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserLastLoginTime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserLastLoginTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserLastLoginTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>\n</table>\n<!-- EO Main Content Table-->\n</div>\n</body>\n</html>");
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
