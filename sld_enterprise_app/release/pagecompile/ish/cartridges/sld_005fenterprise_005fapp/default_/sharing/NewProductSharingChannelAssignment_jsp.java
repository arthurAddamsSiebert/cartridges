/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.sharing;

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

public final class NewProductSharingChannelAssignment_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("text",localizeText(context.getFormattedValue("NewProductSharingChannelAssignment.AddChannels.text",null)))}, 4); 
      out.write("<!-- Main Content -->\n<!-- Repository assignments -->");
 URLPipelineAction action482 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-DispatchNewChannels",null)))),null));String site482 = null;String serverGroup482 = null;String actionValue482 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-DispatchNewChannels",null)))),null);if (site482 == null){  site482 = action482.getDomain();  if (site482 == null)  {      site482 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup482 == null){  serverGroup482 = action482.getServerGroup();  if (serverGroup482 == null)  {      serverGroup482 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-DispatchNewChannels",null)))),null));out.print("\"");out.print(" name=\"");out.print("channelsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue482, site482, serverGroup482,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.AddChannels.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("SearchChannelIDError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.TheChannelIDSearchTermIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("SearchOrganizationIDError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.TheSearchOrganizationIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("SearchChannelsError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.ErrorWhileTryingToDetermineAssignedChannels.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("NoChannelSelected")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.YouHaveNotSelectedAnyChannelsUseTheCheckboxesToSel.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.TheListShowsAllChannelsCurrentlyNotSelectedForProd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.Search.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_light\" for=\"SearchChannelID\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td>\n<input type=\"text\" name=\"SearchChannelID\" id=\"SearchChannelID\" maxlength=\"350\" size=\"35\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n<td>&nbsp;</td>\n<td nowrap=\"nowrap\" class=\"label_select\"><label class=\"label label_select label_light\" for=\"SearchOrganizationID\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.Organization.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td>\n<select name=\"SearchOrganizationID\" id=\"SearchOrganizationID\" style=\"1\" class=\"select inputfield_en\">\n<option value=\"all\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchOrganizationID"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("NewProductSharingChannelAssignment.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("Organizations","Organization",null)) { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(getObject("Organization:UUID"),null));
      out.write('"');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchOrganizationID"),null).equals(context.getFormattedValue(getObject("Organization:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Organization:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Organization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Organization:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n<td>&nbsp;</td>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"simpleSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSharingChannelAssignment.Find.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Channels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e s\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('channelsForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('channelsForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.Organization.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("Channels","Channel",null)) { 
      out.write("<tr>\n<td class=\"w e s center\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Channel:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Channel:UUID"),null));
      out.write('"');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Channel:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">&nbsp;");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Channel:OwningDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 while (loop("ChannelTypes",null,null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:TypeCode"),null).equals(context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",156);}else{getLoopStack().pop();break;} 
 } 
 } 
      out.write("&nbsp;</td>\n</tr>");
 } 
      out.write("</table>");
 } else { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td class=\"table_detail\">");
 {out.write(localizeISText("NewProductSharingChannelAssignment.NoChannelsFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/></tr>\n</table>");
 } 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Channels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"addChannels\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSharingChannelAssignment.OK.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSharingChannelAssignment.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Channels")}, 183); 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->");
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