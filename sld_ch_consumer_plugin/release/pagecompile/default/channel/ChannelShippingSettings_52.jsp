<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingSettings_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ShippingSettings.text",null)))}, 8); %><% URLPipelineAction action4 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingSettings_52-Dispatch",null)))),null));String site4 = null;String serverGroup4 = null;String actionValue4 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingSettings_52-Dispatch",null)))),null);if (site4 == null){  site4 = action4.getDomain();  if (site4 == null)  {      site4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup4 == null){  serverGroup4 = action4.getServerGroup();  if (serverGroup4 == null)  {      serverGroup4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingSettings_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ShippingSettingsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue4, site4, serverGroup4,true)); %><!-- EO Page Navigator -->
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="aldi">
<tr>
<td class="table_title s"><% {out.write(localizeISText("sld_ch_consumer_plugin.ShippingSettings.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description"><% {out.write(localizeISText("ChannelShippingSettings_52.DefineShippingTimesAndSpecifyTheDefaultBehavior.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %> js-form-disabled<% } %>"
>
<tr>
<td class="table_title2 s" colspan="2"><% {out.write(localizeISText("ChannelShippingSettings_52.ReadyForShipmentAndShippingTime.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShippingSettingsForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0" /></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelShippingSettings_52.TheEnteredValuesAreNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO errors-->
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
<tr> 
<td class="label" nowrap="nowrap"><label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ReadyForShipmentMin:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ChannelShippingSettings_52.ReadyForShipment.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td> 
<td class="table_detail w100">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input class="inputfield_en" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ReadyForShipmentMin:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ReadyForShipmentMin:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ReadyForShipmentMin:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="label" nowrap="nowrap"><label class="label" for=""><% {out.write(localizeISText("sld_ch_consumer_plugin.Days.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="label" nowrap="nowrap"><label class="label" for=""><% {out.write(localizeISText("sld_ch_consumer_plugin.UpTo.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input class="inputfield_en" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ReadyForShipmentMax:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ReadyForShipmentMax:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ReadyForShipmentMax:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="label" nowrap="nowrap"><label class="label" for=""><% {out.write(localizeISText("sld_ch_consumer_plugin.Days.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ShippingTimeMin:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ChannelShippingSettings_52.ShippingTime.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail w100">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input class="inputfield_en" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ShippingTimeMin:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ShippingTimeMin:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ShippingTimeMin:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="label" nowrap="nowrap"><label class="label" for=""><% {out.write(localizeISText("sld_ch_consumer_plugin.Days.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="label" nowrap="nowrap"><label class="label" for=""><% {out.write(localizeISText("sld_ch_consumer_plugin.UpTo.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input class="inputfield_en" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ShippingTimeMax:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ShippingTimeMax:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:ShippingTimeMax:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="label" nowrap="nowrap"><label class="label" for=""><% {out.write(localizeISText("sld_ch_consumer_plugin.Days.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
<tr><td colspan="2" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
<tr>
<td class="table_title2 s" colspan="2"><% {out.write(localizeISText("ChannelShippingSettings_52.DefaultBehaviorOfShippingSurchargeAndOverrideActio.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_select" for=""><% {out.write(localizeISText("ChannelShippingSettings_52.ItemSurcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail w100">
<select id="ShippingSettingsForm_ItemSurcharge" name="ShippingSettingsForm_ItemSurcharge" class="dropdown inputfield_en">
<option value="AddAll" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("ItemSurcharge"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ItemSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ItemSurcharge"),null).equals(context.getFormattedValue("AddAll",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.AddUpAllSurcharges.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Highest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ItemSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ItemSurcharge"),null).equals(context.getFormattedValue("Highest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyHighestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Lowest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ItemSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ItemSurcharge"),null).equals(context.getFormattedValue("Lowest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyLowestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_select" for=""><% {out.write(localizeISText("ChannelShippingSettings_52.ItemImportSurcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<select name="ShippingSettingsForm_ItemImportSurcharge" class="dropdown inputfield_en">
<option value="AddAll" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("ItemImportSurcharge"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ItemImportSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ItemImportSurcharge"),null).equals(context.getFormattedValue("AddAll",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.AddUpAllSurcharges.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Highest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ItemImportSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ItemImportSurcharge"),null).equals(context.getFormattedValue("Highest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyHighestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Lowest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ItemImportSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ItemImportSurcharge"),null).equals(context.getFormattedValue("Lowest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyLowestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_select" for=""><% {out.write(localizeISText("ChannelShippingSettings_52.BucketSurcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<select name="ShippingSettingsForm_BucketSurcharge" class="dropdown inputfield_en">
<option value="AddAll" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("BucketSurcharge"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketSurcharge"),null).equals(context.getFormattedValue("AddAll",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.AddUpAllSurcharges.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Highest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketSurcharge"),null).equals(context.getFormattedValue("Highest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyHighestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Lowest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketSurcharge"),null).equals(context.getFormattedValue("Lowest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyLowestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td class="table_title2 s" colspan="3"><% {out.write(localizeISText("ChannelShippingSettings_52.PickUpInStore.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
<tr>
<td class="label_checkbox">
<label for="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:PickupInStoreEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="label label_checkbox label_light"><% {out.write(localizeISText("ChannelShippingSettings_52.PickUpInStore.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><input id="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:PickupInStoreEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="checkbox" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShippingSettingsForm:PickupInStoreEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>checked="checked"<% } %> name="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:PickupInStoreEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } else { %><input id="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:PickupInStoreEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="checkbox" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShippingSettingsForm:PickupInStoreEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>checked="checked"<% } %> name="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingSettingsForm:PickupInStoreEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled" /> 
<% } %> 
</td>
<td class="label_checkbox_text w100">
<label class="label label_checkbox label_light"><% {out.write(localizeISText("ChannelShippingSettings_52.PickUpInStore.labeltext",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "159");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>