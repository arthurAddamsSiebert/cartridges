/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.image;

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

public final class ImageSetSelectImageView_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-ListImageViews",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ImageSetDefinitionID",null),context.getFormattedValue(getObject("ImageSet:ID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ImageSetSelectImageView.AddImageViewAndTypeRelation.text",null)))}, 4); 
      out.write("<!-- Working Area -->");
 URLPipelineAction action168 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-Dispatch",null)))),null));String site168 = null;String serverGroup168 = null;String actionValue168 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-Dispatch",null)))),null);if (site168 == null){  site168 = action168.getDomain();  if (site168 == null)  {      site168 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup168 == null){  serverGroup168 = action168.getServerGroup();  if (serverGroup168 == null)  {      serverGroup168 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectImageViewForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue168, site168, serverGroup168,true)); 
      out.write("<input type=\"hidden\" name=\"ImageSetDefinitionID\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageSet:ID"),null)),null));
      out.write("\" />\n<input type=\"hidden\" name=\"SelectImageViewFormSubmitted\" value=\"true\"/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortAttribute")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SortAttribute"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SortAttribute\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortOrder")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SortOrder\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortOrder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title n s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ImageSetSelectImageView.AddImageViewAndTypeRelation.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectImageViewFormSubmitted"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ImageSetSelectImageView.YouHaveNotSelectedAnImageView.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ImageSetSelectImageView.Step1Of2SelectAnImageView.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageViews") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td class=\"table_header e s\" nowrap=\"nowrap\" width=\"75\">");
 {out.write(localizeISText("SearchQueryEditor.Select.button",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortAttribute"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortAttribute"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-ListImageViewsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("ImageSetDefinitionID",null),context.getFormattedValue(getObject("ImageSet:ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("ChannelColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-ListImageViewsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("ImageSetDefinitionID",null),context.getFormattedValue(getObject("ImageSet:ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("ChannelColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</td>\n<td class=\"table_header s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortAttribute"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortAttribute"),null).equals(context.getFormattedValue("id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-ListImageViewsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("ImageSetDefinitionID",null),context.getFormattedValue(getObject("ImageSet:ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("ChannelColumns.ID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinition-ListImageViewsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("ImageSetDefinitionID",null),context.getFormattedValue(getObject("ImageSet:ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("ChannelColumns.ID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</td>\n</tr>");
 while (loop("ImageViews","ImageView",null)) { 
      out.write("<tr>\n<td class=\"table_detail top e s center\">\n<input type=\"radio\" name=\"SelectedImageViewID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ImageView:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ImageView:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("SelectedImageViewID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" /></td>\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ImageView:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<td class=\"table_detail top e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageView:Name(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" (Language missing)");
 } 
      out.write("&nbsp;</td>\n<td class=\"table_detail top s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ImageView:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<tr><td class=\"table_detail\" >");
 {out.write(localizeISText("CustomParameterImageView.CurrentlyThereAreNoImageViewsDefined",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</tr>\n</table>");
 } 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"next\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("ImageViews") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\" ");
 } 
      out.write(" /></td>\n<td class=\"button\"><input type=\"submit\" name=\"cancelSelectImageView\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","ImageViews"),
new TagParameter("variablepagesize","true")}, 88); 
      out.write("<!-- End Page Cursor -->");
 out.print("</form>"); 
      out.write("<!-- EO Working Area -->");
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
