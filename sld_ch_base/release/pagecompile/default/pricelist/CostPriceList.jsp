<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Working Area -->

<!-- Page Navigator -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)))),
new TagParameter("id","CostPriceList"),
new TagParameter("text",localizeText(context.getFormattedValue("CostPriceList.CostPriceList.text",null)))}, 5); %>
<!-- EO Page Navigator -->

<% URLPipelineAction action102 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-Dispatch",null)))),null));String site102 = null;String serverGroup102 = null;String actionValue102 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-Dispatch",null)))),null);if (site102 == null){  site102 = action102.getDomain();  if (site102 == null)  {      site102 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup102 == null){  serverGroup102 = action102.getServerGroup();  if (serverGroup102 == null)  {      serverGroup102 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("priceListStandardForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue102, site102, serverGroup102,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="SelectedCurrencyMnemonic" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("CostPriceList.CostPriceList.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	
		<!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CostPriceList.CostPrice.subject",null))),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("CostPriceList.DeleteAllSelectedCostPrices.message",null)))}, 18); %>
		<% } %>
	</table>
	
	<!-- delete confirmation if nothing is selected-->
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error" width="100%"><% {out.write(localizeISText("CostPriceList.PleaseSelectAtLeastOneCostPrice.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		</table>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PriceErrorCodes")))).booleanValue() && ((Boolean) (hasLoopElements("PriceErrorCodes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr valign="top">
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%"><% {out.write(localizeISText("CostPriceList.TheFollowingPricesAreInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
					<% while (loop("PriceFormRecords","PriceFormRecord",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FormRecords:get(PriceFormRecord):get(\"ErrorCode\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FormRecords:get(PriceFormRecord):get(\"ErrorCode\")"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
								<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ProductIDs:get(PriceFormRecord)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>: <% {out.write(localizeISText("CostPriceList.TheFormatOfThePriceIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FormRecords:get(PriceFormRecord):get(\"ErrorCode\")"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
								<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ProductIDs:get(PriceFormRecord)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>: <% {out.write(localizeISText("CostPriceList.ThePriceMustBeGreaterThanZero.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FormRecords:get(PriceFormRecord):get(\"ErrorCode\")"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
								<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ProductIDs:get(PriceFormRecord)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>: <% {out.write(localizeISText("CostPriceList.ThePriceMustBeLower.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% }}} %>
						<% } %>
					<% } %>
				</td>
			</tr>
		</table>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LockErrorCodes")))).booleanValue() && ((Boolean) (hasLoopElements("LockErrorCodes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr valign="top">
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%"><% {out.write(localizeISText("CostPriceList.TheFollowingProductsAreCurrentlyLockedBy.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
					<% while (loop("PriceFormRecords","PriceFormRecord",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FormRecords:get(PriceFormRecord):get(\"ErrorCode\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FormRecords:get(PriceFormRecord):get(\"ErrorCode\")"),null).equals(context.getFormattedValue("ProductLocked",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
								<br/><% {String value = null;try{value=context.getFormattedValue(getObject("ProductIDs:get(PriceFormRecord)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							<% } %>
						<% } %>
					<% } %>
				</td>
			</tr>
		</table>
	<% } %>

	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PriceListSearchMessages", null, "70");} %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
			<tr>
				<td class="table_title_description w e s">
					<% {out.write(localizeISText("CostPriceList.TheCostPriceListContainsAllCostPricesLong.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		<% } else { %>
			<tr>
				<td class="table_title_description w e s">
					<% {out.write(localizeISText("CostPriceList.TheCostPriceListContainsAllCostPrices.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		<% } %>
	</table>

	<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w s">
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="infobox_item" nowrap="nowrap" valign="middle"><% {out.write(localizeISText("CostPriceList.SelectCurrency.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
						<td class="infobox_item">
							<select name="SelectCurrencyMnemonic" class="select">
								<% while (loop("Currencies",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } %>
							</select>&nbsp;
						</td>
						<td class="button"><input type="submit" name="changeCurrency" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CostPriceList.Apply.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
		</tr>
	</table>
	
	<!-- include simple price list search mask -->
	<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
		<tr>
			<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("CostPriceList.ProductSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PriceListSimpleSearchMask", null, "119");} %>
	</table>

	<!-- Main Content -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
					<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
						<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PriceListSearchNoResult", null, "128");} %>
					</table>
				<% } else { %>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>
								<td class="e s" nowrap="nowrap" width="80">
									<div id="A">
										<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
											<tr>
												<td nowrap="nowrap"><a href="javascript:selectAll('priceListStandardForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CostPriceList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
											</tr>
										</table>
									</div>
									<div id="B" style="display:none">
										<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
											<tr>
												<td nowrap="nowrap"><a href="javascript:selectAll('priceListStandardForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CostPriceList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
											</tr>
										</table>
									</div>
								</td>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByProduct"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByProduct"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>
								<td class="table_header e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByProduct",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
							<% } else { %>
								<td class="table_header e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByProduct",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByProduct"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByProduct"),null).equals(context.getFormattedValue("SKU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %>
								<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByProduct",null),context.getFormattedValue("SKU",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
							<% } else { %>
								<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByProduct",null),context.getFormattedValue("SKU",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByListPrice"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>
								<td class="table_header e s left" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByListPrice",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.ListPrice.link",null,null,encodeString(context.getFormattedValue(getObject("Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></a></td>
							<% } else { %>
								<td class="table_header e s left" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByListPrice",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.ListPrice.link",null,null,encodeString(context.getFormattedValue(getObject("Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></a></td>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("noPriceForCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>
								<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("CostPriceList.CostPrice.table_header",null,null,encodeString(context.getFormattedValue(getObject("Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByCostPrice"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %>
									<td class="table_header e s left" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByCostPrice",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.CostPrice.link",null,null,encodeString(context.getFormattedValue(getObject("Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></a></td>
								<% } else { %>
									<td class="table_header e s left" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByCostPrice",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("WFSimpleSearch_NameOrID",null),context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)).addURLParameter(context.getFormattedValue("SelectCurrencyMnemonic",null),context.getFormattedValue(getObject("Currency:Mnemonic"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("CostPriceList.CostPrice.link",null,null,encodeString(context.getFormattedValue(getObject("Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></a></td>
								<% } %>
							<% } %>
						</tr>
						<% while (loop("Products","Product",null)) { %>
							<tr>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %>
									<td class="table_detail2 e s top center"><input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/></td>	
								<% } %>
								<td class="table_detail2 top e s" width="100%">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %>
										<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewProduct_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Edit",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
									<% } else { %>
										<% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
									<% } %>
								</td>
								<td class="table_detail2 top e s" nowrap="nowrap">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
										<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewProduct_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Edit",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
									<% } else { %>
										<% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
									<% } %>
								</td>

								<td class="table_detail2 e s right">
									<% {String value = null;try{value=context.getFormattedValue(getObject("Product:ListPrice(Currency:Mnemonic):Amount"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
								</td>
								
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %>
									<td class="table_detail2 e s">
										<input type="hidden" name="CostPrices" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormRecords")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("FormRecords:get(Product:UUID):get(\"ErrorCode\")")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %>
											<input type="text" name = "<%=context.getFormattedValue(getObject("Product:UUID"),null)%>_CostPrice" maxlength="30" size="15" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("FormRecords:get(Product:UUID):get(\"CostPrice\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
											<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
										<% } else { %>
											<input type="text" name = "<%=context.getFormattedValue(getObject("Product:UUID"),null)%>_CostPrice" maxlength="30" size="15" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("Product:CostPrice(Currency:Mnemonic):Amount"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
										<% } %>
									</td>
								<% } else { %>
									<td class="table_detail2 e s">
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormRecords")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("FormRecords:get(Product:UUID):get(\"ErrorCode\")")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %>
											<% {String value = null;try{value=context.getFormattedValue(getObject("FormRecords:get(Product:UUID):get(\"CostPrice\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {213}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
											<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
										<% } else { %>
											<% {String value = null;try{value=context.getFormattedValue(getObject("Product:CostPrice(Currency:Mnemonic):Amount"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
										<% } %>
									</td>
								<% } %>
								
							</tr>
						<% } %>
					</table>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %>
						<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="right">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CostPriceList.Apply.button",null)),null)%>" class="button"/></td><td class="button"><input type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CostPriceList.Reset.button",null)),null)%>" class="button"/></td><td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CostPriceList.Delete.button",null)),null)%>" class="button"/></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<% } %>
					<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
					<!-- Start Page Cursor -->
					<% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Products")}, 239); %>
					<!-- End Page Cursor -->
				<% } %>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "246");} %>
<% printFooter(out); %>