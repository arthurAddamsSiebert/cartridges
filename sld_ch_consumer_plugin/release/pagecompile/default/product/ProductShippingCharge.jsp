<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- BEGIN TEMPLATE <% out.write(getTemplateName()); %> -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Product"),
new TagParameter("key0","Domain"),
new TagParameter("value1",getObject("Product")),
new TagParameter("value0",getObject("CurrentChannel:Domain:Site")),
new TagParameter("mapname","RegionParams")}, 4); %>
	<% {try{executePipeline("ProcessRegion-GetRegionsByDomain",((java.util.Map)(getObject("RegionParams"))),"RegionDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 7.",e);}} %>
	<% {try{executePipeline("ProcessShippingMethod-GetShippingMethodsByDomain",((java.util.Map)(getObject("RegionParams"))),"ShippingMethodDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} %>
	
	
<% URLPipelineAction action135 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPrices_52-Dispatch",null)))),null));String site135 = null;String serverGroup135 = null;String actionValue135 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPrices_52-Dispatch",null)))),null);if (site135 == null){  site135 = action135.getDomain();  if (site135 == null)  {      site135 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup135 == null){  serverGroup135 = action135.getServerGroup();  if (serverGroup135 == null)  {      serverGroup135 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPrices_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formProductShippingCharge");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue135, site135, serverGroup135,true)); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortingAttribute"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
		<input type="hidden" name="SortingAttribute" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortingAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
		<input type="hidden" name="SortDirection" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortDirection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<% } %>
	<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	
	
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingChargeErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ShippingChargeCreationErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
						<tr valign="top">
							<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top" width="100%">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingChargeErrorCode")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingChargeCreationErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingChargeCreationErrorCode"),null).equals(context.getFormattedValue("DuplicateRecord",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("updateShippingCharges"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("ProductShippingCharge.ErrorDuringUpdatingProductShippingCharge.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
								<% } else { %>
								<% {out.write(localizeISText("ProductShippingCharge.ErrorDuringCreationOfProductShippingCharge.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
								<% } %>
									
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingChargeErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
										<% {out.write(localizeISText("ProductShippingCharge.PleaseProvideAValidValue.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShippingChargeCreationErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShippingChargeCreationErrorCode"),null).equals(context.getFormattedValue("DuplicateRecord",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
										<% {out.write(localizeISText("ProductShippingCharge.ThereAlreadyExistsAnOverrideOrSurcharge.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } %>
								<% } %>
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteShippingCharge")))).booleanValue() && ((Boolean) (hasLoopElements("ShippingCharges") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box e w s">
						<tr>
							<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="confirm" width="100%"><% {out.write(localizeISText("ProductShippingCharge.AreYouSureYouWantToDeleteTheseShippingCharges.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td nowrap="nowrap">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="button">
											<% while (loop("ShippingCharges","Selected",null)) { %>
												<input type="hidden" name="DeleteShippingCharges" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<% } %>
											<input type="submit" name="deleteShippingCharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.OK.button",null)),null)%>" class="button"/>
										</td>
										<td>&nbsp;</td>
										<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Cancel.button",null)),null)%>" class="button"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<!-- delete confirmation -->
		<!-- error message nothing selected -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteShippingCharge")))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("ShippingCharges") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
			<tr>
				<td colspan="8">
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
						<tr>
							<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top" width="100%">
								<% {out.write(localizeISText("ProductShippingCharge.YouHaveNotSelectedAnyShippingChargeToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>	
		<tr>
			<td class="table_title_description w e">
				<span><% {out.write(localizeISText("ProductShippingCharge.ProductShippingChargeUpWillBeAddedToTheShippingCharges.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<br/>
				<% {out.write(localizeISText("ProductShippingCharge.NoteAlsoThatMoreSpecificSettingsOverride.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<tr>
			<td>
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox n e w">
					<tr>
						<td class="infobox_title"><% {out.write(localizeISText("ProductShippingCharge.ProductShippingCharges.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>	
					<tr>
						<td class="s">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="ShippingCharge_Type"><% {out.write(localizeISText("ProductShippingCharge.ShippingChargeType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
									<td>
										<select name="ShippingCharge_Type" id="ShippingCharge_Type" class="select inputfield_en" style="width: 190px;">
												
												<option value="surcharge"><% {out.write(localizeISText("ProductShippingCharge.Surcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										</select>
									</td>
									<td class="label_select" nowrap="nowrap"><label class="label label_select label_light label_horizontal_align" for="ShippingCharge_ShippingMethodID"><% {out.write(localizeISText("ProductShippingCharge.ShippingMethod.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
									<td>
										<select name="ShippingCharge_ShippingMethodID" id="ShippingCharge_ShippingMethodID" class="select inputfield_en" style="width: 190px;">
												<option value=""><% {out.write(localizeISText("ProductShippingCharge.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
												<% while (loop("ShippingMethodDic:ShippingMethods","ShippingMethod",null)) { %>
													<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingMethod:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingMethod:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ShippingMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ShippingMethod:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option>
												<% } %>
										</select>
									</td>
									<td class="label_select" nowrap="nowrap"><label class="label label_select label_light label_horizontal_align" for="ShippingCharge_RegionID"><% {out.write(localizeISText("ProductShippingCharge.Region.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
									<td>
										<select name="ShippingCharge_RegionID" id="ShippingCharge_RegionID" class="select inputfield_en" style="width: 190px;">
												<option value=""><% {out.write(localizeISText("ProductShippingCharge.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
												<% while (loop("RegionDic:Regions","Region",null)) { %>
													<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option>
												<% } %>
										</select>
									</td>
									<td class="label" nowrap="nowrap"><label class="label label_light label_horizontal_align" for="ShippingCharge_Value"><% {out.write(localizeISText("ProductShippingCharge.Value.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
									<td><input type="text" name="ShippingCharge_Value" id="ShippingCharge_Value" value="" maxlength="15" size="15" class="inputfield_en"/></td>
									<td width="100%">
										<table border="0" cellspacing="4" cellpadding="0">
											<tr>
											<td class="button">
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>
												<input type="submit" name="addShippingCharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Add.button",null)),null)%>" class="button"/>
												<% } else { %>
												<input type="submit" name="addShippingCharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Add.button",null)),null)%>" class="button" disabled="disabled"/>   
												<% } %>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="ShippingCharge_Currency"><% {out.write(localizeISText("ProductShippingCharge.SelectCurrency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
									<td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingCharge_Currency"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %>
											<% {Object temp_obj = (getObject("ShippingCharge_Currency")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} %>
										<% } else { %>
											<% {Object temp_obj = (getObject("CurrentSession:CurrencyCode")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} %>
										<% } %>
										<select name="ShippingCharge_Currency" id="ShippingCharge_Currency" class="select inputfield_en">
											<% while (loop("Currencies",null,null)) { %>
												<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
													<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedLocaleID"),null).equals(context.getFormattedValue(getObject("Currencies:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %>selected="selected"<% } %>
												>
													<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
												</option>
											<% } %>
										</select>
									</td>
									<td width="100%">
										<table border="0" cellspacing="0" cellpadding="4">
											<tr>
												<td class="button"><input type="submit" name="searchByCurrency" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Apply.button",null)),null)%>" class="button"/></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductShippingCharges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>
			<tr>
				<td class="aldi left" nowrap="nowrap" width="80">
					<div id="ShippingChargeA">
						<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('formProductShippingCharge','DeleteShippingCharge','ShippingChargeA','ShippingChargeB');" class="tableheader"><% {out.write(localizeISText("ProductShippingCharge.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
								</td>
							</tr>
						</table>
					</div>
					<div id="ShippingChargeB" style="display:none">
						<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('formProductShippingCharge','DeleteShippingCharge','ShippingChargeA','ShippingChargeB');" class="tableheader"><% {out.write(localizeISText("ProductShippingCharge.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
								</td>
							</tr>
						</table>
					</div>
				</td>
				<td class="table_header n e s"><% {out.write(localizeISText("ProductShippingCharge.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
				<td class="table_header n e s"><% {out.write(localizeISText("ProductShippingCharge.ShippingMethod.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header n e s"><% {out.write(localizeISText("ProductShippingCharge.Region.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header n e s"><% {out.write(localizeISText("ProductShippingCharge.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<% while (loop("ProductShippingCharges","productShippingCharges",null)) { %>
				<tr>
					<td class="table_detail2 w e s center">
						<% {Object temp_obj = (context.getFormattedValue(getObject("productShippingCharges:Type"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("productShippingCharges:UUID"),null)); getPipelineDictionary().put("SelectedShippingCharge", temp_obj);} %>
						<input type="hidden" name="ProductShippingCharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<input type="checkbox" name="DeleteShippingCharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteShippingCharge")))).booleanValue() && ((Boolean) (hasLoopElements("ShippingCharges") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %><% while (loop("ShippingCharges",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingCharges"),null).equals(context.getFormattedValue(getObject("SelectedShippingCharge"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",222);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
					</td>
					<td class="table_detail2 e s">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("productShippingCharges:Type"),null).equals(context.getFormattedValue("override",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductShippingCharge.OverrideShippingCharges.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %><% {out.write(localizeISText("ProductShippingCharge.Surcharge.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } %>
						<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_ShippingChargeType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					</td>
					<td class="table_detail2 e s">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("productShippingCharges:ShippingMethod"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",231,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("ProductShippingCharge.All.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:ShippingMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {234}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<% } %>
					</td>
					<td class="table_detail2 e s">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("productShippingCharges:Region"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",238,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("ProductShippingCharge.All.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:Region"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {241}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<% } %>
					</td>
					<td class="table_detail2 e s">
						<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_CurrencyValue" maxlength="30" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:Price"),"#00.00#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"  class="inputfield_en"/>
						<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("productShippingCharges:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {246}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_CurrencyMnemonic" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {246}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					</td>
				</tr>
			<% } %>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ProductShippingCharges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %>
			<tr>
				<td colspan="6" class="table_detail aldi"><% {out.write(localizeISText("ProductShippingCharge.ThereAreCurrentlyNoProductShippingChargesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		<% } %>
		<tr>
			<td class="w e s" colspan="6" align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",261,e);}if (_boolean_result) { %>
								<input type="submit" name="updateShippingCharges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Apply.button",null)),null)%>" class="button"/>
							<% } else { %>
								<input type="submit" name="updateShippingCharges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Apply.button",null)),null)%>" class="button" disabled="disabled"/>
							<% } %>
						</td>
						<td class="button">
							<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Reset.button",null)),null)%>" class="button"/>
						</td>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductShippingCharges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %>
							<td class="button">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",273,e);}if (_boolean_result) { %>
								<input type="submit" name="confirmDeleteShippingCharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Delete.button",null)),null)%>" class="button"/>
							<% } else { %>
								<input type="submit" name="confirmDeleteShippingCharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductShippingCharge.Delete.button",null)),null)%>" class="button" disabled="disabled"/>
							<% } %>
							</td>
						<% } %>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<!-- END TEMPLATE <% out.write(getTemplateName()); %> --><% printFooter(out); %>