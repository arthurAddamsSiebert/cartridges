/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.quote;

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

public final class QuoteItemList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EditMode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ChangeQuantity", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("ChangePrice", temp_obj);} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ChangeTotal", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RemoveItem"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ShowActions", temp_obj);} 
 } 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ShowSellerPrice", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Quote:State")).doubleValue() <((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("ShowSellerPrice", temp_obj);} 
 } 
 {Object temp_obj = ("false"); getPipelineDictionary().put("RemoveItem", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Quote:State")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("RemoveItem", temp_obj);} 
 } 
 {Object temp_obj = ((( ((Number) getObject("Quote:IndependentItemsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IsEmptyQuote", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsEmptyQuote"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<div class=\"hidden-xs list-header\">\n<div class=\"col-sm-3 col-xs-3 list-header-item\">");
 {out.write(localizeISText("quote.items.table.description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-9 col-xs-9\">\n<div class=\"col-sm-2 col-sm-offset-4 list-header-item\">");
 {out.write(localizeISText("quote.items.table.quantity","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-4 list-header-item text-right\">");
 {out.write(localizeISText("quote.items.table.price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-2 list-header-item text-right\">");
 {out.write(localizeISText("quote.items.table.total","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n</div>");
 {Object temp_obj = ("false"); getPipelineDictionary().put("NeedsQuotation", temp_obj);} 
 while (loop("Quote:IndependentItems","PLI",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PLI:NeedsQuotation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("NeedsQuotation", temp_obj);} 
 } 
 {try{executePipeline("ProcessB2CProduct-GetProductBO",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ProductRef",getObject("PLI:ProductRef"))))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 48.",e);}} 
      out.write("<div class=\"list-body\">\n<div class=\"list-item-row list-item-row-big\">\n<div class=\"col-sm-2 col-xs-3\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("dict:ProductBO"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write("<img class=\"ish-product-photo\" width=\"80\" height=\"80\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/no_image_available.gif\"/>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("dict:ProductBO:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("dict:ProductBO:SKU"),null)))),null));
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("dict:ProductBO")),
new TagParameter("ImageType","S")}, 57); 
      out.write("</a>");
 } else { 
 processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("dict:ProductBO")),
new TagParameter("ImageType","S")}, 60); 
 }} 
      out.write("</div>\n<div class=\"col-sm-10 col-xs-9\">\n<div class=\"row\">\n<div class=\"col-sm-4 cart-group-details list-item\">\n<div class=\"pli-description\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("dict:ProductBO"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("dict:ProductBO:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("dict:ProductBO:SKU"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("dict:ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("dict:ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 }} 
      out.write(" \n<p class=\"product-id\">");
 {out.write(localizeISText("account.wishlist.table.item.item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:ProductRef:ProductSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 {Object temp_obj = (getObject("dict:ProductBO:ProductVariationInformationBO")); getPipelineDictionary().put("VariationInfo", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("VariationInfo:VariationAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("<dl class=\"dl-horizontal\">");
 while (loop("VariationInfo:VariationAttributes","VariationAttribute",null)) { 
      out.write("<dt>");
 {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(":</dt>\n<dd>");
 {String value = null;try{value=context.getFormattedValue(getObject("VariationInfo:SelectedVariationValue(VariationAttribute)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</dd>");
 } 
      out.write("</dl>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PLI:DependentListItemsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<dl class=\"dl-horizontal\">");
 while (loop("PLI:DependentListItems","DPLI",null)) { 
      out.write("<dt>");
 {String value = null;try{value=context.getFormattedValue(getObject("DPLI:Quantity:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" \n</dt>\n<dd>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("DPLI:Product:SKU"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("DPLI:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a><br />");
 {out.write(localizeISText("account.wishlist.table.item.item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("DPLI:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n</dd>");
 } 
      out.write("</dl>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("dict:ProductBO"))))).booleanValue() || !((Boolean) (getObject("dict:ProductBO:Online"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("<span class=\"text-danger\">");
 {out.write(localizeISText("quote.items.not_availableMessage","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span><br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RemoveItem"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<a class=\"btn-tool\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("removeitem",null),context.getFormattedValue(getObject("PLI:UUID"),null))).addURLParameter(context.getFormattedValue("QuoteUUID",null),context.getFormattedValue(getObject("Quote:UUID"),null))),null));
      out.write("\"><span class=\"glyphicon glyphicon-trash\"></span></a>");
 } 
      out.write("</div>\n</div>\n<input type=\"hidden\" name=\"Items\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"QuoteForm_CurrencyMnemonic\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Quote:Total:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<div class=\"col-sm-2 text-right\">\n<div class=\"form-group\">\n<div class=\"col-xs-4\">\n<span class=\"mobile-cart-label\">");
 {out.write(localizeISText("account.orderdetails.items_table.quantity","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</div>\n<div class=\"col-xs-6 col-md-12 col-sm-12 pull-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("QuantityErrorMap")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("QuantityErrorMap:get(PLI:UUID)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChangeQuantity"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
      out.write("<input type=\"number\" min=\"1\" name=\"");
      out.print(context.getFormattedValue(getObject("PLI:UUID"),null));
      out.write("_Quantity\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("QuantityErrorMap:get(PLI:UUID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" size=\"3\" \nclass=\"quantity form-control\"\nrequired data-bv-notempty-message = \"");
 {out.write(localizeISText("shopping_cart.quote.quantity.required.validation.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-regexp=\"true\"\ndata-bv-regexp-regexp=\"^[0]{0,1}[1-9]+[0-9]*$\"\ndata-bv-regexp-message= \"");
 {out.write(localizeISText("shopping_cart.quantity.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-greaterThan-message = \" \" />");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChangeQuantity"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("<input type=\"number\" min=\"1\" name=\"");
      out.print(context.getFormattedValue(getObject("PLI:UUID"),null));
      out.write("_Quantity\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nclass =\"quantity form-control\"\nrequired data-bv-notempty-message = \"");
 {out.write(localizeISText("shopping_cart.quote.quantity.required.validation.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-regexp=\"true\"\ndata-bv-regexp-regexp=\"^[0]{0,1}[1-9]+[0-9]*$\"\ndata-bv-regexp-message= \"");
 {out.write(localizeISText("shopping_cart.quantity.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-bv-greaterThan-message = \" \" \n/>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</div>\n</div>\n</div>\n<div class=\"col-sm-4 text-right\">\n<div class=\"text-right\">\n<span class=\"mobile-cart-label\">");
 {out.write(localizeISText("quote.items.table.price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowSellerPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("PLI:NeedsQuotation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
      out.write("<p class=\"text-nowrap\">");
 {out.write(localizeISText("quote.items.original_price.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:OriginSinglePricePC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 } 
      out.write("<p class=\"text-nowrap\">");
 {out.write(localizeISText("quote.items.suggested_price.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:SinglePricePC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p> \n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowSellerPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PLI:NeedsQuotation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PLI:NeedsQuotation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
 } else { 
      out.write("<p class=\"text-nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:OriginSinglePricePC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 } 
 } 
      out.write("</div>\n</div>\n<div class=\"col-sm-2 text-right\">\n<span class=\"mobile-cart-label\">");
 {out.write(localizeISText("quote.items.table.total","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowSellerPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("PLI:NeedsQuotation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { 
      out.write("<p class=\"text-nowrap\">\n<span class=\"visible-xs-inline\">");
 {out.write(localizeISText("quote.items.original_price.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </span>");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:OriginNetPricePC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 } 
      out.write("<p class=\"text-nowrap\">\n<span class=\"visible-xs-inline\">");
 {out.write(localizeISText("quote.items.suggested_price.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </span>");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:NetPricePC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PLI:NeedsQuotation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { 
      out.write("<br /><span class=\"text-nowrap\">");
 {out.write(localizeISText("quote.items.upon_request.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } else { 
      out.write("<span class=\"text-nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:OriginNetPricePC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>");
 } 
 } 
      out.write("</div>\n</div>\n</div>\n</div>\n</div>");
 } 
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsEmptyQuote"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { 
      out.write(" \n<div class=\"clearfix section section-seperator\">\n<div class=\"list-body\">");
 {out.write(localizeISText("quote.items.no_available_items","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>");
 } else { 
      out.write(" \n<div class=\"clearfix section section-seperator\"> \n<div class=\"list-body\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowSellerPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { 
      out.write("<div class=\"col-sm-2 col-sm-offset-8\">\n<div class=\"total-price text-right\">");
 {out.write(localizeISText("quote.items.total.suggested.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"col-sm-2\">\n<div class=\"total-price text-right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Quote:Total"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {223}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n</div>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NeedsQuotation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { 
      out.write("<div class=\"col-sm-2 col-sm-offset-8\">\n<div> </div>\n</div>\n<div class=\"col-sm-2\">\n<div> ");
 {out.write(localizeISText("quote.items.price_upon_request.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>");
 } else { 
      out.write("<div class=\"col-sm-2 col-sm-offset-8\">\n<div class=\"total-price text-right\">");
 {out.write(localizeISText("quote.items.total.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"col-sm-2\">\n<div class=\"total-price text-right\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Quote:OriginTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {238}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n</div>");
 } 
 } 
      out.write("</div>\n</div>");
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
