/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account;

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

public final class OrderTemplatesList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/b2bUtils/Modules", null, "3");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/account/Modules", null, "4");} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.ordertemplates.link",null)))}, 6); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 11); 
      out.write("</div>\n<div class=\"account-wrapper\">\n<div class=\"row account-main\">\n<div class=\"col-md-3 account-nav-box\">");
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","WISHLISTS")}, 17); 
      out.write("</div>\n<div class=\"col-md-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 22); 
      out.write("</div>\n<div class=\"wishlist\">\n<h1>");
 {out.write(localizeISText("account.ordertemplates.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<a class=\"btn btn-default\" data-dialog href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-ShowNewOrderTemplateDialog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.order_template.list.button.add_template.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</h1>\n<div class=\"section\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("OrderTemplates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<div class=\"list-header\">\n<div class=\"col-sm-5 col-xs-8 list-header-item\">");
 {out.write(localizeISText("account.order_template.list.table.template","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-2 hidden-xs list-header-item\">");
 {out.write(localizeISText("account.order_template.list.table.created","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-2 hidden-xs list-header-item\">");
 {out.write(localizeISText("account.order_template.list.table.modified","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-3 col-xs-4 list-header-item\">");
 {out.write(localizeISText("account.order_template.list.table.item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"list-body\">");
 while (loop("OrderTemplates","OrderTemplate",null)) { 
      out.write("<div class=\"list-item-row\">\n<div class=\"col-sm-5 col-xs-6 list-item\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</div>\n<div class=\"col-sm-2 hidden-xs list-item\">");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:Extension(\"PersistentObjectBOExtension\"):PersistentObject:CreationDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n<div class=\"col-sm-2 hidden-xs list-item\">");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:LastModifiedDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n<div class=\"col-sm-1 col-xs-2 list-item\">");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderTemplate:WishlistItemBOsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("account.wishlists.items","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-2 col-xs-4 list-item text-right\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-AddListToBasket",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null));
      out.write("\" \ntitle=\"");
 {out.write(localizeISText("account.order_template.list.link.add_to_cart","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\nclass=\"btn-tool");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OrderTemplate:WishlistItemBOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write(" invisible");
 } 
      out.write("\">\n<span class=\"glyphicon glyphicon-shopping-cart\"></span>\n</a>\n<a class=\"btn-tool\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderTemplate-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null)))),null));
      out.write("\" title=\"");
 {out.write(localizeISText("account.order_template.widget.link.edit","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\">\n<span class=\"glyphicon glyphicon-pencil\"></span>\n</a>\n<a class=\"btn-tool\" data-dialog href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAjax-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewOrderTemplate-ShowDeleteOrderTemplateDialog",null))).addURLParameter(context.getFormattedValue("OrderTemplateID",null),context.getFormattedValue(getObject("OrderTemplate:ID"),null))),null));
      out.write("\" title=\"");
 {out.write(localizeISText("account.order_template.list.link.remove","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\">\n<span class=\"glyphicon glyphicon-trash\"></span>\n</a>\n</div>\n</div>");
 } 
      out.write("</div>");
 } else { 
      out.write("<p class=\"flush\">");
 {out.write(localizeISText("account.order_template.list.no_templates.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>\n</div>\n</div>\n</div>\n</div>");
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