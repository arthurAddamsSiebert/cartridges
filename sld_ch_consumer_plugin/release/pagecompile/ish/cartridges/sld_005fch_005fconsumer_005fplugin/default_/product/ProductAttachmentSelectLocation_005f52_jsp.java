/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.product;

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

public final class ProductAttachmentSelectLocation_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-BrowseDirectory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttachmentSelectLocation_52.SelectFile.text",null)))}, 4); 
      out.write("<!-- EO Page Navigator -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e n\">\n<tr>\n<td class=\"table_title s\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttachmentSelectLocation_52.SelectFileFromContentDirectory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RegFormLocationNotSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ProductAttachmentSelectLocation_52.FileIsMandatoryPleaseSelectAFile.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n</tr>\n</table>\n</td>\n</tr> \n");
 } 
      out.write(" \n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n<tr>\n<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("ProductAttachmentSelectLocation_52.ClickOnTheFolderNameToViewTheContentsOfFolder.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"n s w e\">\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"10\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"6\" height=\"6\" alt=\"\" border=\"0\"/></td>\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("LocaleId")),
new TagParameter("parametervalue6",getObject("ChannelID")),
new TagParameter("parametervalue5",getObject("ProcessType")),
new TagParameter("parametervalue4",getObject("RegForm_Location")),
new TagParameter("parametervalue3",getObject("RegForm_Description")),
new TagParameter("parametername1","RegForm_ContentType"),
new TagParameter("parametervalue2",getObject("RegForm_DisplayName")),
new TagParameter("parametervalue1",getObject("RegForm_ContentType")),
new TagParameter("parametername2","RegForm_DisplayName"),
new TagParameter("parametername3","RegForm_Description"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("handlerPipeline","ViewProductAttachment_52"),
new TagParameter("parametername4","RegForm_Location"),
new TagParameter("parametername5","ProcessType"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","ChannelID"),
new TagParameter("parametername7","LocaleId"),
new TagParameter("parametername8","Secure"),
new TagParameter("parametervalue8","true")}, 43); 
      out.write(' ');
      out.write('\n');
 } else { 
 processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("ChannelID")),
