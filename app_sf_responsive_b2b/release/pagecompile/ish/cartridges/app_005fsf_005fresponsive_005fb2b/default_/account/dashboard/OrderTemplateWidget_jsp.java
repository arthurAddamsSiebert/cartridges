/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account.dashboard;

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

public final class OrderTemplateWidget_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{executePipeline("ProcessOrderTemplate-GetAll",java.util.Collections.emptyMap(),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 3.",e);}} 
      out.write("<div class=\"section section-seperator\">\n<h2>");
 {out.write(localizeISText("account.order_template.widget.my_order_templates.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("dict:OrderTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("<div class=\"list-header\">\n<div class=\"col-xs-12 col-sm-6 list-header-item\">");
 {out.write(localizeISText("account.order_template.list.table.template","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-xs-12 col-sm-6 list-header-item text-right\">");
 {out.write(localizeISText("account.order_template.list.table.manage","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"list-body\">");
 while (loop("dict:OrderTemplates","OrderTemplate","Counter")) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Counter")).doubleValue() >=((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",22);}else{getLoopStack().pop();break;} 
 } 
      out.write("<div class=\"list-item-row\">\n<div class=\"col-xs-12 col-sm-6 list-item\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</div>\n<div class=\"col-xs-12 col-sm-6 list-item text-right\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-AddListToBasket",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null));
      out.write("\" \ntitle=\"");
 {out.write(localizeISText("account.order_template.list.link.add_to_cart","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\nclass=\"btn-tool");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderTemplate:WishlistItemBOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write(" invisible");
 } 
      out.write("\">\n<span class=\"glyphicon glyphicon-shopping-cart\"></span>\n</a>\n<a class=\"btn-tool\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null));
      out.write("\" title=\"");
 {out.write(localizeISText("account.order_template.widget.link.edit","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\">\n<span class=\"glyphicon glyphicon-pencil\"></span>\n</a>\n</div>\n</div>");
 } 
      out.write("</div>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-ViewAll",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.order_template.widget.link.view_all","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("account.order_template.widget.no_templates.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>");
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