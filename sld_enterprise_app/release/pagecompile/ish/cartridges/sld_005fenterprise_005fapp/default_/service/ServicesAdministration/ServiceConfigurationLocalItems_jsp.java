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

public final class ServiceConfigurationLocalItems_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 {Object temp_obj = (getObject("ApplicationBO:Extension(\"ApplicationBOServiceExtension\"):SharingEnabled")); getPipelineDictionary().put("IsServiceSharingEnabled", temp_obj);} 
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("itemLinkActionPipeline"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 {Object temp_obj = ("ViewService"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} 
      out.write('\n');
 } 
      out.write("\n\n<input type=\"hidden\" name=\"ServiceConfigurationListType\" value=\"local\" />\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w\">\n\t<tr>\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("\n\t\t<td class=\"table_header center e s \" width=\"80\">\n\t\t\t<a href=\"javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\" id=\"A\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t<a href=\"javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\" id=\"B\" style=\"display: none;\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t</td>\n\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.Configuration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t");
 } else { 
      out.write("\n\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.Configuration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t");
 } 
      out.write("\n\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.ServiceType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.ServiceGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t<td class=\"table_header e s\" width=\"5%\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationLocalItems.Sharing.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t");
 } 
      out.write("\n\t</tr>\n\t\n\t");
 while (loop("LocalServiceConfigurations:ServiceConfigurationsAndGroups","ServiceEntry",null)) { 
      out.write("\n\t\t\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceEntry:Configurations:ServiceConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\n\t\t\t");
 while (loop("ServiceEntry:Configurations:ServiceConfigurations","ServiceConfiguration",null)) { 
      out.write("\n\t\t\t\t<tr>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td class=\"e s center\">\n\t\t\t\t\t\t<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ServiceConfiguration:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\n\t\t\t\t\t\t/>\n\t\t\t\t\t\t<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t</td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t\t<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("Edit-General",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfiguration:ID"),null)))),null));
      out.write("\">\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t</a>\n\t\t\t\t\t</td>\n\t\t\t\t\t\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(localizeText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null)),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<span class=\"error\" title=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationLocalItems.LocalizationKeyIsEmpty.title",null)),null) + context.getFormattedValue(":",null),null));
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t</span>\n\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t");
 {out.write(localizeISText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceEntry:Group:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationStatus", null, "72");} 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t\t");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("UNSHARED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/service-shared-mandatory.gif\" alt=\"");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" \n\t\t\t\t\t\t\t\t\t\ttitle=\"");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/service-shared.gif\" alt=\"");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" \n\t\t\t\t\t\t\t\t\t\ttitle=\"");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null) + context.getFormattedValue("_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_service_used.gif\" alt=\"");
 {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" title=\"");
 {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t</td>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</tr>\n\t\t\t");
 } 
      out.write("\n\t\t\t\n\t\t");
 } 
      out.write("\n\t\t\n\t");
 } 
      out.write("\n\n</table>");
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
