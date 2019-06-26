<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentServiceBO:PaymentServiceID"),null).equals(context.getFormattedValue("ISH_CREDITCARD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><ul class="creditcards list-inline">
<li 
class="creditcards-vsa" title="Visa">Visa</li><li 
class="creditcards-dcv" title="Discover">Discover</li><li 
class="creditcards-amx" title="American Express">American Express</li><li 
class="creditcards-mas" title="Master Card">Master Card</li><li 
class="creditcards-jcb" title="JCB">JCB
</li>
</ul>
<script type="text/javascript">
$(document).ready(function() {
/* Mask credit card number, expiration date and iban*/
maskPropertyInput($("input[name$='creditCardNumber']"), '9999-9999-9999-9?999', {unmaskOnSubmit: true});
maskPropertyInput($("input[name$='creditCardExpiryDate']"), '99/99');
maskPropertyInput($("input[name$='IBAN']"), 'aa99 9999 9999 999?9 9999 9999 9999 9999 99', {unmaskOnSubmit:true});
/**
* Credit Card formatting and match test
**/
$("input[name$='creditCardNumber']").on('keyup', function(e){
var ccnum = $(e.target).val().replace(/[^\d]/g, '');
$("select[name$='creditCardType']").removeAttr('disabled');
if (ccnum.match(/^4[0-9]{12}(?:[0-9]{3})?$/)) {
// Visa: length 16 or 13 (old cards), prefix 4 
selectCreditCard('Visa', 'vsa', $(e.target));
} else if (ccnum.match(/^5[1-5]\d{2}-?\d{4}-?\d{4}-?\d{4}$/)) {
// Mastercard: length 16, prefix 51-55, dashes optional.
selectCreditCard('MasterCard', 'mas', $(e.target));
} else if (ccnum.match(/^6(?:011|5[0-9]{2})-?\d{4}-?\d{4}-?\d{4}$/)) {
// Discover: length 16, prefix 6011 or 65, dashes optional.
selectCreditCard('Discover', 'dcv', $(e.target));
} else if (ccnum.match(/^3[4,7]\d{13}$/)) {
// American Express: length 15, prefix 34 or 37.
selectCreditCard('Amex', 'amx', $(e.target));
} else if (ccnum.match(/^(?:2131|1800|35\d{3})\d{11}$/)) { 
// JCB: length 14, prefix 30, 36, or 38.
selectCreditCard('JCB', 'jcb', $(e.target));
} 
});
/**
* Select credit card type based on cardnumber entered
*/
function selectCreditCard(type, id, ccinput){ 
ccinput.closest('.propertygroup').find("select[name$='creditCardType']").trigger("change.propertygroup").val(id).attr('disabled', 'disabled'); 
}
/**
* Maskiere ein property input field
*/
function maskPropertyInput(selector, masking, options){ 
selector.mask(masking, {placeholder:" ", autoclear:false}).closest("form").addClass('form-maskedinput'); 
selector.on('keyup', function(e){ 
$(e.target).trigger("input.propertygroup"); /* property group editor fix */
});
/* on submit remove formatting signs */
if (options && options.unmaskOnSubmit) {
$(".form-maskedinput").on('beforesubmit', function(e){
var value = selector.unmask().val();
if (value) {
selector.val(value.replace(/(\-| )/g, ''));
}
});
} 
}
}); 
</script>
<div class="hidden" data-creditcard-data-dialog>
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("CheckoutMini.ISHCreditCardDemoData","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body">
<p><% {out.write(localizeISText("CheckoutMini.PleaseUseOneOfTheFollowingCreditCardsFor","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment_demo/ishpay/inc/CreditCardDemoData", null, "89");} %></div>
</div>
</div>
</div> 
<% } %><% printFooter(out); %>