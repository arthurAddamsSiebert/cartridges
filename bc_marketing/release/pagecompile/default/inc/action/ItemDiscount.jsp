<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: ItemDiscount.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ActionForm:AffectedItemsNumber:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:ItemsAffected:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:ConditionalItemsMinPrice:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><label class="label label_error label_indent"> <% {out.write(localizeISText("ItemDiscount.ApplyTo",null,null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span> </label><% } else { %><label class="label label_light label_indent"> <% {out.write(localizeISText("ItemDiscount.ApplyTo",null,null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span> </label><% } %> 
</td>
<td class="w100">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ItemsAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="All" id="All"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ActionForm:ItemsAffected:Value"),null).equals(context.getFormattedValue("Amount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionForm:ItemsAffected:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_radio_text">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ItemDiscount.AllItems.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ItemsAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Amount" id="Amount"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionForm:ItemsAffected:Value"),null).equals(context.getFormattedValue("Amount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:AffectedItemsNumber:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><label class="label label_radio_text label_error"> <% {out.write(localizeISText("ItemDiscount.LimitTo","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } else { %><label class="label label_radio_text label_light"> <% {out.write(localizeISText("ItemDiscount.LimitTo","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } %></td>
<td>
<input type="text" maxlength="8" size="6" class="inputfield_en"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:AffectedItemsNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionForm:ItemsAffected:Value"),null).equals(context.getFormattedValue("Amount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:AffectedItemsNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="1"
<% } %>
onkeypress="preSubmit(event)"
/>
</td>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:AffectedItemsNumber:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><label class="label label_radio_text label_error"> <% {out.write(localizeISText("ItemDiscount.ItemS","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } else { %><label class="label label_radio_text label_light"> <% {out.write(localizeISText("ItemDiscount.ItemS","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% {Object temp_obj = (getObject("ActionDescriptorMap:get(ActionForm:ActionDescriptorID:Value):ConditionalDiscountTemplate")); getPipelineDictionary().put("ConditionalDiscountTemplate", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConditionalDiscountTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ConditionalDiscountTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ConditionalDiscountTemplate"),null), null, "79");} %><% } %><tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<table border="0" width="100%" cellpadding="0" cellspacing="4">
<tr>
<td>
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:PriceAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="LowestPrice" id="LowestPrice"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ActionForm:PriceAffected:Value"),null).equals(context.getFormattedValue("HighestPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ItemDiscount.DiscountLowestPriceProductFirst.fielditem","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:PriceAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="HighestPrice" id="HighestPrice"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionForm:PriceAffected:Value"),null).equals(context.getFormattedValue("HighestPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ItemDiscount.DiscountHighestPriceProductFirst.fielditem","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% {Object temp_obj = (getObject("ActionDescriptorMap:get(ActionForm:ActionDescriptorID:Value):PromotionActionTemplate")); getPipelineDictionary().put("PromotionActionTemplate", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PromotionActionTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionActionTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PromotionActionTemplate"),null), null, "124");} %><% } %><% printFooter(out); %>