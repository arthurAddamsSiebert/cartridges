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

public final class SearchResult_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/search/index/Modules", null, "8");} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("searchterm",getObject("SearchTerm")),
new TagParameter("searchresult",getObject("SearchResult")),
new TagParameter("showhomelink","true")}, 11); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.base.pagelet2-Slot")}, 15); 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SelectedSearchResult"),null).equals(context.getFormattedValue("SFContentSearch",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("ProductSearchResult:Pageable:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
 {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ContentSearchResultActive", temp_obj);} 
 } else { 
 {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ContentSearchResultActive", temp_obj);} 
 } 
      out.write("<div id=\"product-search-result\" data-testing-id=\"search-result-page\" class=\"row product-search-result ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ContentSearchResultActive"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("content-active");
 } else { 
      out.write("content");
 } 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentSearchResultActive"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("style=\"display:none;\"");
 } 
      out.write(" >\n<div class=\"col-sm-3\">\n<div class=\"search-product-list\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ListNavigationVO:AnyFilterSelected")).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ListNavigationVO:SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("ListNavigationVO:NonCategoryFilterSelected"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<a href=\"");
 processOpenTag(response, pageContext, "filterlink", new TagParameter[] {
new TagParameter("pipelinename",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("pagesize",getObject("ListNavigationVO:PageSize")),
new TagParameter("searchparameter",getObject("ListNavigationVO:SearchResult:Query:RemoveAllConditions")),
new TagParameter("params","ListNavigationVO:GenericHandlerPipelineParams")}, 30); 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("search.clear_all.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("<div>");
 {out.write(localizeISText("search.refine_your_search.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 processOpenTag(response, pageContext, "filterlist", new TagParameter[] {
new TagParameter("showCount","true"),
new TagParameter("CategoryBO",getObject("CategoryBO")),
new TagParameter("showSelected","true"),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO"))}, 39); 
      out.write("<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.sidePanel.pagelet2-Slot")}, 46); 
      out.write("</div>\n</div>\n</div>\n<div class=\"col-sm-9\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-md-6 col-xs-5\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductSearchResult")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ContentSearchResult")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ProductSearchResult:Pageable:ElementCount")).doubleValue() +((Number) getObject("ContentSearchResult:Pageable:ElementCount")).doubleValue()))); getPipelineDictionary().put("TotalCount", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("ListNavigationVO:OverallCount")); getPipelineDictionary().put("TotalCount", temp_obj);} 
 } 
      out.write("<h1>");
 {out.write(localizeISText("search.title.text","",null,null,getObject("ListNavigationVO:SearchTerm"),getObject("TotalCount"),null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } 
      out.write("</div>\n<div class=\"col-lg-4 col-md-6 col-xs-7 text-right\">");
 processOpenTag(response, pageContext, "searchresulttypeswitch", new TagParameter[] {
new TagParameter("ContentSearchResultActive",getObject("ContentSearchResultActive")),
new TagParameter("ContentSearchResult",getObject("ContentSearchResult")),
new TagParameter("ProductSearchResult",getObject("ProductSearchResult")),
new TagParameter("productDataSwitchTargetID","product-search-result"),
new TagParameter("contentDataSwitchTargetID","content-search-result")}, 63); 
      out.write("</div>\n</div> \n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.content.pagelet2-Slot")}, 74); 
      out.write("</div>");
 processOpenTag(response, pageContext, "productlistfilters", new TagParameter[] {
new TagParameter("sortings",getObject("PageletConfigurationParameters:Sortings")),
new TagParameter("ViewType",getObject("ViewType")),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO"))}, 77); 
      out.write("<div class=\"search-product-list\" data-tracking=\"searchterm:");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value,"url");out.write(value);} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ViewType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ViewType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "productlist", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs")),
