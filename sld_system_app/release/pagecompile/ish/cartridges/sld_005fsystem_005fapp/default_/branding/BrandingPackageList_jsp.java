/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fsystem_005fapp.default_.branding;

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

public final class BrandingPackageList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList.Branding.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("OrganizationUUID"),null))))),
new TagParameter("id",getObject("Organization:UUID")),
new TagParameter("text",getObject("Organization:DisplayName"))}, 4); 
      out.write("<!-- EO Page Navigator -->");
 {Object temp_obj = ("Branding"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"organization/OrganizationTabs", null, "7");} 
 URLPipelineAction action29 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList-Dispatch",null)))),null));String site29 = null;String serverGroup29 = null;String actionValue29 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList-Dispatch",null)))),null);if (site29 == null){  site29 = action29.getDomain();  if (site29 == null)  {      site29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup29 == null){  serverGroup29 = action29.getServerGroup();  if (serverGroup29 == null)  {      serverGroup29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DetailBrandingPackage");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue29, site29, serverGroup29,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Organization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("confirmDeletePackage"))))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("BrandingPackageList.PleaseSelectAtLeastOneBrandingPackageToDelete.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("confirmDeletePackage"))))).booleanValue() && ((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("BrandingPackageList.DeleteAllSelectedPackages.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"deletePackage\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList.OK.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"4\" height=\"1\" alt=\"\" border=\"0\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"cancelDeletion\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("BrandingPackageList.TheListShowsTheUploadedBrandingSchemesClick.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("BrandingPackageList.TheListShowsTheUploadedBrandingSchemes.table_title_description1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</tr>");
 } 
      out.write("</table>\n<!-- all archive's table -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("BrandingPackages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\" width=\"70\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"75\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('DetailBrandingPackage','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("BrandingPackageList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"75\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('DetailBrandingPackage','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("BrandingPackageList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header e s\">");
 {out.write(localizeISText("BrandingPackageList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("BrandingPackageList.Installations.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\">");
 {out.write(localizeISText("BrandingPackageList.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("</tr>");
 while (loop("BrandingPackages","Package",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center top\">\n<input type=\"hidden\" name=\"AllObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Package:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Package:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Package:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackage-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("BrandingPackageUUID",null),context.getFormattedValue(getObject("Package:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Package:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a><br/>");
 {String value = null;try{value=context.getFormattedValue(getObject("Package:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s top\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Package:Installations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 while (loop("Package:Installations","Installation",null)) { 
      out.write("<tr>\n<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("Installation:Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("Installation:Application:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"w100\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("Installation:Application:UrlIdentifier"),null).equals(context.getFormattedValue("-",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Installation:Application:UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("Installation:Application:UrlIdentifier"),null).equals(context.getFormattedValue("-",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("Installation:Application:DisplayName"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('-');
      out.write(' ');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Installation:Application:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Installation:Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
 {out.write(localizeISText("BrandingPackageList.None.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingInstallationList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("BrandingPackageUUID",null),context.getFormattedValue(getObject("Package:UUID"),null))),null));
      out.write("\" class=\"table_detail_link2\">");
 {out.write(localizeISText("BrandingPackageList.Install.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;</td>");
 } 
      out.write("</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail e s\" colspan=\"4\">");
 {out.write(localizeISText("BrandingPackageList.NoBrandingPackagesHaveBeenUploadedYet.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input name=\"OrganizationUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("Organization:UUID"),null));
      out.write("\"/><input type=\"submit\" name=\"newPackage\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList.Upload.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("BrandingPackages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"confirmDeletePackage\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "145");} 
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
