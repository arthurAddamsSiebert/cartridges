/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.productlisting;

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

public final class ItemsPerPage_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","labelid")}, 2); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displayType"),null).equals(context.getFormattedValue("dropdown",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 URLPipelineAction action7 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null));String site7 = null;String serverGroup7 = null;String actionValue7 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null);if (site7 == null){  site7 = action7.getDomain();  if (site7 == null)  {      site7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup7 == null){  serverGroup7 = action7.getServerGroup();  if (serverGroup7 == null)  {      serverGroup7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("itemsPerPageForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue7, site7, serverGroup7,true)); 
 while (loop("ListNavigationVO:GenericHandlerPipelineParams:EntrySet","map",null)) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("map:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("map:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("<input type=\"hidden\" name=\"SortingAttribute\" value =\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"PageNumber\" value=\"0\" />\n<select id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("labelid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"form-control\" name=\"PageSize\" data-submit-form-handler=\"change\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pageSizes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {Object temp_obj = (split(context.getFormattedValue(getObject("pageSizes"),null),(String)(","))); getPipelineDictionary().put("PageSizeIterator", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageSizeIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 while (loop("PageSizeIterator","aPageSize","count")) { 
 {Object temp_obj = ((context.getFormattedValue(getObject("aPageSize"),null).trim())); getPipelineDictionary().put("aPageSize", temp_obj);} 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("search.paging.products_per_page.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 } else { 
      out.write("<option>");
 {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showViewAll")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showViewAll"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("product.items.view_all.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
      out.write("</select>\n<noscript>\n<button class=\"btn btn-default\" type=\"submit\" name=\"pagesize\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.sort.button.limit.label",null)),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("product.sort.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</noscript>");
 out.print("</form>"); 
 } else { 
 while (loop("ListNavigationVO:GenericHandlerPipelineParams:EntrySet","map",null)) { 
 {Object temp_obj = (context.getFormattedValue(getObject("link_params"),null) + context.getFormattedValue("&",null)); getPipelineDictionary().put("link_params", temp_obj);} 

				String value = (String)getObject("map:Value");
				String encodedValue = java.net.URLEncoder.encode(value, "UTF-8");
				getPipelineDictionary().put("encodedValue", encodedValue);
			
 {Object temp_obj = (context.getFormattedValue(getObject("link_params"),null) + context.getFormattedValue(getObject("map:Key"),null) + context.getFormattedValue("=",null) + context.getFormattedValue(getObject("encodedValue"),null)); getPipelineDictionary().put("link_params", temp_obj);} 
 } 
      out.write("<div class=\"ws-product-listing-products-per-page\">\n<span class=\"ws-product-listing-filter-label\">");
 {out.write(localizeISText("search.paging.products_per_page.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n<ul class=\"ish-listFilters-productsPerPageList\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pageSizes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 {Object temp_obj = (split(context.getFormattedValue(getObject("pageSizes"),null),(String)(","))); getPipelineDictionary().put("PageSizeIterator", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageSizeIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 while (loop("PageSizeIterator","aPageSize","count")) { 
 {Object temp_obj = ((context.getFormattedValue(getObject("aPageSize"),null).trim())); getPipelineDictionary().put("aPageSize", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<li class=\"ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-active");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("count"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write(" ish-listFilters-productsPerPageList-item-first");
 } 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("aPageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</li>");
 } else { 
      out.write("<li class=\"ish-listFilters-productsPerPageList-item");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("count"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write(" ish-listFilters-productsPerPageList-item-first");
 } 
      out.write("\"><a href=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageSize",null),context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null))).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null))),null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("link_params"),null)),null),null));
      out.write("\" class=\"ws-product-listing-products-per-page-link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("aPageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></li>");
 } 
 } 
 } else { 
      out.write("<li class=\"ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-active");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("count"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write(" ish-listFilters-productsPerPageList-item-first");
 } 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</li>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showViewAll")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showViewAll"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<li class=\"ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-active ish-listFilters-productsPerPageList-item-last\">");
 {out.write(localizeISText("product.items.view_all.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>");
 } else { 
      out.write("<li class=\"ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-last\"><a href=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageSize",null),context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null))).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null))),null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("link_params"),null)),null),null));
      out.write("\" class=\"ws-product-listing-products-per-page-link\">");
 {out.write(localizeISText("product.items.view_all.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></li>");
 } 
 } 
      out.write("</ul>\n</div>");
 } 
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
