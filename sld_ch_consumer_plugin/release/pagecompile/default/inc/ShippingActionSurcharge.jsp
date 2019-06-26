<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<div id="surcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShippingAction:Type"),null).equals(context.getFormattedValue("AddSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %> style="display:none" <% } %>>
	<table  border="0" cellpadding="0" cellspacing="0" width="100%" >
		<tr>
			<td>
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox n e w">
					<tr><td class="infobox_title" colspan="6"><% {out.write(localizeISText("ShippingActionSurcharge.SurchargeByCurrency",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
					<tr>
						<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ShippingActionSurcharge.Currency",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
						<td class="infobox_item">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SurchargeCurrency_CurrencyMnemonic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (getObject("SurchargeCurrency_CurrencyMnemonic")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} %>
						<% } else { %>
							<% {Object temp_obj = (getObject("CurrentSession:CurrencyCode")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} %>
						<% } %>
						<select name="SurchargeCurrency_CurrencyMnemonic" class="select">
								<% while (loop("Currencies",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedLocaleID"),null).equals(context.getFormattedValue(getObject("Currencies:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>selected="selected"<% } %>
										><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									</option>
								<% } %>
							</select>
						</td>
						<td class="infobox_item" nowrap="nowrap">&nbsp;</td>
						<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ShippingActionSurcharge.Surcharge",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
						<td class="infobox_item"><input type="text" name="SurchargeValue_CurrencyMnemonic" value="" maxlength="15" size="15" class="inputfield_en"/></td>
						<td width="100%">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="button"><input type="submit" name="searchByCurrency" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingActionSurcharge.Add",null)),null)%>" class="button"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					
						<tr>
							<td class="aldi left" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('formMask','DeleteCostPrice','A','B');" class="tableheader"><% {out.write(localizeISText("ShippingActionSurcharge.SelectAll",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
												<a href="javascript:selectAll('formMask','DeleteCostPrice','A','B');" class="tableheader"><% {out.write(localizeISText("ShippingActionSurcharge.ClearAll",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>
							<td class="table_header n e s"><% {out.write(localizeISText("ShippingActionSurcharge.Currency",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header n s"><% {out.write(localizeISText("ShippingActionSurcharge.Surcharge",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header n e s">&nbsp;</td>
						</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

<% printFooter(out); %>