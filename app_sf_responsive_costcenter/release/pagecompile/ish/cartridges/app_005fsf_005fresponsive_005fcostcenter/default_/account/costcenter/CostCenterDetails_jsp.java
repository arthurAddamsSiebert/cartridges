/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fcostcenter.default_.account.costcenter;

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

public final class CostCenterDetails_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModulesCostCenter", null, "3");} 
 processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("UserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 5); 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Start",null))))),
new TagParameter("trailtext",getObject("CostCenterBO:DisplayName")),
new TagParameter("text",localizeText(context.getFormattedValue("account.costcenter.list.title",null)))}, 8); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 13); 
      out.write("</div>\n<div class=\"account-wrapper\" data-testing-id=\"cost-center-details-page\">\n<div class=\"row account-main\">\n<div class=\"col-md-3 account-nav-box\">");
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","COSTCENTER")}, 22); 
      out.write("</div>\n<div class=\"col-md-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 28); 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("<div class=\"row\">\n<div class=\"col-xs-12\">\n<h1>");
 {String value = null;try{value=context.getFormattedValue(getObject("CostCenterBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h1>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-xs-6\">\n<h3>");
 {out.write(localizeISText("account.costcenter.details.details.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_COSTCENTER\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<div class=\"col-xs-6 text-right \">\n<a\nhref=\"\" \ndata-url=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-ShowForm",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenterBO:ID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)).addURLParameter(context.getFormattedValue("FormType",null),context.getFormattedValue("edit",null))),null));
      out.write("\" \nclass=\"btn-tool open-costcenter-modal\"\ndata-toggle=\"modal\"\ndata-quick-title=\"");
 {out.write(localizeISText("account.costcenter.details.action.edit.quicktitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n><span class=\" glyphicon glyphicon-pencil\" title=\"");
 {out.write(localizeISText("account.costcenter.details.action.edit.quicktitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"></span></a>\n</div>");
 } 
      out.write("</div>\n<div class=\"row\">\n<div class=\"col-sm-12\">\n<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\" data-testing-id=\"cost-center-details\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<dt>");
 {out.write(localizeISText("account.costcenter.form.field.no.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("CostCenterBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("<dt>");
 {out.write(localizeISText("account.costcenter.form.field.name.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("CostCenterBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO:Owner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("<dt>");
 {out.write(localizeISText("account.costcenter.form.field.manager.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {Object temp_obj = (getObject("CostCenterBO:Owner")); getPipelineDictionary().put("Owner", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Owner:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Owner:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Owner:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Owner:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Owner:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</dd>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CostCenterBO:Budget"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CostCenterBO:Budget"),null).equals(context.getFormattedValue("N/A",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<dt>");
 {out.write(localizeISText("account.costcenter.form.field.budget.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CostCenterBO:Budget"),null) + context.getFormattedValue(" / ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(context.getFormattedValue("account.costcenter.label.budget.period.",null) + context.getFormattedValue(getObject("CostCenterBO:BudgetPeriod"),null),null)),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>\n<dd class=\"hidden-xs\">");
 processOpenTag(response, pageContext, "costcenterbudgetprogressbar", new TagParameter[] {
new TagParameter("CostCenter",getObject("CostCenterBO"))}, 88); 
      out.write("</dd>");
 } 
      out.write("</dl>\n<div class=\"visible-xs\">");
 processOpenTag(response, pageContext, "costcenterbudgetprogressbar", new TagParameter[] {
new TagParameter("CostCenter",getObject("CostCenterBO"))}, 91); 
      out.write("</div>\n</div>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CostCenterBO:Owner")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CostCenterBO:Owner:ID"),null).equals(context.getFormattedValue(getObject("CurrentUser:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("<div class=\"row\">\n<div class=\"col-xs-12\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/costcenter/inc/CostCenterDetails-Orders", null, "99");} 
      out.write("</div>\n</div>");
 } 
      out.write("<div class=\"row\">\n<div class=\"col-xs-12\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/costcenter/inc/CostCenterDetails-Buyers", null, "107");} 
      out.write("</div>\n</div>\n<div class=\"row\">\n<div class=\"col-xs-12\">\n<div class=\"ish-formInfo\">\n<h4 class=\"help-block\">");
 {out.write(localizeISText("account.order.questions.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h4>\n<p class=\"help-block\">");
 {out.write(localizeISText("account.order.questions.note",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systempage.helpdesk.index.pagelet2-Page",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewContact-Start",null)))),null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>\n</div>\n</div>");
 } else { 
      out.write("<div class=\"row\">\n<div class=\"col-xs-12\">\n<p>");
 {out.write(localizeISText("account.costcenter.details.notfound","",null,getObject("CostCenterID"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>\n</div>");
 } 
      out.write("<div class=\"row\">\n<div class=\"col-xs-12\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Start",null)))),null));
      out.write("\" data-testing-id=\"back-link\">");
 {out.write(localizeISText("account.costcenter.details.back","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"modal\" id=\"general-costcenter-modal\" role=\"dialog\" aria-labelledby=\"CostCenterLabel\" aria-hidden=\"true\">\n<div class=\"modal-dialog modal-lg\">\n<div class=\"modal-content\">\n<div class=\"modal-header\">\n<button type=\"button\" class=\"close\" data-dismiss=\"modal\">\n<span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span>\n</button>\n<h2 class=\"modal-title\" id=\"modal-title-replacement\"></h2>\n</div>\n<div class=\"modal-body\">\n</div>\n</div>\n</div>\n</div>");
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
