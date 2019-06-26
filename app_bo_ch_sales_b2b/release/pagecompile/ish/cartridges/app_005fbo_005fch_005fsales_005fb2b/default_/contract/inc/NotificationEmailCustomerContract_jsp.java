/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.contract.inc;

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

public final class NotificationEmailCustomerContract_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{executePipeline("ProcessContract-Preferences",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CurrentChannel",getObject("CurrentChannel"))))))),"ContractPreferencesDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 3.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContractPreferencesDict"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContractPreferencesDict:NotificationEnabled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ContractPreferencesDict:NotificationEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label\">");
 {out.write(localizeISText("contract.ContractDetails.notification.email.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Contract")))).booleanValue() && ((Boolean) getObject("Contract:NotificationSent")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {out.write(localizeISText("contract.ContractDetails.notification.email.enabled.sent.text",null,null,context.getFormattedValue(getObject("Contract:NotificationSentDate"),new Integer(DATE_INPUT)),getObject("ContractPreferencesDict:DaysBeforeNotification"),null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("contract.ContractDetails.notification.email.enabled.text",null,null,getObject("ContractPreferencesDict:DaysBeforeNotification"),null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ContractPreferencesDict:NotificationEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label\">\n<label class=\"label\">");
 {out.write(localizeISText("contract.ContractDetails.notification.email.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n</td>\n<td class=\"table_detail\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("title=\"");
 {out.write(localizeISText("contract.ContractDetails.notification.email.disabled.text.no.access.rights.title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
 } 
      out.write('>');
 {out.write(localizeISText("contract.ContractDetails.notification.email.disabled.text",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractPreferences_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));
      out.write("\" target=\"_blank\">");
 {out.write(localizeISText("contract.ContractDetails.notification.email.disabled.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
 {out.write(localizeISText("contract.ContractDetails.notification.email.disabled.link","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 }} 
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