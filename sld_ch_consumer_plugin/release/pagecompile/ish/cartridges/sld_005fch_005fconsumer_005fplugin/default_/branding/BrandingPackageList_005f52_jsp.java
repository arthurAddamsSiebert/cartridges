/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.branding;

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

public final class BrandingPackageList_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- BrandingPackageList_52 -->\n<!-- Working Area -->\n<!-- Page Navigator -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "5");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Branding.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("Application:UUID"),null)))),
new TagParameter("id",getObject("Application:UUID")),
new TagParameter("text",getObject("Application:DisplayName"))}, 7); 
 {Object temp_obj = ("Branding"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"app/AppTabs.isml", null, "10");} 
 URLPipelineAction action276 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_52-Dispatch",null)))),null));String site276 = null;String serverGroup276 = null;String actionValue276 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_52-Dispatch",null)))),null);if (site276 == null){  site276 = action276.getDomain();  if (site276 == null)  {      site276 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup276 == null){  serverGroup276 = action276.getServerGroup();  if (serverGroup276 == null)  {      serverGroup276 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DetailBrandingPackage");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue276, site276, serverGroup276,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeletePackage")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"confirm_box\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("BrandingPackageList_52.Branding.subject",null))),
new TagParameter("cancelbtnname","cancelDeletion"),
new TagParameter("okbtnname","deletePackage"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("BrandingPackageList_52.DeleteAllSelectedPackages.message",null)))}, 22); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("BrandingPackageList_52.Branding.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.PleaseSelectFirstAtLeastOneBrandingInstallationToD.message",null)))}, 24); 
 } 
      out.write("</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_BrandingPackageList"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("BrandingPackageList_52.BrandingPackageCouldNotBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<br/>\n<!-- ENFINITY-12147: istext commented and the localized text added to allow tloc tagging -->\n<!-- ");
 {out.write(localizeISText(context.getFormattedValue(getObject("ERROR_BrandingPackageList"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/> -->");
 {out.write(localizeISText("BrandingPackageList_52.TheBrandingPackageIsInstalledForOtherAppsOfTheChan.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description e s w\">");
 {out.write(localizeISText("BrandingPackageList_52.TheListShowsTheUploadedBrandingSchemesForEveryBran.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<br/> ");
 {out.write(localizeISText("BrandingPackageList_52.ClickUploadToCreateANewBrandingSchemeClickDeleteTo.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n<!-- all archive's table -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("BrandingPackages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header w s\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('DetailBrandingPackage','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('DetailBrandingPackage','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header w s\">");
 {out.write(localizeISText("BrandingPackageList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("BrandingPackageList_52.Installations.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w e s\">");
 {out.write(localizeISText("BrandingPackageList_52.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("BrandingPackages","Package",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail top center w s\">\n<input type=\"hidden\" name=\"AllObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Package:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Package:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Package:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail w s top\" nowrap=\"nowrap\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackage_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("Application:UUID"),null)).addURLParameter(context.getFormattedValue("BrandingPackageUUID",null),context.getFormattedValue(getObject("Package:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Package:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a><br/>");
 {String value = null;try{value=context.getFormattedValue(getObject("Package:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Installations:get(Package:UUID)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail w s top\" nowrap=\"nowrap\">");
 while (loop("Installations:get(Package:UUID)","Installation",null)) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Installation:Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 } 
      out.write("</td>");
 } else { 
      out.write("<td class=\"table_detail w s top\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BrandingPackageList_52.None.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("<td class=\"table_detail e w s top\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingInstallationList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("Application:UUID"),null)).addURLParameter(context.getFormattedValue("BrandingPackageUUID",null),context.getFormattedValue(getObject("Package:UUID"),null))),null));
      out.write("\" class=\"table_detail_link2\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Install.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;\n");
 } 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail e w s\" colspan=\"4\">");
 {out.write(localizeISText("BrandingPackageList_52.NoBrandingPackagesHaveBeenUploadedYet.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input name=\"ChannelID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<input name=\"ApplicationUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("Application:UUID"),null));
      out.write("\"/>\n<input name=\"OrganizationUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("Organization:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"newPackage\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList_52.Upload.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("BrandingPackages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"confirmDeletePackage\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 out.print("</form>"); 
 processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ApplicationUUID"),
new TagParameter("pipeline","ViewBrandingPackageList_52-ListAll"),
new TagParameter("currentobject",getObject("Application")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","AppList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 143); 
      out.write("<!-- Start Page Cursor -->\n<!-- End Page Cursor -->");
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