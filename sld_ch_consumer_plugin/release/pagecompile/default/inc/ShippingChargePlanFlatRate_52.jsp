<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<table border="0" cellpadding="4" cellspacing="0" width="100%" class="aldi">
	<tr>
		<td width="100%" class="table_title2" nowrap="nowrap"><% {out.write(localizeISText("ShippingChargePlanFlatRate_52.FlatRate.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SharedFromShippingMethod"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>
		<tr>
			<td class="confirm_box w e s n infobox_title">
				<% {out.write(localizeISText("ShippingChargePlanFlatRate_52.CurrentlySharedFrom.confirm_box",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewShippingChargePlan_52-EditChargePlan",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ShippingMethodID",null),context.getFormattedValue(getObject("SharedFromShippingMethod:Id"),null))),null)%>">
					<% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
					(<% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
				<input type="hidden" name="ChannelID"  value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
				<input type="hidden" name="CopyFromShippingMethodID"  value="<% {String value = null;try{value=context.getFormattedValue(getObject("SharedFromShippingMethod:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
				<input type="submit" name="copyPlan" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanFlatRate_52.SeverConnection.button",null)),null)%>" class="button" />
			</td>
		</tr>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShippingChargePlan:ShippingMethodId"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
		<tr>
			<td class="infobox n">
				<table cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("ShippingChargePlanFlatRate_52.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="infobox_item">
						<select name="CurrencyMnemonic" class="select inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %> disabled="disabled" <% } %> >
							<% while (loop("Currencies",null,null)) { %>
								<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
							<% } %>
						</select>
						</td>
						<td>
							<table cellspacing="4" cellpadding="0" border="0">
								<tr>
									<td class="button">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
											<input type="submit" name="updateCurrency" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanFlatRate_52.Apply.button",null)),null)%>" class="button" />
										<% } %>												
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } else { %>
		<input type="hidden" name="CurrencyMnemonic"  value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
	<% } %>
</table>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="table_title_description w e s">
			<% {out.write(localizeISText("ShippingChargePlanFlatRate_52.ProvideShippingChargeForOrderAmounts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>

<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingChargePlan:Brackets(Currency:Mnemonic)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
		<tr>
			<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
		</tr>
		<tr>
			<td>
				<table cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingChargePlanFlatRate_52.ShippingCharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
						<% while (loop("ShippingChargePlan:Brackets(Currency:Mnemonic)","Bracket",null)) { %>
							<table cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("EditPlanDisabled")).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
								<input type="text" name="ShippingCharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:ShippingCharge"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="24" maxlength="17" class="inputfield_en" disabled="disabled" />
							<% } else { %>
								<input type="text" name="ShippingCharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:ShippingCharge"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="24" maxlength="17" class="inputfield_en" />
							<% } %>
									</td>
									<td class="label"><label class="label label_light"><% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:ShippingCharge:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label></td>
								</tr>
							</table>
							
							<input type="hidden" name="AllUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",88);}else{getLoopStack().pop();break;} %>
						<% } %>
						</td>
					</tr>
					<tr>
						<td class="label" nowrap="nowrap">
							<label class="label label_light"><% {out.write(localizeISText("ShippingChargePlanFlatRate_52.ThresholdForFreeShipping.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
						</td>	
						<td class="table_detail">
							&nbsp;
						</td>					
					</tr>
					<tr>
						<td class="label_checkbox" nowrap="nowrap"><label class="label label_checkbox"><% {out.write(localizeISText("ShippingChargePlanFlatRate_52.Enabled.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>	
							<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ShippingChargePlan:ThresholdEnabled")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>
								<input type="checkbox" name="ThresholdEnabled"  checked="checked" value="true"/> 
							<% } else { %>
								<input type="checkbox" name="ThresholdEnabled"  value="true"/> 
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ShippingChargePlan:ThresholdEnabled")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>
								<input type="checkbox" name="ThresholdEnabled"  checked="checked" value="true" disabled="disabled" /> 
							<% } else { %>
								<input type="checkbox" name="ThresholdEnabled"  value="true" disabled="disabled" /> 
							<% } %>
						<% } %>
							&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingChargePlanFlatRate_52.Amount.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
						<% while (loop("ShippingChargePlan:Brackets(Currency:Mnemonic)","Bracket",null)) { %>
							<table cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("EditPlanDisabled")).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
								<input type="text" name="Threshold" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:Threshold"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="24" maxlength="17" class="inputfield_en" disabled="disabled" />
							<% } else { %>
								<input type="text" name="Threshold" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:Threshold"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="24" maxlength="17" class="inputfield_en" />	
							<% } %>
									</td>
									<td class="label"><label class="label label_light"><% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:ShippingCharge:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label></td>
								</tr>
							</table>
							<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",135);}else{getLoopStack().pop();break;} %>
						<% } %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>						
		<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
			<tr>
				<td align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="submit" name="updateBrackets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanFlatRate_52.Apply.button",null)),null)%>" class="button"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>
									disabled="disabled"
								<% } %>/>
							</td>
							<td class="button">
								<input type="submit" name="resetBrackets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanFlatRate_52.Reset.button",null)),null)%>" class="button"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>
									disabled="disabled"
								<% } %>/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
<% } %>
<% printFooter(out); %>