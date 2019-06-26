<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "java.util.*,com.intershop.component.mvc.capi.mapping.*" %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.0NewMappingRule.table_title",null,null,encodeString(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorInvalidSurcharge"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.MappingRuleCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorInvalidSurcharge"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.PleaseProvideAValidSurchargeDiscount.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CreatePriceMappingRule:MappingRule:isMissing")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("create")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.MappingRuleCouldNotBeCreatedBPleaseSelectARuleAndC.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
</td>
</tr>
</table> 
</td>
</tr>
</table><% } %><%
		HashMap listPriceTargetDeclarationMap = new HashMap();
		HashMap costPriceTargetDeclarationMap = new HashMap();

		Iterator i = (Iterator)getObject("PriceMappingRules");
		List<ProductDataMappingRule> priceMappingRules = new ArrayList();
		while( i.hasNext() )
		{
			priceMappingRules.add((ProductDataMappingRule)i.next());
		}

		for( ProductDataMappingRule r : priceMappingRules )
		{
			String functionClassName = r.getFunctionClassName();

			if( functionClassName.equals( "com.intershop.component.mvc.capi.mapping.ProductPriceMappingRule" ) || functionClassName.equals( "com.intershop.component.mvc.capi.mapping.ProductCalculateListPriceFromCostPriceMappingRule") )
			{
				ProductDataDeclaration pdd = r.getTargetDeclaration();
				listPriceTargetDeclarationMap.put(pdd.getString("currency"),pdd);

			}
			else if( functionClassName.equals( "com.intershop.component.mvc.capi.mapping.ProductCostPriceMappingRule") || functionClassName.equals( "com.intershop.component.mvc.capi.mapping.ProductUseListPriceAsCostPriceMappingRule")  )
			{
				ProductDataDeclaration pdd = r.getTargetDeclaration();
				costPriceTargetDeclarationMap.put(pdd.getString("currency"),pdd);
			}
		}

		getPipelineDictionary().put("ListPrice_TargetDeclarationMap", listPriceTargetDeclarationMap);
		getPipelineDictionary().put("CostPrice_TargetDeclarationMap", costPriceTargetDeclarationMap);

	%><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e" colspan="4"><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.UseTheRadioButtonsToSelectARuleYouCanDefineASurcha.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_detail">
<input type="radio" name="CreatePriceMappingRule_MappingRule" value="CopyPrice" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListPrice_TargetDeclarationMap:get(SourceDeclaration:currency)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
<td class="table_detail" colspan="2"><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.CopyListPriceListPriceIsCopiedFixedOrSurchargeDisc.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorInvalidSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:MappingRule:Value"),null).equals(context.getFormattedValue("CopyPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("sld_enterprise_app.SurchargeDiscount.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td><% } else { %><td class="table_detail" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("sld_enterprise_app.SurchargeDiscount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td><% } %><td class="table_detail" width="100%">
<input type="text" class="inputfield_en" maxlength="30" size="30" name="CreatePriceMappingRule_CopyPriceSurcharge" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:CopyPriceSurcharge:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePriceMappingRule:CopyPriceSurcharge:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0%<% } %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListPrice_TargetDeclarationMap:get(SourceDeclaration:currency)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr><% {Object temp_obj = ("false"); getPipelineDictionary().put("ListPrice_hasValidElements", temp_obj);} %><% while (loop("Currencies","Currency",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ListPrice_TargetDeclarationMap:get(Currency:Mnemonic)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ListPrice_hasValidElements", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",119);}else{getLoopStack().pop();break;} %><% } %><% } %><tr>
<td class="table_detail">
<input type="radio" name="CreatePriceMappingRule_MappingRule" value="ConvertPrice" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="table_detail" colspan="2"><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.ConvertPriceToDifferentCurrency.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorInvalidSurcharge")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:MappingRule:Value"),null).equals(context.getFormattedValue("ConvertPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("sld_enterprise_app.SurchargeDiscount.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td><% } else { %><td class="table_detail" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("sld_enterprise_app.SurchargeDiscount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td><% } %><td class="table_detail">
<input type="text" class="inputfield_en" maxlength="30" size="30" name="CreatePriceMappingRule_ConvertPriceSurcharge" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:ConvertPriceSurcharge:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePriceMappingRule:ConvertPriceSurcharge:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0%<% } %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
<tr>
<td class="table_detail">&nbsp;</td>
<td class="table_detail" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.TargetCurrency.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
<td class="table_detail">
<select name="CreatePriceMappingRule_ConvertPriceCurrency" class="select" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListPrice_hasValidElements"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% while (loop("Currencies","Currency",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ListPrice_TargetDeclarationMap:get(Currency:Mnemonic)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("SourceDeclaration:currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePriceMappingRule:ConvertPriceCurrency:Value"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } else { %><option value=""><% {out.write(localizeISText("NewProductPriceMappingRuleHeaderInc.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select>
</td>
</tr><% printFooter(out); %>