/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.channel;

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

public final class ChannelNotificationPreferences_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 3); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewNotificationPreferences_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ProductNotification.text",null)))}, 4); 
 URLPipelineAction action16 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewNotificationPreferences_52-Dispatch",null)))),null));String site16 = null;String serverGroup16 = null;String actionValue16 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewNotificationPreferences_52-Dispatch",null)))),null);if (site16 == null){  site16 = action16.getDomain();  if (site16 == null)  {      site16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup16 == null){  serverGroup16 = action16.getServerGroup();  if (serverGroup16 == null)  {      serverGroup16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewNotificationPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NotificationList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue16, site16, serverGroup16,true)); 
      out.write("<input type=\"hidden\" name=\"webform-id\" value=\"NotificationSettings\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ProductNotification.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailFrom:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailFrom:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailSubject:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailSubject:isInvalid")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailTemplate:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailTemplate:isInvalid")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailDeleteTemplate:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailDeleteTemplate:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e top\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.DataCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(':');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailFrom:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailFrom:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideAValidEmailAddress.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailSubject:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailSubject:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("ChannelNotificationPreferences_52.PleaseProvideASubjectForNotificationMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailTemplate:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailTemplate:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("ChannelNotificationPreferences_52.PleaseProvideATemplateForNotificationMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailDeleteTemplate:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailDeleteTemplate:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("ChannelNotificationPreferences_52.PleaseProvideADeleteTemplateForNotificationMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("MailResult")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("MailResult"),null).equals(context.getFormattedValue("mailNotSent",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e top\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ChannelNotificationPreferences_52.TheEMailCouldNotBeSentSeeTheErrorLogFileForDetails.error",null,null,encodeString(context.getFormattedValue(getObject("ServerName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write(" \n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ChannelNotificationPreferences_52.PleaseSpecifyTheAttributesForProductNotification.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_header w e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ProductNotification.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td class=\"fielditem2\">");
 {out.write(localizeISText("ChannelNotificationPreferences_52.EmailSchedulerRuns.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("NotificationSettings:isSubmitted"))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("runNotificationAgent")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("FormNotificationJobIntervallMillis")); getPipelineDictionary().put("Interval", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("SyncRecord:Interval")); getPipelineDictionary().put("Interval", temp_obj);} 
 } 
      out.write("<td class=\"table_detail\">\n<select name=\"NotificationSettings_NotificationJobIntervall\" class=\"select inputfield_en\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(">\n<option value=\"0\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Interval")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("ChannelNotificationPreferences_52.NeverDisabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"3600000\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Interval")).doubleValue() ==((Number)(new Double(3600000))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("ChannelNotificationPreferences_52.EveryHour.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"21600000\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Interval")).doubleValue() ==((Number)(new Double(21600000))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("ChannelNotificationPreferences_52.Every6Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"86400000\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Interval")).doubleValue() ==((Number)(new Double(86400000))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("ChannelNotificationPreferences_52.EveryDay.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"604800000\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Interval")).doubleValue() ==((Number)(new Double(604800000))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("ChannelNotificationPreferences_52.EveryWeek.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n</tr>\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailFromAddress.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailFrom:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailFrom:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailFromAddress.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailFromAddress.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 }} 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"NotificationSettings_EmailFrom\" class=\"inputfield_en\" size=\"70\" \nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:EmailFrom:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductNotificationEmailFrom"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailSubject.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailSubject:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailSubject:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailSubject.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailSubject.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span> </td>");
 }} 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"NotificationSettings_EmailSubject\" class=\"inputfield_en\" size=\"70\" \nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:EmailSubject:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductNotificationEmailSubject"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailTemplate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailTemplate:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailTemplate:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailTemplate.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailTemplate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span> </td>");
 }} 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"NotificationSettings_EmailTemplate\" class=\"inputfield_en\" size=\"70\" \nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:EmailTemplate:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductNotificationEmailTemplate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td> \n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailDeleteTemplate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NotificationSettings:EmailDeleteTemplate:isMissing")).booleanValue() || ((Boolean) getObject("NotificationSettings:EmailDeleteTemplate:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailDeleteTemplate.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"20%\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.EmailDeleteTemplate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span> </td>");
 }} 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"NotificationSettings_EmailDeleteTemplate\" class=\"inputfield_en\" size=\"70\" \nvalue=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:EmailDeleteTemplate:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductNotificationEmailDeleteTemplate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"updateSettings\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\" class=\"button\" /></td>\n<td class=\"button\"><input type=\"submit\" name=\"runNotificationAgent\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelNotificationPreferences_52.RunNow.button",null)),null));
      out.write("\" class=\"button\" /></td>\n<td class=\"button\"><input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null));
      out.write("\" class=\"button\" /></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "197");} 
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
