/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.checkout.common.widgets;

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

public final class ItemsInCart_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CurrentCartBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} 
 } 
      out.write("<div class=\"cart-summary\">");
 while (loop("CurrentCartBO:ProductLineItemBOs","PLI","index")) { 
 {Object temp_obj = (getObject("PLI:Extension(\"Warranty\")")); getPipelineDictionary().put("PLIWarranty", temp_obj);} 
 {Object temp_obj = (getObject("PLI:Extension(\"AppliedRebate\")")); getPipelineDictionary().put("PLIAppliedRebate", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("index")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ShowAllProductLineItems", temp_obj);} 
      out.write("<div class=\"collapse\" id=\"furtheritemsincart\">");
 } 
      out.write("<div class=\"row cart-summary-checkout\">\n<div class=\"col-xs-8\"><a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("PLI:ProductBO:SKU"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></div>\n<div class=\"col-xs-4 text-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>\n<div class=\"col-xs-8 cart-pli-data\"><span>");
 {out.write(localizeISText("checkout.pli.qty.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span></div>\n<div class=\"col-xs-4 text-right\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLIAppliedRebate:ItemValueRebatesTotal:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<div class=\"old-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLI:FreeGift"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<div class=\"list-item-promo\">");
 {out.write(localizeISText("checkout.pli.freegift.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PLIAppliedRebate:AppliedRebates:Size")).doubleValue() >=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<div class=\"col-xs-12\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PLIAppliedRebate:AppliedRebates:Size")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 {out.write(localizeISText("checkout.widget.promotion.discount","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIAppliedRebate:AppliedRebates:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("checkout.widget.promotion.discounts","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 {Object temp_obj = (""); getPipelineDictionary().put("PromotionIDs", temp_obj);} 
 while (loop("PLIAppliedRebate:AppliedRebates","AppliedRebate",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AppliedRebate:RebateBO:PromotionBO:DisableMessages"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue(getObject("PromotionIDs"),null) + context.getFormattedValue(getObject("AppliedRebate:PromotionID"),null) + context.getFormattedValue(",",null)); getPipelineDictionary().put("PromotionIDs", temp_obj);} 
 } 
 } 
 while (loop("PLIAppliedRebate:AppliedRebates","AppliedRebate",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AppliedRebate:RebateBO:PromotionBO:DisableMessages"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("PromotionIDs"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null));
      out.write("\"\ndata-dialog class=\"details-link\"\ntitle=\"");
 {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.widget.promotion.details","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
 } 
      out.write("</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("PLIWarranty:hasWarranty")))).booleanValue() && ((Boolean) (getObject("PLIWarranty:hasWarranty"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<div class=\"col-xs-8\" data-testing-id=\"widgets-cart-summary-warranty\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n<div class=\"col-xs-4 text-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>");
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShowAllProductLineItems"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (hasNext("PLI") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("</div>");
 } 
      out.write(' ');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowAllProductLineItems"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write(" \n<a data-toggle=\"collapse\" data-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("furtheritemsincart\" href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.show_all.link","",null,context.getFormattedValue(getObject("CurrentCartBO:TotalProductQuantity"),new Integer(INTEGER)),null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<span class=\"glyphicon glyphicon-chevron-down\"></span>\n</a>\n<a class=\"hidden\" data-toggle=\"collapse\" data-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("furtheritemsincart\" href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.hide_all.link","",null,context.getFormattedValue(getObject("CurrentCartBO:TotalProductQuantity"),new Integer(INTEGER)),null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<span class=\"glyphicon glyphicon-chevron-up\"></span>\n</a>");
 } 
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
