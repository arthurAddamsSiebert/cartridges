/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.labeling;

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

public final class ObjectLabelsSelect_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Main Content -->\n<!-- Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewObjectLabels-Assign",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue(getObject("LabelObjectType"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Object:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogTypeCode",null),context.getFormattedValue(getObject("CatalogTypeCode"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.AssignLabel.text",null)))}, 6); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("CatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewObjectLabels-Assign",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue(getObject("LabelObjectType"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Object:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogTypeCode",null),context.getFormattedValue(getObject("CatalogTypeCode"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)))),
new TagParameter("text",getObject("Category:DisplayName"))}, 8); 
 }} 
      out.write("<!-- EO Page Navigator -->\n<!-- Add Labels Area -->");
 URLPipelineAction action680 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewObjectLabels-Dispatch",null)))),null));String site680 = null;String serverGroup680 = null;String actionValue680 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewObjectLabels-Dispatch",null)))),null);if (site680 == null){  site680 = action680.getDomain();  if (site680 == null)  {      site680 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup680 == null){  serverGroup680 = action680.getServerGroup();  if (serverGroup680 == null)  {      serverGroup680 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewObjectLabels-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue680, site680, serverGroup680,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"aldi table_title\">");
 {out.write(localizeISText("sld_enterprise_app.AssignLabel.text",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("LabelExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.ALabelWithThisIDAlreadyExists.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoLabelName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.PleaseProvideAnIDForTheLabel.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoElements",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedALabelUseTheCheckboxesToSelectTh.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("sld_enterprise_app.TheListShowsAllCurrentlyAvailableLabelsThatAreNotA.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table class=\"infobox n w e\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light\" for=\"LabelDisplayName\">");
 {out.write(localizeISText("sld_enterprise_app.LabelName.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"infobox_item\"><input type=\"text\" name=\"LabelDisplayName\" id=\"LabelDisplayName\" class=\"inputfield_en\" maxlength=\"400\" size=\"40\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LabelDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />&nbsp;&nbsp;</td>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_horizontal_align label_light\" for=\"LabelName\">");
 {out.write(localizeISText("sld_enterprise_app.LabelID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"infobox_item\"><input type=\"text\" name=\"LabelName\" id=\"LabelName\" class=\"inputfield_en\" maxlength=\"400\" size=\"40\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LabelName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" /></td>\n<td class=\"infobox_item\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"addLabel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Add.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedLabels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"n\">\n<tr>\n<td class=\"w e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('labelListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('labelListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.CreatedBy.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("UnassignedLabels","Label",null)) { 
      out.write("<tr>\n<td class=\"w e s center top\"><input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Label:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Label:UUID"),null).equals(context.getFormattedValue(getObject("LabelID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" /><input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Label:UUID"),null));
      out.write("\"/></td>\n<td class=\"table_detail e s top\" ><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;</td>\n<td class=\"table_detail e s top\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;</td>\n<td class=\"table_detail e s top\" >");
 {String value = null;try{value=context.getFormattedValue(getObject("Label:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s top\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s n\">\n<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("sld_enterprise_app.ThereAreNoLabelsAvailableToAssign.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedLabels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"LabelObjectType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LabelObjectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("LabelObjectType"),null) + context.getFormattedValue("ID",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Object:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"SelectedMenuItem\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
