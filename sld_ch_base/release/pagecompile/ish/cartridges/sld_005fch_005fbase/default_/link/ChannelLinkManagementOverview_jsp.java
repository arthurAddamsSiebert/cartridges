/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.link;

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

public final class ChannelLinkManagementOverview_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} 
 processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 5); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelLinkManagementOverview.Marketing.text",null)))}, 7); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkManagement-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelLinkManagementOverview.LinkManagement.text",null)))}, 8); 
      out.write("<!-- start page navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td colspan=\"5\" class=\"overview_title\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.LinkManagement.overview_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"5\" class=\"table_title_description\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.UseTheModulesBelowToSetUpManageGroupAndExport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>&nbsp;</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHORTLINKS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SHORTLINKS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinks-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.ShortLinks.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.ManageTheShortLinksOfThisChannel.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 36); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("</tr>\n<tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHORTLINKS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SHORTLINKS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroups-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.LinkGroups.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.ManageShortLinkGroupsAndAssignLinks.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 65); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("</tr>\n<tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHORTLINKS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<td width=\"50%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"overview_arrow\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/arrow_right_down.gif\" width=\"9\" height=\"9\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_subtitle\" nowrap=\"nowrap\" width=\"100%\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));
      out.write("\" class=\"overview_subtitle\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.ImportExport.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_title_description\" valign=\"top\">");
 {out.write(localizeISText("ChannelLinkManagementOverview.ImportAndExportLinksAndURLsOfThisChannel.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"2\" class=\"overview_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"2\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>");
 processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 93); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("</tr>\n<tr>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>\n<td class=\"overview_vertical_line\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"12\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
      out.write("<td width=\"50%\">&nbsp;</td>");
 } 
      out.write("</tr>\n</table>");
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
