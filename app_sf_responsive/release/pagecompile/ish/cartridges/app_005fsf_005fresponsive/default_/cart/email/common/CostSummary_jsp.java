/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.cart.email.common;

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

public final class CostSummary_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("ApplicationBO"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Dictionary:ApplicationBO:Configuration:String(\"BasketDisplayTaxes\")")); getPipelineDictionary().put("BasketDisplayTaxes", temp_obj);} 
 {Object temp_obj = (getObject("Dictionary:ApplicationBO:Configuration:String(\"BasketDisplayHandlingFee\")")); getPipelineDictionary().put("BasketDisplayHandlingFee", temp_obj);} 
 } else { 
      out.write(' ');
      out.write('\n');
 {Object temp_obj = (getObject("ApplicationBO:Configuration:String(\"BasketDisplayTaxes\")")); getPipelineDictionary().put("BasketDisplayTaxes", temp_obj);} 
 {Object temp_obj = (getObject("ApplicationBO:Configuration:String(\"BasketDisplayHandlingFee\")")); getPipelineDictionary().put("BasketDisplayHandlingFee", temp_obj);} 
 } 
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Gifting\")")); getPipelineDictionary().put("CartGifting", temp_obj);} 
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Payment\")")); getPipelineDictionary().put("CartPayment", temp_obj);} 
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingCost\")")); getPipelineDictionary().put("CartShippingCost", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OrderBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("OrderBO:Extension(\"AppliedRebate\"):AppliedOrderValueRebates")); getPipelineDictionary().put("CartAppliedRebates", temp_obj);} 
 {Object temp_obj = (getObject("OrderBO:Extension(\"AppliedRebate\"):AppliedOrderShippingRebates")); getPipelineDictionary().put("CartAppliedShippingRebates", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"AppliedRebate\"):AppliedBasketValueRebates")); getPipelineDictionary().put("CartAppliedRebates", temp_obj);} 
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"AppliedRebate\"):AppliedBasketShippingRebates")); getPipelineDictionary().put("CartAppliedShippingRebates", temp_obj);} 
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CurrentCartBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} 
 } 
      out.write("<table class=\"emailCostSummary\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"right\">\n<tr>\n<td>");
 {out.write(localizeISText("checkout.cart.subtotal.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:DiscountedItemSubtotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:DiscountedItemSubtotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("CartGifting:hasGiftingCosts")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 {out.write(localizeISText("checkout.order.giftwrap.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CartGifting:GiftingTotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CartGifting:GiftingTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("CurrentCartBO:hasProductConfigurationCosts")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 {out.write(localizeISText("checkout.order.productconfiguration.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td align=\"right\">&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ProductConfigurationTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CartAppliedRebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("<tr>");
 while (loop("CartAppliedRebates","AppliedRebate",null)) { 
      out.write("<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AppliedRebate:RebateBO:PromotionBO:DisableMessages"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("AppliedRebate:RebateBO:PromotionBO:Title(CurrentSession:Locale)")); getPipelineDictionary().put("PromoTitle", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromoTitle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("PromoTitle"))}, 72); 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null));
      out.write("\" data-dialog class=\"details-link\"\nalt=\"");
 {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("AppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"))}, 76); 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null));
      out.write("\"\nclass=\"details-link\" data-dialog\nalt=\"");
 {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
 } 
      out.write("&nbsp;\n</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountNet:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountGross:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
      out.write("<tr> \n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.cart.estimated_shipping_handling.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("checkout.order.shipping.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("&nbsp;\n</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentCartBO:ShippingTotalNet:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ShippingTotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ItemSubtotal:ZeroMoney(CurrentCartBO:ItemSubtotal:CurrencyMnemonic)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write(' ');
      out.write('\n');
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentCartBO:ShippingTotalGross:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ShippingTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ItemSubtotal:ZeroMoney(CurrentCartBO:ItemSubtotal:CurrencyMnemonic)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CartAppliedShippingRebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
 while (loop("CartAppliedShippingRebates","AppliedRebate",null)) { 
      out.write("<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AppliedRebate:RebateBO:PromotionBO:DisableMessages"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("AppliedRebate:RebateBO:PromotionBO:Title(CurrentSession:Locale)")); getPipelineDictionary().put("PromoTitle", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromoTitle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("PromoTitle"))}, 128); 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null));
      out.write("\" data-dialog class=\"details-link\"\nalt=\"");
 {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("AppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"))}, 132); 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("AppliedRebate:RebateBO:PromotionBO:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null));
      out.write("\"\nclass=\"details-link\" data-dialog\nalt=\"");
 {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
 } 
      out.write("&nbsp;\n</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountNet:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AppliedRebate:AmountGross:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>");
 } 
 } 
      out.write("</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CurrentCartBO:ItemSurchargeTotalsByType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("<tr>");
 while (loop("CurrentCartBO:ItemSurchargeTotalsByType","GIS",null)) { 
      out.write("<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("GIS:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GIS:AmountNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("GIS:AmountGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CurrentCartBO:BucketSurchargeTotalsByType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
      out.write("<tr> \n");
 while (loop("CurrentCartBO:BucketSurchargeTotalsByType","GBS",null)) { 
      out.write("<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("GBS:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("GBS:AmountNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("GBS:AmountGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:LimitedTenderTotal"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("CurrentCartBO:LimitedTenderTotal:Value")).doubleValue() !=((Number)(new Double(0.00))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 {out.write(localizeISText("checkout.payment.gift.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td align=\"right\">&nbsp;-");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:LimitedTenderTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CartPayment:PaymentCostsTotal:Value")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>");
 {out.write(localizeISText("checkout.cart.payment_cost.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td align=\"right\">&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CartPayment:PaymentCostsTotalNet:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalNet:ZeroMoney(CurrentCartBO:PurchaseCurrencyCode)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CartPayment:PaymentCostsTotalGross:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CartPayment:PaymentCostsTotalGross:ZeroMoney(CurrentCartBO:PurchaseCurrencyCode)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("estimated","true"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.Estimated_SalesTax"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 219); 
 } else { 
 processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.SalesTax"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 230); 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",241,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.Estimated_TotalOrderVat"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 242); 
 } else { 
 processOpenTag(response, pageContext, "taxesboxemail", new TagParameter[] {
new TagParameter("duLabel","checkout.tax.duLabel"),
new TagParameter("basketbo",getObject("CurrentCartBO")),
new TagParameter("ihfLabel","checkout.tax.ihfLabel.Long"),
new TagParameter("displayTaxesMode",getObject("BasketDisplayTaxes")),
new TagParameter("useShortNames","false"),
new TagParameter("taxesLabel","checkout.tax.TaxesLabel.TotalOrderVat"),
new TagParameter("displayIHFMode",getObject("BasketDisplayHandlingFee"))}, 252); 
 } 
      out.write("</tr>");
 } 
      out.write("<tr> \n<td class=\"total-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CurrentCartBO:CustomAttributes:Integer(\"BasketStep\")")).doubleValue() <((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.cart.estimated_total.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("checkout.order.total_cost.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(" \n</td>&nbsp;\n<td class=\"total-price\" align=\"right\">&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:BasketTotalPriceMinusLimitedTenderGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {274}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
