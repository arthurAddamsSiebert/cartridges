/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.app.permission;

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

public final class ApplicationPermissionSelectDRAccessRoles_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "2");} 
      out.write("<!-- Working Area -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("iterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-SelectDepartmentAccessRolesAndUpdate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("RepositoryUUID"),null))).addURLParameter(context.getFormattedValue("next2",null),context.getFormattedValue(getObject("next2"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ApplicationPermissionSelectDRAccessRoles.Step3SelectAccessPrivileges.text",null)))}, 6); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDRAccessRoles.EditAccessPrivileges.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermission-SelectAccessRoles",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PermissionType",null),context.getFormattedValue(getObject("PermissionType"),null))).addURLParameter(context.getFormattedValue("RoleName",null),context.getFormattedValue(getObject("RoleName"),null)).addURLParameter(context.getFormattedValue("RoleID",null),context.getFormattedValue(getObject("RoleID"),null)).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("RepositoryUUID"),null)))),
new TagParameter("text",getObject("RoleName"))}, 8); 
 } 
      out.write("<!-- Main Content -->");
 URLPipelineAction action330 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-DispatchDRWizard",null)))),null));String site330 = null;String serverGroup330 = null;String actionValue330 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-DispatchDRWizard",null)))),null);if (site330 == null){  site330 = action330.getDomain();  if (site330 == null)  {      site330 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup330 == null){  serverGroup330 = action330.getServerGroup();  if (serverGroup330 == null)  {      serverGroup330 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPermissionWizard-DispatchDRWizard",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue330, site330, serverGroup330,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<!-- confirmation if nothing is selected-->\n<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("next2"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" >\n<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.Step3SelectAccessPrivileges.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("next2")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("assign")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"18\" height=\"16\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.PleaseSelectAtLeastOneAccessPrivilege.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td width=\"100%\" class=\"table_title_description w e s\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.Step3Of3TheListShowsAllAvailableAccessPrivileges.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&quot;.</td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n<tr>\n<td width=\"100%\" class=\"table_title s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;-&nbsp;");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RoleName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("RoleName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RoleName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;-&nbsp;");
 }} 
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.EditAccessPrivileges.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td width=\"100%\" class=\"table_title_description\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.TheListShowsAllAvailableAccessPrivileges.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&quot;.</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AccessRoles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e s\" nowrap=\"nowrap\" width=\"80\">\n<input type=\"hidden\" name=\"RepositoryUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Repository:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("next2"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 while (loop("Iterator","iter",null)) { 
      out.write("<input type=\"hidden\" name=\"Selection_");
 {String value = null;try{value=context.getFormattedValue(getObject("iter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("iter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } else { 
      out.write("<input type=\"hidden\" name=\"RoleID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RoleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"UserID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"PermissionType\" value=\"DepartmentRole\"/>\n<input type=\"hidden\" name=\"SelectedDepartmentUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedDepartmentUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('detailForm','RoleID_','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('detailForm','RoleID_','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("AccessRoles","Role",null)) { 

								String roleID = (String)getObject("Role:ID");
								if(roleID.indexOf("_CATALOG_VIEWER")==-1){
							
      out.write("<tr>\n<td class=\"w e s center top\"><input type=\"checkbox\" name=\"RoleID_");
 {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedRoles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
 while (loop("AssignedRoles","AssignedRole",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Role:ID"),null).equals(context.getFormattedValue(getObject("AssignedRole:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } 
 } 
      out.write(" /></td>\n<td class=\"table_detail e s bold top\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Role:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Role:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n<td class=\"table_detail e s top\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Role:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");

							}
							
 } 
      out.write("<tr><td class=\"table_title2 w e s\" colspan=\"3\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.IndirectlyAssignedAccessPrivileges.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IndirectAssignedAccessRoles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"2\" class=\"table_header w s e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.IndirectlyAssignedAccessPrivileges.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s \" nowrap=\"nowrap\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.Description.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("IndirectAssignedAccessRoles","Role",null)) { 
      out.write("<tr>\n<td colspan=\"2\" class=\"table_detail w s e\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Role:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Role:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Role:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\" colspan=\"3\">");
 {out.write(localizeISText("ApplicationPermissionSelectDRAccessRoles.ThisDepartmentRoleDoesNotHaveAnyIndirectly.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("next2"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("<td align=\"left\" nowrap=\"nowrap\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input class=\"button\" type=\"submit\" name=\"back2\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDRAccessRoles.Previous.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n<td align=\"right\" nowrap=\"nowrap\" width=\"100%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"next2\" value=\"next2\"/><input type=\"submit\" name=\"assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDRAccessRoles.Finish.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDRAccessRoles.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>");
 } else { 
      out.write("<td align=\"right\" nowrap=\"nowrap\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDRAccessRoles.OK.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPermissionSelectDRAccessRoles.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>");
 } 
      out.write("</td>");
 } 
      out.write("</tr>\n</table>");
 } 
      out.write("<!-- EO Main Content -->\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("next2"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "153");} 
 } 
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
