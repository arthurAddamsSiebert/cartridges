/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.service.ServicesAdministration;

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

public final class ServicesEditSharingRules_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditSharingRules.Sharing.text1",null)),null)),
new TagParameter("listview","false"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null))))),
new TagParameter("id","ViewServiceConfiguration"),
new TagParameter("text",getObject("ServiceConfiguration:DisplayName(Locale)"))}, 4); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesEditTabs", null, "7");} 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title e w s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 URLPipelineAction action331 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Delete",null)))),null));String site331 = null;String serverGroup331 = null;String actionValue331 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Delete",null)))),null);if (site331 == null){  site331 = action331.getDomain();  if (site331 == null)  {      site331 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup331 == null){  serverGroup331 = action331.getServerGroup();  if (serverGroup331 == null)  {      serverGroup331 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Delete",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue331, site331, serverGroup331,true)); 
      out.write("<input type=\"hidden\" name=\"ServiceConfigurationID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" readonly=\"readonly\" />\n<input type=\"hidden\" name=\"DeleteJumpTarget\" value=\"ViewServiceEdit-SharingRules\" />");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","Cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("message",localizeText(context.getFormattedValue("ServicesEditSharingRules.AreYouSureThatYouWantToDeleteTheServiceConfigurati.message",null))),
new TagParameter("type","mdc")}, 21); 
 out.print("</form>"); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"error_box e w\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ServicesEditSharingRules.YouHaveNotSelectedAServiceTypeUseTheRadioButtonsTo.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("saveSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"e w s\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"\">\n<tr>\n<td class=\"notification e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"notification\" width=\"100%\">");
 {out.write(localizeISText("ServicesEditSharingRules.ChangesSavedSuccessfully.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceSharingInformation", null, "53");} 
      out.write("<tr>\n<td class=\"table_title_description e w s\">");
 {out.write(localizeISText("ServicesEditSharingRules.HereYouCanSetSharingRulesForTheServiceConfiguratio.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("isOrganizationUserPermission", temp_obj);} 
 {Object temp_obj = ("ViewServiceEdit"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesEditSharingRules_inc", null, "63");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "65");} 
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