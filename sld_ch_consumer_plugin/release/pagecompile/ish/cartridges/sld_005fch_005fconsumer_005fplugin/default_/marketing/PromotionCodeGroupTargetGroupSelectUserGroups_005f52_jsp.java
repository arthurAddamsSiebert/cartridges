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

public final class PromotionCodeGroupTargetGroupSelectUserGroups_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCodeGroupID",null),context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroupSelectUserGroups_52.AssignCustomerSegments.text",null)))}, 5); 
 URLPipelineAction action572 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroupUserGroupsSelection_52-Dispatch",null)))),null));String site572 = null;String serverGroup572 = null;String actionValue572 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroupUserGroupsSelection_52-Dispatch",null)))),null);if (site572 == null){  site572 = action572.getDomain();  if (site572 == null)  {      site572 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup572 == null){  serverGroup572 = action572.getServerGroup();  if (serverGroup572 == null)  {      serverGroup572 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroupUserGroupsSelection_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserGroupsSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue572, site572, serverGroup572,true)); 
      out.write("<input type=\"hidden\" name=\"PromotionCodeGroupID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title n w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.AssignCustomerSegments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.YouHaveNotSelectedAnyCustomerSegmentSelectAtLeastOne.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"2\" width=\"100%\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.TheListShowsAllCustomerSegmentsCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_header w s e left\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('UserGroupsSelectionForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('UserGroupsSelectionForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("UserGroups","UserGroup",null)) { 
      out.write("<tr>\n<td class=\"w e s center\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(UserGroup:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 while (loop("PromotionCodeGroup:TargetGroups","TargetGroup",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("UserGroup:ID"),null).equals(context.getFormattedValue(getObject("TargetGroup:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserGroup:DomainID"),null).equals(context.getFormattedValue(getObject("TargetGroup:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("\ndisabled checked=\"checked\"\n");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",83);}else{getLoopStack().pop();break;} 
 } 
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroup:isFix"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.CustomerDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail w e s\" colspan=\"5\">");
 {out.write(localizeISText("PromotionCodeGroupTargetGroupSelectUserGroups_52.ThereAreCurrentlyNoCustomerSegmentsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write(" \n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"assign\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroupSelectUserGroups_52.Assign.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroupSelectUserGroups_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UserGroups")}, 118); 
 out.print("</form>"); 
      out.write("<!-- EO Working Area -->\n<!-- EO Main Content -->\n<!-- EO Working Area -->");
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
