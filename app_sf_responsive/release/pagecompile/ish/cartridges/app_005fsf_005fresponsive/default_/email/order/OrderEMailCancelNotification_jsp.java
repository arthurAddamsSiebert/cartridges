/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.email.order;

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

public final class OrderEMailCancelNotification_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"Gifting\")")); getPipelineDictionary().put("CartGifting", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("CartPayment", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("OrderPayment", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"ShippingBucket\")")); getPipelineDictionary().put("OrderShippingBucket", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayTypeName")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("OrderBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayTypeName", temp_obj);} 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "13");} 
      out.write("<subject>");
 {out.write(localizeISText("email.order_cancellation.heading",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</subject>");
 getPipelineDictionary().put("CurrentDate", new java.util.Date()); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailHeader", null, "18");} 
      out.write("<p class=\"header\">");
 {out.write(localizeISText("email.order_cancellation.heading","",null,getObject("ChannelName"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p> \n");
 {out.write(localizeISText("order.order_number.label","",null,getObject("OrderBO:DocumentNo"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO:UserBO:Title")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:UserBO:Title"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 {out.write(localizeISText("email.dear.label.title_firstname_lastname","",null,getObject("OrderBO:UserBO:Title"),getObject("OrderBO:UserBO:FirstName"),getObject("OrderBO:UserBO:LastName"),null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("email.dear.label.firstname_lastname","",null,getObject("OrderBO:UserBO:FirstName"),getObject("OrderBO:UserBO:LastName"),null,null,null,null,null,null,null,null));} 
 } 
      out.write("</p>\n<p>");
 {out.write(localizeISText("email.order_cancellation.orderCanceled.text",null,null,getObject("CurrentDate"),encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-SimpleOrderSearch",null)))),null)),null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<br />\n<p>");
 {out.write(localizeISText("email.order_confirmation.questions",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systempage.helpdesk.index.pagelet2-Page",null)))),null,null,null,null,null,null,null));} 
      out.write(" \n</p>\n<p>");
 {out.write(localizeISText("email.best_regards.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br />");
 {out.write(localizeISText("email.user_services.label",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "61");} 
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
