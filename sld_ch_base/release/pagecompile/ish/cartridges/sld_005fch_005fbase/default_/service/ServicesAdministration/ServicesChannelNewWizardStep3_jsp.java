/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.service.ServicesAdministration;

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

public final class ServicesChannelNewWizardStep3_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n<!-- Working Area -->\n\n");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JumpTarget",null),context.getFormattedValue("ViewChannelServiceNewWizard-UpdateConfigurationValues",null))))),
new TagParameter("wizard","true"),
new TagParameter("id","NewServiceConfiguration3"),
new TagParameter("text",localizeText(context.getFormattedValue("ServicesChannelNewWizardStep3.Step3ConfigurationSettings.text",null)))}, 5); 
      out.write("\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n\t<tr>\n\t\t<td class=\"table_title n e w s\">\n\t\t\t");
 {out.write(localizeISText("ServicesChannelNewWizardStep3.CreateServiceConfigurationSettings.table_title",null,null,encodeString(context.getFormattedValue(getObject("ServiceDefinitionTitle"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t</td>\n\t</tr>\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("FormFieldsRequired"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("FormFieldsInvalid"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("\n\t\t<tr>\n\t\t\t<td class=\"error_box e w s\">\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t\t\t\t\t<td class=\"error\" width=\"100%\">\t\t\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("FormFieldsRequired"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("ServicesChannelNewWizardStep3.PleaseFillOutAllRequiredFieldsAndClickOnNext.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("FormFieldsInvalid")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("ServicesChannelNewWizardStep3.TheFollowingEntriesAreInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n\t\t\t\t\t\t\t\t<div id=\"InvalidFields\"></div>\n\t\t\t\t\t\t\t");
 }} 
      out.write("\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t");
 } 
      out.write("\n\t\n\t<tr>\n\t\t<td class=\"table_title_description e w\">\n\t\t\t");
 {out.write(localizeISText("ServicesChannelNewWizardStep3.Step3Of4NextStepSharingRuleSelection.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>\n\t\t\t");
 {out.write(localizeISText("ServicesChannelNewWizardStep3.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t</td>\n\t</tr>\n</table>\n\n\n");
 URLPipelineAction action70 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null));String site70 = null;String serverGroup70 = null;String actionValue70 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null);if (site70 == null){  site70 = action70.getDomain();  if (site70 == null)  {      site70 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup70 == null){  serverGroup70 = action70.getServerGroup();  if (serverGroup70 == null)  {      serverGroup70 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("AddNewWizzardFormStep3:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue70, site70, serverGroup70,true)); 
      out.write("\n\t<input type=\"hidden\" name=\"AddNewWizzardFormStep3\" value=\"ServiceParametersForm\" />\n\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesNewWizardStep3_inc", null, "45");} 
      out.write("\n\t\n\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"n e w s\">\n\t\t<tr>\n\t\t\t<td>\n\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td align=\"left\">\n\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t\t\t<input name=\"step2_update\" class=\"button\" type=\"submit\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep3.Previous.button",null)),null));
      out.write("\"/>\n\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td align=\"right\">\n\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"DefaultButton\" value=\"step3_validate\"/>\n\t\t\t\t\t\t\t\t\t\t<input name=\"step3_validate\" class=\"button\" type=\"submit\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep3.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\"/>\n\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t\t\t<input name=\"cancel\" class=\"button\" type=\"submit\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServicesChannelNewWizardStep3.Cancel.button",null)),null));
      out.write("\"/>\n\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 out.print("</form>"); 
      out.write("\n<script type=\"text/javascript\">\n$(function(){\n\t$(\".select\").change(function() {\n\t\t$(\"form[name='");
 {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep3:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("']\").attr(\"action\",\"");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceNewWizard-UpdateConfigurationSettings",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value,"JavaScript");out.write(value);} 
      out.write("\").submit();\n\t});\n})\n</script>\n");
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
