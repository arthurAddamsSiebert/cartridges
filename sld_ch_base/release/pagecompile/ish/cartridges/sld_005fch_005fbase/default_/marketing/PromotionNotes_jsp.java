/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.marketing;

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
import java.util.HashMap;

public final class PromotionNotes_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PromotionNotes.Notes.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))))),
new TagParameter("id",getObject("Promotion:UUID")),
new TagParameter("text",getObject("Promotion:DisplayName"))}, 4); 
      out.write("<!-- Promotion Details Heading -->");
 URLPipelineAction action255 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-DispatchGeneral",null)))),null));String site255 = null;String serverGroup255 = null;String actionValue255 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-DispatchGeneral",null)))),null);if (site255 == null){  site255 = action255.getDomain();  if (site255 == null)  {      site255 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup255 == null){  serverGroup255 = action255.getServerGroup();  if (serverGroup255 == null)  {      serverGroup255 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-DispatchGeneral",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionNotesFormGeneral");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue255, site255, serverGroup255,true)); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionDetailsHeadingInc", null, "8");} 
 out.print("</form>"); 
      out.write("<!-- Tabs -->");
 {Object temp_obj = ("Notes"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionTabsInc", null, "13");} 
      out.write("<!-- EO Tabs -->\n<!-- incompleteness check-->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionIncompletenessMessage", null, "17");} 
      out.write("<!-- end incompleteness check-->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionNoteForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("PromotionNotes.NoteCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("PromotionNotes.InThisSectionNotesCanBeTaken.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionNote"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionNotes.ClickUpdateToUpdateTheNote.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PromotionNotes.ClickCreateToCreateANewNote.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 URLPipelineAction action256 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));String site256 = null;String serverGroup256 = null;String actionValue256 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null);if (site256 == null){  site256 = action256.getDomain();  if (site256 == null)  {      site256 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup256 == null){  serverGroup256 = action256.getServerGroup();  if (serverGroup256 == null)  {      serverGroup256 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionNoteForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue256, site256, serverGroup256,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"w e s\">\n<table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"128\">\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"1\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionNote"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionNotes.Edit.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 } 
 {out.write(localizeISText("PromotionNotes.Note.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>\n</td>\n<td align=\"left\" class=\"table_detail\">\n<textarea rows=\"5\" cols=\"122\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionNoteForm:Note:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionNoteForm:Note:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" placeholder=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionNotes.Notes.textarea.text",null)),null));
      out.write('"');
      out.write('>');
 
												
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionNote"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 
													
 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PromotionNoteForm:Note:Value"),null),(String)("<br/>"),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 
												
 } 
      out.write("</textarea>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table align=\"right\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionNote"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"PromotionNoteUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionNote:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<td class=\"button\">\n<input type=\"submit\" name=\"update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionNotes.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionNotes.Reset.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } else { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionNotes.Create.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PromotionNotes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
 while (loop("PromotionNotes","aPromotionNote",null)) { 
      out.write("<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"10\" border=\"0\"/></td></tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("DeletePromotionNote")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("aPromotionNote:UUID"),null).equals(context.getFormattedValue(getObject("DeletePromotionNote:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
 getPipelineDictionary().put("ThisDelete", true); 
 } else { 
 getPipelineDictionary().put("ThisDelete", false); 
 } 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" >\n<tr>\n<td class=\"table_title2 aldi\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("aPromotionNote:CreationDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 {String value = null;try{value=context.getFormattedValue(getObject("aPromotionNote:CreationDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(",&nbsp;\n");
 {out.write(localizeISText("PromotionNotes.ModifiedByUser.table_title2",null,null,encodeString(context.getFormattedValue(getObject("aPromotionNote:BasicProfilePO:AddressBook:FirstName"),null)),encodeString(context.getFormattedValue(getObject("aPromotionNote:BasicProfilePO:AddressBook:LastName"),null)),null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ThisDelete"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 URLPipelineAction action257 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));String site257 = null;String serverGroup257 = null;String actionValue257 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null);if (site257 == null){  site257 = action257.getDomain();  if (site257 == null)  {      site257 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup257 == null){  serverGroup257 = action257.getServerGroup();  if (serverGroup257 == null)  {      serverGroup257 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DeletePromotionNote");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue257, site257, serverGroup257,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PromotionNotes:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionNotes:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableName\" value=\"PromotionNotes\"/>\n<input type=\"hidden\" name=\"PageNumber\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionNotes:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"DeletePromotionNoteUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DeletePromotionNote:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("PromotionNotes.PromotionNote.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionNotes.AreYouSureYouWantToDeleteThisNote.message",null)))}, 146); 
      out.write("</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_detail e w s top\">");
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("aPromotionNote:Note"))}, 156); 
      out.write("\n&nbsp;\n</td> \n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"w e s\">");
 URLPipelineAction action258 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));String site258 = null;String serverGroup258 = null;String actionValue258 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null);if (site258 == null){  site258 = action258.getDomain();  if (site258 == null)  {      site258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup258 == null){  serverGroup258 = action258.getServerGroup();  if (serverGroup258 == null)  {      serverGroup258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("aPromotionNote:UUID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue258, site258, serverGroup258,true)); 
      out.write("<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PromotionNotes:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionNotes:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableName\" value=\"PromotionNotes\"/>\n<input type=\"hidden\" name=\"PageNumber\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionNotes:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PromotionNoteUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("aPromotionNote:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<td class=\"button\">\n<input type=\"submit\" name=\"edit\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionNotes.Edit.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionNotes.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table> \n");
 out.print("</form>"); 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td> \n<table class=\"pagecursor\" width=\"100%\">\n<tr><td>\n<!-- Start Page Cursor -->");
 URLPipelineAction action259 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));String site259 = null;String serverGroup259 = null;String actionValue259 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null);if (site259 == null){  site259 = action259.getDomain();  if (site259 == null)  {      site259 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup259 == null){  serverGroup259 = action259.getServerGroup();  if (serverGroup259 == null)  {      serverGroup259 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionNotes-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionNotePagingBarForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue259, site259, serverGroup259,true)); 
      out.write("<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewPromotionNotes-Paging"),
new TagParameter("formName","PromotionNotePagingBarForm"),
new TagParameter("pageable","PromotionNotes")}, 196); 
 out.print("</form>"); 
      out.write("<!-- EO Page Cursor -->\n</td></tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "218");} 
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
