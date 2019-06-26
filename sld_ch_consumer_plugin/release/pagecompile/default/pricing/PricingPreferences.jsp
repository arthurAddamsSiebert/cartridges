<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("preferences.breadcrumb",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("pricing.preference.breadcrumb",null)))}, 6); %><script type="text/javascript">
$(document).ready(function(){
$("input[type=checkbox][data-additional-text-customer-type]").each(function(){
$(this).change(function(event){
var checkbox = $(this);
var customerTypeID = checkbox.attr("data-additional-text-customer-type");
var rows = $("tr[data-additional-text-customer-type=" + customerTypeID + "]")
if(checkbox.prop("checked"))
{
rows.each(function(){$(this).show()});
}
else
{
rows.each(function(){$(this).hide()});
}
})
.change();
});
});
</script><% URLPipelineAction action258 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-Dispatch",null)))),null));String site258 = null;String serverGroup258 = null;String actionValue258 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-Dispatch",null)))),null);if (site258 == null){  site258 = action258.getDomain();  if (site258 == null)  {      site258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup258 == null){  serverGroup258 = action258.getServerGroup();  if (serverGroup258 == null)  {      serverGroup258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPricingPreferences-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PricingPreferencesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue258, site258, serverGroup258,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s n" colspan="4"><% {out.write(localizeISText("pricing.preference.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PricingPreferencesForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><tr>
<td class="w e s n">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"> 
<% {out.write(localizeISText(context.getFormattedValue(getObject("PricingPreferencesForm:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="4"><% {out.write(localizeISText("pricing.preference.helptext",null,null,context.getFormattedValue("<a class=\'selection_link\' target=\'_blank\' href=\'",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/help/con_cat.html#con_cat_pricesNet\'>",null) + context.getFormattedValue(localizeText(context.getFormattedValue("pricing.preference.documentation",null)),null) + context.getFormattedValue("</a>",null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s" colspan="4">
<table border="0" cellspacing="0" cellpadding="5">
<tr><td colspan="4"><img width="1" height="6" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td></tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("pricing.preference.PriceType.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail">
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
>
<option value="gross" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:PriceType:Value"),null).equals(context.getFormattedValue("gross",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("pricing.preference.PriceType.gross","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="net" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:PriceType:Value"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("pricing.preference.PriceType.net","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="table_detail"><% {out.write(localizeISText("pricing.preference.PriceType.description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("CustomerTypes","CustomerType",null)) { %><% {Object temp_obj = (getObject("CustomerTypePricingPreferencesForm:SubForm(CustomerType:CustomerTypeID)")); getPipelineDictionary().put("PreferenceForm", temp_obj);} %><tr>
<td class="fielditem2"><% {out.write(localizeISText("pricing.preference.PriceDisplay.label","",null,localizeText(context.getFormattedValue(context.getFormattedValue("pricing.preference.CustomerType.",null) + context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null) + context.getFormattedValue(".plural.capitalized",null),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail">
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:PriceDisplayType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
>
<option value="gross" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceForm:PriceDisplayType:Value"),null).equals(context.getFormattedValue("gross",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("pricing.preference.PriceType.gross","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="net" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceForm:PriceDisplayType:Value"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("pricing.preference.PriceType.net","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="table_detail"><% {out.write(localizeISText("pricing.preference.PriceDisplay.description","",null,localizeText(context.getFormattedValue(context.getFormattedValue("pricing.preference.CustomerType.",null) + context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null) + context.getFormattedValue(".plural.lowercase",null),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td></td>
<td class="table_detail">
<input id="<% {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="checkbox"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
data-additional-text-customer-type="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
> 
&nbsp;<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:AdditionalTextEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("pricing.preference.AdditionalTextEnabled.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail"><% {out.write(localizeISText("pricing.preference.AdditionalTextEnabled.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Locales","Locale",null)) { %><tr data-additional-text-customer-type="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<td></td>
<td class="table_detail fielditem2"><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:
</td>
<td class="table_detail"><% {Object temp_obj = (context.getFormattedValue("AdditionalText_",null) + context.getFormattedValue(getObject("Locale:LocaleID"),null)); getPipelineDictionary().put("AdditionalTextParameterName", temp_obj);} %><input name="<% {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:getParameter(AdditionalTextParameterName):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="text" class="inputfield_en"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PreferenceForm:getParameter(AdditionalTextParameterName):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
>
</td>
</tr><% } %><% } %><% while (loop("CustomerTypes","CustomerType","Counter")) { %><tr>
<td class="fielditem"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% {out.write(localizeISText("pricing.preference.DefaultPriceDisplay.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %>
&nbsp
<% } %></td>
<td class="table_detail">
<input type="radio" id="<% {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:Value"),null).equals(context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
>
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:DefaultCustomerTypeForPriceDisplay:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue(getObject("CustomerType:LocalizationKeyForName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label>
</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %><% {out.write(localizeISText("pricing.preference.DefaultPriceDisplay.description","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %>
&nbsp
<% } %></td>
</tr><% } %><tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("pricing.preference.PriceChangeEventTracking.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail" nowrap="nowrap">
<input type="checkbox" id="<% {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %> checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %> disabled="disabled"<% } %>
/>
&nbsp;<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("PricingPreferencesForm:PriceChangeEventTrackingEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("PricingPreferences.Enabled.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail"><% {out.write(localizeISText("pricing.preference.PriceChangeEventTracking.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="4"><img width="1" height="6" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td></tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %> 
<tr>
<td align="right" colspan="4" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateSettings" value="<% {out.write(localizeISText("pricing.preference.apply.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button" /></td>
<td class="button"><input type="reset" name="resetSettings" value="<% {out.write(localizeISText("pricing.preference.reset.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button" /></td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "198");} %><% printFooter(out); %>