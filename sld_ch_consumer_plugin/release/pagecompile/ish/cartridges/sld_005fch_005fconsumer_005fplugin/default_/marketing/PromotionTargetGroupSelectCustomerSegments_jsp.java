/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.marketing;

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

public final class PromotionTargetGroupSelectCustomerSegments_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionID",null),context.getFormattedValue(getObject("PromotionBO:PromotionID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomerSegments.AssignCustomerSegments.text",null)))}, 5); 
 URLPipelineAction action542 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-Dispatch",null)))),null));String site542 = null;String serverGroup542 = null;String actionValue542 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-Dispatch",null)))),null);if (site542 == null){  site542 = action542.getDomain();  if (site542 == null)  {      site542 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup542 == null){  serverGroup542 = action542.getServerGroup();  if (serverGroup542 == null)  {      serverGroup542 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCustomerSegmentsSelection-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("TargetGroupUserGroupsSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue542, site542, serverGroup542,true)); 
      out.write("<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("PromotionUUID"),null)),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"PromotionID\" value=\"");
      out.print(context.getFormattedValue(getObject("PromotionBO:PromotionID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\" colspan=\"2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.AssignCustomerSegments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td> \n</tr> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.YouHaveNotSelectedAnyCustomerSegmentSelectAtLeastOne.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"2\" width=\"100%\">");
 {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.TheListShowsAllCustomerSegmentsCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("LocaleInformation")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("AssignedCustomerSegments")),
new TagParameter("value8",getObject("SortDirection")),
new TagParameter("value7",getObject("SortBy")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","AssignedCustomerSegments"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING")),
new TagParameter("key6","LocaleInformation"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("PromotionBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","PromotionBO"),
new TagParameter("key7","SortBy"),
new TagParameter("key8","SortDirection"),
new TagParameter("mapname","params")}, 43); 
 processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","marketing/PromotionTargetGroupSelectCustomerSegmentsColumns.isml"),
new TagParameter("configuration","customersegmentlist"),
new TagParameter("datatemplate","marketing/PromotionTargetGroupSelectCustomerSegmentsData.isml"),
new TagParameter("pageable",getObject("CustomerSegments")),
new TagParameter("id","CustomerUserList"),
new TagParameter("pageablename","CustomerSegments"),
new TagParameter("params",getObject("params"))}, 54); 
 } else { 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail w e s\" colspan=\"5\">");
 {out.write(localizeISText("PromotionTargetGroupSelectCustomerSegments.ThereAreCurrentlyNoCustomerSegmentsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerSegments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomerSegments.Assign.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomerSegments.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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