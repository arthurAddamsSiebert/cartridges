/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.cart;

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

public final class ProductIsNotAvailable_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NotAvailableProductBOs")))).booleanValue() && ((Boolean) (hasLoopElements("NotAvailableProductBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CurrentCartBO:ProductLineItemsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\">");
 {out.write(localizeISText("shopping_cart.product_not_available_checkout.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("<div class=\"alert alert-box\" role=\"alert\">\n<div class=\"alert-box-header\">");
 {out.write(localizeISText("shopping_cart.product_not_available.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CurrentCartBO:ProductLineItemsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 {out.write(localizeISText("shopping_cart.product_not_available_line2.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</div>\n<div class=\"alert-box-body\">\n<div class=\"list-header hidden-xs\">\n<div class=\"col-sm-10 list-header-item\">");
 {out.write(localizeISText("checkout.pli.desc.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-2 list-header-item column-price\">");
 {out.write(localizeISText("checkout.pli.price.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"list-body\"> \n");
 while (loop("NotAvailableProductBOs","NAP",null)) { 
 {Object key_obj = getObject("NAP"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("NAP"));} 
 {Object temp_obj = (getObject("NAP")); getPipelineDictionary().put("ProductBO", temp_obj);} 
      out.write("<div class=\"list-item-row list-item-row-big\">\n<div class=\"clearfix\">\n<div class=\"col-xs-2 list-item\">");
 processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("NAP")),
new TagParameter("ImageType","S")}, 33); 
      out.write("</div>\n<div class=\"col-xs-7 col-sm-6 list-item\">\n<div class=\"product-title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("NAP:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n<p class=\"product-id\">");
 {out.write(localizeISText("product.itemNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("NAP:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NAP:Mastered"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<div>\n<dl class=\"dl-horizontal\">");
 while (loop("NAP:ProductBOMaster:ProductVariationInformationBO:VariationAttributes","VariationAttribute",null)) { 
      out.write("<dt>");
 {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(":</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("NAP:ExtensibleObject:String(VariationAttribute:Name)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>");
 } 
      out.write("</dl>\n</div>");
 } 
      out.write("</div>\n<div class=\"col-sm-2 list-item\">\n<div class=\"availability\">\n<p class=\"availability\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("NAP:Accessible"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<span class=\"product-out-of-stock\">");
 {out.write(localizeISText("checkout.pli.not_accessible.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("NAP:InventoryStatus:InStock"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<span class=\"product-in-stock\">");
 {out.write(localizeISText("checkout.pli.instock.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } else { 
      out.write("<span class=\"product-out-of-stock\">");
 {out.write(localizeISText("checkout.pli.out_of_stock.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 }} 
      out.write("</p>\n</div>\n</div>\n<div class=\"col-xs-3 col-sm-2 list-item column-price\">");
 {String value = null;try{value=context.getFormattedValue(getObject("NAP:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n</div>\n<div class=\"text-right\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/inc/InventoryAvailabilityServiceMessageAreaBottom", null, "75");} 
      out.write("</div>\n</div>");
 } 
      out.write("</div>\n</div>\n</div>");
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
