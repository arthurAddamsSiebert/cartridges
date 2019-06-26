/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.checkout.review;

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

public final class LineItemsPerBucket_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"section\">\n<div class=\"list-header\">\n<div class=\"list-header-item col-sm-5\">");
 {out.write(localizeISText("checkout.shipping.pli.description.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-lg-1 visible-lg\">");
 {out.write(localizeISText("checkout.shipping.pli.qty.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-3 col-lg-2\">");
 {out.write(localizeISText("checkout.shipping.pli.availability.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-2 column-price\">");
 {out.write(localizeISText("checkout.pli.price.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"list-header-item col-sm-2 column-price\">");
 {out.write(localizeISText("checkout.pli.total.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"list-body\">");
 while (loop("Bucket:ProductLineItemBOs","PLI",null)) { 
 {Object temp_obj = (getObject("PLI:Extension(\"Warranty\")")); getPipelineDictionary().put("PLIWarranty", temp_obj);} 
 {Object temp_obj = (getObject("PLI:Extension(\"Gifting\")")); getPipelineDictionary().put("PLIGifting", temp_obj);} 
 {Object temp_obj = (getObject("PLI:Extension(\"AppliedRebate\")")); getPipelineDictionary().put("PLIAppliedRebate", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PLI:isHiddenGift"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<div class=\"list-item-row-big list-item-row\">\n<div class=\"col-xs-9 col-sm-5 list-item\">");
 processOpenTag(response, pageContext, "plidescription", new TagParameter[] {
new TagParameter("showid","true"),
new TagParameter("editable","false"),
new TagParameter("variationattributes","horizontal"),
new TagParameter("showimage","false"),
new TagParameter("showwarranty","false"),
new TagParameter("pli",getObject("PLI")),
new TagParameter("owningdomain",getObject("CurrentOrganization:OwningDomain"))}, 28); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PLI:ProductBO:ServiceType:PhysicalGiftCard")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PLI:ProductBO:ServiceType:PhysicalGiftCard"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 {try{executePipeline("ProcessPrepareOrderReceiptViewOfGiftCards-PrepareOrderReceiptView",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Domain",getObject("CurrentOrganization:OwningDomain")))).addParameter(new ParameterEntry("PLIUUID",getObject("PLI:ID")))))),"GiftCardsDetail");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 32.",e);}} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("GiftCardsDetail:GiftCardService:Capabilities:OrderReceiptPliTemplate"),null), null, "33");} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("GiftWrap_Switch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GiftWrap_Switch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("GiftMessage_Switch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GiftMessage_Switch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("PLIGifting:GiftOptionMarked")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PLIGifting:GiftOptionMarked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<span>");
 {out.write(localizeISText("checkout.gifting.giftwrap.header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;");
 {out.write(localizeISText("checkout.gifting.pli.selected.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BasketBO:RequisitionDocumentNo"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutGifting-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ID",null),context.getFormattedValue(getObject("PLI:ID"),null))).addURLParameter(context.getFormattedValue("BID",null),context.getFormattedValue(getObject("Bucket:ID"),null))),null));
      out.write("\" title=\"");
 {out.write(localizeISText("checkout.gifting.pli.edit.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.gifting.pli.edit.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("<br />");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PLIGifting:GiftWrappable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PLIGifting:GiftWrappable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PLIGifting:GiftMessagable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PLIGifting:GiftMessagable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<span>");
 {out.write(localizeISText("checkout.gifting.giftwrap.header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;");
 {out.write(localizeISText("checkout.gifting.pli.notselected.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BasketBO:RequisitionDocumentNo"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutGifting-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ID",null),context.getFormattedValue(getObject("PLI:ID"),null))).addURLParameter(context.getFormattedValue("BID",null),context.getFormattedValue(getObject("Bucket:ID"),null))),null));
      out.write("\" title=\"");
 {out.write(localizeISText("checkout.gifting.pli.edit.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.gifting.pli.edit.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
      out.write("<br />");
 }} 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/PromotionCodeList", null, "52");} 
      out.write("</div>\n<div class=\"hidden-xs col-sm-2 col-sm-push-3 list-item column-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:SingleBasePriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:SingleBasePriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>\n<div class=\"col-xs-3 col-sm-2 col-sm-push-3 list-item column-price\">\n<div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLIAppliedRebate:ItemValueRebatesTotal:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("<div class=\"old-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>");
 } 
      out.write("&nbsp;\n</div>\n<div class=\"clearfix visible-xs-block\"></div>\n<div class=\"col-sm-3 col-sm-pull-4 col-lg-2 col-lg-pull-3 list-item\">\n<p>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PLI:ProductBO:Available"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<span class=\"product-in-stock\">");
 {out.write(localizeISText("checkout.pli.instock.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } else { 
      out.write("<span class=\"product-out-of-stock\">");
 {out.write(localizeISText("checkout.pli.out_of_stock.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>");
 } 
      out.write("</p>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLI:DesiredDeliveryDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("<span>");
 {out.write(localizeISText("checkout.shipping.pli.dddate.short.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</span>\n<span data-testing-class=\"pli-desiredDeliveryDate\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:DesiredDeliveryDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BasketBO:RequisitionDocumentNo"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<a data-csrf-guarded href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutShipping-Review",null)))),null));
      out.write("\" title=\"");
 {out.write(localizeISText("checkout.shipping.pli.dddate.edit.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("checkout.shipping.pli.dddate.edit.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } 
 } 
      out.write("</div>\n<div class=\"clearfix visible-md-block visible-sm-block visible-xs-block\"></div>\n<div class=\"col-lg-pull-6 col-lg-1 list-item\">\n<label class=\"hidden-lg control-label\">");
 {out.write(localizeISText("checkout.shipping.pli.qty.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>");
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("<div class=\"clearfix\">\n<div class=\"col-xs-9 col-sm-8 list-item\" data-testing-id=\"checkout-pli-warranty-details\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<a class=\"details-link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWarrantyDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("PLIWarranty:Warranty:ProductSKU"),null)))),null));
      out.write("\" data-dialog>");
 {out.write(localizeISText("checkout.pli.warranty.details.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n<div class=\"hidden-xs col-sm-2 list-item column-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:SingleBasePriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:SingleBasePriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</div>\n<div class=\"col-xs-3 col-sm-2 list-item column-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>\n</div>");
 } 
      out.write("</div>");
 } 
      out.write(' ');
      out.write('\n');
 } 
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