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
import com.intershop.sellside.storefront.base.capi.common.ListNavigationVO;
import com.intershop.beehive.core.capi.url.*;

public final class FamilyPage_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue() && ((Boolean) ((((Boolean) getObject("ListNavigationVO:PageCacheAllowed")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {4}",e);}} 
 } else { 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {6}",e);}} 
 {Object key_obj = getObject("CategoryBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("CategoryBO"));} 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "10");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/search/index/Modules", null, "11");} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("showhomelink","true"),
new TagParameter("categorybo",getObject("CategoryBO"))}, 14); 
      out.write("</div>");
 processOpenTag(response, pageContext, "setcanonicallink", new TagParameter[] {
new TagParameter("scope","request"),
new TagParameter("name","CanonicalLink"),
new TagParameter("action","ViewStandardCatalog-Browse"),
new TagParameter("parameters",new ParameterList().addParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null)).addParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CategoryBO:CatalogBO:Name"),null)))}, 17); 
 out.print(context.prepareWAPlacement("CANONICAL")); 
      out.write("<link rel=\"canonical\" href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CanonicalLink"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";out.write(value);} 
      out.write("\" />");
 out.print("</waplacement>"); 
      out.write("<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.base.pagelet2-Slot")}, 26); 
      out.write("</div>\n<div id=\"family-page\" class=\"product-search-result\" data-testing-id=\"family-page-");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<div class=\"row\">\n<div class=\"col-sm-3\">\n<h1>");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h1>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("hasParametricNavigation"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "filterlist", new TagParameter[] {
new TagParameter("showCount","true"),
new TagParameter("CategoryBO",getObject("CategoryBO")),
new TagParameter("showSelected","true"),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO"))}, 37); 
 } else { 
 processOpenTag(response, pageContext, "listsubcategories", new TagParameter[] {
new TagParameter("activecategorybo",getObject("CategoryBO")),
new TagParameter("categorypath",getObject("CategoryBO:CatalogCategoryPath")),
new TagParameter("categorybo",getObject("CategoryBO:RootCatalogCategoryBO")),
new TagParameter("recursive","true")}, 44); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("ListNavigationVO")))).booleanValue() || !((Boolean) getObject("ListNavigationVO:NonCategoryFilterSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<div class=\"ish-pageNavigation-productLink\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.sidePanel.pagelet2-Slot")}, 54); 
      out.write("</div>");
 } 
      out.write("</div>\n<div class=\"col-sm-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.content.pagelet2-Slot")}, 61); 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 

					ListNavigationVO lnVO = (ListNavigationVO) getPipelineDictionary().get("ListNavigationVO");
					lnVO.getGenericHandlerPipelineParams().remove("PageableID");
					getPipelineDictionary().put("ListNavigationVO", lnVO);
				
 processOpenTag(response, pageContext, "productlistfilters", new TagParameter[] {
new TagParameter("sortings",getObject("PageletConfigurationParameters:Sortings")),
new TagParameter("ViewType",getObject("ViewType")),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO"))}, 70); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ViewType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ViewType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "productlist", new TagParameter[] {
new TagParameter("CategoryBO",getObject("CategoryBO")),
new TagParameter("ProductBOs",getObject("ProductBOs")),
new TagParameter("list_name","Category"),
new TagParameter("listItemCssClass","col-md-12 list-view"),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO")),
new TagParameter("viewContext",getObject("PageletConfigurationParameters:ProductView2"))}, 78); 
 } else { 
 processOpenTag(response, pageContext, "productlist", new TagParameter[] {
new TagParameter("CategoryBO",getObject("CategoryBO")),
new TagParameter("ProductBOs",getObject("ProductBOs")),
new TagParameter("list_name","Category"),
new TagParameter("listItemCssClass","col-md-4 col-xs-6 grid-view"),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO")),
new TagParameter("viewContext",getObject("PageletConfigurationParameters:ProductView1"))}, 87); 
 } 
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.category.pagelet2-Slot")}, 97); 
      out.write("<div data-testing-id=\"category-rich-content\">");
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("CategoryBO:RichContent"))}, 100); 
      out.write("</div>\n</div>");
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeRecentlyViewedItems-AddRecentlyViewedCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null))).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("CategoryBO:DomainName"),null))),null), null, null, "104");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
      out.write("</div>\n</div>");
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
