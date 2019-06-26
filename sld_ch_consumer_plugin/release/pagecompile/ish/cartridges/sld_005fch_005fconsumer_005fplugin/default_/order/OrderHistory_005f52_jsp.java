/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.order;

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

public final class OrderHistory_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(getObject("Order:DocumentNo"),null) + context.getFormattedValue(" - Order History",null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)))),
new TagParameter("id",getObject("Order:UUID")),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("OrderHistory_52.Order.text",null)),null) + context.getFormattedValue(": ",null))}, 4); 
 {Object temp_obj = ("History"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderTabs_52", null, "7");} 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title s\">");
 {out.write(localizeISText("OrderHistory_52.Order.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Order:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("OrderHistory_52.TheListShowsAllChangesOfThisOrder.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TrackingEntries") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Sorting"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Sorting"),null).equals(context.getFormattedValue("Date",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header w e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)).addURLParameter(context.getFormattedValue("Sorting",null),context.getFormattedValue("Date",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("OrderHistory_52.Date.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header w e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)).addURLParameter(context.getFormattedValue("Sorting",null),context.getFormattedValue("Date",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("OrderHistory_52.Date.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderHistory_52.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Sorting"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Sorting"),null).equals(context.getFormattedValue("User",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("Sorting",null),context.getFormattedValue("User",null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("OrderHistory_52.StatusChangedBy.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } else { 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("Sorting",null),context.getFormattedValue("User",null)).addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null))),null));
      out.write("\" class=\"tableheader\">");
 {out.write(localizeISText("OrderHistory_52.StatusChangedBy.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 } 
      out.write("</tr>");
 while (loop("TrackingEntries","TrackingEntry",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("TrackingEntry:CreationTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("TrackingEntry:CreationTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s\" width=\"65%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TrackingEntry:TypeCode"),null).equals(context.getFormattedValue("20",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrderHistory_52.StatusOfOrderSetTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("OrderStatesMap:get(TrackingEntry:Text):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TrackingEntry:TypeCode"),null).equals(context.getFormattedValue("22",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrderHistory_52.StatusOfOrderSetTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("OrderPaymentStatesMap:get(TrackingEntry:Text):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TrackingEntry:TypeCode"),null).equals(context.getFormattedValue("23",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrderHistory_52.StatusOfOrderSetTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("OrderShippingStatesMap:get(TrackingEntry:Text):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TrackingEntry:TypeCode"),null).equals(context.getFormattedValue("24",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrderHistory_52.StatusOfOrderSetTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("OrderExportStatesMap:get(TrackingEntry:Text):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("TrackingEntry:TypeCode"),null).equals(context.getFormattedValue("30",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TrackingEntry:TypeCode"),null).equals(context.getFormattedValue("31",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 {out.write(localizeISText("OrderHistory_52.StatusOfProduct0SetTo1.table_detail",null,null,encodeString(context.getFormattedValue(getObject("TrackingEntry:CommentedObject:ProductName"),null)),encodeString(context.getFormattedValue(getObject("PLIStatesMap:get(TrackingEntry:Text):DisplayName"),null)),null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("OrderHistory_52.StatusSetTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("TrackingEntry:Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 }}}}} 
      out.write("</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("TrackingEntry:Author:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("TrackingEntry:Author:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderHistory_52.NoChangesAvailableForThisOrder.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n</table>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "66");} 
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