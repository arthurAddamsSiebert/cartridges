/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.customer.tabs.PRIVATE;

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

public final class Tabs_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n<tbody>\n<tr>\n<td class=\"w e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.General","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Attributes","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Addresses","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background nowrap\">");
 {out.write(localizeISText("customer.tabs.PriceLists","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background nowrap\">");
 {out.write(localizeISText("customer.tabs.CatalogViews","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("<td class=\"e n s table_tabs_dis_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Orders","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Segments","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"Tabs", null, "31");} 
      out.write("<td class=\"s w100\">&nbsp;</td>\n</tr>\n</tbody>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n<tbody>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<td class=\"w e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.General","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"w e n s table_tabs_dis_background nowrap\">\n<a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.tabs.General","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Attributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("<td class=\"e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Attributes","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"e n s table_tabs_dis_background nowrap\">\n<a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-DispatchCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.tabs.Attributes","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Addresses",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<td class=\"e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Addresses","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"e n s table_tabs_dis_background nowrap\">\n<a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddressList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.tabs.Addresses","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Price Lists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("<td class=\"e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.PriceLists","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n<a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerPriceListsList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.tabs.PriceLists","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Catalog Views",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<td class=\"e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.CatalogViews","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n<a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerCatalogViewsList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.tabs.CatalogViews","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Orders",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<td class=\"e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Orders","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"e n s table_tabs_dis_background nowrap\">\n<a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerOrderList_52-OrderSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.tabs.Orders","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Segments",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
      out.write("<td class=\"e n table_tabs_en_background nowrap\">");
 {out.write(localizeISText("customer.tabs.Segments","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"e n s table_tabs_dis_background nowrap\">\n<a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("/ViewCustomerCustomerSegments-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.tabs.Segments","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>");
 } 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"Tabs", null, "121");} 
      out.write("<td class=\"s w100\">&nbsp;</td>\n</tr>\n</tbody>\n</table>");
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
