/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.searchindex;

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
import com.intershop.beehive.configuration.capi.extension.ConfigurationContext;
import com.intershop.beehive.configuration.capi.extension.ConfigurationInformation;
import com.intershop.beehive.core.capi.configuration.ConfigurationContextFactory;
import com.intershop.beehive.core.capi.configuration.ConfigurationMgr;
import com.intershop.beehive.core.capi.domain.Domain;
import com.intershop.beehive.app.capi.App;

public final class OrganizationSearchIndexConfiguration_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",context.getFormattedValue("Search Service Configuration (",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue(")",null))}, 5); 
      out.write("<!-- EO Page Navigator -->\n<!-- Tabs -->");

	App app = getPipelineDictionary().get("CurrentApplication:App");
	String searchEngine = (String) getPipelineDictionary().get("SearchEngine");
	ConfigurationContext configurationContext = (new ConfigurationContextFactory()).createContext((Domain)getPipelineDictionary().get("MasterRepository:OwningDomain:Site"), app);
	List<ConfigurationInformation> configInfos = ConfigurationMgr.getInstance().getConfigurationInformation(searchEngine, "domain", configurationContext);
	getPipelineDictionary().put("ConfigurationInformations", configInfos);

 {Object temp_obj = ("true"); getPipelineDictionary().put("PreferenceConfigurationEditable", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationInformations"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 while (loop("ConfigurationInformations","ConfigInfo",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConfigInfo:ValueInformation") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue("PreferencePO",null).equals(context.getFormattedValue(pad(context.getFormattedValue(getObject("ConfigInfo:ValueInformation:First:Source"),null),((Number)(new Double(12))).intValue()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue("PreferenceDefinitionPO",null).equals(context.getFormattedValue(getObject("ConfigInfo:ValueInformation:First:Source"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 } else { 
 {Object temp_obj = (getObject("ConfigInfo:ValueInformation:First:Source")); getPipelineDictionary().put("ConfigurationSource", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("PreferenceConfigurationEditable", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",30);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
 } 
 URLPipelineAction action581 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexConfiguration-UpdatePreferences",null)))),null));String site581 = null;String serverGroup581 = null;String actionValue581 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexConfiguration-UpdatePreferences",null)))),null);if (site581 == null){  site581 = action581.getDomain();  if (site581 == null)  {      site581 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup581 == null){  serverGroup581 = action581.getServerGroup();  if (serverGroup581 == null)  {      serverGroup581 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexConfiguration-UpdatePreferences",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateSearchIndexPreferences");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue581, site581, serverGroup581,true)); 
      out.write("<input type=\"hidden\" name=\"ServiceConfigurationID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e s n\">");
 {out.write(localizeISText("OrganizationSearchIndexConfiguration.SearchServiceConfiguration0.table_title",null,null,encodeString(context.getFormattedValue(getObject("SearchEngine"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceConfigurationEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrganizationSearchIndexConfiguration.PleaseSpecifyTheConfigurationForTheSearchServer.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } else { 
 {out.write(localizeISText("OrganizationSearchIndexConfiguration.TheConfigurationOfThisSearchServiceIsOverridden.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<br />");
 {out.write(localizeISText("OrganizationSearchIndexConfiguration.SourceOfConfiguration0.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("ConfigurationSource"),null)),null,null,null,null,null,null,null,null,null));} 
 } 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"\nwidth=\"1\" height=\"6\" border=\"0\" alt=\"\" /></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(context.getFormattedValue("searchindex/",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue("_ServiceConfiguration",null),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue("searchindex/",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue("_ServiceConfiguration.isml",null)); getPipelineDictionary().put("template_name", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("template_name"),null), null, "63");} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"\nclass=\"w e s\">\n<tr>\n<td align=\"right\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceConfigurationEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"update\"\nvalue=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Apply.button",null)),null));
      out.write("\" class=\"button\" />");
 } else { 
      out.write("<input type=\"submit\" name=\"update\"\nvalue=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Apply.button",null)),null));
      out.write("\" class=\"button\" disabled=\"disabled\" />");
 } 
      out.write(" \n</td>\n<td class=\"button\"><input type=\"reset\" name=\"reset\"\nvalue=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Reset.button",null)),null));
      out.write("\" class=\"button\" /></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>\n<input type=\"hidden\" name=\"SearchEngine\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchEngine"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 out.print("</form>"); 
      out.write("<div class=\"sfe-dialog-hidden\"> \n");
 URLPipelineAction action582 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null));String site582 = null;String serverGroup582 = null;String actionValue582 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null);if (site582 == null){  site582 = action582.getDomain();  if (site582 == null)  {      site582 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup582 == null){  serverGroup582 = action582.getServerGroup();  if (serverGroup582 == null)  {      serverGroup582 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue582, site582, serverGroup582,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"backbar_left\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr> \n<td class=\"button\"><input type=\"submit\" name=\"back\" value=\"&lt;&lt; ");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Back.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</div>\n<!-- EO Main Content -->\n<!-- EO Working Area -->");
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
