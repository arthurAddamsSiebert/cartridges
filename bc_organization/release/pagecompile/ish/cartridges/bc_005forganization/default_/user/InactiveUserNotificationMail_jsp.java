/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:10:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005forganization.default_.user;

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
import com.intershop.beehive.core.capi.user.User;
import java.util.GregorianCalendar;
import java.util.Date;
import com.intershop.beehive.core.internal.environment.ServerEnvironment;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;

public final class InactiveUserNotificationMail_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
      out.write("<subject>");
 {out.write(localizeISText("user.InactiveUserNotificationMail.AccountExpirationNotification","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</subject>");

    PipelineDictionary dict = getPipelineDictionary();
    Date disablingDate = (java.util.Date)dict.get("DisablingDate");
    Date currentDate = (java.util.Date)dict.get("CurrentDate");
    Date notificationDate = (java.util.Date)dict.get("NotificationDate");
    
    GregorianCalendar disablingDateCalendar = new GregorianCalendar(disablingDate.getYear(), disablingDate
                    .getMonth(), disablingDate.getDate());
    GregorianCalendar currentDateCalendar = new GregorianCalendar(currentDate.getYear(), currentDate
                    .getMonth(), currentDate.getDate());
    long disablingDateMillis = disablingDateCalendar.getTimeInMillis();
    long currentDateMillis = currentDateCalendar.getTimeInMillis();
    long difMillis = disablingDateMillis - currentDateMillis;
    long millisPerDay = 1000 * 60 * 60 * 24;
    long days = difMillis / millisPerDay;
    dict.put("DaysToDisabling", new Long(days));


	ServerEnvironment env = ServerEnvironment.getInstance();
	String url = env.getProperty("intershop.WebServerSecureURL");
	if (url != null && !("".equals(url))) {
		dict.put("ServerURL", url);
	}
	String newMapping = env.getProperty("intershop.urlmapping.pipeline");
		if (newMapping != null && !("".equals(newMapping))) {
		dict.put("NewMapping", newMapping);
	}	
 
 {Object temp_obj = (getObject("User:Profile:Domain:Site:DomainName")); getPipelineDictionary().put("SiteName", temp_obj);} 
 {out.write(localizeISText("user.InactiveUserNotificationMail.DearYouHaveNotBeenLoggedIn1Days",null,null,encodeString(context.getFormattedValue(getObject("User:Profile:FirstName"),null)),(new Double( ((Number) getObject("InactivityPeriod")).doubleValue() -((Number) getObject("DaysToDisabling")).doubleValue())),null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("DaysToDisabling")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("user.InactiveUserNotificationMail.DuringNextCheckingTomorrow1","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("user.InactiveUserNotificationMail.Details","",null,getObject("DaysToDisabling"),null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("<br><br>\n<u><b>");
 {out.write(localizeISText("user.InactiveUserNotificationMail.Details1","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b></u> <br>");
 {out.write(localizeISText("user.InactiveUserNotificationMail.DaysToDisabling0InactivityPeriod1Days",null,null,encodeString(context.getFormattedValue(getObject("DaysToDisabling"),null)),encodeString(context.getFormattedValue(getObject("InactivityPeriod"),null)),null,null,null,null,null,null,null,null));} 
 {String value = null;try{value=context.getFormattedValue(getObject("LastActivityDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br>");
 {out.write(localizeISText("user.InactiveUserNotificationMail.DisablingDate",null,null,context.getFormattedValue(getObject("DisablingDate"),new Integer(DATE_LONG)),null,null,null,null,null,null,null,null,null));} 
      out.write("<br>\n<br>");
 {out.write(localizeISText("user.InactiveUserNotificationMail.BestRegardsTheITTeam",null,null,null,null,null,null,null,null,null,null,null,null));} 
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
