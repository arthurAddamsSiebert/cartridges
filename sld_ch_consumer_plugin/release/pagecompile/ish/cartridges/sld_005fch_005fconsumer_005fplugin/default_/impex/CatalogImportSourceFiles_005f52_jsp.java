/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.impex;

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

public final class CatalogImportSourceFiles_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-BrowseDirectory",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.ImportFiles.text",null))),
new TagParameter("id","importFiles")}, 4); 
      out.write("<!-- EO Page Navigator -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e n\">\n<tr>\n<td class=\"table_title s\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.UploadImportFiles.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 URLPipelineAction action512 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null));String site512 = null;String serverGroup512 = null;String actionValue512 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null);if (site512 == null){  site512 = action512.getDomain();  if (site512 == null)  {      site512 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup512 == null){  serverGroup512 = action512.getServerGroup();  if (serverGroup512 == null)  {      serverGroup512 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("OverwriteConfirmationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue512, site512, serverGroup512,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<br/>");
 while (loop("ExistingFiles",null,null)) { 
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 } 
 {out.write(localizeISText("CatalogImportSourceFiles_52.OverwriteAll.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/></td>\n<td valign=\"bottom\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"FileName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"CopyFile\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td><img height=\"0\" border=\"0\" width=\"4\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/></td>\n<td class=\"button\">\n<input type=\"submit\" name=\"Paging\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr> \n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 URLPipelineAction action513 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null));String site513 = null;String serverGroup513 = null;String actionValue513 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null);if (site513 == null){  site513 = action513.getDomain();  if (site513 == null)  {      site513 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup513 == null){  serverGroup513 = action513.getServerGroup();  if (serverGroup513 == null)  {      serverGroup513 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue513, site513, serverGroup513,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm middle\" width=\"100%\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.DeleteAllSelectedFiles.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"DeleteFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.OK.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"4\" height=\"0\" alt=\"\" border=\"0\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"Paging\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error middle\" width=\"100%\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.HaveNotSelectedAnyItemsToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.TableShowsCatalogImportFiles.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.Files.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.SizeOfSelectedFileExceedsAllowedSize.message",null)))}, 101); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.SelectedFileCouldNotBeUploadedCausedByNetwork.message",null)))}, 103); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileIsEmpty",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.SelectedFileCouldNotBeUploadedBecauseFileLengthZeroOrNotExist.message",null)))}, 105); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AcquisitionFailed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.CannotDeleteThisObject",null)),null) + context.getFormattedValue(":",null) + context.getFormattedValue(getObject("AcquisitionResult:ContentionResource:Name"),null) + context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.ItIsUsedByFollowingProcess",null)),null) + context.getFormattedValue(":",null) + context.getFormattedValue(getObject("AcquisitionResult:ContentionProcess:Name"),null))}, 107); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.YouHaveNotSelectedAFileToUpload.message",null)))}, 109); 
 }}}}} 
      out.write("</table>");
 URLPipelineAction action514 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Upload",null)))),null));String site514 = null;String serverGroup514 = null;String actionValue514 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Upload",null)))),null);if (site514 == null){  site514 = action514.getDomain();  if (site514 == null)  {      site514 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup514 == null){  serverGroup514 = action514.getServerGroup();  if (serverGroup514 == null)  {      serverGroup514 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Upload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ImportFileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue514, site514, serverGroup514,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\"> \n<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr> \n<tr>\n<td class=\"infobox_title\" width=\"1%\" nowrap=\"nowrap\">&nbsp;");
 {out.write(localizeISText("CatalogImportSourceFiles_52.UploadFile.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"left\"><input type=\"file\" name=\"File\" value=\"\" class=\"inputfield_en\" size=\"60\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"6\" height=\"1\" alt=\"\" border=\"0\"/></td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"Upload\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.Upload.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
 URLPipelineAction action515 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null));String site515 = null;String serverGroup515 = null;String actionValue515 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null);if (site515 == null){  site515 = action515.getDomain();  if (site515 == null)  {      site515 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup515 == null){  serverGroup515 = action515.getServerGroup();  if (serverGroup515 == null)  {      serverGroup515 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportFilesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue515, site515, serverGroup515,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
      out.write("<td class=\"e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div> \n</td>");
 } 
      out.write("<td class=\"table_header s\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 while (loop("Files","File",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\" width=\"1%\">\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(File:FullName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail w s\">");
 processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 174); 
      out.write("<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail s\">");
 {out.write(localizeISText("CatalogImportSourceFiles_52.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { 
      out.write("<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"ConfirmDeleteFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CatalogImportSourceFiles_52.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>");
 } 
      out.write("</tr>\n</table>");
 } 
      out.write("<!-- Start Page Cursor -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 208); 
 } 
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
