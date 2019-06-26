/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fgdpr.default_.email.gdpr.user;

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

public final class ConfirmDeletePersonalData_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 

setEncodingType("text/html"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "2");} 
      out.write("<SUBJECT>");
 {out.write(localizeISText("email.gdpr.confirm.delete.personal.data.subject",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</SUBJECT>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/Modules", null, "5");} 
      out.write("<!-- Added the e-mail style-->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailStyle", null, "8");} 
 {Object temp_obj = (getObject("PersonalDataRequestBO:Extension(\"PersonalDataRequestBODoubleOptInExtension\")")); getPipelineDictionary().put("DoubleOptInExtension", temp_obj);} 
 processOpenTag(response, pageContext, "mailheader", new TagParameter[] {
new TagParameter("ChannelName",getObject("ChannelName"))}, 12); 
      out.write("<p class=\"header\">");
 {out.write(localizeISText("email.gdpr.confirm.delete.personal.data.header","",null,getObject("ChannelName"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<div class=\"emailBody\">\n<p>");
 {out.write(localizeISText("email.gdpr.common.user.greeting","",null,getObject("PersonalDataRequestBO:RequesterName"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>");
 {out.write(localizeISText("email.gdpr.confirm.delete.personal.data.statement","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-Confirm",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("PersonalDataRequestID",null),context.getFormattedValue(getObject("PersonalDataRequestBO:ID"),null))).addURLParameter(context.getFormattedValue("Hash",null),context.getFormattedValue(getObject("DoubleOptInExtension:ConfirmationLinkHash"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("email.gdpr.confirm.request.personal.data.confirmation.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a><br />");
 {out.write(localizeISText("email.gdpr.confirm.request.personal.data.confirmation.link.expiration","",null,getObject("ApplicationBO:Configuration:Integer(\"PersonalDataConfirmationLinkExpirationPeriod\",\"(Integer)24\")"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>");
 {out.write(localizeISText("email.gdpr.confirm.request.personal.data.warning","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>");
 {out.write(localizeISText("email.gdpr.confirm.request.personal.data.confirmation.contact","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>");
 {out.write(localizeISText("email.gdpr.common.regards",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "46");} 
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