new TagParameter("parametervalue6",getObject("ProcessType")),
new TagParameter("parametervalue5",getObject("RegForm_Location")),
new TagParameter("parametervalue4",getObject("RegForm_Description")),
new TagParameter("parametervalue3",getObject("RegForm_DisplayName")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametervalue2",getObject("RegForm_ContentType")),
new TagParameter("parametervalue1",getObject("KeyPrefix")),
new TagParameter("parametername2","RegForm_ContentType"),
new TagParameter("parametername3","RegForm_DisplayName"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("handlerPipeline","ViewProductAttachment_52"),
new TagParameter("parametername4","RegForm_Description"),
new TagParameter("parametername5","RegForm_Location"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametername9","Secure"),
new TagParameter("parametervalue9","true"),
new TagParameter("parametervalue8",getObject("LocaleId"))}, 55); 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 URLPipelineAction action136 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null));String site136 = null;String serverGroup136 = null;String actionValue136 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null);if (site136 == null){  site136 = action136.getDomain();  if (site136 == null)  {      site136 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup136 == null){  serverGroup136 = action136.getServerGroup();  if (serverGroup136 == null)  {      serverGroup136 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttachmentSelectLocationForm_52");out.print("\"");out.print(" id=\"");out.print("ProductAttachmentSelectLocationForm_52");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue136, site136, serverGroup136,true)); 
      out.write("<input type=\"hidden\" name=\"ProductID\" value=\"");
      out.print(context.getFormattedValue(getObject("Product:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"RegForm_ContentType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RegForm_ContentType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"RegForm_DisplayName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RegForm_DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"RegForm_Description\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RegForm_Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ProcessType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProcessType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"LocaleId\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"Secure\" value=\"true\"/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"KeyPrefix\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("KeyPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"DirectoryPath\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header s\">");
 {out.write(localizeISText("ProductAttachmentSelectLocation_52.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("ProductAttachmentSelectLocation_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header w s\">");
 {out.write(localizeISText("ProductAttachmentSelectLocation_52.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 while (loop("Files","File",null)) { 
      out.write("<tr class=\"file\">\n<td class=\"table_detail center s\" width=\"1%\">\n<input type=\"radio\" name=\"RegForm_Location\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:ContentDescriptor"),null).equals(context.getFormattedValue(getObject("RegForm_Location"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n<input type=\"hidden\" name=\"tempFileSize\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n<td class=\"table_detail w s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(pad(context.getFormattedValue(getObject("File:ContentDescriptor"),null),((Number)(new Double(4))).intValue()),null).toLowerCase()),null).equals(context.getFormattedValue("http",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("<a href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"table_detail_link\" target=\"_blank\">");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment_52-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail w s\">");
 processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 102); 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail s\" colspan=\"3\">");
 {out.write(localizeISText("ProductAttachmentSelectLocation_52.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"SelectedLocation\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttachmentSelectLocation_52.OK.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
      out.write("</td>\n<td class=\"button\">\n<input type=\"hidden\" name=\"RegForm_Location\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RegForm_Location"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"CancelLocationSelection\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttachmentSelectLocation_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- Start Page Cursor -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ProcessType"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { 
      out.write("<table class=\"pagecursor\" width=\"100%\">\n<tr>");
 processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("DirectoryPath")),
new TagParameter("parametervalue6",getObject("ProcessType")),
new TagParameter("parametervalue5",getObject("RegForm_Location")),
new TagParameter("parametervalue4",getObject("RegForm_Description")),
new TagParameter("parametervalue3",getObject("RegForm_DisplayName")),
new TagParameter("parametername1","KeyPrefix"),
new TagParameter("parametervalue2",getObject("RegForm_ContentType")),
new TagParameter("parametervalue1",getObject("KeyPrefix")),
new TagParameter("parametername2","RegForm_ContentType"),
new TagParameter("parametername3","RegForm_DisplayName"),
new TagParameter("pageable","Files"),
new TagParameter("pipeline","ViewProductAttachment_52-Paging"),
new TagParameter("parametervalue10","true"),
new TagParameter("parametername4","RegForm_Description"),
new TagParameter("parametername5","RegForm_Location"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","ProcessType"),
new TagParameter("parametername7","DirectoryPath"),
new TagParameter("parametername10","Secure"),
new TagParameter("parametername8","ChannelID"),
new TagParameter("parametername9","LocaleId"),
new TagParameter("parametervalue9",getObject("LocaleId")),
new TagParameter("parametervalue8",getObject("ChannelID"))}, 145); 
      out.write("</tr>\n</table>");
 } else { 
      out.write("<table class=\"pagecursor\" width=\"100%\">\n<tr>");
 processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Product:UUID")),
new TagParameter("parametervalue7",getObject("ChannelID")),
new TagParameter("parametervalue6",getObject("DirectoryPath")),
new TagParameter("parametervalue5",getObject("ProcessType")),
new TagParameter("parametervalue4",getObject("RegForm_Location")),
new TagParameter("parametervalue3",getObject("RegForm_Description")),
new TagParameter("parametername1","RegForm_ContentType"),
new TagParameter("parametervalue2",getObject("RegForm_DisplayName")),
new TagParameter("parametervalue1",getObject("RegForm_ContentType")),
new TagParameter("parametername2","RegForm_DisplayName"),
new TagParameter("parametername3","RegForm_Description"),
new TagParameter("pageable","Files"),
new TagParameter("pipeline","ViewProductAttachment_52-Paging"),
new TagParameter("parametername4","RegForm_Location"),
new TagParameter("parametername5","ProcessType"),
new TagParameter("parametername","ProductID"),
new TagParameter("parametername6","DirectoryPath"),
new TagParameter("parametername7","ChannelID"),
new TagParameter("parametername8","LocaleId"),
new TagParameter("parametername9","Secure"),
new TagParameter("parametervalue9","true"),
new TagParameter("parametervalue8",getObject("LocaleId"))}, 163); 
      out.write("</tr>\n</table> \n");
 } 
 } 
      out.write("<script>\n$(\"");
      out.print(context.getFormattedValue("#",null));
      out.write("ProductAttachmentSelectLocationForm_52\").submit(function( event ) {\n$(\"tr.file\").each(function(i, tr) {\nvar radioButton = $(\"input:radio\", tr);\nif(radioButton.attr('checked') == 'checked')\n{\ndebugger;\nvar tempValue = $(\"input[name=tempFileSize]\", tr).attr('value');\nvar element = $('<input>').attr({\ntype: 'hidden',\nname: 'fileSize'\n}).appendTo(\"");
      out.print(context.getFormattedValue("#",null));
      out.write("ProductAttachmentSelectLocationForm_52\");\nelement.attr('value', tempValue);\n}\n});\n});\n</script>\n<!-- EO Main Content -->\n<!-- EO Working Area -->");
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