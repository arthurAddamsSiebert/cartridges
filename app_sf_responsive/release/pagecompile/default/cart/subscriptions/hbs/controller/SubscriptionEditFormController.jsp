<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>moment/moment.js<% out.print("</waplacement>"); %><% getPipelineDictionary().put("CurrentDate", new java.util.Date()); %>
var controller = this;
var model = {
error: false,
checkoutInProgress: false,
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Days")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
count: <% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Days"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Weeks")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
count: <% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Weeks"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Months")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
count: <% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Months"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Years")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
count: <% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:Interval:Years"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
<% } else { %>
count: 1,
<% }}}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Days")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
period: "D",
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Weeks")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
period: "W",
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Months")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
period: "M",
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("RecurringBasket:RecurrenceInformation:Interval:Years")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
period: "Y",
<% } else { %>
period: "W",
<% }}}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:StartDate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
startDate: "<% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:StartDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";out.write(value);} %>",
<% } else { %>
startDate: "<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";out.write(value);} %>",
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:EndDate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
endDate: "<% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:RecurrenceInformation:EndDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";out.write(value);} %>",
<% } else { %>
endDate: "",
<% } %>
isRecurringBasket: <% {String value = null;try{value=context.getFormattedValue(getObject("RecurringBasket:Recurring"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
};
var canSubmit = true;
if (model.count % 7 === 0) {
model.period = "W";
model.count = (model.count / 7);
}
<% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"Quote\")")); getPipelineDictionary().put("Quote", temp_obj);} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Quote:QuoteBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
model.isRecurringBasket = false;
model.isQuoteRelatedBasket = true;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:isRecurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
model.isRecurringBasket = true;
<% }} %>
$.i18n()
.load(subscriptionsEditFormLocalizationProperties)
.done(function() {
controller
.model(model)
.update();
});
function updateStandardCheckoutButtonVisibility(show) {
if (show) {
var model = controller.model();
model.isRecurringBasket = false;
$('[data-section="CartCheckoutButtons"]').show();
$('[data-section="subscriptionForm"]').hide();
$('[data-section="CartSubscriptionSubscribeButton"]').hide();
var Validator = $('form.bv-form').data('bootstrapValidator');
Validator.removeField($('<%=context.getFormattedValue("#",null)%>CartToSubscriptionRecurrence'));
Validator.removeField($('<%=context.getFormattedValue("#",null)%>CartToSubscriptionStartDate'));
Validator.removeField($('<%=context.getFormattedValue("#",null)%>CartToSubscriptionEndDate'));
$('.cart-summary-subscription').find('.alert').remove();
}else{
var model = controller.model();
model.isRecurringBasket = true;
$('.cart-summary-subscription').find('.alert').remove();
$('[data-section="CartCheckoutButtons"]').hide();
$('[data-section="subscriptionForm"]').show();
$('[data-section="CartSubscriptionSubscribeButton"]').show();
var Validator = $('form.bv-form').data('bootstrapValidator');
Validator.addField($('<%=context.getFormattedValue("#",null)%>CartToSubscriptionRecurrence'));
Validator.addField($('<%=context.getFormattedValue("#",null)%>CartToSubscriptionStartDate'), {
trigger: 'change keyup',
validators: {
callback: {
message: "<% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.startdate.error.notvalid","",null,null,null,null,null,null,null,null,null,null,null));} %>",
callback: function(value, validator, field) {
validator.revalidateField('CartToSubscriptionEndDate');
var startDate = new Date(value).getTime();
var currentDate = new Date('<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";out.write(value);} %>').getTime();
if( startDate < 0 || (startDate < currentDate) ) {
return false;
}
return true;
}
}
}
});
Validator.addField($('<%=context.getFormattedValue("#",null)%>CartToSubscriptionEndDate'), {
trigger: 'change keyup',
validators: {
callback: {
message: "<% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.enddate.error.laterthan","",null,null,null,null,null,null,null,null,null,null,null));} %>",
callback: function(value, validator, field) {
var startDate = new Date($('<%=context.getFormattedValue("#",null)%>CartToSubscriptionStartDate').val()).getTime();
var endDate = new Date(value).getTime();
if (startDate >= endDate) {
return false;
}else{
return true;
}
}
}
}
});
}
}
$(function() {
$(document).on('change', '[name="CartToSubscriptionSwitch"]', function() {
canSubmit = false;
debugger;
if (this.value === 'default') {
updateStandardCheckoutButtonVisibility(true);
}else{
updateStandardCheckoutButtonVisibility(false);
}
});
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Quote:QuoteBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %>
updateStandardCheckoutButtonVisibility(true);
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:isRecurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>
updateStandardCheckoutButtonVisibility(false);
<% }} %>
$(document).on('click', '[name="SubscriptionSubscribeButton"]', function() {
var Validator = $('form.bv-form').data('bootstrapValidator').validate();
if ( Validator.isValid() ) {
var BasketID = '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {213}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';
var period = 'P' + $('[name="subscriptionRecurrenceCount"]').val() + $('[name="subscriptionRecurrence"] option:selected').val();
var requestData = {
"recurrence" : {
"interval": period
}
};
var startDate = moment( $('[name="CartToSubscriptionStartDate"]').val(), '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";out.write(value);} %>'.toUpperCase()).toDate().getTime();
var cartToSubscriptionEndDate = $('[name="CartToSubscriptionEndDate"]').val();
var endDate;
if (cartToSubscriptionEndDate)
{
endDate = moment( cartToSubscriptionEndDate, '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";out.write(value);} %>'.toUpperCase()).toDate().getTime();
}
if (!isNaN(startDate)) {
requestData.recurrence.startDate = startDate;
}else{
requestData.recurrence.startDate = new Date().getTime();
}
if (!isNaN(endDate)) {
requestData.recurrence.endDate = endDate;
}else{
requestData.recurrence.endDate = '';
}
$('[name="SubscriptionSubscribeButton"]').attr("disabled", true).addClass('btn-loader');
var client = new ISHRestClient();
client
.customer(false)
.update('/baskets/' + BasketID, requestData)
.then(function(data) {
canSubmit = true;
$('[type="submit"][name="checkout"]').prop('disabled', false).click();
}, function() {
var model = controller.model();
model.error = true;
canSubmit = false;
controller
.model(model)
.update();
$(document).trigger('init.datepicker');
});
}
});
$(document).on('click', '[type="submit"][name="checkout"]', function(e) {
if (canSubmit) {
return true;
}
var model = controller.model();
var BasketID = '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentCartBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {284}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';
var requestData = {
"recurrence" : {
"interval": "P0D"
}
};
var client = new ISHRestClient();
client
.customer(false)
.update('/baskets/' + BasketID, requestData)
.then(function(data) {
canSubmit = true;
$('[type="submit"][name="checkout"]').click();
}, function() {
var model = controller.model();
model.error = true;
canSubmit = false;
controller
.model(model)
.update();
updateStandardCheckoutButtonVisibility(false);
});
return false;
});
});
<% printFooter(out); %>