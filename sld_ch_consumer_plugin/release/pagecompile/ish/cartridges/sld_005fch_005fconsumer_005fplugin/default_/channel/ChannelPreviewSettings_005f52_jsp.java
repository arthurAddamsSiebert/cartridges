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

public final class ChannelPreviewSettings_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n<!-- Page Navigator -->\n");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 4); 
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPreviewSettings_52.DesignView.text",null)))}, 5); 
      out.write('\n');
      out.write('\n');
 URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences_52-Dispatch",null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences_52-Dispatch",null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Form:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); 
      out.write("\n\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t<tr>\n\t\t\t<td width=\"100%\" class=\"table_title w e s n\" colspan=\"4\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.designview.title")}, 11); 
      out.write("</td>\n\t\t</tr>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsChannelContext"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.designview.warning")}, 15); 
      out.write("<br/></td>\n\t\t\t</tr>\n\t\t");
 } 
      out.write("\n\t\t<tr>\n\t\t\t<td class=\"e s w\" >\n\t\t\t\t<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n\t\t\t\t\t<tr><td class=\"w e\" colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"label_checkbox\"><label class=\"label label_checkbox\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.designview.editing")}, 23); 
      out.write("</label></td>\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsChannelContext"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t<td class=\"input_checkbox\">\n\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:NoMasterPageEditing:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:NoMasterPageEditing:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value = \"true\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("MasterPageEditingPreference"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("MasterPageEditingPreference:StringValue"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t\t<label class=\"label label_checkbox_text\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:NoMasterPageEditing:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.designview.editing.disable")}, 29); 
      out.write("</label>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td></td>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t<td class=\"input_checkbox\">\n\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:ReadonlyIfFuture:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:ReadonlyIfFuture:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value = \"true\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("ReadonlyIfFuturePreference"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ReadonlyIfFuturePreference:StringValue"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td class=\"label_checkbox_text\">\n\t\t\t\t\t\t\t<label class=\"label label_checkbox_text\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:ReadonlyIfFuture:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.designview.editing.disable.future")}, 39); 
      out.write("</label>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"label_checkbox\"><label class=\"label label_checkbox\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.designview.preview")}, 43); 
      out.write("</label></td>\n\t\t\t\t\t\t<td class=\"input_checkbox\">\n\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:PreviewPastCheck:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:PreviewPastCheck:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value = \"true\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("PreviewPastCheck"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreviewPastCheck:StringValue"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td class=\"label_checkbox_text\">\n\t\t\t\t\t\t\t<label class=\"label label_checkbox_text\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PreviewSettingsForm:PreviewPastCheck:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.designview.preview.disable")}, 48); 
      out.write("</label>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr><td class=\"w e\" colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("\t\n\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t\t\t<tr>\n\t\t\t\t\t<td align=\"right\">\n\t\t\t\t\t\t<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"updateSettings\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\" class=\"button\" /></td>\n\t\t\t\t\t\t\t\t<td class=\"button\"><input type=\"reset\" name=\"resetSettings\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null));
      out.write("\" class=\"button\" /></td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t</table>\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t</table>\n\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('\n');
 out.print("</form>"); 
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "72");} 
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
