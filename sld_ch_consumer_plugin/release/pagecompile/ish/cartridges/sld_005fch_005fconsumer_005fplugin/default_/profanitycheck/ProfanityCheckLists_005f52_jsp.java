/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.profanitycheck;

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

public final class ProfanityCheckLists_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckLists_52.ChannelPreferences.text",null)))}, 4); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckLists_52.ChannelProfanityWordDefinition.text",null)))}, 5); 
 URLPipelineAction action387 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null));String site387 = null;String serverGroup387 = null;String actionValue387 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null);if (site387 == null){  site387 = action387.getDomain();  if (site387 == null)  {      site387 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup387 == null){  serverGroup387 = action387.getServerGroup();  if (serverGroup387 == null)  {      serverGroup387 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProfanityCheckDefault");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue387, site387, serverGroup387,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\" colspan=\"2\">");
 {out.write(localizeISText("ProfanityCheckLists_52.DefaultProfanityWordDefinition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"2\">");
 {out.write(localizeISText("ProfanityCheckLists_52.ThisListShowsTheDefaultProfanityWordDefinition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DefaultAssignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\" width=\"100%\">");
 {out.write(localizeISText("ProfanityCheckLists_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail w e s\"><a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-ShowExistingList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("DefaultAssignment:ProfanityCheckConfigurationID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("DefaultAssignment:LocaleID"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("DefaultAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\" colspan=\"2\">");
 {out.write(localizeISText("ProfanityCheckLists_52.ThereIsNoDefaultProfanityWordDefinitionAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" align=\"right\" colspan=\"2\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"newDefaultList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists_52.New.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table> \n</td>\n</tr>");
 } 
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 URLPipelineAction action388 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null));String site388 = null;String serverGroup388 = null;String actionValue388 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null);if (site388 == null){  site388 = action388.getDomain();  if (site388 == null)  {      site388 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup388 == null){  serverGroup388 = action388.getServerGroup();  if (serverGroup388 == null)  {      serverGroup388 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProfanityCheckCustom");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue388, site388, serverGroup388,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w n s\" colspan=\"3\">");
 {out.write(localizeISText("ProfanityCheckLists_52.CustomProfanityWordDefinition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteCustomList"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" colspan=\"8\">\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"confirm_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("ProfanityCheckLists_52.AllSelectedCustomProfanityWordDefinitionsAreGoingToBeDeleted.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n</td>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"deleteCustomList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists_52.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td>\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"4\" height=\"0\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" id=\"messageBoxCancel\" name=\"cancelDeleteCustomList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" colspan=\"8\">\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ProfanityCheckLists_52.YouHaveNotSelectedAnyCustomProfanityWordDefinitionToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" colspan=\"3\">");
 {out.write(localizeISText("ProfanityCheckLists_52.ThisListShowsTheCustomProfanityWordDefinitions.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProfanityCheckConfigurationAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<td class=\"w e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ProfanityCheckCustom','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ProfanityCheckLists_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ProfanityCheckCustom','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ProfanityCheckLists_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write('w');
 } 
      out.write(" e s\" width=\"100%\">");
 {out.write(localizeISText("ProfanityCheckLists_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("ProfanityCheckConfigurationAssignments","ProfanityCheckConfigurationAssignment",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail top w e s center\">\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td> \n");
 } 
      out.write("<td class=\"table_detail ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { 
      out.write('w');
 } 
      out.write(" e s\"><a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-ShowExistingCustomList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\" colspan=\"3\">");
 {out.write(localizeISText("ProfanityCheckLists_52.ThereAreNoCustomProfanityWordDefinitionsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckLists_52.ToCreateANewDefinitionClickOnNew.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" align=\"right\" colspan=\"3\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"newCustomList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists_52.New.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProfanityCheckConfigurationAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"confirmDeleteCustomList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists_52.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "181");} 
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