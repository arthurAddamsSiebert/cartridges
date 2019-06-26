<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
var controller = this;
$.i18n()
.load(subscriptionsLocalizationProperties)
.done(function() {
subscriptionsRefreshList();
});
function subscriptionsRefreshList() {
controller
.model({ loading: true })
.update();
var client = new ISHRestClient();
client
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentUserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_ACCOUNT_OWNER\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
.customer(RESTConfiguration.getCustomerUrlPart(true))
<% } %>
.get('/recurringorders').then(function(data) {
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentUserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_ACCOUNT_OWNER\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
$.each(data.elements, function(i, item) {
item.showBuyer = true;
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserBO:LastName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CurrentUserBO:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
if (typeof item.buyer !== 'undefined') {
if (typeof item.buyer.firstName !== 'undefined') {
var firstName = item.buyer.firstName;
}else{
var firstName = "";
}
if (typeof item.buyer.lastName !== 'undefined') {
var lastName = item.buyer.lastName;
}else{
var lastName = "";
}
var fullName = firstName + " " + lastName;
if (fullName === '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>') {
item.ownUser = true;
}
}
<% } %>
});
<% } %>
controller.model(data);
subscriptionsSortAndFilter();
}, function() {
var model = {error: true};
controller
.model(model)
.update();
});
}
$(document).on(
'subscriptions.refresh subscriptions.activate.succesfully subscriptions.deactivate.succesfully',
subscriptionsRefreshList
);
$(document).on('keyup', '[data-filter="SubscriptionsListFilter"]', subscriptionsSortAndFilter);
$(document).on('click', '[data-filter="EmptySubscriptionsListFilter"]', function() {
$('[data-filter="SubscriptionsListFilter"]').val('').trigger('subscriptions.refresh');
});
$(document).on('change', '[data-sort="SubscriptionsListSort"]', subscriptionsSortAndFilter);
function filterBy(subscriptionsList) {
var model = controller.model();
controller.filterElements(false);
var searchString = $('[data-filter="SubscriptionsListFilter"]')
.val()
.toString()
.toLowerCase()
.trim();
if (searchString !== '') {
model.filterNotEmpty = true;
controller
.model(model)
.filterElements(function(item) {
var buyerName = "";
if (typeof item.buyer !== 'undefined' && 
typeof item.buyer.firstName !== 'undefined' && 
typeof item.buyer.lastName !== 'undefined') {
var buyerName = item.buyer.firstName + ' ' + item.buyer.lastName;
}
// Filter on "number" or "buyer" value
if (item.number.indexOf(searchString) === 0 ||
item.number.indexOf(searchString) !== -1 ||
buyerName.toLowerCase().indexOf(searchString) != -1
) {
return true;
}else{
return false;
}
}, subscriptionsList);
}else{
model.filterNotEmpty = false;
controller
.model(model)
.filterElements(false, subscriptionsList);
}
}
function subscriptionsSortAndFilter() {
var model = controller.model();
filterBy(controller.model());
var sortBy = $('[data-sort="SubscriptionsListSort"] option:selected').val();
if (sortBy !== '' && typeof model.elements !== 'undefined') {
if (sortBy === 'date_asc') {
model.elements.sort(function(a,b){
return a.creationDate - b.creationDate
});
}
if (sortBy === 'date_desc') {
model.elements.sort(function(a,b){
return b.creationDate - a.creationDate;
});
}
if (sortBy === 'ordertotal_asc') {
model.elements.sort(function(a,b){
if (a.priceType === 'net') {
var a_total = a.totalNet.value;
var b_total = b.totalNet.value;
}else{
var a_total = a.totalGross.value;
var b_total = b.totalGross.value;
}
if (a_total > b_total) {
return 1;
}
if (a_total < b_total) {
return -1;
}
return 0;
});
}
if (sortBy === 'ordertotal_desc') {
model.elements.sort(function(a,b){
if (a.priceType === 'net') {
var a_total = a.totalNet.value;
var b_total = b.totalNet.value;
}else{
var a_total = a.totalGross.value;
var b_total = b.totalGross.value;
}
if (a_total < b_total) {
return 1;
}
if (a_total > b_total) {
return -1;
}
return 0;
});
}
}
if (typeof model.elements !== 'undefined') {
model.elements.sort(function(a,b){
if (!a.active) {
return 1;
}
return 0;
});
}
controller.update();
}
<% printFooter(out); %>