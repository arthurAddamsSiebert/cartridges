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

public final class StoreImportSourceFiles_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-BrowseDirectory",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("StoreImportSourceFiles_52.ImportFiles.text",null)))}, 4); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e n\">\n<tr>\n<td class=\"table_title s\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.UploadImportFiles.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 URLPipelineAction action518 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null));String site518 = null;String serverGroup518 = null;String actionValue518 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null);if (site518 == null){  site518 = action518.getDomain();  if (site518 == null)  {      site518 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup518 == null){  serverGroup518 = action518.getServerGroup();  if (serverGroup518 == null)  {      serverGroup518 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("OverwriteConfirmationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue518, site518, serverGroup518,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<br/>");
 while (loop("ExistingFiles",null,null)) { 
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 } 
 {out.write(localizeISText("StoreImportSourceFiles_52.OverwriteAll.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n<td valign=\"bottom\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"FileName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"CopyFile\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("StoreImportSourceFiles_52.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td><img height=\"0\" border=\"0\" width=\"4\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/></td>\n<td class=\"button\">\n<input type=\"submit\" name=\"Paging\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("StoreImportSourceFiles_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr> \n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 URLPipelineAction action519 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null));String site519 = null;String serverGroup519 = null;String actionValue519 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null);if (site519 == null){  site519 = action519.getDomain();  if (site519 == null)  {      site519 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup519 == null){  serverGroup519 = action519.getServerGroup();  if (serverGroup519 == null)  {      serverGroup519 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue519, site519, serverGroup519,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.DeleteAllSelectedFiles.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/></td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"DeleteFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("StoreImportSourceFiles_52.OK.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"4\" height=\"0\" alt=\"\" border=\"0\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"Paging\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("StoreImportSourceFiles_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr> \n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box s\">\n<tr>\n<td class=\"\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.HaveNotSelectedAnyItemsToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n</table>\n</td>\n</tr>\n</table>");
 } 
 } 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.TableShowsStoreImportFiles.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.Files.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.SizeOfSelectedFileExceedsAllowedSize.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.SelectedFileNotBeUploadedCausedByNetworkOrNotBeStoredAtServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AcquisitionFailed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.CannotDeleteThisObject.error",null,null,encodeString(context.getFormattedValue(getObject("AcquisitionResult:ContentionResource:Name"),null)),encodeString(context.getFormattedValue(getObject("AcquisitionResult:ContentionProcess:Name"),null)),null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.HaveNotSelectedFileToUpload.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 }}}} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { 
 URLPipelineAction action520 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Upload",null)))),null));String site520 = null;String serverGroup520 = null;String actionValue520 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Upload",null)))),null);if (site520 == null){  site520 = action520.getDomain();  if (site520 == null)  {      site520 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup520 == null){  serverGroup520 = action520.getServerGroup();  if (serverGroup520 == null)  {      serverGroup520 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Upload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ImportFileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue520, site520, serverGroup520,true)); 
      out.write(" \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\"> \n<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr> \n<tr>\n<td class=\"infobox_title\" width=\"1%\" nowrap=\"nowrap\">&nbsp;");
 {out.write(localizeISText("StoreImportSourceFiles_52.UploadFile.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"left\"><input type=\"file\" name=\"File\" value=\"\" class=\"inputfield_en\" size=\"60\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"6\" height=\"1\" alt=\"\" border=\"0\"/></td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"Upload\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("StoreImportSourceFiles_52.Upload.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write(' ');
      out.write('\n');
 } 
 URLPipelineAction action521 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null));String site521 = null;String serverGroup521 = null;String actionValue521 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null);if (site521 == null){  site521 = action521.getDomain();  if (site521 == null)  {      site521 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup521 == null){  serverGroup521 = action521.getServerGroup();  if (serverGroup521 == null)  {      serverGroup521 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportFilesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue521, site521, serverGroup521,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
      out.write("<td class=\"e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div> \n</td>");
 } 
      out.write("<td class=\"table_header s\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 while (loop("Files","File",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\" width=\"1%\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(File:FullName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail w s\">");
 processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 201); 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail s\">");
 {out.write(localizeISText("StoreImportSourceFiles_52.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"ConfirmDeleteFiles\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("StoreImportSourceFiles_52.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<!-- Start Page Cursor -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 231); 
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
