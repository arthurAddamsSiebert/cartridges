/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.subscriptions;

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

public final class SubscriptionDetails_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/hbs/Modules", null, "3");} 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/rest/Modules", null, "4");} 
 processOpenTag(response, pageContext, "hbsjavscriptlibraries", new TagParameter[] {
}, 6); 
 processOpenTag(response, pageContext, "restconfiguration", new TagParameter[] {
}, 7); 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSubscriptions-List",null))))),
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.subscription.details.link",null))),
new TagParameter("text",localizeText(context.getFormattedValue("account.subscriptions.link",null)))}, 10); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 19); 
      out.write("</div>\n<div class=\"account-wrapper\" data-testing-id=\"account-subscription-details-page\">\n<div class=\"row account-main\">\n<div class=\"col-md-3 account-nav-box\">");
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","SUBSCRIPTIONS")}, 27); 
      out.write("</div>\n<div class=\"col-md-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 32); 
      out.write("</div>\n<script type=\"text/javascript\">\n$(function() {\nsubscriptionsLocalizationProperties = {};\nsubscriptionsLocalizationProperties[RESTConfiguration.getLocale()] = {\n\"subscription.period.days\": \"");
 {out.write(localizeISText("subscription.period.days","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\"subscription.period.weeks\": \"");
 {out.write(localizeISText("subscription.period.weeks","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\"subscription.period.months\": \"");
 {out.write(localizeISText("subscription.period.months","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\"subscription.period.years\": \"");
 {out.write(localizeISText("subscription.period.years","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n};\n});\n</script>");
 processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionDetails")}, 48); 
      out.write("<div class=\"modal fade\" id=\"confirmDeactivateModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"confirmDeactivateModalLabel\">\n<div class=\"modal-dialog\">\n<div class=\"modal-content\">");
 processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionDeactivateDialog")}, 53); 
      out.write("</div>\n</div>\n</div>\n<div class=\"modal fade\" id=\"confirmActivateModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"confirmActivateModalLabel\">\n<div class=\"modal-dialog\">\n<div class=\"modal-content\">");
 processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","account/subscriptions"),
new TagParameter("name","subscriptionActivateDialog")}, 61); 
      out.write("</div>\n</div>\n</div>\n<div class=\"section clearfix\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("OrderID"),null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.subscription.details.link.back_to_order","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSubscriptions-List",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.subscription.details.link.back_to_subscriptions","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write(" \n<a class=\"pull-right\" href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.subscription.details.link.continue_shopping","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n</div>\n</div>\n</div>");
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