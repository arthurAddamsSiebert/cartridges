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

public final class ChannelJournalLifetimePreference_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 3); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewJournalLifetimePreferences_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ProductHistory.text",null)))}, 4); 
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 URLPipelineAction action25 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewJournalLifetimePreferences_52-Dispatch",null)))),null));String site25 = null;String serverGroup25 = null;String actionValue25 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewJournalLifetimePreferences_52-Dispatch",null)))),null);if (site25 == null){  site25 = action25.getDomain();  if (site25 == null)  {      site25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup25 == null){  serverGroup25 = action25.getServerGroup();  if (serverGroup25 == null)  {      serverGroup25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewJournalLifetimePreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateJournalLifetimePreferenceForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue25, site25, serverGroup25,true)); 
      out.write("<input name=\"webform-id\" type=\"hidden\" value=\"RegFormUpdateDomainPreference\"/>\n<!-- Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e s n\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ProductHistory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:JournalLifetime:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ChannelJournalLifetimePreference_52.PleaseSpecifyAValidMaximumLifetimeOnlyPositiveInte.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ChannelJournalLifetimePreference_52.ActivateOrDeactivateTheProductHistoryIfActivatedDe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"w e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" border=\"0\" alt=\"\"/></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write(" \n<input type=\"radio\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalState:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"0\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Form:JournalState:Value")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 {out.write(localizeISText("sld_ch_consumer_plugin.DeactivateProductHistory.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<input type=\"radio\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalState:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"0\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Form:JournalState:Value")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" disabled=\"disabled\"/>");
 {out.write(localizeISText("sld_ch_consumer_plugin.DeactivateProductHistory.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalState:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"1\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Form:JournalState:Value")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write('/');
      out.write('>');
 {out.write(localizeISText("sld_ch_consumer_plugin.ActivateProductHistory.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<input type=\"radio\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalState:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"1\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Form:JournalState:Value")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" disabled=\"disabled\"/>");
 {out.write(localizeISText("sld_ch_consumer_plugin.ActivateProductHistory.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail\" nowrap=\"nowrap\">\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
 {out.write(localizeISText("ChannelJournalLifetimePreference_52.LifetimeOfAProductHistoryEntry.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;&nbsp;&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write(" \n<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalLifetime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" size=\"5\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalLifetime:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />&nbsp;");
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalLifetime:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" size=\"5\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:JournalLifetime:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" disabled=\"disabled\"/>&nbsp;");
 {out.write(localizeISText("sld_ch_consumer_plugin.Hours.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"5\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "101");} 
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
