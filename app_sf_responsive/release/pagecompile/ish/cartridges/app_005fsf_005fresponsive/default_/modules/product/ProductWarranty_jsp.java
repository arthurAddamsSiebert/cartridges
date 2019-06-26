/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.product;

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

public final class ProductWarranty_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 3); 
 processOpenTag(response, pageContext, "getproductpricecontext", new TagParameter[] {
new TagParameter("ContextProductBO",getObject("ProductBO")),
new TagParameter("CustomerBO",getObject("CustomerBO")),
new TagParameter("ProductPriceContext","ProductPriceContext")}, 4); 
 {Object temp_obj = (getObject("ProductBO:Extension(\"Warranty\"):WarrantyBOs")); getPipelineDictionary().put("Warranties", temp_obj);} 
 {Object temp_obj = (getObject("ProductBO:Extension(\"Warranty\"):isAnyWarrantyOnline")); getPipelineDictionary().put("WarrantyIsOnline", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Warranties") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("WarrantyIsOnline"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WarrantyIsOnline"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("<div class=\"product-warranty\" data-testing-id=\"product-details-warranty\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("DisplayType"),null).equals(context.getFormattedValue("dropdown",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<select name=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("DependentSKU_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" data-testing-id=\"product-details-warranty-select\">");
 while (loop("Warranties","Warranty",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("Warranty_",null) + context.getFormattedValue(getObject("Warranty:ProductRef:ProductSKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Warranty:Extension(\"Pricing\"):Price(\"WarrantyPrice\",Currency,ProductPriceContext):Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 16); 
      out.write("</option>");
 } 
      out.write("<option value=\"NoWarranty\" selected=\"selected\">");
 {out.write(localizeISText("product.warranty.nowarranty","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>");
 } else { 
      out.write("<div class=\"product-warranty-title\">");
 {out.write(localizeISText("product.warranty.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<dl class=\"product-warranty-list\" data-testing-id=\"product-details-warranty-list\">");
 while (loop("Warranties","Warranty",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Warranty:Online")).booleanValue() && !((Boolean) (getObject("Warranty:EndOfLife"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<dd>\n<label>\n<input type=\"radio\" \nname=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("DependentSKU_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("Warranty_",null) + context.getFormattedValue(getObject("Warranty:ProductRef:ProductSKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWarrantyDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("Warranty:ProductRef:ProductSKU"),null)))),null));
      out.write("\" data-dialog rel=\"nofollow\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n<span class=\"product-warranty-cost\">\n- ");
 {String value = null;try{value=context.getFormattedValue(getObject("Warranty:Extension(\"Pricing\"):Price(\"WarrantyPrice\",Currency,ProductPriceContext):Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>");
 processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 37); 
      out.write("</label> \n</dd>");
 } 
 } 
      out.write("<dd>\n<input type=\"radio\" id=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("DependentSKU_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" name=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("DependentSKU_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"\" checked=\"checked\" />\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("DependentSKU_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("product.warranty.nowarranty","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</dd>\n</dl>");
 } 
      out.write("</div>");
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
