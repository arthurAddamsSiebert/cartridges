/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.modules.account.productnotification;

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

public final class ProductNotificationDialog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
      out.write("<div class=\"modal-dialog\">\n<div class=\"modal-content\">\n<div class=\"modal-header\">\n<button type=\"button\" class=\"close\" data-dismiss=\"modal\" title=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" aria-label=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"><span aria-hidden=\"true\">&times;</span></button>\n<h2 class=\"modal-title\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ListItem:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</h2>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_ALERT_NOT_FOUND")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_ProductNotFound")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<div class=\"modal-body\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ALERT_NOT_FOUND"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\" role=\"alert\">\n<p>");
 {out.write(localizeISText("account.productnotification.form.err_msg_alert_not_found","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ProductNotFound"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\" role=\"alert\">\n<p>");
 {out.write(localizeISText("account.productnotification.form.err_msg_invalid_product","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 } 
      out.write("</div>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
 URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ListItem:Product:ProductRef:ProductSKU"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ListItem:Product:ProductRef:ProductSKU"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ListItem:Product:ProductRef:ProductSKU"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))),null));out.print("\"");out.print(" name=\"");out.print("AlertForm");out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); 
      out.write("<div class=\"modal-body\">\n<input type=\"hidden\" name=\"webform-id\" value=\"AlertForm\" />\n<input type=\"hidden\" name=\"AlertUUID\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListItem:UUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ListItem:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_PRICE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\" role=\"alert\">\n<p>");
 {out.write(localizeISText("account.productnotification.form.err_msg_invalid_price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\" role=\"alert\">\n<p>");
 {out.write(localizeISText("account.productnotification.form.err_msg_invalid_email","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 } 
      out.write("<div>\n<img alt=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListItem:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\ndata-type=\"L\" data-test=\"true\" \nsrc=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Extension(\"Image\"):ImageContainerBO:PrimaryImageBO(\"L\"):EffectiveUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n</div>\n<fieldset>\n<div class=\"radio\">\n<label for=\"NoNotification\">\n<input type=\"radio\" class=\"inputRadio\" name=\"Alert_Type\" value=\"NoNotification\" id=\"NoNotification\" />");
 {out.write(localizeISText("account.productnotification.form.no_notification","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListItem:HandlerClassName"),null).equals(context.getFormattedValue("com.intershop.component.mvc.capi.alert.StockConditionHandler",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<div class=\"radio\">\n<label for=\"InStockNotification\">\n<input type=\"radio\" class=\"inputRadio\" name=\"Alert_Type\" value=\"InStockNotification\" id=\"InStockNotification\" checked=\"checked\" />");
 {out.write(localizeISText("account.productnotification.form.back_in_stock","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListItem:HandlerClassName"),null).equals(context.getFormattedValue("com.intershop.component.mvc.capi.alert.PriceConditionHandler",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("<div class=\"radio\">\n<label for=\"PriceNotification\">\n<input type=\"radio\" class=\"inputRadio\" name=\"Alert_Type\" value=\"PriceNotification\" id=\"PriceNotification\" checked=\"checked\" />");
 {out.write(localizeISText("account.productnotification.form.price_drop_to","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</div>");
 } 
      out.write("</fieldset>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListItem:HandlerClassName"),null).equals(context.getFormattedValue("com.intershop.component.mvc.capi.alert.PriceConditionHandler",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("<div class=\"form-group\">\n<label class=\"col-sm-2 control-label\" for=\"PriceValue\" class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_PRICE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write(" inputError");
 } 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.productnotification.form.price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-6 form-inline\">");
 while (loop("Currencies","currency",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("ProductBO:Price:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("currency:CurrencySymbol"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } 
 } 
      out.write("<input class=\"form-control\" type=\"text\" name=\"PriceValue\" id=\"PriceValue\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListItem:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ListItem:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" />");
 processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 94); 
      out.write("</div>\n</div>");
 } 
      out.write("<div class=\"form-group\">\n<label class=\"col-sm-2 control-label\" for=\"AlertForm_NotificationMailAddress\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AlertForm:NotificationMailAddress:isMissing")).booleanValue() || ((Boolean) getObject("AlertForm:NotificationMailAddress:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write(" class=\"inputError\"");
 } 
      out.write('>');
 {out.write(localizeISText("account.productnotification.form.email","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-6\">\n<input class=\"form-control\" type=\"text\" name=\"AlertForm_NotificationMailAddress\" id=\"AlertForm_NotificationMailAddress\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeValuesMap:NotificationMailAddress:StringValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeValuesMap:NotificationMailAddress:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" />\n</div>\n</div>\n</div>\n<div class=\"modal-footer\">\n<input type=\"hidden\" data-form-action=\"true\"/>\n<button type=\"submit\" class=\"btn btn-primary\" name=\"submitUpdate\" value=\"Update\">");
 {out.write(localizeISText("account.productnotification.form.update","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" name=\"cancel\">");
 {out.write(localizeISText("account.productnotification.form.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>");
 out.print("</form>"); 
 } else { 
 URLPipelineAction action7 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))),null));String site7 = null;String serverGroup7 = null;String actionValue7 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))),null);if (site7 == null){  site7 = action7.getDomain();  if (site7 == null)  {      site7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup7 == null){  serverGroup7 = action7.getServerGroup();  if (serverGroup7 == null)  {      serverGroup7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))),null));out.print("\"");out.print(" name=\"");out.print("AlertForm");out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue7, site7, serverGroup7,true)); 
      out.write("<div class=\"modal-body\">\n<input type=\"hidden\" name=\"webform-id\" value=\"AlertForm\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_PRICE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\" role=\"alert\">\n<p>");
 {out.write(localizeISText("account.productnotification.form.err_msg_invalid_price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\" role=\"alert\">\n<p>");
 {out.write(localizeISText("account.productnotification.form.err_msg_invalid_email","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>");
 } 
      out.write("<div>\n<img alt=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \ndata-type=\"L\" data-test=\"true\" \nsrc=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Extension(\"Image\"):ImageContainerBO:PrimaryImageBO(\"L\"):EffectiveUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n</div>\n<fieldset>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductBO:InventoryStatus:InStock")).booleanValue() && !((Boolean) getObject("ProductBO:isLastOrderDate")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"Alert_Type\" value=\"PriceNotification\" id=\"PriceNotification\"/>\n<h4>");
 {out.write(localizeISText("account.productnotification.form.price_drop_to","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h4>\n<div class=\"form-group\">\n<label class=\"col-sm-2 control-label\" for=\"PriceValue\" class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_PRICE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { 
      out.write(" inputError");
 } 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.productnotification.form.price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-6 form-inline\">");
 while (loop("Currencies","currency",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("ProductBO:Price:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("currency:CurrencySymbol"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } 
 } 
 processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 153); 
 processOpenTag(response, pageContext, "getproductpricecontext", new TagParameter[] {
new TagParameter("CustomerBO",getObject("CustomerBO")),
new TagParameter("ProductPriceContext","ProductPriceContext")}, 154); 
 {Object temp_obj = (getObject("ProductBO:Extension(\"Pricing\")")); getPipelineDictionary().put("ProductPrice", temp_obj);} 
 {Object temp_obj = (getObject("ProductPrice:Price(\"SalePrice\",CurrentRequest:Currency,ProductPriceContext)")); getPipelineDictionary().put("SalePrice", temp_obj);} 
      out.write("<input class=\"form-control\" type=\"text\" name=\"PriceValue\" id=\"PriceValue\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SalePrice:Range"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("SalePrice:PriceRange:MinimumPrice"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("SalePrice:Price:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("SalePrice:Price"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Price"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 }} 
      out.write("\" />");
 processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 160); 
      out.write("</div>\n</div>");
 } else { 
      out.write("<input type=\"hidden\" name=\"Alert_Type\" value=\"InStockNotification\" id=\"InStockNotification\"/>\n<p>");
 {out.write(localizeISText("account.productnotification.form.back_in_stock","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("<div class=\"form-group\">\n<label class=\"col-sm-2 control-label\" for=\"AlertForm_NotificationMailAddress\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AlertForm:NotificationMailAddress:isMissing")).booleanValue() || ((Boolean) getObject("AlertForm:NotificationMailAddress:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
      out.write(" class=\"inputError\"");
 } 
      out.write('>');
 {out.write(localizeISText("account.productnotification.form.email","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-sm-6\">\n<input class=\"form-control\" type=\"text\" name=\"AlertForm_NotificationMailAddress\" id=\"AlertForm_NotificationMailAddress\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("CurrentUser:Profile:Email"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Email"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("CurrentUser:Profile:DefaultAddress:EMail"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:DefaultAddress:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 }} 
      out.write("\" />\n</div>\n</div>\n</fieldset>\n</div>\n<div class=\"modal-footer\">\n<input type=\"hidden\" data-form-action=\"true\"/>\n<button type=\"submit\" class=\"btn btn-primary\" name=\"submitNew\" value=\"Ok\">");
 {out.write(localizeISText("account.productnotification.form.ok","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" name=\"cancel\">");
 {out.write(localizeISText("account.productnotification.form.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>");
 out.print("</form>"); 
 } 
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
