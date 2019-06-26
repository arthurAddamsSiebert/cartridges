/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.overview;

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

public final class LatestOrders_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.TRUE; } 
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
      out.write("<div class=\"section\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SortedOrders") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("<div class=\"list-header\">\n<div class=\"list-header-item col-sm-2\">");
 {out.write(localizeISText("account.orderlist.table.date_of_order","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-3\">");
 {out.write(localizeISText("account.orderlist.table.order_number","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-2\">");
 {out.write(localizeISText("account.orderlist.table.items","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-1\">");
 {out.write(localizeISText("account.orderlist.table.order_status","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-3 column-price\">");
 {out.write(localizeISText("account.orderlist.table.order_total","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-1\">&nbsp;</div>\n</div>\n<div class=\"list-body\">");
 while (loop("SortedOrders","OrderBO",null)) { 
 processOpenTag(response, pageContext, "orderhistoryitem", new TagParameter[] {
new TagParameter("showNumberOfItems","true"),
new TagParameter("showOrderStatus","true"),
new TagParameter("orderNumberColumnWith","3"),
new TagParameter("showOrderNumber","true"),
new TagParameter("OrderBO",getObject("OrderBO")),
new TagParameter("numberOfItemsColumnWith","2")}, 15); 
 } 
      out.write("</div>");
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("account.orderlist.no_orders_message","",null,getObject("Repository:DisplayName"),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-SimpleOrderSearch",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.order.view_all_order.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>");
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
