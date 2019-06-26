/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.component.system;

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
import com.intershop.beehive.core.capi.url.*;

public final class Header_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} 
 {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("User",getObject("CurrentUser"))))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} 
 {Object temp_obj = (getObject("dict:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} 
      out.write("<div class=\"top-header\">\n<nav class=\"container\">\n<div class=\"row\">\n<div class=\"visible-xs\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"component/system/HeaderMobileLogo", null, "12");} 
      out.write("</div>\n<div class=\"visible-xs pull-right\">\n<button class=\"navbar-toggle\" type=\"button\" data-toggle=\"collapse\" data-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("globalnav\">\n<span class=\"sr-only\">");
 {out.write(localizeISText("common.button.navbartoggle.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n<span class=\"icon-bar\"></span>\n<span class=\"icon-bar\"></span>\n<span class=\"icon-bar\"></span>\n</button>\n</div>\n<div class=\"col-md-12\">\n<ul class=\"user-links\">\n<li>");
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLoginStatus-Start",null)))),null), null, null, "26");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
      out.write("</li>\n<li>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/header/ProductCompareStatus", null, "29");} 
      out.write("</li>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentSession:isLoggedIn"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("BusinessObjectDict:UserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_OCI_USER\")")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<li>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApprovals-MyOpen",null)))),null));
      out.write("\" class=\"\"><span class=\"glyphicon-inbox glyphicon glyphicon-header-icon\"></span><span class=\"hidden-xs\">");
 {out.write(localizeISText("order.pending.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span></a> \n</li>");
 } 
 } 
      out.write("<li class=\"visible-xs\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-View",null)))),null));
      out.write("\"><span class=\"glyphicon glyphicon-shopping-cart glyphicon-header-icon\"></span></a>\n<div class=\"mobile-cart-counter\"></div>\n</li>\n</ul>\n<div class=\"header-utility\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.header.utility.pagelet2-Slot")}, 46); 
      out.write("</div>\n</div>\n</div>\n</nav>\n</div>\n<div class=\"mid-header\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-sm-3 logo-wrapper hidden-xs\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"component/system/HeaderPageLogo", null, "56");} 
      out.write("</div>\n<div class=\"col-sm-5 quick-order-links hidden-xs\">\n<a data-testing-id=\"link-quickorder\" href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-Start",null)))),null));
      out.write("\" title=\"Quick Order\"><span class=\"glyphicon glyphicon-fast-forward\"></span>");
 {out.write(localizeISText("quick.order.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> \n</div>\n<div class=\"col-sm-4 search-container header-search-container\">");
 processOpenTag(response, pageContext, "searchbox", new TagParameter[] {
new TagParameter("useAutoSuggest","true"),
new TagParameter("maxAutoSuggestResults","10"),
new TagParameter("instructionalText",localizeText(context.getFormattedValue("search.searchbox.instructional_text",null))),
new TagParameter("id","Header")}, 62); 
      out.write("</div>\n</div>\n</div>\n</div>\n<div class=\"bottom-header\">\n<div class=\"global-nav collapse navbar-collapse\" id=\"globalnav\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"main-navigation col-sm-8 col-md-9\" role=\"navigation\">\n<ul class=\"navbar-nav main-navigation-list\">\n<li class=\"home hidden-xs\">\n<a class=\"\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null));
      out.write("\" title=\"home\"><span class=\"glyphicon glyphicon-home\"></span></a>\n</li>");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.header.navigation.pagelet2-Slot")}, 81); 
      out.write("</ul>\n</div>\n<div class=\"col-sm-4 col-md-3 pull-right main-navigation-right\" data-ajax-content=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMiniCart-Status",null)))),null));
      out.write("\">\n<div class=\"quick-cart-link hidden-xs\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-View",null)))),null));
      out.write("\">\n<span class=\"glyphicon glyphicon-shopping-cart\"></span>\n</a>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"container visible-xs\">\n<div class=\"row\">\n<div class=\"col-xs-9 quick-order-links\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-Start",null)))),null));
      out.write("\" title=\"Quick Order\"><span class=\"glyphicon glyphicon-fast-forward\"></span>");
 {out.write(localizeISText("quick.order.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div> \n</div>\n</div>");
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
