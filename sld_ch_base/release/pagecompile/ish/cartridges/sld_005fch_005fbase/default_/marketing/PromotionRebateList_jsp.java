/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.marketing;

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

public final class PromotionRebateList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PromotionRebateList.Discounts.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebateList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))))),
new TagParameter("id",getObject("Promotion:UUID")),
new TagParameter("text",getObject("Promotion:DisplayName"))}, 3); 
      out.write("<!-- Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("PromotionRebateList.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTargetGroup-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("PromotionRebateList.TargetGroup.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionRebateList.Discounts.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr> \n</table>\n<!-- EO Tabs -->");
 URLPipelineAction action251 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebateList-Dispatch",null)))),null));String site251 = null;String serverGroup251 = null;String actionValue251 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebateList-Dispatch",null)))),null);if (site251 == null){  site251 = action251.getDomain();  if (site251 == null)  {      site251 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup251 == null){  serverGroup251 = action251.getServerGroup();  if (serverGroup251 == null)  {      serverGroup251 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebateList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("RebateListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue251, site251, serverGroup251,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>\n<!-- simple delete confirmation-->\n<!-- start error handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Discount.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 26); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Discount.subject",null))),
new TagParameter("type","mde")}, 28); 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("publish")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" >\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("PromotionRebateList.YouHaveNotSelectedAnyDiscountsToBePublished.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Rebate")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("delete")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" >\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("PromotionRebateList.SomeOfTheSelectedDiscountsCouldNotBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- end error handling -->\n<tr>\n<td class=\"table_title_description w e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionRebateList.TheListShowsAllDiscountsInThisPromotion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Promotion:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Rebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header aldi\"width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('RebateListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("PromotionRebateList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('RebateListForm','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("PromotionRebateList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionRebateList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionRebateList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionRebateList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionRebateList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionRebateList.Published.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("Rebates","Rebate",null)) { 
      out.write("<tr>\n<td class=\"w e s center top\">\n<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Rebate:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Rebate:UUID"),null));
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Rebate:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Rebate:CatalogFilter:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s top\"><a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebateList-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("RebateUUID",null),context.getFormattedValue(getObject("Rebate:UUID"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Rebate:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Rebate:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
      out.write("&nbsp;");
 } 
      out.write("</a>&nbsp;</td>\n<td class=\"table_detail e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Rebate:Description")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("Rebate:Description"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Rebate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Rebate:ConditionalProductDescription")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("Rebate:ConditionalProductDescription"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Rebate:ConditionalProductDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Rebate:DiscountedProductDescription")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("Rebate:DiscountedProductDescription"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Rebate:DiscountedProductDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("\n&nbsp;\n");
 }}} 
      out.write("</td>\n<td class=\"table_detail e s left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Rebate:isEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionRebateList.Enabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PromotionRebateList.Disabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td class=\"table_detail e s left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Rebate:ClassificationTypeCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionRebateList.CouponBased.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PromotionRebateList.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td class=\"table_detail e s\" width=\"150\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Rebate:CatalogFilter:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionRebateList.Publishing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("Rebate:CatalogFilter:LastUpdate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Rebate:CatalogFilter:LastUpdate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n&nbsp;\n");
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n<tr>\n<td class=\"w e s\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"refresh\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionRebateList.Refresh.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionRebateList.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"publish\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionRebateList.PublishNow.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionRebateList.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td>\n<!-- Start Page Cursor -->");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Rebates")}, 177); 
      out.write("<!-- End Page Cursor -->\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td width=\"100%\" class=\"table_detail w e n s\">");
 {out.write(localizeISText("PromotionRebateList.ThereAreCurrentlyNoDiscountsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td width=\"100%\" class=\"w e s\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionRebateList.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "201");} 
      out.write("<!-- EO Working Area -->");
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
