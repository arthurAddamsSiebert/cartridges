/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.impex;

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

public final class ProductAttributeGroupImportSelectMode_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttributeGroupImportSelectMode_32.Step3Import.text",null)))}, 4); 
 URLPipelineAction action289 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupImport_32-Dispatch",null)))),null));String site289 = null;String serverGroup289 = null;String actionValue289 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupImport_32-Dispatch",null)))),null);if (site289 == null){  site289 = action289.getDomain();  if (site289 == null)  {      site289 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup289 == null){  serverGroup289 = action289.getServerGroup();  if (serverGroup289 == null)  {      serverGroup289 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupImport_32-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue289, site289, serverGroup289,true)); 
      out.write("<!-- EO Page Navigator -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"aldi\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.ProductAttributeGroupImportImport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.Step3Of3SelectImportModeAndStartImport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"6\" class=\"w e s\">\n<tr>\n<td class=\"infobox_title\" width=\"1%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.ImportMode.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td align=\"left\" colspan=\"2\">\n<select name=\"ImportMode\" size=\"1\" class=\"inputfield_en\" style=\"width:200px\">\n<option value=\"OMIT\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.OMIT.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"IGNORE\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.IGNORE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"INITIAL\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"DELETE\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"REPLACE\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"UPDATE\" selected=\"selected\">");
 {out.write(localizeISText("ProductAttributeGroupImportSelectMode_32.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"JobConfigurationUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"ValidateFileRefresh\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupImportSelectMode_32.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SelectedFile\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"JobDescription\" value=\"Imports variation types.\"/>\n<input type=\"submit\" name=\"Import\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupImportSelectMode_32.Import.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupImportSelectMode_32.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