new TagParameter("listItemCssClass","col-md-12 list-view"),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO")),
new TagParameter("viewContext",getObject("PageletConfigurationParameters:ProductView2"))}, 85); 
 } else { 
 processOpenTag(response, pageContext, "productlist", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs")),
new TagParameter("listItemCssClass","col-md-4 col-xs-6 grid-view"),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO")),
new TagParameter("viewContext",getObject("PageletConfigurationParameters:ProductView1"))}, 92); 
 } 
      out.write("</div>\n</div>\n</div>\n<div id=\"content-search-result\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ContentSearchResultActive"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("style=\"display:none;\"");
 } 
      out.write(" class=\"row search-result-container ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentSearchResultActive"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("content-active");
 } else { 
      out.write("content");
 } 
      out.write("\">\n<div class=\"col-sm-3\">\n<div class=\"\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ListNavigationContentVO:AnyFilterSelected")).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ListNavigationContentVO:SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("ListNavigationContentVO:NonCategoryFilterSelected"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("<a href=\"");
 processOpenTag(response, pageContext, "filterlink", new TagParameter[] {
new TagParameter("pipelinename",context.getFormattedValue(getObject("ListNavigationContentVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("pagesize",getObject("ListNavigationContentVO:PageSize")),
new TagParameter("searchparameter",getObject("ListNavigationContentVO:SearchResult:Query:RemoveAllConditions")),
new TagParameter("params","ListNavigationContentVO:GenericHandlerPipelineParams")}, 109); 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("search.clear_all.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("<div>");
 {out.write(localizeISText("search.refine_your_search.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 processOpenTag(response, pageContext, "filterlist", new TagParameter[] {
new TagParameter("showCount","true"),
new TagParameter("CategoryBO",getObject("CategoryBO")),
new TagParameter("showSelected","true"),
new TagParameter("ListNavigationVO",getObject("ListNavigationContentVO"))}, 118); 
      out.write("</div>\n</div>\n<div class=\"col-sm-9\">\n<div class=\"row\">\n<div class=\"col-lg-8 col-md-6 col-xs-5\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationContentVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductSearchResult")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ContentSearchResult")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 {Object temp_obj = ((new Double( ((Number) getObject("ProductSearchResult:Pageable:ElementCount")).doubleValue() +((Number) getObject("ContentSearchResult:Pageable:ElementCount")).doubleValue()))); getPipelineDictionary().put("TotalCount", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("ListNavigationContentVO:OverallCount")); getPipelineDictionary().put("TotalCount", temp_obj);} 
 } 
      out.write("<h1>");
 {out.write(localizeISText("search.title.text","",null,null,getObject("ListNavigationContentVO:SearchTerm"),getObject("TotalCount"),null,null,null,null,null,null,null));} 
      out.write("</h1>");
 } 
      out.write("</div>\n<div class=\"col-lg-4 col-md-6 col-xs-7 text-right\">");
 processOpenTag(response, pageContext, "searchresulttypeswitch", new TagParameter[] {
new TagParameter("ContentSearchResultActive",getObject("ContentSearchResultActive")),
new TagParameter("ContentSearchResult",getObject("ContentSearchResult")),
new TagParameter("ProductSearchResult",getObject("ProductSearchResult")),
new TagParameter("productDataSwitchTargetID","product-search-result"),
new TagParameter("contentDataSwitchTargetID","content-search-result")}, 139); 
      out.write("</div>\n</div>\n<div class=\"filters-row row\">\n<div class=\"\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationContentVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ListNavigationContentVO:PageCount"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "mappagination", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationContentVO:HandlerPipeline"),null) + context.getFormattedValue("-ProductPaging",null)),
new TagParameter("pagecount",getObject("ListNavigationContentVO:PageCount")),
new TagParameter("sortvalue",getObject("ListNavigationContentVO:SortingAttribute")),
new TagParameter("pagesize",getObject("ListNavigationContentVO:PageSize")),
new TagParameter("itemcount",getObject("ListNavigationContentVO:ElementCount")),
new TagParameter("currentpage",getObject("ListNavigationContentVO:CurrentPage")),
new TagParameter("params",getObject("ListNavigationContentVO:GenericHandlerPipelineParams"))}, 152); 
 } 
      out.write(' ');
      out.write('\n');
 } 
      out.write("<div class=\"col-lg-6 col-xs-12 pull-right\">\n<div class=\"row\">\n<div class=\"col-xs-6\">");
 processOpenTag(response, pageContext, "sortby", new TagParameter[] {
new TagParameter("sortings",getObject("PageletConfigurationParameters:Sortings")),
new TagParameter("ListNavigationVO",getObject("ListNavigationContentVO"))}, 166); 
      out.write("</div>\n<div class=\"col-xs-6\">");
 processOpenTag(response, pageContext, "itemsperpage", new TagParameter[] {
new TagParameter("displayType","dropdown"),
new TagParameter("pageSizes","9,12,15,24"),
new TagParameter("showViewAll","true"),
new TagParameter("ListNavigationVO",getObject("ListNavigationContentVO"))}, 169); 
      out.write("</div>\n</div>\n</div>\n</div>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Pagelets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("<ul class=\"search-content-list\">");
 while (loop("Pagelets","resultItem","counter")) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("resultItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { 
      out.write("<li class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { 
      out.write("item-first");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasNext("resultItem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { 
      out.write("item-last");
 } else { 
      out.write("item");
 }} 
      out.write("\">\n<div class=\"section\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("resultItem:Title"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("resultItem:Title")); getPipelineDictionary().put("ItemTitle", temp_obj);} 
 } else { 
 {Object temp_obj = ("No Title"); getPipelineDictionary().put("ItemTitle", temp_obj);} 
 } 
      out.write("<h3 class=\"product-title\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue(getObject("resultItem:PageletEntryPointID"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("resultItem:Highlighter:getHighlightedText(ItemTitle,\"<strong>\",\"</strong>\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";out.write(value);} 
      out.write("</a> \n</h3>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("resultItem:Content"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
      out.write("<div>");
 {Object temp_obj = (getObject("resultItem:Highlighter:BestSnippets(resultItem:Content,\"(Integer)250\",\"(Integer)1\")")); getPipelineDictionary().put("SnippetsIterator", temp_obj);} 
 while (loop("SnippetsIterator","snip",null)) { 
      out.write("<p>...");
 {String value = null;try{value=context.getFormattedValue(getObject("resultItem:Highlighter:getHighlightedText(snip,\"<strong>\",\"</strong>\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";out.write(value);} 
      out.write("...</p>");
 } 
      out.write("<small class=\"help-block\">");
 {String value = null;try{value=context.getFormattedValue(getObject("resultItem:Date(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</small>\n</div>");
 } 
      out.write("</div>\n</li>");
 } 
 } 
      out.write("</ul>");
 } 
      out.write("</div>\n</div>");
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeRecentlyViewedItems-AddRecentlyViewedSearchTerm",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null)))),null), null, null, "209");}
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
