<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.CostPriceRepresentsTheCostOfTheProductThisPriceCanBeDetermi.table_title_description",null,null,"bold",null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.CostPriceRepresentsTheCostOfTheProductThisPriceCanBeDetermi.table_title_description1",null,null,"bold",null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox n e w">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("sld_enterprise_app.CostPrice.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" >
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="CostPriceCurrency_CurrencyMnemonic"><% {out.write(localizeISText("sld_enterprise_app.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="CostPriceCurrency_CurrencyMnemonic" id="CostPriceCurrency_CurrencyMnemonic" class="select inputfield_en"><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td class="label" nowrap="nowrap"><label class="label label_light label_horizontal_align" for="CostPriceValue_CurrencyMnemonic"><% {out.write(localizeISText("sld_enterprise_app.Price.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="CostPriceValue_CurrencyMnemonic" id="CostPriceValue_CurrencyMnemonic" value="" maxlength="30" size="30" class="inputfield_en"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="4">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("ViewProductPrices_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null)); getPipelineDictionary().put("currentPipeline", temp_obj);} %><% } else { %><% {Object temp_obj = ("ViewProductPrices"); getPipelineDictionary().put("currentPipeline", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="addCostPrice" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("currentPipeline"),null) + context.getFormattedValue("-AddCostPrice",null),null)))),null)%>'"/>
</td><% } else { %><td class="button">
<input type="submit" name="addCostPrice" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Add.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("currentPipeline"),null) + context.getFormattedValue("-AddCostPrice",null),null)))),null)%>'" disabled="disabled"/>
</td><% } %><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductCostPrices") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><td class="aldi left" nowrap="nowrap" width="80">
<div id="CostPricesA">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','DeleteCostPrice','CostPricesA','CostPricesB');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="CostPricesB" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','DeleteCostPrice','CostPricesA','CostPricesB');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s"><% {out.write(localizeISText("sld_enterprise_app.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header n e w s"><% {out.write(localizeISText("sld_enterprise_app.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header n s"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s">&nbsp;</td>
</tr><% while (loop("ProductCostPrices","prices",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><td class="table_detail2 w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (getObject("Product:isDerivedProduct"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (getObject("prices:isDerivedPrice"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><input type="checkbox" name="DeleteCostPrice" value="<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrencyMnemonics"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><% while (loop("CurrencyMnemonics","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("prices:Currency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",115);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/><% } else { %><input type="checkbox" name="DeleteCostPrice" disabled="true"/><% } %></td>
<td class="table_detail2 e s">
<input type="hidden" name="CostPriceCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(prices:Currency):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail2 s">
<input type="text" name="CostPriceValue_<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="CostPriceValueId_<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Amount"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td><% } else { %><td class="table_detail2 w e s">
<input type="hidden" name="CostPriceCurrency_<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("prices:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMap:get(prices:Currency):CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail2 s"><% {String value = null;try{value=context.getFormattedValue(getObject("prices:Amount"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %> 
<td class="table_detail2 e s" width="100%">&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isDerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("prices:OriginalPrice"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>
(<% {out.write(localizeISText("sld_enterprise_app.ChannelPriceSharedPrice0.table_detail2",null,null,context.getFormattedValue(getObject("prices:OriginalPrice:Amount"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("prices:isDerivedPrice"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
(<% {out.write(localizeISText("sld_enterprise_app.ChannelPrice.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>)
<% } else { %>
(<% {out.write(localizeISText("sld_enterprise_app.SharedPrice.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>)
<% }} %><% } %></td>
</tr><% } %><% } else { %><tr>
<td colspan="4" class="table_detail aldi"><% {out.write(localizeISText("sld_enterprise_app.ThereAreCurrentlyNoCostPricesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td class="w e s" colspan="4" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><input type="submit" name="updateCostPrice" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button" onclick="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("currentPipeline"),null) + context.getFormattedValue("-UpdateCostPrices",null),null)))),null)%>'"/><% } else { %><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><input type="submit" name="updateCostPrice" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button" disabled="disabled"/><% } %></td>
<td class="button">
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductCostPrices") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %><input type="submit" name="confirmDeleteCostPrice" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="confirmDeleteCostPrice" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button" disabled="disabled"/><% } %></td><% } %><% } else { %>
&nbsp;
<% } %> 
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>