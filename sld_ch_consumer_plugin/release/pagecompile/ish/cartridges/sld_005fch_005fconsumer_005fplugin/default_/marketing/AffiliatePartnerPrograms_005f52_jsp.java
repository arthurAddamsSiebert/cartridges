/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.marketing;

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

public final class AffiliatePartnerPrograms_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("AffiliatePartner:DisplayName"),null).trim()),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AffiliatePartnerPrograms_52.Programs.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartnerPrograms_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null))))),
new TagParameter("id",getObject("AffiliatePartner:UUID")),
new TagParameter("text",getObject("AffiliatePartner:DisplayName"))}, 5); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AffiliatePartnerPrograms_52.Programs.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartnerPrograms_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null))))),
new TagParameter("id",getObject("AffiliatePartner:UUID")),
new TagParameter("text",getObject("AffiliatePartner:Id"))}, 7); 
 } 
 URLPipelineAction action581 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartnerPrograms_52-Dispatch",null)))),null));String site581 = null;String serverGroup581 = null;String actionValue581 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartnerPrograms_52-Dispatch",null)))),null);if (site581 == null){  site581 = action581.getDomain();  if (site581 == null)  {      site581 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup581 == null){  serverGroup581 = action581.getServerGroup();  if (serverGroup581 == null)  {      serverGroup581 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartnerPrograms_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue581, site581, serverGroup581,true)); 
      out.write("<!-- Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartner_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartnerAddress_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Address.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliatePartnerStatistic_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Statistics.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Programs.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"AffiliatePartnerPrograms_52", null, "18");} 
      out.write("<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>\n<!-- /Tabs -->\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("AffiliatePartner:DisplayName"),null).trim()),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliatePartner:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliatePartner:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AffiliatePartnerPrograms_52.AffiliateProgram.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 37); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AffiliatePartnerPrograms_52.AffiliateProgram.subject",null))),
new TagParameter("type","mde")}, 39); 
 } 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.TheListShowsAllAffiliateProgramsForTheAffiliatePartner.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("AffiliatePrograms") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.CurrentlyNoAffiliateProgramsExistForThePartner.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AffiliatePrograms") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("<td class=\"e s\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('detailForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('detailForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header e s\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Start.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.End.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("AffiliatePrograms",null,null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AffiliatePrograms:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AffiliatePrograms:UUID"),null));
      out.write('"');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(AffiliatePrograms:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail e s\" nowrap=\"nowrap\">&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliatePrograms:UUID"),null))).addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliatePrograms:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliatePrograms:UUID"),null))).addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliatePrograms:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliatePrograms:ProgramStart"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliatePrograms:ProgramStart"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } else { 
 {out.write(localizeISText("AffiliatePartnerPrograms_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n");
 } 
      out.write("</td> \n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliatePrograms:ProgramEnd"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliatePrograms:ProgramEnd"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } else { 
 {out.write(localizeISText("AffiliatePartnerPrograms_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;\n");
 } 
      out.write("</td>");

						java.util.Date current = new java.util.Date();
						getPipelineDictionary().put("CurrentDate",current);
					
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AffiliatePrograms:Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Enabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AffiliatePartnerPrograms_52.Disabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
      out.write("</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"AffiliatePartnerUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AffiliatePartner:UUID"),null));
      out.write("\"/><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AffiliatePartnerPrograms_52.New.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AffiliatePrograms") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AffiliatePartnerPrograms_52.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AffiliatePrograms") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
      out.write("<!-- Start Page Cursor -->\n<table class=\"pagecursor\" width=\"100%\">\n<tr>");
 processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewAffiliatePartnerPrograms_52-Paging"),
new TagParameter("parametervalue",getObject("CurrentChannel:UUID")),
new TagParameter("item","affiliate programs"),
new TagParameter("formname","detailForm"),
new TagParameter("pageable","AffiliatePrograms"),
new TagParameter("parametername","ChannelID")}, 143); 
      out.write("</tr>\n</table>\n<!-- End Page Cursor -->");
 } 
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "150");} 
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
