/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.channel;

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

public final class IncChannelApplicationInformation_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("ApplicationChannelDetails.js");
 out.print("</waplacement>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "5");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules", null, "6");} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChannelApplicationBO:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("IncChannelApplicationInformation.Details.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelMapApplication-Information",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null))).addURLParameter(context.getFormattedValue("ApplicationID",null),context.getFormattedValue(getObject("ApplicationID"),null)))),
new TagParameter("text",getObject("ChannelApplicationBO:DisplayName"))}, 10); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("IncChannelApplicationInformation.Details.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelMapApplication-Information",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null))).addURLParameter(context.getFormattedValue("ApplicationID",null),context.getFormattedValue(getObject("ApplicationID"),null)))),
new TagParameter("text",getObject("ChannelApplicationBO:ID"))}, 12); 
 } 
 {Object temp_obj = (getObject("ChannelApplicationBO:Extension(\"ManagementApplication\"):ManagementApplication")); getPipelineDictionary().put("ManagementApplicationBO", temp_obj);} 
 URLPipelineAction action3 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationSelect-Select",null)))),null));String site3 = null;String serverGroup3 = null;String actionValue3 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationSelect-Select",null)))),null);if (site3 == null){  site3 = action3.getDomain();  if (site3 == null)  {      site3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup3 == null){  serverGroup3 = action3.getServerGroup();  if (serverGroup3 == null)  {      serverGroup3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationSelect-Select",null)))),null));out.print("\"");out.print(" name=\"");out.print("ChannelBrowserDetail");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue3, site3, serverGroup3,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChannelApplicationBO:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelApplicationBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelApplicationBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"w e s\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" border=\"0\" alt=\"\"/></td></tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_text\"><label class=\"label label_text\">");
 {out.write(localizeISText("IncChannelApplicationInformation.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</label></td>\n<td class=\"table_detail\">");
 {out.write(localizeISText("IncChannelApplicationInformation.Application0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("ChannelApplicationBO:ApplicationType:ID"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_text\"><label class=\"label label_text\">");
 {out.write(localizeISText("IncChannelApplicationInformation.Created.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</label></td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelApplicationBO:PersistentObject:LastModified"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_text\"><label class=\"label label_text\">");
 {out.write(localizeISText("IncChannelApplicationInformation.Storefront.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</label></td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Repository:RepositoryDomain:Site:DefaultApplicationID"),null).equals(context.getFormattedValue(getObject("ChannelApplicationBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 {Object temp_obj = ("-"); getPipelineDictionary().put("ApplicationUrlIdentifier", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("ChannelApplicationBO:UrlIdentifier")); getPipelineDictionary().put("ApplicationUrlIdentifier", temp_obj);} 
 } 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(false,context.getFormattedValue("http",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("Default-Start",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("ChannelApplicationBO:Site:DomainName"),null),context.getFormattedValue(getObject("ChannelApplicationBO:DefaultLocale:LocaleID"),null),context.getFormattedValue(getObject("ChannelApplicationBO:DefaultCurrency:Mnemonic"),null),context.getFormattedValue(getObject("ApplicationUrlIdentifier"),null)))),null));
      out.write("\" class=\"form_link\" target=\"_blank\">");
 {out.write(localizeISText("IncChannelApplicationInformation.Preview.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ApplicationPermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Repository:OwningDomain:DomainID"),null).equals(context.getFormattedValue(getObject("OrganizationDomain:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "previewlink", new TagParameter[] {
new TagParameter("linkTitle",localizeText(context.getFormattedValue("sld_enterprise_app.PreviewDesignView.linkTitle",null))),
new TagParameter("previewURL",url(true,(new URLPipelineAction(context.getFormattedValue("EditView-Start",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("ManagementApplicationBO:UrlIdentifier"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetSiteUUID",null),context.getFormattedValue(getObject("Repository:RepositoryDomain:Site:DomainID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("Repository:UUID"),null)))),
new TagParameter("contextApplicationUUID",getObject("CurrentApplication:UUID")),
new TagParameter("contextPipeline","ViewChannelMapApplication-Information"),
new TagParameter("contextValue0",getObject("ApplicationID")),
new TagParameter("contextValue1",getObject("Repository:UUID")),
new TagParameter("linkText",localizeText(context.getFormattedValue("sld_enterprise_app.PreviewDesignView.linkText",null))),
new TagParameter("linkClass","form_link"),
new TagParameter("contextParameter0","ApplicationID"),
new TagParameter("contextParameter1","RepositoryUUID")}, 45); 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Repository:OwningDomain:UUID"),null).equals(context.getFormattedValue(getObject("CurrentOrganization:OrganizationDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_text\"><label class=\"label label_text\">");
 {out.write(localizeISText("IncChannelApplicationInformation.Administrators.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</label></td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 while (loop("Users","User","UserCounter")) { 
      out.write("<span class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("UserCounter")).doubleValue() >=((Number)(new Double(26))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("js-details-more");
 } 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("UserCounter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write(',');
      out.write(' ');
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("User:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("User:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("UserCounter")).doubleValue() >=((Number)(new Double(26))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("<br /><a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("\" class=\"form_link js-link-showall\">");
 {out.write(localizeISText("IncChannelApplicationInformation.ShowAll",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a><a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("\" class=\"form_link js-link-showless\">");
 {out.write(localizeISText("IncChannelApplicationInformation.ShowLess",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_text\"><label class=\"label label_text\">");
 {out.write(localizeISText("IncChannelApplicationInformation.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</label></td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelApplicationBO:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" border=\"0\" alt=\"\"/></td></tr>\n</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Repository:OwningDomain:UUID"),null).equals(context.getFormattedValue(getObject("CurrentOrganization:OrganizationDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("ApplicationPermissionMap:isEmpty"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\">\n<input type=\"hidden\" name=\"RedirectedFromSite\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Repository:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"RepositoryUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Repository:UUID"),null));
      out.write("\" />\n<input type=\"hidden\" name=\"ApplicationID\" value=\"");
      out.print(context.getFormattedValue(getObject("ManagementApplicationBO:ID"),null));
      out.write("\" />\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\" >\n<tr>\n<td class=\"button\"><input class=\"button\" type=\"submit\" name=\"applicationEdit\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("IncChannelApplicationInformation.ManageTheApplication.button",null)),null));
      out.write("\" /></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ApplicationState:LastButOneBreadcrumb:Link"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "103");} 
 } else { 
      out.write("<div> \n");
 URLPipelineAction action4 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null));String site4 = null;String serverGroup4 = null;String actionValue4 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null);if (site4 == null){  site4 = action4.getDomain();  if (site4 == null)  {      site4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup4 == null){  serverGroup4 = action4.getServerGroup();  if (serverGroup4 == null)  {      serverGroup4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue4, site4, serverGroup4,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"backbar_left\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"back\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("IncChannelApplicationInformation.Back.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</div>");
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
