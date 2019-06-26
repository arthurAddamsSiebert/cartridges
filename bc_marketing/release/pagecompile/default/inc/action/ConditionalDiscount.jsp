<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: ConditionalDiscount.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<table border="0" width="100%" cellpadding="0" cellspacing="4">
<tr>
<td class="label" nowrap="nowrap" width="5%">
<label class="label label_light"> <% {out.write(localizeISText("ConditionalDiscount.Of.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
<td class="table_detail">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="InCart" id="InCart"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:Value"),null).equals(context.getFormattedValue("InCart",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ConditionalDiscount.AllCartItems.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Conditional" id="Conditional"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:Value"),null).equals(context.getFormattedValue("Conditional",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ConditionalDiscount.AllItemsMatchingTheCondition.input","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="NextConditional" id="NextConditional"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:Value"),null).equals(context.getFormattedValue("NextConditional",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ConditionalDiscount.AllItemsMatchingTheConditionAndWhichDoNo.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Selected" id="Selected"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:ConditionalItemsSelection:Value"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label" nowrap="nowrap">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ConditionalDiscount.SelectedItems.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConditionalDiscount.SelectProductCategory.table_detail",null)),null)%>" name="jumpActionIncExc" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Promotion:Currency"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:ConditionalItemsMinPrice:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><label class="label label_radio_text label_error"> <% {out.write(localizeISText("ConditionalDiscount.WithMinPrice","",null,getObject("Promotion:Currency:CurrencySymbol"),null,null,null,null,null,null,null,null,null));} %> </label><% } else { %><label class="label label_radio_text label_light"> <% {out.write(localizeISText("ConditionalDiscount.WithMinPrice","",null,getObject("Promotion:Currency:CurrencySymbol"),null,null,null,null,null,null,null,null,null));} %> </label><% } %></td>
<td> 
<input type="text" maxlength="8" size="12" class="inputfield_en"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsMinPrice:ConditionalItemsMinPrice_Value:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionForm:ConditionalItemsMinPrice:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsMinPrice:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionForm:ConditionalItemsMinPrice:ConditionalItemsMinPrice_Value:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsMinPrice:ConditionalItemsMinPrice_Value:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="0"
<% }} %>
onkeypress="preSubmit(event)"
/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ConditionalItemsMinPrice:ConditionalItemsMinPrice_Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr><% printFooter(out); %>