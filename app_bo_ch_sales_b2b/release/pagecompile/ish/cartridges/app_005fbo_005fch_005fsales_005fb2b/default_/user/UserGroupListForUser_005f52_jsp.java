/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.user;

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

public final class UserGroupListForUser_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "3");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "5");} 
 {Object temp_obj = ("Segments"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 } 
 {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("user.UserGroupListForUser_52.text1.customer.segments",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null)),
new TagParameter("text",getObject("CustomerDetails:Name"))}, 14); 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "17");} 
 URLPipelineAction action22 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null));String site22 = null;String serverGroup22 = null;String actionValue22 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null);if (site22 == null){  site22 = action22.getDomain();  if (site22 == null)  {      site22 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup22 == null){  serverGroup22 = action22.getServerGroup();  if (serverGroup22 == null)  {      serverGroup22 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserGroupListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue22, site22, serverGroup22,true)); 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CustomerID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e\">\n<tbody>\n<tr>\n<td class=\"table_title s\" colspan=\"2\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(") - ");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</tbody>\n</table> \n</td>\n</tr> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer segment"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 39); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","customer segment"),
new TagParameter("type","mde")}, 41); 
 } 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("user.UserGroupListForUser_52.table_title_description.the.list.shows.all.c",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<br/>\n<br/>");
 {out.write(localizeISText("user.UserGroupListForUser_52.table_title_description.click.new.to.assign",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e\">\n<!-- Simple and advanced search -->");
 {Object temp_obj = ("ViewUserGroupListForUser_52"); getPipelineDictionary().put("SearchPipeline", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"user/UserGroupSearch_52", null, "58");} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header n e s\" width=\"1\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('UserGroupListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("customers.list.select-all","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\" width=\"1\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('UserGroupListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("customers.list.clear-all","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td> \n");
 } 
      out.write("<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByName"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("user.UserGroupListForUser_52.link.name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("false",null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("user.UserGroupListForUser_52.link.name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</td> \n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("user.UserGroupListForUser_52.table_header.id",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td> \n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("user.UserGroupListForUser_52.table_header.description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("UserGroups","UserGroup",null)) { 
 {Object temp_obj = (split(context.getFormattedValue(getObject("UserGroup:ID"),null),(String)("_"))); getPipelineDictionary().put("groupNames", temp_obj);} 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(UserGroup:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("groupNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 while (loop("groupNames","groupName",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("groupName"),null).equals(context.getFormattedValue("IG",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("groupName"),null).equals(context.getFormattedValue("HG",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
      out.write("\ndisabled\n");
 } 
 } 
 } 
      out.write(" \n/>\n</td>");
 } 
      out.write("<td class=\"table_detail e s top\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td> \n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("user.UserGroupListForUser_52.button.new",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("user.UserGroupListForUser_52.button.delete",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n</td>\n</tr>");
 } 
      out.write("<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td>\n<!-- Start Page Cursor -->");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UserGroups")}, 148); 
      out.write("<!-- End Page Cursor -->\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_detail aldi\">");
 {out.write(localizeISText("user.UserGroupListForUser_52.table_detail.no.results.found.for",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { 
      out.write("&nbsp;<i>");
 {out.write(localizeISText("user.UserGroupListForUser_52.name.or.id","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</i>&nbsp;&nbsp;\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 } 
      out.write("<br/><br/>");
 {out.write(localizeISText("user.UserGroupListForUser_52.check.the.spelling.o",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail n w e s\">");
 {out.write(localizeISText("user.UserGroupListForUser_52.table_detail.there.are.currently",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("user.UserGroupListForUser_52.table_detail.click.new.to.create",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("<tr>\n<td width=\"100%\" class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("user.UserGroupListForUser_52.button.new",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "193");} 
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