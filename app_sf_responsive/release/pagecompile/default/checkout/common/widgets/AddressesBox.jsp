<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingBucket\"):MultipleShipToAddresses")); getPipelineDictionary().put("MultipleShipToAddresses", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("MultipleShipToAddresses"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentCartBO:MultipleShipmentsSupported"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingBucket\")")); getPipelineDictionary().put("OrderShippingBucket", temp_obj);} %><% {Object temp_obj = (getObject("OrderShippingBucket:SoleShipToAddressBO")); getPipelineDictionary().put("CommonShipToAddress", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CurrentCartBO:CommonShipToAddressBO")); getPipelineDictionary().put("CommonShipToAddress", temp_obj);} %><% } %><% } %> 
<div class="address-summary">
<div class="clearfix">
<a class="pull-right btn-tool" href = "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddressBook-EditAddress",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("CurrentCartBO:InvoiceToAddressBO:URN"),null)))),null)%>" title="<% {out.write(localizeISText("checkout.address.update.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span class="glyphicon glyphicon-pencil"></span></a> 
<h5 class="pull-left"><% {out.write(localizeISText("checkout.address.billing.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h5>
</div>
<div data-testing-id="address-summary-invoice-to-address"><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",(((Boolean) (getObject("CurrentSession:LoggedIn"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("address",getObject("CurrentCartBO:InvoiceToAddressBO"))}, 21); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("MultipleAddressesForm")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><div class="clearfix"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MultipleShipToAddresses"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuardJSToken", null, "28");} %><a class="pull-right btn-tool" data-csrf-guarded href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutMultipleAddresses-SelectMultipleShipToAddresses",null)))),null)%>" title="<% {out.write(localizeISText("checkout.address.update.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span class="glyphicon glyphicon-pencil"></span></a><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CommonShipToAddress:Country")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CommonShipToAddress:Country"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CommonShipToAddress:CountryCode")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CommonShipToAddress:CountryCode"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CommonShipToAddress:City")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CommonShipToAddress:City"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CommonShipToAddress:MainDivision")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CommonShipToAddress:MainDivision"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CommonShipToAddress:AddressLine1")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CommonShipToAddress:AddressLine1"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><a class="pull-right btn-tool" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddressBook-EditAddress",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("CommonShipToAddress:URN"),null)))),null)%>" title="<% {out.write(localizeISText("checkout.address.update.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span class="glyphicon glyphicon-pencil"></span></a><% } %><% } %><h5><% {out.write(localizeISText("checkout.address.shipping.label","",null,null,null,null,null,null,null,null,null,null,null));} %></h5>
</div> 
<div data-testing-id="address-summary-ship-to-address"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MultipleShipToAddresses"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><address><% {out.write(localizeISText("checkout.multiple_addresses_selected.text","",null,null,null,null,null,null,null,null,null,null,null));} %></address><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentCartBO:InvoiceToAddressBO:hasSameAddressData(CommonShipToAddress)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><address><% {out.write(localizeISText("checkout.same_as_billing_address.text","",null,null,null,null,null,null,null,null,null,null,null));} %></address><% } else { %><% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("showemail",(((context.getFormattedValue(getObject("CurrentCartBO:TotalProductQuantity"),null).equals(context.getFormattedValue(getObject("CurrentCartBO:ShippedByEmailProductsQuantity"),null)))) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("address",getObject("CommonShipToAddress"))}, 47); %><% }} %></div><% } %> 
</div><% printFooter(out); %>