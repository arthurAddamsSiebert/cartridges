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

public final class ServiceConfigurationSharedItems_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n<input type=\"hidden\" name=\"ApplicationUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Application:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" readonly=\"readonly\" />\n<input type=\"hidden\" name=\"ServiceConfigurationListType\" value=\"shared\" />\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w\">\n\n\t<tr>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("formName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("ServiceConfigurationListForm",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<td class=\"table_header center e s\" width=\"80\">\n\t\t\t\t\t<a href=\"javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A1','B1');\" class=\"tableheader\" id=\"A1\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t<a href=\"javascript:selectAll('ServiceConfigurationListForm','SelectedObjectUUID','A1','B1');\" class=\"tableheader\" id=\"B1\" style=\"display: none;\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t</td>\n\t\t\t");
 } else { 
      out.write("\n\t\t\t\t<td class=\"table_header center e s\" width=\"80\">\n\t\t\t\t\t<a href=\"javascript:selectAll('ServiceConfigurationSharedListForm','SelectedObjectUUID','A1','B1');\" class=\"tableheader\" id=\"A1\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t<a href=\"javascript:selectAll('ServiceConfigurationSharedListForm','SelectedObjectUUID','A1','B1');\" class=\"tableheader\" id=\"B1\" style=\"display: none;\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t</td>\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write("\n\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.Configuration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.ServiceType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.ServiceGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t<td class=\"table_header e s\" width=\"5%\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.Sharing.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<td class=\"table_header e s\"><div class=\"center\">");
 {out.write(localizeISText("ServiceConfigurationSharedItems.Action.center",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div></td>\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write("\n\t</tr>\n\n\t");
 while (loop("SharedServiceConfigurations:ServiceConfigurationsAndGroups","ServiceEntry",null)) { 
      out.write("\n\t\t\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceEntry:Configurations:ServiceConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("\n\t\n\t\t\t");
 while (loop("ServiceEntry:Configurations:ServiceConfigurations","ServiceConfiguration",null)) { 
      out.write("\n\t\t\t\t<tr>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("\t\n\t\t\t\t\t<td class=\"e s center\">\n\t\t\t\t\t\t<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ServiceConfiguration:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write("\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ServiceConfiguration:ParentSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write(" disabled=\"disabled\" readonly=\"readonly\"");
 } 
      out.write("\n\t\t\t\t\t\t/>\n\t\t\t\t\t\t<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t</td>\n\t\t\t\t\t\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("Edit-General",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfiguration:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("Application:UUID"),null))),null));
      out.write("\">\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</a>\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(localizeText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null)),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<span class=\"error\" title=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationSharedItems.LocalizationKeyIsEmpty.title",null)),null) + context.getFormattedValue(":",null),null));
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t</span>\n\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t");
 {out.write(localizeISText(context.getFormattedValue(getObject("ServiceConfiguration:ServiceTypeKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceEntry:Group:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationStatus", null, "77");} 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t\t");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("UNSHARED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:isInUse"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t<img border=\"0\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_service_used.gif\" alt=\"");
 {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" \n\t\t\t\t\t\t\t\t\ttitle=\"");
 {out.write(localizeISText("service.state.isInUse","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<td class=\"table_detail_status e s center\">\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("itemLinkActionPipeline"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t");
 {Object temp_obj = ("ViewServiceEdit"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("showBtnSharedView")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("Edit-SharedRule",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfiguration:ID"),null)))),null));
      out.write("\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/edit_category.png\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationSharedItems.Edit.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationSharedItems.Edit.title",null)),null));
      out.write("\" border=\"0\" /></a>\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</tr>\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write('\n');
      out.write('	');
 } 
      out.write("\n</table>");
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
