<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<tr>
	<td class="table_detail">
		<input type="radio" name="CreatePriceMappingRule_MappingRule" value="CalculateListPriceFromCostPrice"  <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListPrice_TargetDeclarationMap:get(SourceDeclaration:currency)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
	</td>
	<td class="table_detail" colspan="2">
		<% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.CalculateListPriceFromCostPrice.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
	</td>
</tr>
<tr>
	<td class="table_detail">&nbsp;</td>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorInvalidSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:MappingRule:Value"),null).equals(context.getFormattedValue("CalculateListPriceFromCostPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
		<td class="fielditem2_error" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.SurchargeDiscount.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
	<% } else { %>
		<td class="table_detail" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.SurchargeDiscount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
	<% } %>
	<td class="table_detail" width="100%">
		<input type="text" class="inputfield_en" maxlength="30" size="30" name="CreatePriceMappingRule_CalculateListPriceFromCostPriceSurcharge" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:CalculateListPriceFromCostPriceSurcharge:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePriceMappingRule:CalculateListPriceFromCostPriceSurcharge:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0%<% } %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListPrice_TargetDeclarationMap:get(SourceDeclaration:currency)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
	</td>
</tr>


<tr>
	<td class="table_detail">
		<input type="radio" name="CreatePriceMappingRule_MappingRule" value="CalculateListPriceFromCostPriceAndConvert"  <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
	</td>
	<td class="table_detail" colspan="2"><% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.CalculateListPriceFromCostPriceAndConvert.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
	<td class="table_detail">&nbsp;</td>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorInvalidSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:MappingRule:Value"),null).equals(context.getFormattedValue("ConvertPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
		<td class="fielditem2_error" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.SurchargeDiscount.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
	<% } else { %>
		<td class="table_detail" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.SurchargeDiscount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
	<% } %>
	<td class="table_detail">
		<input type="text" class="inputfield_en" maxlength="30" size="30" name="CreatePriceMappingRule_CalculateListPriceFromCostPriceAndConvertSurcharge" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:CalculateListPriceFromCostPriceAndConvertSurcharge:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePriceMappingRule:CalculateListPriceFromCostPriceAndConvertSurcharge:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0%<% } %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
	</td>
</tr>
<tr>
	<td class="table_detail">&nbsp;</td>
	<td class="table_detail" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.TargetCurrency.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
	<td class="table_detail">
		<select name="CreatePriceMappingRule_CalculateListPriceFromCostPriceAndConvertCurrency" class="select" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
				<% while (loop("Currencies","Currency",null)) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ListPrice_TargetDeclarationMap:get(Currency:Mnemonic)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
						<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>selected="selected"<% } %>>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</option>
					<% } %>
				<% } %>
			<% } else { %>
				<option value=""><% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
			<% } %>
		</select>
	</td>
</tr>


<tr>
	<td class="table_detail">
		<input type="radio" name="CreatePriceMappingRule_MappingRule" value="CopyCostPrice" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostPrice_TargetDeclarationMap:get(SourceDeclaration:currency)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
	</td>
	<td class="table_detail" colspan="2"><% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.CopyCostPrice.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>


<% {Object temp_obj = ("false"); getPipelineDictionary().put("CostPrice_hasValidElements", temp_obj);} %>
<% while (loop("Currencies","Currency",null)) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CostPrice_TargetDeclarationMap:get(Currency:Mnemonic)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>
		<% {Object temp_obj = ("true"); getPipelineDictionary().put("CostPrice_hasValidElements", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",73);}else{getLoopStack().pop();break;} %>
	<% } %>
<% } %>
<tr>
	<td class="table_detail">
		<input type="radio" name="CreatePriceMappingRule_MappingRule" value="ConvertCostPrice" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
	</td>
	<td class="table_detail" colspan="2"><% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.ConvertCostPriceToDifferentCurrency.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
	<td class="table_detail">&nbsp;</td>
	<td class="table_detail" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.TargetCurrency.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
	<td class="table_detail">
		<select name="CreatePriceMappingRule_ConvertCostPriceCurrency" class="select" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostPrice_hasValidElements"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
				<% while (loop("Currencies","Currency",null)) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CostPrice_TargetDeclarationMap:get(Currency:Mnemonic)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>
						<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>selected="selected"<% } %>>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</option>
					<% } %>
				<% } %>
			<% } else { %>
				<option value=""><% {out.write(localizeISText("NewProductPriceMappingRuleChannelInc.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
			<% } %>
		</select>
	</td>
</tr><% printFooter(out); %>