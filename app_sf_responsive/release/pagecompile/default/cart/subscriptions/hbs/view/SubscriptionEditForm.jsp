<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="cart-summary cart-summary-subscription" data-testing-id="cartSubscriptionSection">
<div class="radio">
<label>
<input data-testing-id="cart-selector-onetimepurchace" type="radio" name="CartToSubscriptionSwitch" value="default"{{<%=context.getFormattedValue("#",null)%>unless isRecurringBasket}} checked="checked"{{/unless}} />
<strong><% {out.write(localizeISText("shopping_cart.costsummary.subscription.checkbox.onetimepurchase","",null,null,null,null,null,null,null,null,null,null,null));} %></strong>
</label>
</div>
<div class="radio">
<label>
<input data-testing-id="cart-selector-subscription" type="radio" name="CartToSubscriptionSwitch" value="subscription"
{{<%=context.getFormattedValue("#",null)%>if isRecurringBasket}} checked="checked"{{/if}}
{{<%=context.getFormattedValue("#",null)%>if isQuoteRelatedBasket}} disabled="disabled"{{/if}} 
/>
<strong><% {out.write(localizeISText("shopping_cart.costsummary.subscription.checkbox.subscription","",null,null,null,null,null,null,null,null,null,null,null));} %></strong>
</label>
</div>
{{<%=context.getFormattedValue("#",null)%>if error}}
<p class="alert alert-danger"><% {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{/if}}
{{<%=context.getFormattedValue("#",null)%>if isQuoteRelatedBasket}}
<p class="alert alert-info"><% {out.write(localizeISText("subscription.rest.quoterelatedbasket.info","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
{{/if}}
<div data-testing-id="cartSubscriptionForm" data-section="subscriptionForm" {{<%=context.getFormattedValue("#",null)%>unless isRecurringBasket}}style="display: none;"{{/unless}}>
<div class="row">
<div class="col-md-12">
<label for="CartToSubscriptionRecurrence"><% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.recurrence","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</div>
<div class="col-xs-4 col-md-4">
<div class="form-group">
<input data-testing-id="subscriptionRecurrenceCount" type="number" min="1" class="form-control" id="CartToSubscriptionRecurrence" name="subscriptionRecurrenceCount"
value="{{count}}" required data-bv-notempty-message="<% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.recurrence.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
<div class="col-xs-8 col-md-8">
{{periodSelector "subscriptionRecurrence" period "subscriptionInterval"}}
</div>
</div>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<label for="CartToSubscriptionStartDate" class="control-label"><% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.startdate","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<input data-testing-id="subscriptionStartDate" type="text" name="CartToSubscriptionStartDate" id="CartToSubscriptionStartDate" class="form-control" value="{{startDate}}"
required data-bv-notempty-message="<% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.startdate.error.notempty","",null,null,null,null,null,null,null,null,null,null,null));} %>"
data-fv-date="true"
data-fv-date-format="MM/DD/YYYY"
data-fv-date-message="<% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.validation.startdate.error.notvalid","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
/>
<p class="input-help"><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label for="CartToSubscriptionEndDate" class="control-label"><% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.enddate","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<input data-testing-id="subscriptionEndDate" type="text" name="CartToSubscriptionEndDate" id="CartToSubscriptionEndDate" class="form-control" value="{{endDate}}" />
<p class="input-help"><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
</div>
</div>
</div>
</div>
</div>
<div class="cost-summary" data-section="CartSubscriptionSubscribeButton" {{<%=context.getFormattedValue("#",null)%>unless isRecurringBasket}}style="display: none;"{{/unless}}>
<button type="button" class="btn btn-lg btn-block btn-primary {{<%=context.getFormattedValue("#",null)%>if checkoutInProgress}}btn-loader{{/if}}" name="SubscriptionSubscribeButton" data-testing-id="subscription-checkout-btn">
<div class="loader"></div>
<span class="btn-content"><% {out.write(localizeISText("shopping_cart.costsummary.subscription.form.subscribe","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
</button>
</div><% printFooter(out); %>