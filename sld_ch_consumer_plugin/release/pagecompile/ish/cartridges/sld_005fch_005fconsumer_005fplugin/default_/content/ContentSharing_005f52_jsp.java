/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.content;

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

public final class ContentSharing_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} 
 processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("ContentSourceDomain"))}, 4); 
      out.write(" \n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSourceDomainID",null),context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSharing_52.AssignNewApplication.text",null)))}, 7); 
      out.write("<!-- EO Page Navigator -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n<tr>\n<td width=\"100%\" class=\"table_title\">");
 {out.write(localizeISText("ContentSharing_52.AssignNewApplication.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Create")))).booleanValue() && !((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("ContentSharing_52.YouHaveNotSelectedAnyApplicationToCreateAssignment.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n</table>");
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ContentSharing_52.TheListShowsAllApplicationsCurrentlyAvailableWhich.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title2 w e s\" colspan=\"5\">");
 {out.write(localizeISText("ContentSharing_52.Applications.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action283 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-Dispatch",null)))),null));String site283 = null;String serverGroup283 = null;String actionValue283 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-Dispatch",null)))),null);if (site283 == null){  site283 = action283.getDomain();  if (site283 == null)  {      site283 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup283 == null){  serverGroup283 = action283.getServerGroup();  if (serverGroup283 == null)  {      serverGroup283 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharing_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentSharing");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue283, site283, serverGroup283,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ApplicationsWithoutSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("key0","Application"),
new TagParameter("value7",getObject("ChannelTypes")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT_SHARING")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","SelectedItemsName"),
new TagParameter("value4","ObjectUUID"),
new TagParameter("value3","SelectedObjectUUID"),
new TagParameter("key4","AvailableItemsName"),
new TagParameter("key7","ChannelTypes"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 42); 
 processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ApplicationColumns.isml"),
new TagParameter("configuration","applistsharecontent"),
new TagParameter("datatemplate","grid/ApplicationData.isml"),
new TagParameter("pageable",getObject("ApplicationsWithoutSharedContent")),
new TagParameter("id","AppListShareContent"),
new TagParameter("pageablename","App"),
new TagParameter("params",getObject("params"))}, 52); 
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ContentSharing_52.CurrentlyThereAreNoApplicationsAvailableToAssign.table_detail",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\" class=\"w e s\" colspan=\"4\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"Create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharing_52.OK.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ApplicationsWithoutSharedContent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentSharing_52.Cancel.button",null)),null));
      out.write("\" class=\"button\" /></td>\n<input name=\"ContentSourceDomainID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("ContentSourceDomain:UUID"),null));
      out.write("\"/>\n</tr>\n</table>\n</td>\n</tr> \n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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
