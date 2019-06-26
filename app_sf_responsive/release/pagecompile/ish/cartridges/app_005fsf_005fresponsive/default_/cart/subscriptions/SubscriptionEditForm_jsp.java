/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.cart.subscriptions;

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

public final class SubscriptionEditForm_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
new TagParameter("excludeAccountingLib","true"),
new TagParameter("excludeDateFormatLib","true")}, 6); 
 processOpenTag(response, pageContext, "restconfiguration", new TagParameter[] {
}, 10); 
 processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentApplication:Domain:DomainName")),
new TagParameter("preferencekey","EnableRecurringOrders"),
new TagParameter("type","String"),
new TagParameter("return","EnableRecurringOrders")}, 13); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("CurrentSession:isLoggedIn"))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("EnableRecurringOrders"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnableRecurringOrders"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("UserBO:Extension(\"UserBORoleExtension\")")))).booleanValue() || !((Boolean) getObject("UserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_OCI_USER\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("<script type=\"text/javascript\">\n$(function() {\nsubscriptionsEditFormLocalizationProperties = {};\nsubscriptionsEditFormLocalizationProperties[RESTConfiguration.getLocale()] = {\n\"subscription.period.days\": \"");
 {out.write(localizeISText("subscription.period.days","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\"subscription.period.weeks\": \"");
 {out.write(localizeISText("subscription.period.weeks","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\"subscription.period.months\": \"");
 {out.write(localizeISText("subscription.period.months","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\"subscription.period.years\": \"");
 {out.write(localizeISText("subscription.period.years","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n};\n});\n</script>");
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} 
 processOpenTag(response, pageContext, "hbs", new TagParameter[] {
new TagParameter("folder","cart/subscriptions"),
new TagParameter("name","SubscriptionEditForm")}, 38); 
 processOpenTag(response, pageContext, "datepicker", new TagParameter[] {
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("input_id","CartToSubscriptionStartDate"),
new TagParameter("start_date","+0d")}, 40); 
 processOpenTag(response, pageContext, "datepicker", new TagParameter[] {
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("input_id","CartToSubscriptionEndDate"),
new TagParameter("start_date","+0d")}, 41); 
 } 
 } 
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