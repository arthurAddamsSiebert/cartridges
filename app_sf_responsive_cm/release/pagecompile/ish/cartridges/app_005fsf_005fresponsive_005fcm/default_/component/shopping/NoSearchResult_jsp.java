/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fcm.default_.component.shopping;

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

public final class NoSearchResult_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue() && ((Boolean) ((((Boolean) getObject("ListNavigationVO:PageCacheAllowed")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {3}",e);}} 
 } else { 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {5}",e);}} 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "7");} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("searchterm",getObject("SearchTerm")),
new TagParameter("searchresult",getObject("SearchResult")),
new TagParameter("showhomelink","true")}, 10); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.base.pagelet2-Slot")}, 14); 
      out.write("</div>\n<div class=\"no-search-result\" data-testing-id=\"no-search-result-page\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ListNavigationVO:SearchResult:SpellCorrected")).booleanValue() && ((Boolean) (hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<h1 class=\"h2\">");
 {out.write(localizeISText("search.didYouMean.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>\n<p class=\"no-search-result-title\">");
 {out.write(localizeISText("search.didYouMean.message",null,null,encodeString(context.getFormattedValue(getObject("SearchTerm"),null)),encodeString(context.getFormattedValue(getObject("AlternativeSearchTerm"),null)),encodeString(context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewParametricSearch-SimpleOfferSearch",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("AlternativeSearchTerm"),null)))),null)),null,null,null,null,null,null,null));} 
      out.write("<span class=\"result-count-message\">");
 {out.write(localizeISText("search.didYouMean.hint","",null,getObject("ListNavigationVO:SearchResult:SpellCorrectedSearchResult:Results:Size"),null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</p>\n<p>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewParametricSearch-SimpleOfferSearch",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("AlternativeSearchTerm"),null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("search.didYouMean.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</p>\n<div class=\"search-product-list\">");
 processOpenTag(response, pageContext, "productlist", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs")),
new TagParameter("listItemCssClass","col-xs-6 col-md-4 grid-view"),
new TagParameter("viewContext",getObject("PageletConfigurationParameters:ProductView"))}, 34); 
      out.write("</div>");
 } else { 
      out.write("<h1 class=\"h2\">");
 {out.write(localizeISText("search.noResult.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } 
      out.write("<p class=\"no-search-result-title\">");
 {out.write(localizeISText("search.noResult.message",null,null,encodeString(context.getFormattedValue(getObject("SearchTerm"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>\n<div class=\"search-container main-search-container\">");
 processOpenTag(response, pageContext, "searchbox", new TagParameter[] {
new TagParameter("useAutoSuggest","true"),
new TagParameter("maxAutoSuggestResults","10"),
new TagParameter("searchFieldLabel",localizeText(context.getFormattedValue("search.searchbox.label.alternative",null))),
new TagParameter("id","NoSearchResult")}, 52); 
      out.write("</div>\n<div class=\"search-guidelines\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:HTML")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:HTML"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("PageletConfigurationParameters:HTML"))}, 62); 
 } 
      out.write("</div>");
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeRecentlyViewedItems-AddRecentlyViewedSearchTerm",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null)))),null), null, null, "66");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
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
