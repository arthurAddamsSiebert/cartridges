/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account;

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

public final class ApprovalList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.TRUE; } 
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "2");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/approval/Modules", null, "3");} 
 processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentDomain:DefaultApplication:Domain:DomainName")),
new TagParameter("preferencekey","EnableRecurringOrders"),
new TagParameter("type","String"),
new TagParameter("return","EnableRecurringOrders")}, 5); 
 {Object temp_obj = (((!(context.getFormattedValue(pad(context.getFormattedValue(getObject("ListCase"),null),((Number)(new Double(2))).intValue()),null).equals(context.getFormattedValue("My",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("DisplayPurchaser", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 {Object temp_obj = ("my-pending-orders-page"); getPipelineDictionary().put("pageId", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 {Object temp_obj = ("my-rejected-orders-page"); getPipelineDictionary().put("pageId", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 {Object temp_obj = ("my-approved-orders-page"); getPipelineDictionary().put("pageId", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 {Object temp_obj = ("orders-to-approve-page"); getPipelineDictionary().put("pageId", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {Object temp_obj = ("rejected-orders-page"); getPipelineDictionary().put("pageId", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 {Object temp_obj = ("approved-orders-page"); getPipelineDictionary().put("pageId", temp_obj);} 
 } else { 
 {Object temp_obj = ("list-orders-page"); getPipelineDictionary().put("pageId", temp_obj);} 
 }}}}}} 
      out.write("<div class=\"breadcrumbs row\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.pendingorders.link",null)))}, 27); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.rejectedorders.link",null)))}, 29); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.openorders.link",null)))}, 31); 
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.allrejectedorders.link",null)))}, 33); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.allapprovedorders.link",null)))}, 35); 
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.order_history.link",null)))}, 37); 
      out.write(' ');
      out.write('\n');
 }}}}}} 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 44); 
      out.write("</div>\n<div class=\"account-wrapper\" data-testing-id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pageId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<div class=\"row account-main\">\n<div class=\"col-md-3 account-nav-box\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","PENDINGORDERS")}, 53); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","REJECTEDORDERS")}, 55); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","OPENORDERS")}, 57); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","ALLREJECTEDORDERS")}, 59); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","ALLAPPROVEDORDERS")}, 61); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","MYAPPROVEDORDERS")}, 63); 
 } else { 
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
}, 65); 
 }}}}}} 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("displayApprover", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("displayApprovalDate", temp_obj);} 
 } 
      out.write("<div class=\"col-md-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 81); 
      out.write("</div>\n<div class=\"section\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.pendingorders.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.approvedorders.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("MyRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.rejectedorders.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllOpen",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.openorders.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllRejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.allrejectedorders.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListCase"),null).equals(context.getFormattedValue("AllApproved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("<h1>");
 {out.write(localizeISText("account.allapprovedorders.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 }}}}}} 
      out.write("<div>\n<h2>");
 {out.write(localizeISText("approval.list.requisitions.header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SortedApprovals") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "approvallisttable", new TagParameter[] {
new TagParameter("BasketBORepository",getObject("BasketBORepository")),
new TagParameter("IsRecurring","false"),
new TagParameter("DisplayPurchaser",getObject("DisplayPurchaser")),
new TagParameter("DataTestingID","orders-list"),
new TagParameter("Approvals",getObject("SortedApprovals")),
new TagParameter("ListCase",getObject("ListCase")),
new TagParameter("DisplayApprover",getObject("displayApprover")),
new TagParameter("DisplayApprovalDate",getObject("displayApprovalDate")),
new TagParameter("ListNavigationVO",getObject("ApprovalsListNavigationVO"))}, 102); 
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("approval.list.requisitions.no_items_message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EnableRecurringOrders")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnableRecurringOrders"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("<div>\n<h2>");
 {out.write(localizeISText("approval.list.subscriptions.header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SortedSubscriptionApprovals") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "approvallisttable", new TagParameter[] {
new TagParameter("BasketBORepository",getObject("BasketBORepository")),
new TagParameter("IsRecurring","true"),
new TagParameter("DisplayPurchaser",getObject("DisplayPurchaser")),
new TagParameter("DataTestingID","subscriptions-list"),
new TagParameter("Approvals",getObject("SortedSubscriptionApprovals")),
new TagParameter("ListCase",getObject("ListCase")),
new TagParameter("DisplayApprover",getObject("displayApprover")),
new TagParameter("DisplayApprovalDate",getObject("displayApprovalDate")),
new TagParameter("ListNavigationVO",getObject("SubscriptionsListNavigationVO"))}, 123); 
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("approval.list.subscriptions.no_items_message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>");
 } 
      out.write("</div>\n</div>\n</div>\n</div>");
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
