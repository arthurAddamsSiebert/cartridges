/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.cart.subscriptions.hbs.controller;

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

public final class SubscriptionEditFormController_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("moment/moment.js");
 out.print("</waplacement>"); 
 getPipelineDictionary().put("CurrentDate", new java.util.Date()); 
      out.write("\nvar controller = this;\nvar model = {\nerror: false,\ncheckoutInProgress: false,\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Days")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("\ncount: ");
 {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Days"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Weeks")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\ncount: ");
 {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Weeks"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Months")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("\ncount: ");
 {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Months"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Years")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("\ncount: ");
 {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Years"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
      out.write('\n');
 } else { 
      out.write("\ncount: 1,\n");
 }}}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Days")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("\nperiod: \"D\",\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Weeks")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("\nperiod: \"W\",\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Months")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("\nperiod: \"M\",\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Years")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("\nperiod: \"Y\",\n");
 } else { 
      out.write("\nperiod: \"W\",\n");
 }}}} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:StartDate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("\nstartDate: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:StartDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(',');
      out.write('\n');
 } else { 
      out.write("\nstartDate: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(',');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:EndDate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("\nendDate: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:EndDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(',');
      out.write('\n');
 } else { 
      out.write("\nendDate: \"\",\n");
 } 
      out.write("\nisRecurringBasket: ");
 {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:Recurring"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n};\nvar canSubmit = true;\nif (model.count % 7 === 0) {\nmodel.period = \"W\";\nmodel.count = (model.count / 7);\n}\n");
 {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Quote\")")); getPipelineDictionary().put("Quote", temp_obj);} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Quote:QuoteBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("\nmodel.isRecurringBasket = false;\nmodel.isQuoteRelatedBasket = true;\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:isRecurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("\nmodel.isRecurringBasket = true;\n");
 }} 
      out.write("\n$.i18n()\n.load(subscriptionsEditFormLocalizationProperties)\n.done(function() {\ncontroller\n.model(model)\n.update();\n});\nfunction updateStandardCheckoutButtonVisibility(show) {\nif (show) {\nvar model = controller.model();\nmodel.isRecurringBasket = false;\n$('[data-section=\"CartCheckoutButtons\"]').show();\n$('[data-section=\"subscriptionForm\"]').hide();\n$('[data-section=\"CartSubscriptionSubscribeButton\"]').hide();\nvar Validator = $('form.bv-form').data('bootstrapValidator');\nValidator.removeField($('");
      out.print(context.getFormattedValue("#",null));
      out.write("CartToSubscriptionRecurrence'));\nValidator.removeField($('");
      out.print(context.getFormattedValue("#",null));
      out.write("CartToSubscriptionStartDate'));\nValidator.removeField($('");
      out.print(context.getFormattedValue("#",null));
      out.write("CartToSubscriptionEndDate'));\n$('.cart-summary-subscription').find('.alert').remove();\n}else{\nvar model = controller.model();\nmodel.isRecurringBasket = true;\n$('.cart-summary-subscription').find('.alert').remove();\n$('[data-section=\"CartCheckoutButtons\"]').hide();\n$('[data-section=\"subscriptionForm\"]').show();\n$('[data-section=\"CartSubscriptionSubscribeButton\"]').show();\nvar Validator = $('form.bv-form').data('bootstrapValidator');\nValidator.addField($('");
      out.print(context.getFormattedValue("#",null));
      out.write("CartToSubscriptionRecurrence'));\nValidator.addField($('");
      out.print(context.getFormattedValue("#",null));
      out.write("CartToSubscriptionStartDate'), {\ntrigger: 'change keyup',\nvalidators: {\ncallback: {\nmessage: \"");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.startdate.error.notvalid","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\ncallback: function(value, validator, field) {\nvalidator.revalidateField('CartToSubscriptionEndDate');\nvar startDate = new Date(value).getTime();\nvar currentDate = new Date('");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";out.write(value);} 
      out.write("').getTime();\nif( startDate < 0 || (startDate < currentDate) ) {\nreturn false;\n}\nreturn true;\n}\n}\n}\n});\nValidator.addField($('");
      out.print(context.getFormattedValue("#",null));
      out.write("CartToSubscriptionEndDate'), {\ntrigger: 'change keyup',\nvalidators: {\ncallback: {\nmessage: \"");
 {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.enddate.error.laterthan","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\ncallback: function(value, validator, field) {\nvar startDate = new Date($('");
      out.print(context.getFormattedValue("#",null));
      out.write("CartToSubscriptionStartDate').val()).getTime();\nvar endDate = new Date(value).getTime();\nif (startDate >= endDate) {\nreturn false;\n}else{\nreturn true;\n}\n}\n}\n}\n});\n}\n}\n$(function() {\n$(document).on('change', '[name=\"CartToSubscriptionSwitch\"]', function() {\ncanSubmit = false;\ndebugger;\nif (this.value === 'default') {\nupdateStandardCheckoutButtonVisibility(true);\n}else{\nupdateStandardCheckoutButtonVisibility(false);\n}\n});\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Quote:QuoteBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { 
      out.write("\nupdateStandardCheckoutButtonVisibility(true);\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:isRecurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { 
      out.write("\nupdateStandardCheckoutButtonVisibility(false);\n");
 }} 
      out.write("\n$(document).on('click', '[name=\"SubscriptionSubscribeButton\"]', function() {\nvar Validator = $('form.bv-form').data('bootstrapValidator').validate();\nif ( Validator.isValid() ) {\nvar BasketID = '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {213}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("';\nvar period = 'P' + $('[name=\"subscriptionRecurrenceCount\"]').val() + $('[name=\"subscriptionRecurrence\"] option:selected').val();\nvar requestData = {\n\"recurrence\" : {\n\"interval\": period\n}\n};\nvar startDate = moment( $('[name=\"CartToSubscriptionStartDate\"]').val(), '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";out.write(value);} 
      out.write("'.toUpperCase()).toDate().getTime();\nvar cartToSubscriptionEndDate = $('[name=\"CartToSubscriptionEndDate\"]').val();\nvar endDate;\nif (cartToSubscriptionEndDate)\n{\nendDate = moment( cartToSubscriptionEndDate, '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";out.write(value);} 
      out.write("'.toUpperCase()).toDate().getTime();\n}\nif (!isNaN(startDate)) {\nrequestData.recurrence.startDate = startDate;\n}else{\nrequestData.recurrence.startDate = new Date().getTime();\n}\nif (!isNaN(endDate)) {\nrequestData.recurrence.endDate = endDate;\n}else{\nrequestData.recurrence.endDate = '';\n}\n$('[name=\"SubscriptionSubscribeButton\"]').attr(\"disabled\", true).addClass('btn-loader');\nvar client = new ISHRestClient();\nclient\n.customer(false)\n.update('/baskets/' + BasketID, requestData)\n.then(function(data) {\ncanSubmit = true;\n$('[type=\"submit\"][name=\"checkout\"]').prop('disabled', false).click();\n}, function() {\nvar model = controller.model();\nmodel.error = true;\ncanSubmit = false;\ncontroller\n.model(model)\n.update();\n$(document).trigger('init.datepicker');\n});\n}\n});\n$(document).on('click', '[type=\"submit\"][name=\"checkout\"]', function(e) {\nif (canSubmit) {\nreturn true;\n}\nvar model = controller.model();\nvar BasketID = '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {284}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("';\nvar requestData = {\n\"recurrence\" : {\n\"interval\": \"P0D\"\n}\n};\nvar client = new ISHRestClient();\nclient\n.customer(false)\n.update('/baskets/' + BasketID, requestData)\n.then(function(data) {\ncanSubmit = true;\n$('[type=\"submit\"][name=\"checkout\"]').click();\n}, function() {\nvar model = controller.model();\nmodel.error = true;\ncanSubmit = false;\ncontroller\n.model(model)\n.update();\nupdateStandardCheckoutButtonVisibility(false);\n});\nreturn false;\n});\n});\n");
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
