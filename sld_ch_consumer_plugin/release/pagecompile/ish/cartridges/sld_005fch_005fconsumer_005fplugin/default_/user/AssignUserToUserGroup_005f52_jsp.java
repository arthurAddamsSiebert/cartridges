/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.user;

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

public final class AssignUserToUserGroup_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAllExisting",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.AssignCustomerSegment.text",null)))}, 15); 
      out.write("<!-- EO Page Navigator -->");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "18");} 
      out.write("<!-- Main Content -->");
 URLPipelineAction action297 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null));String site297 = null;String serverGroup297 = null;String actionValue297 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null);if (site297 == null){  site297 = action297.getDomain();  if (site297 == null)  {      site297 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup297 == null){  serverGroup297 = action297.getServerGroup();  if (serverGroup297 == null)  {      serverGroup297 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserGroupListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue297, site297, serverGroup297,true)); 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CustomerID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e\">\n<tbody>\n<tr>\n<td class=\"table_title s\" colspan=\"2\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(") - ");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</tbody>\n</table> \n</td>\n</tr> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.CustomerSegment.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 42); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.CustomerSegment.subject",null))),
new TagParameter("type","mde")}, 44); 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserGroupAssignError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.CustomerSegment.subject",null))),
new TagParameter("type","mde2")}, 49); 
 } 
      out.write(' ');
      out.write('\n');
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.ListShowsAllExistingCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("AssignUserToUserGroup_52.UseCheckboxesAssignButtonToAssignConsumer.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e\"><!-- Simple and advanced search --> \n");
 {Object temp_obj = ("ViewUserGroupListForUser_52"); getPipelineDictionary().put("SearchPipeline", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.SimpleCustomerSegmentSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" ...</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table cellSpacing=0 cellPadding=0 border=0>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light label_error\" for=\"SearchTerm\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light\" for=\"SearchTerm\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>");
 } 
      out.write("<td>\n<input type=\"text\" name=\"SearchTerm\" id=\"SearchTerm\" maxlength=\"350\" size=\"35\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" />\n</td>\n<td>&nbsp;</td>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SearchType\" value=\"simple\" />\n<input type=\"submit\" name=\"simpleSearchForAssignment\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignUserToUserGroup_52.Find.button",null)),null));
      out.write("\" class=\"button\" /></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header aldi center\">\n<input type=\"checkbox\" name=\"kor-massSelection\" title=\"");
 {out.write(localizeISText("customers.list.select-all","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByName"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAllexistingForSimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("asc",null))).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null)).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAllexistingForSimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("desc",null))).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null)).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("UserGroups","UserGroup",null)) { 
 {Object temp_obj = (split(context.getFormattedValue(getObject("UserGroup:ID"),null),(String)("_"))); getPipelineDictionary().put("groupNames", temp_obj);} 
      out.write("<tr>\n<td class=\"w e s center\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" /> \n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 {Object temp_obj = (getObject("Clipboard:contains(UserGroup:ID)")); getPipelineDictionary().put("isGroupSelected", temp_obj);} 
 while (loop("AssignedUserGroups",null,null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("UserGroup:ID"),null).equals(context.getFormattedValue(getObject("AssignedUserGroups:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserGroup:DomainID"),null).equals(context.getFormattedValue(getObject("AssignedUserGroups:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("isGroupSelected", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",128);}else{getLoopStack().pop();break;} 
 } 
 } 
 {Object temp_obj = (getObject("isGroupSelected")); getPipelineDictionary().put("isGroupDisabled", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("groupNames") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("isGroupDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
 while (loop("groupNames","groupName",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("groupName"),null).equals(context.getFormattedValue("IG",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("isGroupDisabled", temp_obj);} 
 } 
 } 
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isGroupSelected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isGroupDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s top\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n<tr>\n<td class=\"w e s\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"assign\"\nvalue=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignUserToUserGroup_52.Assign",null)),null));
      out.write("\" class=\"button\" /></td>\n<td class=\"button\"><input type=\"submit\" name=\"cancelAssign\"\nvalue=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AssignUserToUserGroup_52.Cancel",null)),null));
      out.write("\" class=\"button\" /></td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n</td>\n</tr>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\"\nalt=\"\" border=\"0\" /></td>\n</tr>\n<tr>\n<td><!-- Start Page Cursor --> \n");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UserGroups")}, 181); 
      out.write(" \n<!-- End Page Cursor --></td>\n</tr>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_detail aldi\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.NoResultsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
      out.write("&nbsp;<i>");
 {out.write(localizeISText("AssignUserToUserGroup_52.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</i>&nbsp;&nbsp;\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 } 
      out.write("<br/><br/>");
 {out.write(localizeISText("AssignUserToUserGroup_52.CheckSpellingOrTryNewSearch",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail aldi\">");
 {out.write(localizeISText("AssignUserToUserGroup_52.ThereAreNoCustomerSegments",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td width=\"100%\" class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"cancelAssign\" value=\"Cancel\" class=\"button\" /></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("<script type=\"text/javascript\">\n$(document).delegate('input[name=kor-massSelection]', 'change', function(ev) { \n$('[name=SelectedObjectUUID]').not(':disabled').prop('checked', $(this).prop('checked') || false).trigger('change');\n});\n</script>");
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