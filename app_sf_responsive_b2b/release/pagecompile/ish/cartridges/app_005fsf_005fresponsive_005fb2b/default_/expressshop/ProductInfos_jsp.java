/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.expressshop;

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

public final class ProductInfos_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/captcha/Modules", null, "5");} 
 {Object temp_obj = (getObject("ProductBO:Extension(\"Inventory\"):GetInventoryStatus")); getPipelineDictionary().put("InventoryStatus", temp_obj);} 
      out.write("<h1>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write("<span itemprop=\"name\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</h1>\n<div class=\"product-info\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:ManufacturerName")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<div class=\"product-brand\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewParametricSearch-SimpleOfferSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null))).addURLParameter(context.getFormattedValue("SearchParameter",null),context.getFormattedValue(context.getFormattedValue("&@QueryTerm=\"",null) + context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null) + context.getFormattedValue("\"&@QueryAttribute=ManufacturerName",null),null))),null));
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<span itemprop=\"brand\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</a>\n</div>");
 } 
      out.write("<div class=\"product-number\">\n<label>");
 {out.write(localizeISText("product.itemNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<span ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("itemprop=\"sku\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n</div>");
 processOpenTag(response, pageContext, "productgiftstatus", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 25); 
 processOpenTag(response, pageContext, "promotionlist", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("MaxNumber","5")}, 27); 
      out.write("<div class=\"price-container\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("itemprop=\"offers\" itemscope itemtype=\"http://schema.org/Offer\"");
 } 
      out.write('>');
 processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ShowInformationalPrice","true"),
new TagParameter("ProductBO",getObject("ProductBO"))}, 30); 
      out.write("</div>");
 processOpenTag(response, pageContext, "productavailability", new TagParameter[] {
new TagParameter("InventoryStatus",getObject("InventoryStatus")),
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 38); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("USER_HAS_ROLE_APP_B2B_OCI_USER"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("USER_HAS_ROLE_APP_B2B_OCI_USER"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "productshipping", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 42); 
 } 
 URLPipelineAction action25 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-Dispatch",null)))),null));String site25 = null;String serverGroup25 = null;String actionValue25 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-Dispatch",null)))),null);if (site25 == null){  site25 = action25.getDomain();  if (site25 == null)  {      site25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup25 == null){  serverGroup25 = action25.getServerGroup();  if (serverGroup25 == null)  {      serverGroup25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-Dispatch",null)))),null));out.print("\"");out.print(" class=\"");out.print("product-form bv-form form-horizontal");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("productExpressShopForm_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue25, site25, serverGroup25,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ProductBO:isRetailSet"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SKU\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
 while (loop("ProductBO:BundleInformation:BundledProductBOs","RetailSetProduct",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RetailSetProduct:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SKU\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RetailSetProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } 
 } 
 processOpenTag(response, pageContext, "productvariationselect", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 56); 
 processOpenTag(response, pageContext, "productlifecyclestatus", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 58); 
 processOpenTag(response, pageContext, "productquantity", new TagParameter[] {
new TagParameter("InventoryStatus",getObject("InventoryStatus")),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 60); 
 processOpenTag(response, pageContext, "addtocart", new TagParameter[] {
new TagParameter("InventoryStatus",getObject("InventoryStatus")),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("addToCartBehavior","expresscart"),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("class","btn-lg btn-block")}, 62); 
 processOpenTag(response, pageContext, "addtoproductcompare", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("class","btn-default btn-block")}, 64); 
 processOpenTag(response, pageContext, "addtowishlist", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("class","btn-default btn-block")}, 66); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("USER_HAS_ROLE_APP_B2B_OCI_USER"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("USER_HAS_ROLE_APP_B2B_OCI_USER"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/AddToQuote", null, "75");} 
 processOpenTag(response, pageContext, "addtoproductnotification", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("class","btn-default btn-block"),
new TagParameter("CurrentSession",getObject("CurrentSession"))}, 76); 
 } 
 processOpenTag(response, pageContext, "productwarranty", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 79); 
 out.print("</form>"); 
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
