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

public final class UserGroupList_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerManagement_52-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("customers.title",null)))}, 5); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupList_52-BackToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("customers.usergrouplist.breadcrumb.title",null)))}, 6); 
 URLPipelineAction action303 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupList_52-Dispatch",null)))),null));String site303 = null;String serverGroup303 = null;String actionValue303 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupList_52-Dispatch",null)))),null);if (site303 == null){  site303 = action303.getDomain();  if (site303 == null)  {      site303 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup303 == null){  serverGroup303 = action303.getServerGroup();  if (serverGroup303 == null)  {      serverGroup303 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserGroupListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue303, site303, serverGroup303,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\"><input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("ChannelRepository:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.title")}, 11); 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Clipboard:ObjectUUIDsCount"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("UserGroupList_52.CustomerSegment.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 16); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("UserGroupList_52.CustomerSegment.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 18); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("UserGroupList_52.CustomerSegment.subject",null))),
new TagParameter("type","mde")}, 20); 
 }} 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("CurrentChannel:DisplayName")),
new TagParameter("key","customers.usergrouplist.description")}, 25); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<br/>\n<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.create_or_delete.description")}, 29); 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<!-- Simple and advanced search -->");
 {Object temp_obj = ("ViewUserGroupList_52"); getPipelineDictionary().put("SearchPipeline", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"user/UserGroupSearch_52", null, "37");} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s center\">\n<input type=\"checkbox\" name=\"kor-massSelection\" title=\"");
 {out.write(localizeISText("customers.list.select-all","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n</td>");
 } 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByName"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupList_52-BySimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("asc",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null))),null));
      out.write("\" class=\"tableheader\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.header.name")}, 53); 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupList_52-BySimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("desc",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null))),null));
      out.write("\" class=\"tableheader\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.header.name")}, 55); 
      out.write("</a>");
 } 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.header.id")}, 58); 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.header.description")}, 59); 
      out.write("</td>\n</tr>");
 while (loop("UserGroups","UserGroup",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\">");
 {Object temp_obj = (split(context.getFormattedValue(getObject("UserGroup:ID"),null),(String)("_"))); getPipelineDictionary().put("groupNames", temp_obj);} 
      out.write("<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(UserGroup:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("groupNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 while (loop("groupNames","groupName",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("groupName"),null).equals(context.getFormattedValue("Everyone",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("groupName"),null).equals(context.getFormattedValue("IG",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",73);}else{getLoopStack().pop();break;} 
 } 
 } 
      out.write("\n/>\n</td>");
 } 
      out.write("<td class=\"table_detail e s top\" nowrap=\"nowrap\">\n<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroup:ID"),null)))),null));
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserGroup:Name(CurrentSession:Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserGroup:Name(LeadLocale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name(LeadLocale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.languagemissing")}, 85); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.namemissing")}, 87); 
 } 
 } 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s top\"><a class=\"table_detail_link2\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroup:ID"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;</td>\n<td class=\"table_detail e s top\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"new\" value=\"");
 {out.write(localizeISText("customers.usergrouplist.button.create","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
 {out.write(localizeISText("customers.usergrouplist.button.delete","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n</td>\n</tr>");
 } 
      out.write("<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td>\n<!-- Start Page Cursor -->");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UserGroups")}, 121); 
      out.write("<!-- End Page Cursor -->\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.search.noresult")}, 130); 
      out.write("<br/><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { 
      out.write("&nbsp;<i>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.name-or-id")}, 131); 
      out.write("</i>&nbsp;&nbsp;\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 } 
      out.write("<br/><br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.wrongsearch.description")}, 132); 
 } else { 
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.nocustomer.message")}, 134); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { 
      out.write("<br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.usergrouplist.create.description")}, 137); 
 } 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("<tr>\n<td width=\"100%\" class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"new\" value=\"");
 {out.write(localizeISText("customers.usergrouplist.button.create","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
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
