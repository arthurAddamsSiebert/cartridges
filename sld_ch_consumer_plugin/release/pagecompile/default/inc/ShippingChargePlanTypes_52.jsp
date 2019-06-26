<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- BEGIN TEMPLATE <% out.write(getTemplateName()); %> -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("WEIGHTBASED",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ShippingChargePlanDimensionalWeight_52", null, "5");} %><% } %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="aldi">
<tr>
<td width="100%" class="table_title2 s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("ITEMCOUNT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {out.write(localizeISText("ShippingChargePlanTypes_52.ItemCountShippingCharges.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("VALUEBASED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("ShippingChargePlanTypes_52.ValueBasedShippingCharges.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("WEIGHTBASED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {out.write(localizeISText("ShippingChargePlanTypes_52.WeightBasedShippingCharges.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SharedFromShippingMethod"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ShippingChargePlan:ShippingMethodId"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td width="100%" class="confirm_box infobox_title" nowrap="nowrap"><% {out.write(localizeISText("ShippingChargePlanTypes_52.CurrentlySharedFrom.confirm_box",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingChargePlan_52-EditChargePlan",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ShippingMethodID",null),context.getFormattedValue(getObject("SharedFromShippingMethod:Id"),null)).addURLParameter(context.getFormattedValue("BreadCrumbBack",null),context.getFormattedValue("false",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
(<% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="CopyFromShippingMethodID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><input type="submit" name="copyPlan" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanTypes_52.SeverConnection.button",null)),null)%>" class="button" /><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShippingChargePlan:ShippingMethodId"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><tr>
<td class="infobox">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light" for="CurrencyMnemonic"><% {out.write(localizeISText("ShippingChargePlanTypes_52.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="CurrencyMnemonic" class="select inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %> disabled="disabled" <% } %> ><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>&nbsp;&nbsp;
</td>
<td>
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><input type="submit" name="updateCurrency" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanTypes_52.Apply.button",null)),null)%>" class="button" /><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><input type="hidden" name="CurrencyMnemonic" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %> 
<tr>
<td class="infobox">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light" for="BracketsCount"><% {out.write(localizeISText("ShippingChargePlanTypes_52.Add.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>
<input type="text" name="BracketsCount" value="" size="3" maxlength="3" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
</td>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingChargePlanTypes_52.Brackets.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="addBrackets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanTypes_52.Add.button",null)),null)%>" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="infobox">
<table cellpadding="0" cellspacing="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("ITEMCOUNT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap"><label class="label label_light" for="ItemsNumber"><% {out.write(localizeISText("ShippingChargePlanTypes_52.ItemsInCart.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>
<input type="text" name="ItemsNumber" value="" size="24" maxlength="17" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>&nbsp;&nbsp;
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("VALUEBASED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingChargePlanTypes_52.OrderValue.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>):</label></td>
<td>
<input type="text" name="Price" value="" size="24" maxlength="17" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
&nbsp;&nbsp;
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("WEIGHTBASED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap"><label class="label label_light" for="ShippingCharge"><% {out.write(localizeISText("ShippingChargePlanTypes_52.Weight.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("ShippingChargePlan:Unit"),null).toLowerCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>):</label></td>
<td>
<input type="text" name="Weight" value="" size="24" maxlength="17" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
&nbsp;&nbsp;
</td><% } %><td class="label" nowrap="nowrap"><label class="label label_light" for="ShippingCharge"><% {out.write(localizeISText("ShippingChargePlanTypes_52.Charge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>):</label></td>
<td>
<input type="text" name="ShippingCharge" value="" size="24" maxlength="17" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
&nbsp;&nbsp;
</td>
<td>
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="addOneBracket" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanTypes_52.Add.button",null)),null)%>" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %> 
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="4" class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("ITEMCOUNT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><% {out.write(localizeISText("ShippingChargePlanTypes_52.ProvideTheNumberOfItemsAndACharge.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("VALUEBASED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><% {out.write(localizeISText("ShippingChargePlanTypes_52.ProvideACartValueAndACharge.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingChargePlan:Type"),null).equals(context.getFormattedValue("WEIGHTBASED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><% {out.write(localizeISText("ShippingChargePlanTypes_52.ProvideAWeightAndACharge.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><!-- END TEMPLATE <% out.write(getTemplateName()); %> --><% printFooter(out); %>