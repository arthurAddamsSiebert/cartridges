/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.impex.import_;

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

public final class PromotionImportSelectMode_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Main Content -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionImport-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionImportSelectMode.PromotionImportStep3SelectImportMode.text",null)))}, 6); 
      out.write("<!-- EO Page Navigator -->");
 URLPipelineAction action211 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionImport-Dispatch",null)))),null));String site211 = null;String serverGroup211 = null;String actionValue211 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionImport-Dispatch",null)))),null);if (site211 == null){  site211 = action211.getDomain();  if (site211 == null)  {      site211 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup211 == null){  serverGroup211 = action211.getServerGroup();  if (serverGroup211 == null)  {      serverGroup211 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionImport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue211, site211, serverGroup211,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("marketing.promotion.import.selection.mode.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("marketing.promotion.import.selection.mode.title.description1","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("marketing.promotion.import.selection.mode.title.description2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"n w e s\">\n<tr>\n<td class=\"infobox_title \" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("marketing.promotion.import.selection.mode","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td align=\"left\" >\n<select name=\"ImportMode\" size=\"1\" class=\"inputfield_en\" style=\"width:200px\">\n<option value=\"INITIAL\">");
 {out.write(localizeISText("PromotionImportSelectMode.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"UPDATE\">");
 {out.write(localizeISText("PromotionImportSelectMode.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"REPLACE\">");
 {out.write(localizeISText("PromotionImportSelectMode.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"IGNORE\">");
 {out.write(localizeISText("PromotionImportSelectMode.IGNORE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"DELETE\">");
 {out.write(localizeISText("PromotionImportSelectMode.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"OMIT\">");
 {out.write(localizeISText("PromotionImportSelectMode.OMIT.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"JobConfigurationUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"ValidateFileRefresh\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionImportSelectMode.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SelectedFile\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"JobDescription\" value=\"Import promotions from XML file.\"/>\n<input type=\"submit\" name=\"Import\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionImportSelectMode.Import.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionImportSelectMode.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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