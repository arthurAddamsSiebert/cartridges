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

public final class ABTestTargetGroup_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("Object",getObject("ABTest"))}, 7); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","newabTestGeneral"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ABTestTargetGroup_52.TargetGroups.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroup_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)))),
new TagParameter("id",getObject("ABTest:UUID")),
new TagParameter("text",getObject("ABTestDisplayName"))}, 8); 
      out.write("<!-- Tabs -->");
 processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SelectedTab"),
new TagParameter("value","TargetGroup")}, 11); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/ABTestTabs_52", null, "12");} 
      out.write("<!-- EO Tabs -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e s w100\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ABTestDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTest:ContentApproved"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("&nbsp;-&nbsp;");
 processOpenTag(response, pageContext, "abtestapprovalmessage", new TagParameter[] {
new TagParameter("abtest","ABTest")}, 19); 
 } 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action606 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroup_52-DispatchConsumerGroup",null)))),null));String site606 = null;String serverGroup606 = null;String actionValue606 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroup_52-DispatchConsumerGroup",null)))),null);if (site606 == null){  site606 = action606.getDomain();  if (site606 == null)  {      site606 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup606 == null){  serverGroup606 = action606.getServerGroup();  if (serverGroup606 == null)  {      serverGroup606 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroup_52-DispatchConsumerGroup",null)))),null));out.print("\"");out.print(" name=\"");out.print("ABTestTargetGroupUserGroupsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue606, site606, serverGroup606,true)); 
      out.write("<input type=\"hidden\" name=\"ABTestUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ABTest:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title2 w e s\" colspan=\"4\">");
 {out.write(localizeISText("ABTestTargetGroup_52.CustomerSegments.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n<!-- simple delete confirmation-->\n<!-- start error handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteConsumerGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ABTestTargetGroup_52.CustomerSegmentAssignment.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteConsumerGroup"),
new TagParameter("okbtnname","deleteConsumerGroup"),
new TagParameter("type","mda")}, 37); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ABTestTargetGroup_52.CustomerSegment.subject",null))),
new TagParameter("type","mdea")}, 39); 
 } 
 } 
      out.write("<!-- end error handling -->\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ABTestTargetGroup_52.SelectOneOrMoreCustomerSegmentsAsTargetGroups.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_title_description w e s\" colspan=\"2\" width=\"100%\">");
 {out.write(localizeISText("ABTestTargetGroup_52.TheListShowsAllCustomerSegmentsCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>");
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS")),
new TagParameter("key3","AssignedCustomerSegmentBOs"),
new TagParameter("value4",getObject("CurrentSession:Locale")),
new TagParameter("value3",getObject("AssignedCustomerSegmentBOs")),
new TagParameter("key4","Locale"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","CustomerSegmentsParams")}, 57); 
 processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","marketing/customersegments/ABTestCustomerSegmentsColumns.isml"),
new TagParameter("configuration","customersegmentlist"),
new TagParameter("datatemplate","marketing/customersegments/ABTestCustomerSegmentsData.isml"),
new TagParameter("pageable",getObject("CustomerSegments")),
new TagParameter("id","CustomerSegments"),
new TagParameter("pageablename","CustomerSegments"),
new TagParameter("params",getObject("CustomerSegmentsParams"))}, 64); 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td width=\"100%\" class=\"table_detail w e s\">");
 {out.write(localizeISText("ABTestTargetGroup_52.ThereAreCurrentlyNoCustomerSegmentsAssignedToThisTest.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
 {out.write(localizeISText("ABTestTargetGroup_52.ClickAssignToAssignCustomerSegments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"newConsumerGroup\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestTargetGroup_52.Assign.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"confirmDeleteConsumerGroup\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestTargetGroup_52.Unassign.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupUserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<!-- Start Page Cursor -->");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","TargetGroupUserGroups")}, 105); 
      out.write("<!-- End Page Cursor -->");
 } 
 out.print("</form>"); 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"8\" alt=\"\" border=\"0\"/></div>");
 URLPipelineAction action607 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroup_52-DispatchAffiliate",null)))),null));String site607 = null;String serverGroup607 = null;String actionValue607 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroup_52-DispatchAffiliate",null)))),null);if (site607 == null){  site607 = action607.getDomain();  if (site607 == null)  {      site607 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup607 == null){  serverGroup607 = action607.getServerGroup();  if (serverGroup607 == null)  {      serverGroup607 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestTargetGroup_52-DispatchAffiliate",null)))),null));out.print("\"");out.print(" name=\"");out.print("AffiliateUserGroupsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue607, site607, serverGroup607,true)); 
      out.write("<input type=\"hidden\" name=\"ABTestUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ABTest:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title2 aldi\" colspan=\"4\">");
 {out.write(localizeISText("ABTestTargetGroup_52.Affiliates.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- simple delete confirmation-->\n<!-- start error handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteAffiliateGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ABTestTargetGroup_52.AffiliateGroupAssignment.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteAffiliateGroup"),
new TagParameter("okbtnname","deleteAffiliateGroup"),
new TagParameter("type","mda")}, 125); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ABTestTargetGroup_52.AffiliateGroupAssignment.subject",null))),
new TagParameter("type","mdea")}, 127); 
 } 
 } 
      out.write("<!-- end error handling -->\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ABTestTargetGroup_52.SelectOneOrMoreAffiliatePartnersOrProgramsAsTarget.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupAffiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\" width=\"80\">\n<div id=\"divAffiliateUserGroupsA\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('AffiliateUserGroupsForm','SelectedObjectUUID','divAffiliateUserGroupsA','divAffiliateUserGroupsB');\" class=\"tableheader\">");
 {out.write(localizeISText("ABTestTargetGroup_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"divAffiliateUserGroupsB\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('AffiliateUserGroupsForm','SelectedObjectUUID','divAffiliateUserGroupsA','divAffiliateUserGroupsB');\" class=\"tableheader\">");
 {out.write(localizeISText("ABTestTargetGroup_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ABTestTargetGroup_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ABTestTargetGroup_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ABTestTargetGroup_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("TargetGroupAffiliates",null,null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("TargetGroupAffiliates:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("TargetGroupAffiliates:UUID"),null));
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(TargetGroupAffiliates:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\n/>\n</td>");
 } 
      out.write("<td class=\"table_detail e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TargetGroupAffiliates:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { 
 {out.write(localizeISText("ABTestTargetGroup_52.NoDisplayNameGiven.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("TargetGroupAffiliates:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } 
      out.write("</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("TargetGroupAffiliates:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TargetGroupAffiliates:AffiliatePartner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { 
 {out.write(localizeISText("ABTestTargetGroup_52.ProgramOfPartner.table_detail",null,null,encodeString(context.getFormattedValue(getObject("TargetGroupAffiliates:AffiliatePartner:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ABTestTargetGroup_52.AffiliatePartner.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td width=\"100%\" class=\"table_detail w e s\">");
 {out.write(localizeISText("ABTestTargetGroup_52.ThereAreCurrentlyNoAffiliatePartnersOrProgramsAssi.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { 
 {out.write(localizeISText("ABTestTargetGroup_52.ClickAssignToAssignAffiliates.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_ABTESTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"newAffiliateGroup\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestTargetGroup_52.Assign.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupAffiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"confirmDeleteAffiliateGroup\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ABTestTargetGroup_52.Unassign.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetGroupAffiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<!-- Start Page Cursor -->");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","TargetGroupAffiliates")}, 231); 
      out.write("<!-- End Page Cursor -->");
 } 
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "236");} 
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