/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:21 UTC
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

public final class ABTestGroupList_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/Modules", null, "2");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/abtest/Modules", null, "3");} 
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "marketingobjectdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Print","false"),
new TagParameter("ObjectDisplayName","ABTestDisplayName"),
new TagParameter("Object",getObject("ABTest"))}, 6); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ABTestGroupList_52.TestGroups.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroupList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)))),
new TagParameter("id",getObject("ABTest:UUID")),
new TagParameter("text",getObject("ABTestDisplayName"))}, 7); 
      out.write("<!-- Tabs -->");
 processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SelectedTab"),
new TagParameter("value","TestGroups")}, 10); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/ABTestTabs_52", null, "11");} 
      out.write("<!-- EO Tabs -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules", null, "14");} 
 URLPipelineAction action546 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroupList_52-Dispatch",null)))),null));String site546 = null;String serverGroup546 = null;String actionValue546 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroupList_52-Dispatch",null)))),null);if (site546 == null){  site546 = action546.getDomain();  if (site546 == null)  {      site546 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup546 == null){  serverGroup546 = action546.getServerGroup();  if (serverGroup546 == null)  {      serverGroup546 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroupList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("TestGroupListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue546, site546, serverGroup546,true)); 
      out.write("<input type=\"hidden\" name=\"ABTestUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ABTest:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ABTestDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTest:ContentApproved"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("&nbsp;-&nbsp;");
 processOpenTag(response, pageContext, "abtestapprovalmessage", new TagParameter[] {
new TagParameter("abtest","ABTest")}, 23); 
 } 
      out.write("</td>\n</tr>\n<!-- simple delete confirmation-->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Clipboard:ObjectUUIDsCount"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ABTestGroupList_52.TestGroup.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 30); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ABTestGroupList_52.TestGroup.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 32); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ABTestGroupList_52.TestGroup.subject",null))),
new TagParameter("type","mde")}, 34); 
 }} 
      out.write("<!-- start error handling -->");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("delete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ABTEST_NOT_DELETABLE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<tr>\n<td> \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestGroupList_52.ErrorIcon.alt",null)),null));
      out.write("\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ABTestGroupList_52.SomeOfTheSelectedGroupsCouldNotBeDeletedABTestsGroups.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(": <br/>\n<ul>\n<li>");
 {out.write(localizeISText("ABTestGroupList_52.TheABTestHasToBeInStatusPendingStartOrCompletedOr",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(": </li>\n<li>");
 {out.write(localizeISText("ABTestGroupList_52.TheABTestHasToBeDeactivatedAtLeastForTheTimeThatExceeds",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SessionTTL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<br/>\n(");
 {out.write(localizeISText("ABTestGroupList_52.Currently0Seconds",null,null,context.getFormattedValue(getObject("SessionTTL"),null),null,null,null,null,null,null,null,null,null));} 
      out.write(')');
      out.write('\n');
 } 
      out.write("</li>\n</ul>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ABTESTGROUP_NOT_DELETED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("<tr>\n<td> \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestGroupList_52.ErrorIcon.alt",null)),null));
      out.write("\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ABTestGroupList_52.SomeOfTheSelectedGroupsCouldNotBeDeletedThereSeems.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write(' ');
      out.write('\n');
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PreviewABTestError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 processOpenTag(response, pageContext, "previewerror", new TagParameter[] {
new TagParameter("previewError",getObject("PreviewABTestError"))}, 82); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("confirmPreview")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ABTestGroupUUID\" value=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ABTestGroupUUID"),null)),null));
      out.write('"');
      out.write('/');
      out.write('>');
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","ABTest"),
new TagParameter("previewMessage",getObject("confirmPreview"))}, 89); 
 }} 
      out.write("<!-- end error handling -->\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ABTestGroupList_52.TheTestGroupDefinesWhichSettingTheMembersOfTheTarget.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ABTestGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
 {out.write(localizeISText("ABTestGroupList_52.UseTheCheckboxesAndTheDeleteButtonToDeleteTestGrou.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ABTestGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('TestGroupListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ABTestGroupList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('TestGroupListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ABTestGroupList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ABTestGroupList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ABTestGroupList_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ABTestGroupList_52.OfParticipants.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ABTestGroupList_52.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("ABTestGroups","TestGroup",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("TestGroup:isControlGroup")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("TestGroup:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("TestGroup:UUID"),null));
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(TestGroup:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write('\n');
      out.write('/');
      out.write('>');
 } else { 
      out.write("\n&nbsp;\n");
 } 
      out.write("</td>");
 } 
      out.write("<td class=\"table_detail e s top\">\n<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroup_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ABTestGroupUUID",null),context.getFormattedValue(getObject("TestGroup:UUID"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("TestGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TestGroup:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
      out.write("&nbsp;");
 } 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TestGroup:Description")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("TestGroup:Description"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("TestGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("\n&nbsp;\n");
 } 
      out.write("</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("TestGroup:Ratio")).doubleValue() /((Number) new Double(100)).doubleValue())),new Integer(PERCENTAGE),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ABTest:Enabled")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("TestGroup:isControlGroup"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "previewicon", new TagParameter[] {
new TagParameter("previewURL",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroupList_52-PreviewABTestGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ABTestGroupUUID",null),context.getFormattedValue(getObject("TestGroup:UUID"),null))).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)))),
new TagParameter("contextPipeline","ViewABTestGroupList_52-ListAll"),
new TagParameter("contextValue0",getObject("ChannelID")),
new TagParameter("contextValue1",getObject("ABTestUUID")),
new TagParameter("imageTitle",localizeText(context.getFormattedValue("ABTestGroupList_52.OpenASitePreviewForThisABTestWithTheSelectedStartDate.imageTitle",null))),
new TagParameter("imageAlt",localizeText(context.getFormattedValue("ABTestGroupList_52.OpenASitePreviewForThisABTestWithTheSelectedStartDate.imageAlt",null))),
new TagParameter("contextParameter0","ChannelID"),
new TagParameter("contextParameter1","ABTestUUID")}, 184); 
 } else { 
 processOpenTag(response, pageContext, "previewicon", new TagParameter[] {
new TagParameter("previewURL",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroupList_52-PreviewABTestGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ABTestGroupUUID",null),context.getFormattedValue(getObject("TestGroup:UUID"),null))).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)))),
new TagParameter("contextPipeline","ViewABTestGroupList_52-ListAll"),
new TagParameter("contextValue0",getObject("ChannelID")),
new TagParameter("contextValue1",getObject("ABTestUUID")),
new TagParameter("imageTitle",localizeText(context.getFormattedValue("ABTestGroupList_52.OpenASitePreviewForThisABTestWithTheSelectedStartDate.imageTitle",null))),
new TagParameter("imageAlt",localizeText(context.getFormattedValue("ABTestGroupList_52.OpenASitePreviewForThisABTestWithTheSelectedStartDate.imageAlt",null))),
new TagParameter("contextParameter0","ChannelID"),
new TagParameter("contextParameter1","ABTestUUID")}, 192); 
 } 
 } 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td width=\"100%\" class=\"table_detail e s\">");
 {out.write(localizeISText("ABTestGroupList_52.ThereAreCurrentlyNoTestGroupsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",210,e);}if (_boolean_result) { 
 {out.write(localizeISText("ABTestGroupList_52.ClickNewToCreateANewTestGroup.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestGroupList_52.New.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ABTestGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestGroupList_52.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 out.print("</form>"); 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "235");} 
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