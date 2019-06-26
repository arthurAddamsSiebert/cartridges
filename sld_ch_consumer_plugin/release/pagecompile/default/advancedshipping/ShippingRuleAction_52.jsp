<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% URLPipelineAction action307 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-Dispatch",null)))),null));String site307 = null;String serverGroup307 = null;String actionValue307 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-Dispatch",null)))),null);if (site307 == null){  site307 = action307.getDomain();  if (site307 == null)  {      site307 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup307 == null){  serverGroup307 = action307.getServerGroup();  if (serverGroup307 == null)  {      serverGroup307 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ShippingRuleActionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue307, site307, serverGroup307,true)); %>
	<input type="hidden" name="ShippingRuleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRule:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n e w s">
					<tr>
						<td class="table_title2 "><% {out.write(localizeISText("ShippingRuleAction_52.Action.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s w e">
						<tr valign="top">
							<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top" width="100%"><% {out.write(localizeISText("ShippingRuleAction_52.TheEnteredSurchargePercentageWasNotCorrectKindlyEn.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
					</table>
				<% } %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td class="table_title_description w e s">
							<% {out.write(localizeISText("ShippingRuleAction_52.DefineAnActionThatEitherAppliesToTheOrderOrEachBuc.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="table_detail w e s" >
				<table border="0" cellpadding="4" cellspacing="0" width="100%">
					<tr>
						<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleAction_52.ActionType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
								<select name="ShippingRuleForm_ShippingAction" class="dropdown inputfield_en">
									<option value=""><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectShippingActionType.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									<option value="Surcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("Surcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemAddSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									<option value="ImportSurcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("ImportSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemAddImportSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									
									<option value="ExcludeShipping" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("ExcludeShipping",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemExcludeFromShipping.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									
									<option value="OverrideShippingMethod" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("OverrideShippingMethod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemEligibleShippingMethod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									<option value="BucketSurcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("BucketSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.BucketAddBucketSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									
								</select>
							<% } else { %>
								<select name="ShippingRuleForm_ShippingAction" class="dropdown inputfield_en" disabled="disabled">
									<option value=""><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectShippingActionType.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									<option value="Surcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("Surcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemAddSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									<option value="ImportSurcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("ImportSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemAddImportSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									
									<option value="ExcludeShipping" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("ExcludeShipping",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemExcludeFromShipping.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									
									<option value="OverrideShippingMethod" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("OverrideShippingMethod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ItemEligibleShippingMethod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									<option value="BucketSurcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("BucketSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.BucketAddBucketSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									
								</select>
							<% } %>
						</td>
						<td width="100%">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>	
								<table border="0" cellspacing="2" cellpadding="0">
									<tr>
										<td class="button"><input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button" /></td>
									</tr>
								</table>
							<% } %>
						</td>
					</tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("Surcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("GeographicalSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("BucketSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("ImportSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
						<tr>
							<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("ShippingRuleAction_52.CombineSurcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
							<td>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
									<select name="ShippingRuleForm_CombineSurcharge" class="dropdown inputfield_en">
										<option value=""><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectCombineSurchargeTypeOptional.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										<option value="AddAll" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:CombineSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:CombineSurcharge"),null).equals(context.getFormattedValue("AddAll",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.AddUpAllSurcharges.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										<option value="Highest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:CombineSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:CombineSurcharge"),null).equals(context.getFormattedValue("Highest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyHighestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										<option value="Lowest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:CombineSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:CombineSurcharge"),null).equals(context.getFormattedValue("Lowest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyLowestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									</select>
								<% } else { %>
									<select name="ShippingRuleForm_CombineSurcharge" class="dropdown inputfield_en" disabled="disabled">
										<option value=""><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectCombineSurchargeTypeOptional.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										<option value="AddAll" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:CombineSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:CombineSurcharge"),null).equals(context.getFormattedValue("AddAll",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.AddUpAllSurcharges.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										<option value="Highest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:CombineSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:CombineSurcharge"),null).equals(context.getFormattedValue("Highest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyHighestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										<option value="Lowest" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:CombineSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:CombineSurcharge"),null).equals(context.getFormattedValue("Lowest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.ApplyLowestSurchargeOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									</select>
								<% } %>
							</td>
						</tr>
						
						<tr>
							<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light" for=""><% {out.write(localizeISText("ShippingRuleAction_52.SurchargeType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
							<td nowrap="nowrap">
								<table>
									<tr>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>	
											<td class="input_radio"><input type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>checked="checked"<% } %> class="inputfield_en" name="ShippingRuleForm_SurchargeType" value="absolute" /></td>
											<td class="label_radio_text"><label class="label label_radio_text label_light"><% {out.write(localizeISText("sld_ch_consumer_plugin.Absolute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
											<td class="input_radio"><input type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("percentage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>checked="checked"<% } %> class="inputfield_en" name="ShippingRuleForm_SurchargeType" value="percentage" /></td>
											<td class="label_radio_text"><label class="label label_radio_text label_light"><% {out.write(localizeISText("sld_ch_consumer_plugin.Percentage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
										<% } else { %>
											<td class="input_radio"><input type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>checked="checked"<% } %> class="inputfield_en" name="ShippingRuleForm_SurchargeType" value="absolute" disabled="disabled" /></td>
											<td class="label_radio_text"><label class="label label_radio_text label_light"><% {out.write(localizeISText("sld_ch_consumer_plugin.Absolute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
											<td class="input_radio"><input type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("percentage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>checked="checked"<% } %> class="inputfield_en" name="ShippingRuleForm_SurchargeType" value="percentage" disabled="disabled" /></td>
											<td class="label_radio_text"><label class="label label_radio_text label_light"><% {out.write(localizeISText("sld_ch_consumer_plugin.Percentage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
										<% } %>
									</tr>
								</table>
							</td>
							<td width="100%">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>	
									<table border="0" cellspacing="2" cellpadding="0">
										<tr>
											<td class="button"><input type="submit" name="updateSurchargeType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button" /></td>
										</tr>
									</table>
								<% } %>
							</td>
						</tr>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("percentage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
						<tr>
							<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("sld_ch_consumer_plugin.Surcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
							<td class="infobox_item">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %>	
									<input type="text" name="SurchargePercentage" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRule:getAction:SurchargePercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="10" size="10" class="inputfield_en"/>
								<% } else { %>
									<input type="text" name="SurchargePercentage" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRule:getAction:SurchargePercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="10" size="10" class="inputfield_en" disabled="disabled" />
								<% } %>
								&nbsp;&nbsp;<% {out.write(localizeISText("ShippingRuleAction_52.OfOrderSubtotal.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					<% } %>
				</table>
			</td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>	
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("percentage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>
				<tr>
					<td class="w e s" colspan="6" align="right">
						<table border="0" cellspacing="4" cellpadding="0">
							<tr>
								<td class="button">
									<input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
								</td>
								<td class="button">
									<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			<% } %>
		<% } %>
	</table>
			
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("OverrideShippingMethod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
			<tr>
				<td>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"advancedshipping/ShippingMethodAction", null, "165");} %>	
				</td>
			</tr>
		</table>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("Surcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SurchargeNewPriceErrorCurrency")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("SurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%">
						<% {out.write(localizeISText("sld_ch_consumer_plugin.TheEnteredPriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceTheFormatOfThePriceWasInvalid.error",null,null,encodeString(context.getFormattedValue(getObject("SurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeGreaterThan0.error",null,null,encodeString(context.getFormattedValue(getObject("SurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeLower.error",null,null,encodeString(context.getFormattedValue(getObject("SurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("DuplicateCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThereAlreadyExistsAPriceForThisCurrency.error",null,null,encodeString(context.getFormattedValue(getObject("SurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% }}}} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("SurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %>
							<% while (loop("SurchargePriceErrorCurrencies","ErrorCurrency",null)) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>
									<br/>
									<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceTheFormatOfThePriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeGreaterThan0.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeLower.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% }}} %>
							<% } %>
						<% } %>
						</td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionSurcharge")))).booleanValue() && ((Boolean) (hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %>
				<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box e w s">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="confirm" width="100%"><% {out.write(localizeISText("ShippingRuleAction_52.AreYouSureThatYouWantToDeleteTheseActionSurcharges.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td nowrap="nowrap">
							<table border="0" cellspacing="0" cellpadding="0">
							<tr>
							<td class="button">
								<% while (loop("CurrencyMnemonics","Selected",null)) { %>
									<input type="hidden" name="DeleteActionSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<% } %>
								<input type="submit" name="deleteActionSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.button",null)),null)%>" class="button"/>
							</td>
							<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
							<td class="button">
								<input type="submit" name="cancelRuleAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
							</td>
							</tr>
							</table>
						</td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionSurcharge")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingRuleAction_52.ActionSurcharge.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","w e s")}, 231); %>
				</table>
			<% } %>
			<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w s">
				<tr>
					<td class="infobox_title" colspan="5"><% {out.write(localizeISText("ShippingRuleAction_52.SurchargeByCurrency.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",238,e);}if (_boolean_result) { %>	
					<tr>
						<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
							<select name="SurchargeCurrency_CurrencyMnemonic" class="select inputfield_en">
								<% while (loop("Currencies",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {244}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",244,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {244}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } %>
							</select>
						</td>
						<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("sld_ch_consumer_plugin.Surcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail"><input type="text" name="SurchargeValue_CurrencyMnemonic" value="" maxlength="15" size="15" class="inputfield_en"/></td>
						<td width="100%">
							<table border="0" cellspacing="2" cellpadding="0">
								<tr>
									<td class="button"><input type="submit" name="addActionSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-CreateRuleAction",null)))),null)%>'"/></td>
								</tr>
							</table>
						</td>
					</tr>
				<% } %>
			</table>
			<% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
			<% while (loop("ShippingRule:getAction:CustomAttributes","Surcharge","count")) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",262,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
					<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",264);}else{getLoopStack().pop();break;} %>
				<% } %>
			<% } %>
			
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("Surcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ShippingRule:getAction:CustomAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisplaySurcharge"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",269,e);}if (_boolean_result) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %>
							<td class="table_header e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>
						<% } %>
						<td class="table_header e s" width="100"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
						<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Surcharge.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					
					<% while (loop("ShippingRule:getAction:CustomAttributes","Surcharge",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Surcharge:Name"),null).equals(context.getFormattedValue("SurchargeType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Surcharge:Name"),null).equals(context.getFormattedValue("CombineSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",298,e);}if (_boolean_result) { %>
							<tr>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",300,e);}if (_boolean_result) { %>	
									<td class="table_detail2 e s center">
										<input type="checkbox" name="DeleteActionSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {302}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrencyMnemonics"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %><% while (loop("CurrencyMnemonics","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",303);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>
										/>
									
									</td>
								<% } %>
								<td class="table_detail2 e s">
									<input type="hidden" name="SurchargeCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {309}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {309}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(Surcharge:MoneyValue:CurrencyMnemonic):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {310}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									
								</td>
								<td class="table_detail2 e s">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %>	
										<input type="text" name="SurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {315}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {315}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
									<% } else { %>
										<input type="text" name="SurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {317}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {317}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
									<% } %>
								</td>
							</tr>
						<% } %>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",324,e);}if (_boolean_result) { %>	
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",325,e);}if (_boolean_result) { %>
							<tr>
								<td class="e s" colspan="6" align="right">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button">
												<input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
											</td>
											<td class="button">
												<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
											</td>
											<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",336,e);}if (_boolean_result) { %>
											<td class="button">
												<input type="submit" name="confirmDeleteActionSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null)%>" class="button"/>
											</td>
											<% } %>
										</tr>
									</table>
								</td>
							</tr>
						<% } %>
					<% } %>
				<% } else { %>
					<tr>
						<td colspan="3" class="table_detail s e"><% {out.write(localizeISText("ShippingRuleAction_52.ThereAreCurrentlyNoActionSurchargesDefinedForThisRule.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				<% } %>
			</table>
		<% } %>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("ImportSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",356,e);}if (_boolean_result) { %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",357,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ImportSurchargeNewPriceErrorCurrency")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ImportSurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("ImportSurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",358,e);}if (_boolean_result) { %>				
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%">
						<% {out.write(localizeISText("sld_ch_consumer_plugin.TheEnteredPriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ImportSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",364,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceTheFormatOfThePriceWasInvalid.error",null,null,encodeString(context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ImportSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",366,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeGreaterThan0.error",null,null,encodeString(context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ImportSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",368,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeLower.error",null,null,encodeString(context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ImportSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("DuplicateCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",370,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThereAlreadyExistsAPriceForThisCurrency.error",null,null,encodeString(context.getFormattedValue(getObject("ImportSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% }}}} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ImportSurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("ImportSurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",373,e);}if (_boolean_result) { %>
							<% while (loop("ImportSurchargePriceErrorCurrencies","ErrorCurrency",null)) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",375,e);}if (_boolean_result) { %>
									<br/>
									<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {377}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceTheFormatOfThePriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",378,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {379}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeGreaterThan0.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImportSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",380,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {381}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeLower.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% }}} %>
							<% } %>
						<% } %>
						</td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionImportSurcharge")))).booleanValue() && ((Boolean) (hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",389,e);}if (_boolean_result) { %>
				<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {390}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",391,e);}if (_boolean_result) { %>	
					<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box e w s">
						<tr>
							<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="confirm" width="100%"><% {out.write(localizeISText("ShippingRuleAction_52.AreYouSureThatYouWantToDeleteTheseActionImportSurc.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td nowrap="nowrap">
								<table border="0" cellspacing="0" cellpadding="0">
								<tr>
								<td class="button">
									<% while (loop("CurrencyMnemonics","Selected",null)) { %>
										<input type="hidden" name="DeleteActionImportSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {401}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% } %>
									<input type="submit" name="deleteActionImportSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.button",null)),null)%>" class="button"/>
								</td>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
								<td class="button">
									<input type="submit" name="cancelRuleAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
								</td>
								</tr>
								</table>
							</td>
						</tr>
					</table>
				<% } %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionImportSurcharge")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",416,e);}if (_boolean_result) { %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingRuleAction_52.ActionImportSurcharge.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","w e s")}, 418); %>
				</table>
			<% } %>
			<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w s">
				<tr>
					<td class="infobox_title" colspan="5"><% {out.write(localizeISText("ShippingRuleAction_52.ImportSurchargeByCurrency.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>	
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",425,e);}if (_boolean_result) { %>
					<tr>
						<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="tabledetail">
							<select name="ImportSurchargeCurrency_CurrencyMnemonic" class="select inputfield_en">
								<% while (loop("Currencies",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {431}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",431,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {431}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } %>
							</select>
						</td>
						<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("sld_ch_consumer_plugin.Surcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail"><input type="text" name="ImportSurchargeValue_CurrencyMnemonic" value="" maxlength="15" size="15" class="inputfield_en"/></td>
						<td width="100%">
							<table border="0" cellspacing="2" cellpadding="0">
								<tr>
									<td class="button"><input type="submit" name="addActionImportSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-CreateRuleAction",null)))),null)%>'"/></td>
								</tr>
							</table>
						</td>
					</tr>
				<% } %>
			</table>
			<% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
			<% while (loop("ShippingRule:getAction:CustomAttributes","Surcharge","count")) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",449,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
					<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",451);}else{getLoopStack().pop();break;} %>
				<% } %>
			<% } %>
		
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("ImportSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ShippingRule:getAction:CustomAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisplaySurcharge"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",456,e);}if (_boolean_result) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",458,e);}if (_boolean_result) { %>	
							<td class="table_header e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionImportSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionImportSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>
						<% } %>
						<td class="table_header e s" width="100"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
						<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Surcharge.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<% while (loop("ShippingRule:getAction:CustomAttributes","Surcharge",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Surcharge:Name"),null).equals(context.getFormattedValue("SurchargeType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Surcharge:Name"),null).equals(context.getFormattedValue("CombineSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",484,e);}if (_boolean_result) { %>
							<tr>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",486,e);}if (_boolean_result) { %>	
									<td class="table_detail2 e s center">
										<input type="checkbox" name="DeleteActionImportSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {488}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrencyMnemonics"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",489,e);}if (_boolean_result) { %><% while (loop("CurrencyMnemonics","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",489,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",489);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>
										/>
										
									</td>
								<% } %>
								<td class="table_detail2 e s">
									<input type="hidden" name="ImportSurchargeCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {495}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {495}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(Surcharge:MoneyValue:CurrencyMnemonic):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {496}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									
								</td>
								<td class="table_detail2 e s">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",500,e);}if (_boolean_result) { %>	
										<input type="text" name="ImportSurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {501}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {501}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
									<% } else { %>
										<input type="text" name="ImportSurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {503}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Surcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {503}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
									<% } %>
								</td>
							</tr>
						<% } %>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",509,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",510,e);}if (_boolean_result) { %>
							<tr>
								<td class="e s" colspan="6" align="right">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button">
												<input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
											</td>
											<td class="button">
												<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
											</td>
											<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",521,e);}if (_boolean_result) { %>
											<td class="button">
												<input type="submit" name="confirmDeleteActionImportSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null)%>" class="button"/>
											</td>
											<% } %>
										</tr>
									</table>
								</td>
							</tr>
						<% } %>
					<% } %>
				<% } else { %>
					<tr>
						<td colspan="3" class="table_detail e s"><% {out.write(localizeISText("ShippingRuleAction_52.ThereAreCurrentlyNoActionImportSurchargesDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				<% } %>
			</table>
		<% } %>
	<% } %>
				
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("BucketSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",541,e);}if (_boolean_result) { %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",542,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurchargeNewPriceErrorCurrency")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("BucketSurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",543,e);}if (_boolean_result) { %>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%">
							<% {out.write(localizeISText("sld_ch_consumer_plugin.TheEnteredPriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",549,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceTheFormatOfThePriceWasInvalid.error",null,null,encodeString(context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",551,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeGreaterThan0.error",null,null,encodeString(context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",553,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeLower.error",null,null,encodeString(context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("DuplicateCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",555,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThereAlreadyExistsAPriceForThisCurrency.error",null,null,encodeString(context.getFormattedValue(getObject("BucketSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% }}}} %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketSurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("BucketSurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",558,e);}if (_boolean_result) { %>
								<% while (loop("BucketSurchargePriceErrorCurrencies","ErrorCurrency",null)) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BucketSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",560,e);}if (_boolean_result) { %>
										<br/>
										<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {562}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceTheFormatOfThePriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BucketSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",563,e);}if (_boolean_result) { %>
										<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {564}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeGreaterThan0.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BucketSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",565,e);}if (_boolean_result) { %>
										<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {566}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeLower.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% }}} %>
								<% } %>
							<% } %>
						</td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",574,e);}if (_boolean_result) { %>	
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionBucketSurcharge")))).booleanValue() && ((Boolean) (hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",575,e);}if (_boolean_result) { %>
					<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {576}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box e w s">
						<tr>
							<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="confirm" width="100%"><% {out.write(localizeISText("ShippingRuleAction_52.AreYouSureThatYouWantToDeleteTheseActionBucketSurc.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td nowrap="nowrap">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="button">
											<% while (loop("CurrencyMnemonics","Selected",null)) { %>
												<input type="hidden" name="DeleteActionBucketSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {586}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<% } %>
											<input type="submit" name="deleteActionBucketSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.button",null)),null)%>" class="button"/>
										</td>
										<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
										<td class="button">
											<input type="submit" name="cancelRuleAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				<% } %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionBucketSurcharge")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",601,e);}if (_boolean_result) { %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingRuleAction_52.ActionBucketSurcharge.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","w e s")}, 603); %>
				</table>
			<% } %>
			<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w s">
				<tr>
					<td class="infobox_title" colspan="5"><% {out.write(localizeISText("ShippingRuleAction_52.BucketSurchargeByCurrency.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>	
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",610,e);}if (_boolean_result) { %>
					<tr>
						<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
							<select name="BucketSurchargeCurrency_CurrencyMnemonic" class="select inputfield_en">
								<% while (loop("Currencies",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {616}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",616,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {616}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } %>
							</select>
						</td>
						<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleAction_52.BucketSurcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="infobox_item"><input type="text" name="BucketSurchargeValue_CurrencyMnemonic" value="" maxlength="15" size="15" class="inputfield_en"/></td>
						<td width="100%">
							<table border="0" cellspacing="2" cellpadding="0">
								<tr>
									<td class="button"><input type="submit" name="addActionBucketSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-CreateRuleAction",null)))),null)%>'"/></td>
								</tr>
							</table>
						</td>
					</tr>
				<% } %>
			</table>
			<% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
			<% while (loop("ShippingRule:getAction:CustomAttributes","Surcharge","count")) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",634,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
					<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",636);}else{getLoopStack().pop();break;} %>
				<% } %>
			<% } %>
	
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("BucketSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ShippingRule:getAction:CustomAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisplaySurcharge"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",641,e);}if (_boolean_result) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",643,e);}if (_boolean_result) { %>
							<td class="table_header e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionBucketSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionBucketSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>
						<% } %>
						<td class="table_header e s" width="100"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
						<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.BucketSurcharge.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					
					<% while (loop("ShippingRule:getAction:CustomAttributes","BucketSurcharge",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("BucketSurcharge:Name"),null).equals(context.getFormattedValue("SurchargeType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("BucketSurcharge:Name"),null).equals(context.getFormattedValue("CombineSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",670,e);}if (_boolean_result) { %>
							<tr>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",672,e);}if (_boolean_result) { %>
									<td class="table_detail2 e s center">
										<input type="checkbox" name="DeleteActionBucketSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {674}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrencyMnemonics"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",675,e);}if (_boolean_result) { %><% while (loop("CurrencyMnemonics","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("BucketSurcharge:MoneyValue:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",675,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",675);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>
										/>
									
									</td>
								<% } %>
								<td class="table_detail2 e s">
									<input type="hidden" name="BucketSurchargeCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("BucketSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {681}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {681}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(BucketSurcharge:MoneyValue:CurrencyMnemonic):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {682}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									
								</td>
								<td class="table_detail2 e s">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",686,e);}if (_boolean_result) { %>	
										<input type="text" name="BucketSurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("BucketSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {687}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketSurcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {687}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
									<% } else { %>
										<input type="text" name="BucketSurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("BucketSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {689}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketSurcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {689}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
									<% } %>
								</td>
							</tr>
						<% } %>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",696,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",697,e);}if (_boolean_result) { %>
							<tr>
								<td class="e s" colspan="6" align="right">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button">
												<input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
											</td>
											<td class="button">
												<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
											</td>
											<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",708,e);}if (_boolean_result) { %>
											<td class="button">
												<input type="submit" name="confirmDeleteActionBucketSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null)%>" class="button"/>
											</td>
											<% } %>
										</tr>
									</table>
								</td>
							</tr>
						<% } %>
					<% } %>
				<% } else { %>
					<tr>
						<td colspan="3" class="table_detail e s"><% {out.write(localizeISText("ShippingRuleAction_52.ThereAreCurrentlyNoActionBucketSurchargesDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				<% } %>
				
			</table>
		<% } %>
	<% } %>
		
		
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("GeographicalSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",730,e);}if (_boolean_result) { %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",731,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("GeographicalSurchargeNewPriceErrorCurrency")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("GeographicalSurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("GeographicalSurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",732,e);}if (_boolean_result) { %>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%">
							<% {out.write(localizeISText("sld_ch_consumer_plugin.TheEnteredPriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("GeographicalSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",738,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceTheFormatOfThePriceWasInvalid.error",null,null,encodeString(context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("GeographicalSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",740,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeGreaterThan0.error",null,null,encodeString(context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("GeographicalSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",742,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeLower.error",null,null,encodeString(context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("GeographicalSurchargeNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCode"),null).equals(context.getFormattedValue("DuplicateCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",744,e);}if (_boolean_result) { %>
								<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThereAlreadyExistsAPriceForThisCurrency.error",null,null,encodeString(context.getFormattedValue(getObject("GeographicalSurchargeNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
							<% }}}} %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("GeographicalSurchargePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("GeographicalSurchargePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",747,e);}if (_boolean_result) { %>
								<% while (loop("GeographicalSurchargePriceErrorCurrencies","ErrorCurrency",null)) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GeographicalSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",749,e);}if (_boolean_result) { %>
										<br/>
										<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {751}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceTheFormatOfThePriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GeographicalSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",752,e);}if (_boolean_result) { %>
										<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {753}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeGreaterThan0.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GeographicalSurchargePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",754,e);}if (_boolean_result) { %>
										<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {755}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeLower.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% }}} %>
								<% } %>
							<% } %>
						</td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionGeographicalSurcharge")))).booleanValue() && ((Boolean) (hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",763,e);}if (_boolean_result) { %>
				<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {764}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box e w s">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="confirm" width="100%"><% {out.write(localizeISText("ShippingRuleAction_52.AreYouSureThatYouWantToDeleteTheseActionGeographic.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td nowrap="nowrap">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="button">
										<% while (loop("CurrencyMnemonics","Selected",null)) { %>
											<input type="hidden" name="DeleteActionGeographicalSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {774}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<% } %>
										<input type="submit" name="deleteActionGeographicalSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.button",null)),null)%>" class="button"/>
									</td>
									<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
									<td class="button">
										<input type="submit" name="cancelRuleAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionGeographicalSurcharge")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",788,e);}if (_boolean_result) { %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingRuleAction_52.ActionGeographicalSurcharge.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","w e s")}, 790); %>
				</table>
			<% } %>
			<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w s">
				<tr>
					<td class="infobox_title" colspan="5"><% {out.write(localizeISText("ShippingRuleAction_52.GeographicalSurchargeByCurrency.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>	
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",797,e);}if (_boolean_result) { %>
					<tr>
						<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
							<select name="GeographicalSurchargeCurrency_CurrencyMnemonic" class="select inputfield_en">
								<% while (loop("Currencies",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {803}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",803,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {803}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } %>
							</select>
						</td>
						<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleAction_52.GeographicalSurcharge.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail"><input type="text" name="GeographicalSurchargeValue_CurrencyMnemonic" value="" maxlength="15" size="15" class="inputfield_en"/></td>
						<td width="100%">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="button"><input type="submit" name="addActionGeographicalSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-CreateRuleAction",null)))),null)%>'"/></td>
								</tr>
							</table>
						</td>
					</tr>
				<% } %>
			</table>
			<% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
			<% while (loop("ShippingRule:getAction:CustomAttributes","Surcharge","count")) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",821,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplaySurcharge", temp_obj);} %>
					<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",823);}else{getLoopStack().pop();break;} %>
				<% } %>
			<% } %>

			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("GeographicalSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ShippingRule:getAction:CustomAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisplaySurcharge"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",828,e);}if (_boolean_result) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",830,e);}if (_boolean_result) { %>	
							<td class="table_header e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionGeographicalSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionGeographicalSurcharge','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>
						<% } %>
						<td class="table_header e s" width="100"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
						<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.GeographicalSurcharge.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<% while (loop("ShippingRule:getAction:CustomAttributes","GeographicalSurcharge",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("GeographicalSurcharge:Name"),null).equals(context.getFormattedValue("SurchargeType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("GeographicalSurcharge:Name"),null).equals(context.getFormattedValue("CombineSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",856,e);}if (_boolean_result) { %>
							<tr>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",858,e);}if (_boolean_result) { %>	
									<td class="table_detail2 e s center">
										<input type="checkbox" name="DeleteActionGeographicalSurcharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {860}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrencyMnemonics"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",861,e);}if (_boolean_result) { %><% while (loop("CurrencyMnemonics","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",861,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",861);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>
										/>
									
									</td>
								<% } %>
								<td class="table_detail2 e s">
									<input type="hidden" name="GeographicalSurchargeCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {867}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {867}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(GeographicalSurcharge:MoneyValue:CurrencyMnemonic):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {868}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									
								</td>
								<td class="table_detail2 e s">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",872,e);}if (_boolean_result) { %>	
										<input type="text" name="GeographicalSurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {873}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {873}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
									<% } else { %>
										<input type="text" name="GeographicalSurchargeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {875}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("GeographicalSurcharge:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {875}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>				
									<% } %>
								</td>
							</tr>
						<% } %>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",881,e);}if (_boolean_result) { %>
						<tr>
							<td class="e s" colspan="6" align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
										</td>
										<td class="button">
											<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
										</td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction:SurchargeType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:SurchargeType"),null).equals(context.getFormattedValue("absolute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",892,e);}if (_boolean_result) { %>
										<td class="button">
											<input type="submit" name="confirmDeleteActionGeographicalSurcharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null)%>" class="button"/>
										</td>
												<% } %>
									</tr>
								</table>
							</td>
						</tr>
					<% } %>
				<% } else { %>
					<tr>
						<td colspan="3" class="table_detail e s"><% {out.write(localizeISText("ShippingRuleAction_52.ThereAreCurrentlyNoActionGeographicalSurchargesDef.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				<% } %>
			</table>
		<% } %>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("Override",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",911,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OverrideNewPriceErrorCurrency")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("OverridePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("OverridePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",912,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr valign="top">
					<td class="error top" width="100%">
						<% {out.write(localizeISText("sld_ch_consumer_plugin.TheEnteredPriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",917,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceTheFormatOfThePriceWasInvalid.error",null,null,encodeString(context.getFormattedValue(getObject("OverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",919,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeGreaterThan0.error",null,null,encodeString(context.getFormattedValue(getObject("OverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",921,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeLower.error",null,null,encodeString(context.getFormattedValue(getObject("OverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("DuplicateCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",923,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThereAlreadyExistsAPriceForThisCurrency.error",null,null,encodeString(context.getFormattedValue(getObject("OverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% }}}} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OverridePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("OverridePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",926,e);}if (_boolean_result) { %>
							<% while (loop("OverridePriceErrorCurrencies","ErrorCurrency",null)) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OverridePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",928,e);}if (_boolean_result) { %>
								 	<br/>
								 	<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {930}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceTheFormatOfThePriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OverridePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",931,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {932}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeGreaterThan0.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OverridePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",933,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {934}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeLower.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% }}} %>
							<% } %>
						<% } %>
					</td>
				</tr>
			</table>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionOverride")))).booleanValue() && ((Boolean) (hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",942,e);}if (_boolean_result) { %>
			<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {943}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box e w s">
				<tr>
					<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="confirm" width="100%"><% {out.write(localizeISText("ShippingRuleAction_52.AreYouSureThatYouWantToDeleteTheseActionOverrides.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td nowrap="nowrap">
						<% while (loop("CurrencyMnemonics","Selected",null)) { %>
							<input type="hidden" name="DeleteActionOverride" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {950}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<% } %>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td class="button">
									<input type="submit" name="deleteActionOverride" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.button",null)),null)%>" class="button"/>
								</td>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
								<td class="button">
									<input type="submit" name="cancelRuleAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionOverride")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",967,e);}if (_boolean_result) { %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingRuleAction_52.ActionOverride.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","w e s")}, 969); %>
			</table>
		<% } %>
		
		<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w s">
			<tr>
				<td class="infobox_title" colspan="5"><% {out.write(localizeISText("ShippingRuleAction_52.OverrideByCurrency.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",977,e);}if (_boolean_result) { %>
				<tr>
					<td class="label_select" nowrap="nowrap"><label class="label label_select"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
					<td class="table_detail">
						<select name="OverrideCurrency_CurrencyMnemonic" class="select inputfield_en">
							<% while (loop("Currencies",null,null)) { %>
								<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {983}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",983,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {983}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
							<% } %>
						</select>
					</td>
					<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleAction_52.Override.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
					<td class="table_detail"><input type="text" name="OverrideValue_CurrencyMnemonic" value="" maxlength="15" size="15" class="inputfield_en"/></td>
					<td width="100%">
						<table border="0" cellspacing="2" cellpadding="0">
							<tr>
								<td class="button"><input type="submit" name="addActionOverride" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-CreateRuleAction",null)))),null)%>'"/></td>
							</tr>
						</table>
					</td>
				</tr>
			<% } %>
		</table>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("Override",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ShippingRule:getAction:CustomAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1001,e);}if (_boolean_result) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1003,e);}if (_boolean_result) { %>	
						<td class="table_header e s" nowrap="nowrap" width="80">
							<div id="A">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionOverride','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
							<div id="B" style="display:none">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionOverride','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
						</td>
					<% } %>
					<td class="table_header e s" width="100"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Override.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
				<% while (loop("ShippingRule:getAction:CustomAttributes","Override",null)) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1030,e);}if (_boolean_result) { %>	
							<td class="table_detail2 e s center">
								<input type="checkbox" name="DeleteActionOverride" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Override:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1032}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrencyMnemonics"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1033,e);}if (_boolean_result) { %><% while (loop("CurrencyMnemonics","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("Override:MoneyValue:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1033,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",1033);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>
								/>
							
							</td>
						<% } %>
						<td class="table_detail2 e s">
							<input type="hidden" name="OverrideCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("Override:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1039}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Override:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1039}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(Override:MoneyValue:CurrencyMnemonic):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1040}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							
						</td>
						<td class="table_detail2 e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1044,e);}if (_boolean_result) { %>	
								<input type="text" name="OverrideValue_<% {String value = null;try{value=context.getFormattedValue(getObject("Override:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1045}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Override:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1045}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
							<% } else { %>
								<input type="text" name="OverrideValue_<% {String value = null;try{value=context.getFormattedValue(getObject("Override:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1047}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Override:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1047}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
							<% } %>
						</td>
					</tr>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1052,e);}if (_boolean_result) { %>	
					<tr>
						<td class="e s" colspan="6" align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
									</td>
									<td class="button">
										<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
									</td>
									<td class="button">
										<input type="submit" name="confirmDeleteActionOverride" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null)%>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				<% } %>
			<% } else { %>
				<tr>
					<td colspan="3" class="table_detail e s"><% {out.write(localizeISText("ShippingRuleAction_52.ThereAreCurrentlyNoActionOverrideDefinedForThisRul.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			<% } %>
		</table>
	<% } %> 
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingRule:getAction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("BucketOverride",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1079,e);}if (_boolean_result) { %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketOverrideNewPriceErrorCurrency")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("BucketOverridePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("BucketOverridePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1080,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr valign="top">
					<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error top" width="100%">
						<% {out.write(localizeISText("sld_ch_consumer_plugin.TheEnteredPriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketOverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1086,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceTheFormatOfThePriceWasInvalid.error",null,null,encodeString(context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketOverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1088,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeGreaterThan0.error",null,null,encodeString(context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketOverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1090,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThePriceMustBeLower.error",null,null,encodeString(context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketOverrideNewPriceErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCode"),null).equals(context.getFormattedValue("DuplicateCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1092,e);}if (_boolean_result) { %>
							<br/><% {out.write(localizeISText("sld_ch_consumer_plugin.New0PriceThereAlreadyExistsAPriceForThisCurrency.error",null,null,encodeString(context.getFormattedValue(getObject("BucketOverrideNewPriceErrorCurrency"),null)),null,null,null,null,null,null,null,null,null));} %>
						<% }}}} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BucketOverridePriceErrorCurrencies")))).booleanValue() && ((Boolean) (hasLoopElements("BucketOverridePriceErrorCurrencies") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1095,e);}if (_boolean_result) { %>
							<% while (loop("BucketOverridePriceErrorCurrencies","ErrorCurrency",null)) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BucketOverridePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1097,e);}if (_boolean_result) { %>
								 	<br/>
								 	<% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1099}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceTheFormatOfThePriceWasInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BucketOverridePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1100,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeGreaterThan0.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BucketOverridePriceErrors:get(ErrorCurrency)"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1102,e);}if (_boolean_result) { %>
									<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCurrency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_ch_consumer_plugin.PriceThePriceMustBeLower.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% }}} %>
							<% } %>
						<% } %>
					</td>
				</tr>
			</table>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionBucketOverride")))).booleanValue() && ((Boolean) (hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1111,e);}if (_boolean_result) { %>
			<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box e w s">
				<tr>
					<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="confirm" width="100%"><% {out.write(localizeISText("ShippingRuleAction_52.AreYouSureThatYouWantToDeleteTheseActionBucketOver.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td nowrap="nowrap">
						<% while (loop("CurrencyMnemonics","Selected",null)) { %>
							<input type="hidden" name="DeleteActionBucketOverride" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<% } %>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td class="button">
									<input type="submit" name="deleteActionBucketOverride" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.OK.button",null)),null)%>" class="button"/>
								</td>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
								<td class="button">
									<input type="submit" name="cancelRuleAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteActionBucketOverride")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CurrencyMnemonics") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1136,e);}if (_boolean_result) { %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ShippingRuleAction_52.ActionBucketOverride.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","w e s")}, 1138); %>
			</table>
		<% } %>
		<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w s">
			<tr>
				<td class="infobox_title" colspan="5"><% {out.write(localizeISText("ShippingRuleAction_52.BucketOverrideByCurrency.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1145,e);}if (_boolean_result) { %>
				<tr>
					<td class="label" nowrap="nowrap"><label class="label label_light">><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
					<td class="table_detail">
						<select name="BucketOverrideCurrency_CurrencyMnemonic" class="select inputfield_en">
							<% while (loop("Currencies",null,null)) { %>
								<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1151,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
							<% } %>
						</select>
					</td>
					<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleAction_52.BucketOverride.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
					<td class="tabledetail"><input type="text" name="BucketOverrideValue_CurrencyMnemonic" value="" maxlength="15" size="15" class="inputfield_en"/></td>
					<td width="100%">
						<table border="0" cellspacing="2" cellpadding="0">
							<tr>
								<td class="button"><input type="submit" name="addActionBucketOverride" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAdvancedShippingRule_52-CreateRuleAction",null)))),null)%>'"/></td>
							</tr>
						</table>
					</td>
				</tr>
			<% } %>
		</table>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShippingRule:getAction:Type"),null).equals(context.getFormattedValue("BucketOverride",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ShippingRule:getAction:CustomAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1169,e);}if (_boolean_result) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1171,e);}if (_boolean_result) { %>
						<td class="table_header e s" nowrap="nowrap" width="80">
							<div id="A">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionBucketOverride','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
							<div id="B" style="display:none">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAll('ShippingRuleActionForm','DeleteActionBucketOverride','A','B');" class="tableheader"><% {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
						</td>
					<% } %>
					<td class="table_header e s" width="100"><% {out.write(localizeISText("sld_ch_consumer_plugin.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.BucketOverride.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
				<% while (loop("ShippingRule:getAction:CustomAttributes","BucketOverride",null)) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1198,e);}if (_boolean_result) { %>	
							<td class="table_detail2 e s center">
								<input type="checkbox" name="DeleteActionBucketOverride" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketOverride:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrencyMnemonics"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1201,e);}if (_boolean_result) { %><% while (loop("CurrencyMnemonics","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("BucketOverride:MoneyValue:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1201,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",1201);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>
									
								/>
							
							</td>
						<% } %>
						<td class="table_detail2 e s">
							<input type="hidden" name="BucketOverrideCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("BucketOverride:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketOverride:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(BucketOverride:MoneyValue:CurrencyMnemonic):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							
						</td>
						<td class="table_detail2 e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1213,e);}if (_boolean_result) { %>	
								<input type="text" name="BucketOverrideValue_<% {String value = null;try{value=context.getFormattedValue(getObject("BucketOverride:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketOverride:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
							<% } else { %>
								<input type="text" name="BucketOverrideValue_<% {String value = null;try{value=context.getFormattedValue(getObject("BucketOverride:MoneyValue:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BucketOverride:MoneyValue"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>											
							<% } %>
						</td>
					</tr>
				<% } %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1222,e);}if (_boolean_result) { %>
					<tr>
						<td class="e s" colspan="6" align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="submit" name="updateAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
									</td>
									<td class="button">
										<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
									</td>
									<td class="button">
										<input type="submit" name="confirmDeleteActionBucketOverride" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null)%>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				<% } %>
			<% } else { %>
				<tr>
					<td colspan="3" class="table_detail e s"><% {out.write(localizeISText("ShippingRuleAction_52.ThereAreCurrentlyNoActionBucketOverridesDefinedFor.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			<% } %>
		</table>
	<% } %>
<% out.print("</form>"); %><% printFooter(out); %>