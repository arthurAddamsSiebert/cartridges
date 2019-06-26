/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.product;

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

public final class ProductAttachmentList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "3");} 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("UpdateAttachmentEmailConfirmation.js");
 out.print("</waplacement>"); 
      out.write("<!-- Working Area -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "10");} 
      out.write("<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Attachments.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("id","ProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 14); 
 {Object temp_obj = ("Attachments"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs", null, "17");} 
      out.write("<!-- EO Page Navigator -->");
 {Object temp_obj = (getObject("ProductBO:Extension(\"Attachments\")")); getPipelineDictionary().put("ProductBOAttachments", temp_obj);} 
 URLPipelineAction action139 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-Dispatch",null)))),null));String site139 = null;String serverGroup139 = null;String actionValue139 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-Dispatch",null)))),null);if (site139 == null){  site139 = action139.getDomain();  if (site139 == null)  {      site139 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup139 == null){  serverGroup139 = action139.getServerGroup();  if (serverGroup139 == null)  {      serverGroup139 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue139, site139, serverGroup139,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"w e s table_title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<!-- delete confirmation if one is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("Additionals_Key_Iterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 {Object temp_obj = ("Do you want to delete selected attachments?"); getPipelineDictionary().put("ConfirmationMessage", temp_obj);} 
 while (loop("Additionals_Key_Iterator","Key",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductBOAttachments:Changed(Key,Locale)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 {Object temp_obj = ("Do you want to delete selected attachments? Some of them are shared and have been modified. Deleting them will revert their values to derived ones."); getPipelineDictionary().put("ConfirmationMessage", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",34);}else{getLoopStack().pop();break;} 
 } 
 } 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("iterator",getObject("Additionals_Key_Iterator")),
new TagParameter("hiddenname","Attachment"),
new TagParameter("subject","attachment"),
new TagParameter("okbtnname","delete"),
new TagParameter("message",getObject("ConfirmationMessage")),
new TagParameter("type","mdc")}, 37); 
 } 
      out.write("<!-- delete confirmation if nothing is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Additionals_Key_Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","attachment"),
new TagParameter("type","mde")}, 42); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorGetFileContent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","attachment"),
new TagParameter("type","mfn")}, 45); 
 } 
      out.write("<tr>\n<td>\n<div class=\"uknownErrorBlock\" style=\"display: none;\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("sld_enterprise_app.UknownServerError.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</div>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<!-- product locking information -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation", null, "66");} 
      out.write("<!-- end product locking information -->");
 } 
      out.write("<!-- product sharing information -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "70");} 
      out.write("<!-- end product sharing information -->\n<tr>\n<td width=\"100%\" class=\"w e table_title_description\">");
 {out.write(localizeISText("sld_enterprise_app.TheListShowsCurrentAttachments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("<br/>\n<br/>");
 {out.write(localizeISText("sld_enterprise_app.ClickNewToAddAttachmentsEGManualsOrPicturesToTheLi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale n e\">\n<tr>\n<td nowrap=\"nowrap\" class=\"label_select\"><label class=\"label label_select label_light\" for=\"LocaleId\">");
 {out.write(localizeISText("sld_enterprise_app.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td>\n<input type=\"hidden\" name=\"ProductID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<select name=\"LocaleId\" id=\"LocaleId\" class=\"select inputfield_en\">");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"refresh\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" >");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductAttachmentBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header w s center select_all\" nowrap=\"nowrap\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','Attachment','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','Attachment','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.Format.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.Email.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.Size.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.OrderConfirmationAttachment.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">&nbsp;</td>\n</tr>");
 while (loop("ProductAttachmentBOs","ac",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail w s center\">\n<input type=\"checkbox\" name=\"Attachment\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ac:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Additionals_Key_Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
 while (loop("Additionals_Key_Iterator","Selected",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("ac:Key"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",149);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail w e s left\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("KeyPrefix",null),context.getFormattedValue(getObject("ac:Key"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ac:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</td>\n<td class=\"table_detail e s left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ac:Type"),null).equals(context.getFormattedValue("Information",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.Information.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ac:Type"),null).equals(context.getFormattedValue("Contract",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.Contract.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ac:Type"),null).equals(context.getFormattedValue("Manual",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.Manual.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ac:Type"),null).equals(context.getFormattedValue("Other",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.Other.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }}}} 
      out.write("</td>\n<td class=\"table_detail e s left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:File"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:File"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("pdf",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:File"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.PDFFile.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:File"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:File"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("doc",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:File"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.WordDocument.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:File"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:File"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("xls",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:File"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.ExcelSheet.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:File"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:File"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("zip",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:File"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.ZipFile.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:File"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:File"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("gif",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:File"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.GIFImage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:File"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:File"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("jpg",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:File"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.JPEGImage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }}}}}} 
      out.write("</td>\n<td class=\"table_detail e s left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ac:InEmail"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.InEmail.yes",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("sld_enterprise_app.InEmail.no",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td class=\"table_detail e s left\">");
 processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("ac:AttachmentSize"))}, 191); 
      out.write("</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\" width=\"1%\">\n<div class=\"confirmOrderAttachmentBlock\">\n<input type=\"checkbox\" name=\"confirmOrderAttachment\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ac:InEmail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" data-product-id=\"");
      out.print(context.getFormattedValue(getObject("Product:UUID"),null));
      out.write("\" data-locale-id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" data-prefix-id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ac:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"confirmOrderAttachment\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ac:AttachmentSize")).doubleValue() >((Number)(new Double(10485760))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ac:InEmail"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { 
      out.write("checked");
 } 
      out.write(">\n</div>\n</td>\n<td class=\"table_detail e s left\" nowrap=\"nowrap\" width=\"1%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:File"),null),((Number)(new Double(4))).intValue()),null).toLowerCase()),null).equals(context.getFormattedValue("http",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { 
      out.write("<a href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ac:File"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"table_detail_link\" target=\"_blank\">");
 } else { 
 processOpenTag(response, pageContext, "contentdescriptorfile", new TagParameter[] {
new TagParameter("file","File"),
new TagParameter("contentdescriptor","ac:File")}, 202); 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("File:DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null)).addURLParameter(context.getFormattedValue("UnitName",null),context.getFormattedValue(getObject("File:UnitDomainName"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 } 
 {out.write(localizeISText("sld_enterprise_app.OpenFile.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td colspan=\"6\" class=\"table_detail aldi\">");
 {out.write(localizeISText("sld_enterprise_app.ThereAreCurrentlyNoAttachmentsToShowHereClickNewTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" colspan=\"8\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ProcessType\" value=\"New\"/>\n<input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null));
      out.write("\" class=\"button\"/>");
 } else { 
      out.write("<input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null));
      out.write("\" class=\"button\" disabled=\"disabled\"/>");
 } 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductAttachmentBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",231,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",233,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null));
      out.write("\" class=\"button\"/>");
 } else { 
      out.write("<input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null));
      out.write("\" class=\"button\" disabled=\"disabled\"/>");
 } 
      out.write("</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("<script type=\"text/javascript\">\n$(document).ready(function() { \nupdateAssignment(\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-UpdateIncludeAttachment",null)))),null));
      out.write("\")\n});\n</script>");
 processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductAttachment-List"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 253); 
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