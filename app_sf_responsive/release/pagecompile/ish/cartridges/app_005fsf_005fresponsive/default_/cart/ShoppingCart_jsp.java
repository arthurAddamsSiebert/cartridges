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

public final class ShoppingCart_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} 
 {Object temp_obj = (getObject("PLI:Extension(\"Warranty\")")); getPipelineDictionary().put("PLIWarranty", temp_obj);} 
 {Object temp_obj = (getObject("CurrentCartBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayType", temp_obj);} 
 URLPipelineAction action47 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-Dispatch",null)))),null));String site47 = null;String serverGroup47 = null;String actionValue47 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-Dispatch",null)))),null);if (site47 == null){  site47 = action47.getDomain();  if (site47 == null)  {      site47 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup47 == null){  serverGroup47 = action47.getServerGroup();  if (serverGroup47 == null)  {      serverGroup47 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCart-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("cartForm");out.print("\"");out.print(" class=\"");out.print("bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue47, site47, serverGroup47,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CartReadonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" data-form-action='true' name=\"submitval\"/>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/inc/CartNavigationHead", null, "15");} 
 } 
      out.write("<div class=\"row\">\n<div class=\"col-sm-12 col-md-8\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CartReadonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "shoppingcartglobalerrormsg", new TagParameter[] {
new TagParameter("adjustBasketResultsInventory",getObject("AdjustBasketByInventoryStatus")),
new TagParameter("addToBasketResults",getObject("AddToBasketResults")),
new TagParameter("basketValidationResults",getObject("BasketValidationResults")),
new TagParameter("removeFromBasketResultsInventory",getObject("RemoveFromBasketResultsByInventory")),
new TagParameter("removeFromBasketResultsWithoutPrice",getObject("RemovedItemsWithoutPrice")),
new TagParameter("updateVariationResults",getObject("UpdateVariationResults")),
new TagParameter("orderCreationResult",getObject("OrderCreationResult")),
new TagParameter("adjustBasketResults",getObject("AdjustBasketResults"))}, 23); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Basket"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<ul class=\"list-unstyled alert alert-danger\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ERROR_Basket"),null).equals(context.getFormattedValue("BasketMaxTotalValue",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("<li>");
 {out.write(localizeISText("shopping_cart.max.total.value.error.text1","",null,getObject("BasketMaxTotalPrefCurrencyValue"),getObject("BasketTotalAmoutDifference"),null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("shopping_cart.max.total.value.error.text2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li> \n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ERROR_Basket"),null).equals(context.getFormattedValue("BasketMinTotalValue",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<li>");
 {out.write(localizeISText("shopping_cart.min.total.value.error.text1","",null,encodeString(context.getFormattedValue(getObject("BasketMinTotalPrefCurrencyValue"),null)),encodeString(context.getFormattedValue(getObject("BasketTotalAmoutDifference"),null)),null,null,null,null,null,null,null,null));} 
      out.write("</li>\n<li>");
 {out.write(localizeISText("shopping_cart.min.total.value.error.text2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li>");
 } 
      out.write("</ul>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<ul class=\"list-unstyled alert alert-danger\">\n<li>");
 {out.write(localizeISText("shopping_cart.warranty.not_available","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</li> \n</ul>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_Basket_IshPay")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Error_Basket_IshPay"),null).equals(context.getFormattedValue("FastPayGeneralError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\">");
 {out.write(localizeISText("shopping_cart.ishpay.fastpay.error.general1","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br />");
 {out.write(localizeISText("shopping_cart.ishpay.fastpay.error.general2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Warning_Basket_IshPay")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Warning_Basket_IshPay"),null).equals(context.getFormattedValue("FastPayCanceled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\">");
 {out.write(localizeISText("shopping_cart.ishpay.fastpay.warning.canceled","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/common/DynamicOrderLevelPromotion", "Dictionary", "68");} 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CartAdditionalDataExtensions", null, "70");} 
      out.write("<div class=\"list-header hidden-xs\">\n<div class=\"col-sm-8 col-lg-6 list-header-item list-header-item-descr\">");
 {out.write(localizeISText("shopping_cart.product_description.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"hidden-sm hidden-md col-lg-2 list-header-item text-right\">");
 {out.write(localizeISText("shopping_cart.qty.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-2 list-header-item column-price\">");
 {out.write(localizeISText("shopping_cart.price.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-sm-2 list-header-item column-price\">");
 {out.write(localizeISText("shopping_cart.total.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"list-body\">");
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Inventory\")")); getPipelineDictionary().put("BasketBOInventoryExtension", temp_obj);} 
 {Object temp_obj = (getObject("BasketBOInventoryExtension:InventoryStatusForProductsInWarehouse")); getPipelineDictionary().put("InventoryMappings", temp_obj);} 
 while (loop("CurrentCartBO:ProductLineItemBOs","PLI","pliIndex")) { 
      out.write("<div class=\"list-item-row list-item-row-big\">");
 {Object temp_obj = (getObject("PLI:Extension(\"Warranty\")")); getPipelineDictionary().put("PLIWarranty", temp_obj);} 
 {Object temp_obj = (getObject("PLI:Extension(\"AppliedRebate\")")); getPipelineDictionary().put("PLIAppliedRebate", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("BasketValidationResults:Adjustments(\"Products\")") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
 while (loop("BasketValidationResults:Adjustments('Products')","result",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("result:getParameter(\"AdjustBasketResult\")"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("result:getParameter(\"AdjustBasketResult\"):ProductLineItem:ID"),null).equals(context.getFormattedValue(getObject("PLI:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("result")); getPipelineDictionary().put("AdjustBasketValidationResult", temp_obj);} 
 } 
 } 
 } 
 processOpenTag(response, pageContext, "shoppingcartlineitemerrormsg", new TagParameter[] {
new TagParameter("failedAdjustBasketResult",getObject("AdjustBasketResults:Failed:get(PLI:ID)")),
new TagParameter("adjustBasketResultByInventory",getObject("AdjustBasketByInventoryStatus:Adjusted:get(PLI:ID)")),
new TagParameter("productLineItem",getObject("PLI")),
new TagParameter("addToBasketResult",getObject("AddToBasketResults:Adjusted:get(PLI:ID)")),
new TagParameter("adjustedUpdateVariationResult",getObject("UpdateVariationResults:Adjusted:get(PLI:ID)")),
new TagParameter("adjustBasketResult",getObject("AdjustBasketResults:Adjusted:get(PLI:ID)")),
new TagParameter("failedUpdateVariationResult",getObject("UpdateVariationResults:Failed:get(PLI:ID)")),
new TagParameter("adjustBasketValidationResult",getObject("AdjustBasketValidationResult"))}, 97); 
      out.write("<div class=\"col-xs-2 list-item\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("PLI:ProductSKU"),null)))),null));
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("PLI:ProductBO")),
new TagParameter("ImageType","S")}, 111); 
      out.write("</a>\n</div>\n<div class=\"col-xs-7 col-sm-6 list-item descr-container\">\n<div class=\"col-lg-9 list-item\">");
 {Object temp_obj = (getObject("InventoryMappings:get(PLI:ProductRef):InStock")); getPipelineDictionary().put("InventoryStock", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CartReadonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "plidescription", new TagParameter[] {
new TagParameter("BasketBOInventoryExtension",getObject("BasketBOInventoryExtension")),
new TagParameter("showgiftinginformation","true"),
new TagParameter("showshipwindowmessage","true"),
new TagParameter("editable","false"),
new TagParameter("variationattributes","horizontal"),
new TagParameter("index",getObject("pliIndex")),
new TagParameter("showimage","true"),
new TagParameter("pli",getObject("PLI")),
new TagParameter("owningdomain",getObject("CurrentOrganization:OwningDomain")),
new TagParameter("movable","true"),
new TagParameter("showstockinfo","true"),
new TagParameter("showavailability","true"),
new TagParameter("InventoryMappings",getObject("InventoryStock")),
new TagParameter("removable","false"),
new TagParameter("loggedin",getObject("CurrentSession:LoggedIn")),
new TagParameter("showwarranty","true")}, 121); 
 } else { 
 processOpenTag(response, pageContext, "plidescription", new TagParameter[] {
new TagParameter("BasketBOInventoryExtension",getObject("BasketBOInventoryExtension")),
new TagParameter("showgiftinginformation","true"),
new TagParameter("showshipwindowmessage","true"),
new TagParameter("editable","true"),
new TagParameter("variationattributes","horizontal"),
new TagParameter("index",getObject("pliIndex")),
new TagParameter("showimage","true"),
new TagParameter("pli",getObject("PLI")),
new TagParameter("owningdomain",getObject("CurrentOrganization:OwningDomain")),
new TagParameter("movable","true"),
new TagParameter("showstockinfo","true"),
new TagParameter("showavailability","true"),
new TagParameter("InventoryMappings",getObject("InventoryStock")),
new TagParameter("removable","true"),
new TagParameter("loggedin",getObject("CurrentSession:LoggedIn")),
new TagParameter("showwarranty","true")}, 123); 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/PromotionCodeList", null, "127");} 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CartItemDescriptionExtensions", null, "130");} 
      out.write("</div>\n<div class=\"quantity col-lg-3 list-item text-right\">\n<div class=\"form-group\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/quantity/ProductQuantity", null, "136");} 
      out.write("</div>\n</div>\n</div>\n<div class=\"col-sm-2 hidden-xs list-item column-price single-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:SingleBasePriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:SingleBasePriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>\n<div class=\"col-xs-3 col-sm-2 list-item column-price\">\n<div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:DiscountedPriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLIAppliedRebate:ItemValueRebatesTotal:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
      out.write("<div class=\"old-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLI:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLI:FreeGift"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { 
      out.write("<div class=\"list-item-promo\">");
 {out.write(localizeISText("checkout.pli.freegift.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
      out.write("</div>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("removable", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLIWarranty:WarrantyEligible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
      out.write("<div class=\"clearfix\">\n<div class=\"col-xs-7 col-sm-6 col-xs-offset-2 list-item form-inline\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/warranty/WarrantySelectionCheckout", null, "178");} 
      out.write("</div>\n<div class=\"col-sm-2 hidden-xs list-item column-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:SingleBasePriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:SingleBasePriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</div>\n<div class=\"col-xs-3 col-sm-2 list-item column-price\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</div>\n</div>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { 
      out.write("<div class=\"clearfix\">\n<div class=\"col-xs-7 col-sm-6 col-xs-offset-2 list-item form-inline\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWarrantyDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("PLIWarranty:Warranty:ProductSKU"),null)))),null));
      out.write("\" class=\"details-link\" data-dialog>");
 {out.write(localizeISText("shopping_cart.detail.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n<div class=\"col-sm-2 hidden-xs list-item text-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",210,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:SingleBasePriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:SingleBasePriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {213}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</div>\n<div class=\"col-xs-3 col-sm-2 list-item text-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceDisplayType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:PriceGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } 
      out.write("</div>\n</div>");
 } 
 } 
      out.write("</div>");
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CartReadonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("MoneyValue"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("MoneyValue:Value")).doubleValue() <=((Number)(getObject("CurrentCartBO:DiscountedItemSubtotal:Value"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",233,e);}if (_boolean_result) { 
      out.write("<button type=\"submit\" data-testing-id=\"button-update-cart\" class=\"btn btn-default pull-right\" name=\"update\" formnovalidate>");
 {out.write(localizeISText("shopping_cart.update.quantity.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 } else { 
      out.write("<button type=\"submit\" class=\"btn btn-default pull-right\" name=\"update\" disabled formnovalidate>");
 {out.write(localizeISText("shopping_cart.update.quantity.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 } 
      out.write("<div>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CartNavigationLinksExtensions", null, "238");} 
      out.write("</div>");
 } 
      out.write("</div>\n<div class=\"col-sm-12 col-md-4 order-summary\">\n<h2>");
 {out.write(localizeISText("checkout.order_details.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CartReadonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CartModulesExtensions", null, "248");} 
 } 
      out.write("<div class=\"cost-summary\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/common/CostSummary", null, "252");} 
      out.write("</div>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"OrderSummaryExtensions", null, "256");} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CartReadonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",258,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/inc/CartCheckoutButtons", null, "259");} 
 } 
      out.write("</div>\n</div>");
 out.print("</form>"); 
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