/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.replication;

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

public final class ReplicationGroupList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationGroupList.ReplicationGroups.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ReplicationTaskUUID",null),context.getFormattedValue(getObject("ReplicationTask:UUID"),null))))),
new TagParameter("id",getObject("ReplicationTask:UUID")),
new TagParameter("text",getObject("ReplicationTask:TaskID"))}, 3); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 {Object temp_obj = ("Groups"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTaskTabs", null, "9");} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action215 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-Dispatch",null)))),null));String site215 = null;String serverGroup215 = null;String actionValue215 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-Dispatch",null)))),null);if (site215 == null){  site215 = action215.getDomain();  if (site215 == null)  {      site215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup215 == null){  serverGroup215 = action215.getServerGroup();  if (serverGroup215 == null)  {      serverGroup215 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationGroupList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue215, site215, serverGroup215,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {out.write(localizeISText("ReplicationGroupList.0ReplicationGroups.table_title",null,null,encodeString(context.getFormattedValue(getObject("ReplicationTask:TaskID"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- delete confirmation-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ReplicationGroup.subject",null))),
new TagParameter("cancelbtnname","Back"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ReplicationGroupList.AreYouSureYouWantToDeleteSelectedReplicationGroups.message",null)))}, 24); 
 } 
      out.write("<!-- eo delete confirmation-->\n<!-- confirmation if nothing is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ReplicationGroup.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ReplicationGroupList.YouHaveNotSelectedAnyReplicationGroups.message",null)))}, 33); 
 } 
      out.write("<!-- eo confirmation if nothing is selected-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ReplicationTask:State"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ReplicationGroupList.SelectTheBusinessUnitDataFromListClickNewToAddData.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"w e s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ReplicationTask:State"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ReplicationTask:ReplicationGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('dispatch','SelectedReplicationGroup','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ReplicationGroupList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('dispatch','SelectedReplicationGroup','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ReplicationGroupList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ReplicationGroupList.ReplicationGroups.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ReplicationGroupList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("ReplicationTask:ReplicationGroups","groupid",null)) { 
      out.write("<tr>\n<td class=\"w e s top center\">\n<input type=\"checkbox\" name=\"SelectedReplicationGroup\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("groupid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Selection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 while (loop("Selection",null,null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selection"),null).equals(context.getFormattedValue(getObject("groupid"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",77);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
      out.write("/>\n</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\" colspan=\"2\">");
 {out.write(localizeISText("ReplicationGroupList.NoReplicationGroupsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ReplicationTaskUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ReplicationTask:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"Select\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationGroupList.New.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ReplicationTask:ReplicationGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"DefaultButton\" value=\"Select\"/>\n<input type=\"submit\" name=\"ConfirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationGroupList.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ReplicationTask:ReplicationGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ReplicationGroupList.ReplicationGroups.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ReplicationGroupList.Description.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("ReplicationTask:ReplicationGroups","groupid",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ReplicationGroupConfiguration:ReplicationGroup(groupid):ReplicationGroupDesc(CurrentSession:Locale):Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ReplicationGroupList.NoReplicationGroupsAssigned.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "142");} 
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
