/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.order;

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

public final class OrderExportActions_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrderExportActions_52.Actions.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportActions_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null)))),
new TagParameter("id",getObject("Config:ID")),
new TagParameter("text",getObject("Config:Name"))}, 5); 
 {Object temp_obj = ("Actions"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderExportTabs_52", null, "7");} 
      out.write("<!-- EO Page Navigator -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Config:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrderExportActions_52.SpecifyOrderAndLineItemStatusUpdatesUpon.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("OrderExportActions_52.ThisPageShowsTheConfiguredOrderAndLineIt.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n<!-- Main Content -->");
 URLPipelineAction action628 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportActions_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null))),null));String site628 = null;String serverGroup628 = null;String actionValue628 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportActions_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null))),null);if (site628 == null){  site628 = action628.getDomain();  if (site628 == null)  {      site628 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup628 == null){  serverGroup628 = action628.getServerGroup();  if (serverGroup628 == null)  {      serverGroup628 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportActions_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null))),null));out.print("\"");out.print(" name=\"");out.print("OrderExport");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue628, site628, serverGroup628,true)); 
      out.write(" \n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_title2 s\">");
 {out.write(localizeISText("OrderExportActions_52.OrderStatusUpdate.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"input_checkbox\" nowrap=\"nowrap\" width=\"10\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("<input id=\"OrderStatusUpdateNew\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:NewToInProgress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:NewToInProgress:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input id=\"OrderStatusUpdateNew\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:NewToInProgress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:NewToInProgress:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(" disabled=\"disabled\"/>");
 } 
      out.write("</td>\n<td class=\"label_checkbox_text\" nowrap=\"nowrap\" >\n<label class=\"label label_checkbox_text\" for=\"OrderStatusUpdateNew\">");
 {out.write(localizeISText("OrderExportActions_52.NewInProgress.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n<tr>\n<td class=\"input_checkbox\" nowrap=\"nowrap\" >");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<input id=\"OrderStatusUpdateCanceled\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:CanceledToCanceledExported:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:CanceledToCanceledExported:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input id=\"OrderStatusUpdateCanceled\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:CanceledToCanceledExported:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:CanceledToCanceledExported:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(" disabled=\"disabled\"/>");
 } 
      out.write("</td>\n<td class=\"label_checkbox_text\" nowrap=\"nowrap\" >\n<label class=\"label label_checkbox_text\" for=\"OrderStatusUpdateCanceled\">");
 {out.write(localizeISText("OrderExportActions_52.CanceledCanceledAndExported.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr> \n<tr>\n<td class=\"input_checkbox\" nowrap=\"nowrap\" >");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("<input id=\"OrderStatusExportFailed\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:ExportFailedToInProgress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:ExportFailedToInProgress:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input id=\"OrderStatusExportFailed\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:ExportFailedToInProgress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:ExportFailedToInProgress:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(" disabled=\"disabled\"/>");
 } 
      out.write("</td>\n<td class=\"label_checkbox_text\" nowrap=\"nowrap\" >\n<label class=\"label label_checkbox_text\" for=\"OrderStatusExportFailed\">");
 {out.write(localizeISText("OrderExportActions_52.ExportFailedInProgress.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr> \n</table>\n</td> \n</tr>\n<tr>\n<td class=\"table_title2 s\">");
 {out.write(localizeISText("OrderExportActions_52.LineItemStatusUpdate.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"input_checkbox\" nowrap=\"nowrap\" width=\"10\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("<input id=\"LineItemStatusUpdateNew\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:LINewToInProgress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:LINewToInProgress:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input id=\"LineItemStatusUpdateNew\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:LINewToInProgress:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:LINewToInProgress:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(" disabled=\"disabled\"/>");
 } 
      out.write("</td>\n<td class=\"label_checkbox_text\" nowrap=\"nowrap\" >\n<label class=\"label label_checkbox_text\" for=\"LineItemStatusUpdateNew\">");
 {out.write(localizeISText("OrderExportActions_52.NewInProgress.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr>\n<tr>\n<td class=\"input_checkbox\" nowrap=\"nowrap\" >");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<input id=\"LineItemStatusUpdateCanceled\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:LICanceledToCanceledExported:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:LICanceledToCanceledExported:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input id=\"LineItemStatusUpdateCanceled\" type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Form:LICanceledToCanceledExported:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:LICanceledToCanceledExported:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(" disabled=\"disabled\"/>");
 } 
      out.write("</td>\n<td class=\"label_checkbox_text\" nowrap=\"nowrap\" >\n<label class=\"label label_checkbox_text\" for=\"LineItemStatusUpdateCanceled\">");
 {out.write(localizeISText("OrderExportActions_52.CanceledCanceledAndExported.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n</tr> \n</table>\n</td> \n</tr> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" >\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input class=\"button\" type=\"submit\" name=\"update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("OrderExportActions_52.Apply.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input class=\"button\" type=\"submit\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("OrderExportActions_52.Reset.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "122");} 
      out.write("<!-- EO Working Area -->");
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