<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- BEGIN TEMPLATE <% out.write(getTemplateName()); %> -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="n s e w">
<tr>
<td width="100%" class="table_title2 s" nowrap="nowrap"><% {out.write(localizeISText("FlexShippingTop_52.FlexShippingChargePlan.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SharedFromShippingMethod"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><tr>
<td width="100%" class="confirm_box w e s n infobox_title" nowrap="nowrap"><% {out.write(localizeISText("FlexShippingTop_52.CurrentlySharedFrom.confirm_box",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingChargePlan_52-EditChargePlan",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ShippingMethodID",null),context.getFormattedValue(getObject("SharedFromShippingMethod:Id"),null)).addURLParameter(context.getFormattedValue("BreadCrumbBack",null),context.getFormattedValue("true",null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
(<% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="CopyFromShippingMethodID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="copyPlan" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FlexShippingTop_52.SeverConnection.button",null)),null)%>" class="button" />
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %> 
<tr>
<td class="infobox">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR"),null).equals(context.getFormattedValue("AddSelector_SelectorIdAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
class="label label_error" 
<% } else { %>
class="label"
<% } %>
nowrap="nowrap">
<label class="label label_light"><% {out.write(localizeISText("FlexShippingTop_52.PlanCodeSelectorID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" name="SelectorID" size="30" maxlength="30" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR"),null).equals(context.getFormattedValue("AddSelector_SelectorIdAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectorID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="" 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
</td>
<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("FlexShippingTop_52.ChargeType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<select name="RepositoryType" class="select inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
<option value="nonSelection"><% {out.write(localizeISText("FlexShippingTop_52.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>...&nbsp;</option><% while (loop("ShippingChargePlanRepositories","repo",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("repo:Type"),null).equals(context.getFormattedValue("FLEXSHIPPING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("repo:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ERROR"),null).equals(context.getFormattedValue("AddSelector_SelectorIdAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("repo:Type"),null).equals(context.getFormattedValue(getObject("RepositoryType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
selected="selected"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("repo:Type:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %><% } %></select>
</td>
<td>
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="assignToFlexPlan" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FlexShippingTop_52.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="infobox">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("FlexShippingTop_52.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<select name="CurrencyMnemonic" class="select inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %> disabled="disabled" <% } %> ><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td>
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><input type="submit" name="updateCurrency" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FlexShippingTop_52.Apply.button",null)),null)%>" class="button" /><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="4" class="table_title_description w e s"><% {out.write(localizeISText("FlexShippingTop_52.YouCanCreateAnyNumberOfShippingChargePlans.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- END TEMPLATE <% out.write(getTemplateName()); %> --><% printFooter(out); %>