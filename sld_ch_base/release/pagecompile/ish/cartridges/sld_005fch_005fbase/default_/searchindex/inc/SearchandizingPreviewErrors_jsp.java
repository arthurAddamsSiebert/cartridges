/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.searchindex.inc;

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

public final class SearchandizingPreviewErrors_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PreviewCategoryError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 processOpenTag(response, pageContext, "previewerror", new TagParameter[] {
new TagParameter("parametervalue3",getObject("MasterPageEditingChannel")),
new TagParameter("parametername1","CatalogCategoryID"),
new TagParameter("parametervalue2",getObject("Catalog:UUID")),
new TagParameter("parametervalue1",getObject("PreviewCatalogCategoryID")),
new TagParameter("parametername2","CatalogUUID"),
new TagParameter("parametername3","MasterPageEditingChannel"),
new TagParameter("previewError",getObject("PreviewCategoryError"))}, 8); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmPreview")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("previewTyp")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewTyp"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 URLPipelineAction action148 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null));String site148 = null;String serverGroup148 = null;String actionValue148 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null);if (site148 == null){  site148 = action148.getDomain();  if (site148 == null)  {      site148 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup148 == null){  serverGroup148 = action148.getServerGroup();  if (serverGroup148 == null)  {      serverGroup148 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue148, site148, serverGroup148,true)); 
      out.write("<input type=\"hidden\" name=\"PreviewCatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewCatalogCategoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewCatalogUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("itemType","category"),
new TagParameter("previewMessage",getObject("confirmPreview"))}, 21); 
 out.print("</form>"); 
 } 
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PreviewProductError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 processOpenTag(response, pageContext, "previewerror", new TagParameter[] {
new TagParameter("previewError",getObject("PreviewProductError"))}, 31); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmPreview")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("previewTyp")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewTyp"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 URLPipelineAction action149 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Dispatch",null)))),null));String site149 = null;String serverGroup149 = null;String actionValue149 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Dispatch",null)))),null);if (site149 == null){  site149 = action149.getDomain();  if (site149 == null)  {      site149 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup149 == null){  serverGroup149 = action149.getServerGroup();  if (serverGroup149 == null)  {      serverGroup149 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue149, site149, serverGroup149,true)); 
      out.write("<input type=\"hidden\" name=\"ProductID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","product"),
new TagParameter("previewMessage",getObject("confirmPreview"))}, 40); 
 out.print("</form>"); 
 } 
      out.write(' ');
      out.write('\n');
 }} 
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
