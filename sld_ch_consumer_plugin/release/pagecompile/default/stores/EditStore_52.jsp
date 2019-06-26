<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StoreBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeID","newStore"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("EditStore_52.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("StoreID",null),context.getFormattedValue(getObject("StoreBO:ID"),null))))),
new TagParameter("id",getObject("StoreBO:ID")),
new TagParameter("text",getObject("StoreBO:AddressBO:AddressName"))}, 4); %>
<% } else { %>
	<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","false"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-New",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("NewStore_52.NewStore.text",null))),
new TagParameter("id","newStore")}, 6); %>
<% } %>
<!-- Tabs -->

<table border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("EditStore_52.General.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="e n s table_tabs_dis_background" nowrap="nowrap">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StoreBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("StoreID",null),context.getFormattedValue(getObject("StoreBO:ID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("EditStore_52.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			<% } else { %>
				<% {out.write(localizeISText("EditStore_52.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
		<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"EditStore_52", null, "20");} %>
		<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
	</tr>
</table>
<!-- EO Tabs -->

<!-- Title and delete confirmation message -->
<% URLPipelineAction action28 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));String site28 = null;String serverGroup28 = null;String actionValue28 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null);if (site28 == null){  site28 = action28.getDomain();  if (site28 == null)  {      site28 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup28 == null){  serverGroup28 = action28.getServerGroup();  if (serverGroup28 == null)  {      serverGroup28 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue28, site28, serverGroup28,false)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StoreBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
				<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
			<% } else { %>
				<% {out.write(localizeISText("NewStore_52.NewStore.text",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
			</td>
		</tr>
		<!-- Start Confirmation Message -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteStore"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametername1","StoreID"),
new TagParameter("subject",localizeText(context.getFormattedValue("EditStore_52.Store.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteStore"),
new TagParameter("parametervalue1",getObject("StoreBO:ID")),
new TagParameter("okbtnname","deleteStore"),
new TagParameter("type","sdc")}, 40); %>
		<% } %>
	</table>
<% out.print("</form>"); %>
<!-- EO Title -->

<!-- Start Errors -->
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStore")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
						<tr valign="top">
							<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top" width="100%"><b>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StoreBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("EditStore_52.StoreCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								<% } else { %>
									<% {out.write(localizeISText("EditStore_52.StoreCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								<% } %>
									</b><br/>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreForm:StoreName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.StoreNameIsMandatoryPleaseProvideAStoreName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreForm:StoreID:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.StoreIDIsMandatoryPleaseProvideAStoreID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>								
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreForm:CountryCode:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.CountryIsMandatoryPleaseProvideACountry.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorStore"),null).equals(context.getFormattedValue("StateMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.StateIsMandatoryPleaseProvideAState.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreForm:Street:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.StreetIsMandatoryPleaseProvideAStreet.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreForm:PostalCode:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.ZipPostCodeIsMandatoryPleaseProvideAZip_PostCode.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreForm:City:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.CityIsMandatoryPleaseProvideACity.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreForm:Email:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.EmailAddressIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> <% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorStore"),null).equals(context.getFormattedValue("EmailIncorrrect",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.EmailAddressIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorStore"),null).equals(context.getFormattedValue("StoreIDNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% {out.write(localizeISText("EditStore_52.StoreIDNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
<% } %>
<!-- EO Errors-->

<!-- Start Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="table_title_description w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("EditStore_52.FieldsWithRedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/>
				<br/>
				<% {out.write(localizeISText("EditStore_52.ClickApplyToSaveTheDetails.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else { %>
				<% {out.write(localizeISText("EditStore_52.ThisPageShowsStoreInformationForTheSelectedStore.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
	</tr>
</table>
<!-- EO Description -->

<!-- Start Content -->
<% URLPipelineAction action29 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));String site29 = null;String serverGroup29 = null;String actionValue29 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null);if (site29 == null){  site29 = action29.getDomain();  if (site29 == null)  {      site29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup29 == null){  serverGroup29 = action29.getServerGroup();  if (serverGroup29 == null)  {      serverGroup29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(" id=\"");out.print("editStore");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue29, site29, serverGroup29,true)); %>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>class="js-form-disabled"<% } %>>
		<tr>
			<td class="w e s">
				<!-- Start Form Two Rows -->
				
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<colgroup>
						<col width="5%">
						<col width="35%">
						<col width="10%">
						<col width="5%">
						<col width="25%">
						<col width="5%">
						<col width="15%">
					</colgroup>
					<tr>
						<td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
					</tr>
					<tr>
						
						<td class="label nowrap">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("StoreForm:StoreName:Invalid"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
								<label class="label label_error" for="StoreForm_StoreName"><% {out.write(localizeISText("EditStore_52.StoreName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } else { %>
								<label class="label" for="StoreForm_StoreName"><% {out.write(localizeISText("EditStore_52.StoreName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } %>
						</td>
						<td class="table_detail">
							<input type="text" name="StoreForm_StoreName" id="StoreForm_StoreName" maxlength="35" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:StoreName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en w100" tabindex="1"/>
						</td>
						<td rowspan="9">&nbsp;</td>
						
						<td nowrap="nowrap" class="label"><label class="label" for="StoreForm_PhoneBusiness"><% {out.write(localizeISText("EditStore_52.Phone.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>	
						<td class="table_detail">
							<input type="text" name="StoreForm_PhoneBusiness" id="StoreForm_PhoneBusiness" maxlength="35" size="30"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:PhoneBusiness:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:PhoneBusiness"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en" tabindex="10"
							/>
						</td>
						
						<td class="table_detail" align="right">
							<input type="checkbox" name="StoreForm_Active" 
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("StoreForm_Active")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>
									 checked="checked" 
								<% } else { %> 
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("StoreForm:Submitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StoreBO:Active"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>checked="checked"<% } %> 
								<% } %>
							 value="true" tabindex="14"/>
						</td>
						<td class="label_checkbox_text nowrap"><label class="label label_checkbox_text nowrap" for="StoreForm_Active"><% {out.write(localizeISText("EditStore_52.Active.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</label></td>
					</tr>
					
					<tr>
						
						<td class="label nowrap">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ErrorStore"),null).equals(context.getFormattedValue("StoreIDNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("StoreForm:StoreID:Invalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
								<label class="label label_error" for="StoreForm_StoreID"><% {out.write(localizeISText("EditStore_52.StoreID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } else { %>
								<label class="label" for="StoreForm_StoreID"><% {out.write(localizeISText("EditStore_52.StoreID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } %>
						</td>
						<td class="table_detail">
							<input type="text" name="StoreForm_StoreID" id="StoreForm_StoreID" maxlength="35" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:StoreID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:StoreID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" 
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StoreBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>
									disabled="disabled" 
								<% } %> class="inputfield_en w100" tabindex="2"/>
						</td>
						
						<td nowrap="nowrap" class="label"><label class="label" for="StoreForm_Mobile"><% {out.write(localizeISText("EditStore_52.Mobile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
							<input type="text" name="StoreForm_Mobile" id="StoreForm_Mobile" maxlength="35" size="30"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:Mobile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:PhoneMobile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {177}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en" tabindex="11"
							/>
						</td>
						<td colspan="2">&nbsp;</td>	
					</tr>
					
					<tr>
						
						<td nowrap="nowrap" class="label">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("StoreForm:Street:Invalid"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %>
								<label class="label label_error" for="StoreForm_Street"><% {out.write(localizeISText("EditStore_52.Street.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } else { %>
								<label class="label" for="StoreForm_Street"><% {out.write(localizeISText("EditStore_52.Street.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } %>
						</td>
						<td class="table_detail">
							<input type="text" name="StoreForm_Street" id="StoreForm_Street" maxlength="60" 
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:Street:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en w100" tabindex="3"
							/>
						</td>
						
						<td nowrap="nowrap" class="label"><label class="label" for="StoreForm_Fax"><% {out.write(localizeISText("EditStore_52.Fax.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
							<input type="text" name="StoreForm_Fax" id="StoreForm_Fax" maxlength="35" size="30"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:Fax:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:Fax"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en" tabindex="12"
							/>
						</td>
						<td colspan="2">&nbsp;</td>
					</tr>
				
					<tr>
						
						<td nowrap="nowrap" class="label"><label class="label" for="StoreForm_Street2"><% {out.write(localizeISText("EditStore_52.Street2.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
							<input type="text" name="StoreForm_Street2" id="StoreForm_Street2" maxlength="60" 
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:Street2:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {224}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en w100" tabindex="4"
							/>
						</td>
						
						<td nowrap="nowrap" class="label">	
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStore")))).booleanValue() && ((Boolean) (getObject("StoreForm:Email:Invalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %>
								<label class="label label_error" for="StoreForm_Email"><% {out.write(localizeISText("EditStore_52.Email.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
							<% } else { %>
								<label class="label label" for="StoreForm_Email"><% {out.write(localizeISText("EditStore_52.Email.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
							<% } %>
						</td>
						<td class="table_detail">
							<input type="text" name="StoreForm_Email" maxlength="35" size="30" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:Email:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {237}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {237}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en" tabindex="12"/>
						</td>
						<td colspan="2">&nbsp;</td>
					</tr>

					
					<tr>
						<td nowrap="nowrap" class="label"><label class="label" for="StoreForm_Street3"><% {out.write(localizeISText("EditStore_52.Street3.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail">
							<input type="text" name="StoreForm_Street3" id="StoreForm_Street3" maxlength="60" 
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:Street3:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {248}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:Street3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {250}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en w100" tabindex="5"
							/>
						<td colspan="4">&nbsp;</td>
					</tr>	
					
					
					<tr>
						<td nowrap="nowrap" class="label">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("StoreForm:PostalCode:Invalid")).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",259,e);}if (_boolean_result) { %>
								<label class="label label_error" for="StoreForm_PostalCode"><% {out.write(localizeISText("EditStore_52.Zip_PostCode.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } else { %>
								<label class="label" for="StoreForm_PostalCode"><% {out.write(localizeISText("EditStore_52.Zip_PostCode.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } %>
						</td>
						<td class="table_detail">
							<input type="text" name="StoreForm_PostalCode" id="StoreForm_PostalCode" maxlength="35" size="15"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:PostalCode:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {270}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en" tabindex="6"
							/>
						</td>
						<td colspan="4">&nbsp;</td>
					</tr>

					
					<tr>
						<td nowrap="nowrap" class="label">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("StoreForm:City:Invalid")).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",280,e);}if (_boolean_result) { %>
								<label class="label label_error" for="StoreForm_City"><% {out.write(localizeISText("EditStore_52.City.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } else { %>
								<label class="label" for="StoreForm_City"><% {out.write(localizeISText("EditStore_52.City.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } %>
						</td>
						<td class="table_detail">
							<input type="text" name="StoreForm_City" id="StoreForm_City" maxlength="35"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",288,e);}if (_boolean_result) { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreForm:City:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {289}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } else { %>
									value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:AddressBO:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {291}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% } %>class="inputfield_en w100" tabindex="7"
							/>
						</td>
						<td colspan="4">&nbsp;</td>	
					</tr>
					
					
					<tr>
						<td nowrap="nowrap" class="label_select">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("StoreForm:CountryCode:Invalid")).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { %>
								<label class="label label_select label_error" for="StoreForm_CountryCode"><% {out.write(localizeISText("EditStore_52.Country.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } else { %>
								<label class="label label_select" for="StoreForm_CountryCode"><% {out.write(localizeISText("EditStore_52.Country.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
							<% } %>
						</td>
						<td class="table_detail">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",308,e);}if (_boolean_result) { %>
								<% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","StoreForm_CountryCode"),
new TagParameter("cssclass","w100 inputfield_en select"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("tabindex","8"),
new TagParameter("selectedcountrycode",getObject("StoreForm:CountryCode:Value")),
new TagParameter("reloadonchange","true")}, 309); %>
							<% } else { %>
								<% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","StoreForm_CountryCode"),
new TagParameter("cssclass","w100 inputfield_en select"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("tabindex","8"),
new TagParameter("selectedcountrycode",getObject("StoreBO:AddressBO:CountryCode")),
new TagParameter("reloadonchange","true")}, 311); %>
							<% } %>
						</td>
						<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
					</tr
					
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StatesProvinces")))).booleanValue() && ((Boolean) (hasLoopElements("StatesProvinces") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",318,e);}if (_boolean_result) { %>>
						<tr>
							<td class="label" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStore")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorStore"),null).equals(context.getFormattedValue("StateMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",321,e);}if (_boolean_result) { %>
									<label class="label label_error" for="StoreForm_State"><% {out.write(localizeISText("EditStore_52.State.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
								<% } else { %>
									<label class="label" for="StoreForm_State"><% {out.write(localizeISText("EditStore_52.State.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
								<% } %>
							</td>
							<td class="table_detail">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("StoreBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("StoreForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",328,e);}if (_boolean_result) { %>
									<% {Object temp_obj = (getObject("StoreForm_State")); getPipelineDictionary().put("SelectedStateID", temp_obj);} %>
								<% } else { %>
									<% {Object temp_obj = (getObject("StoreBO:AddressBO:State")); getPipelineDictionary().put("SelectedStateID", temp_obj);} %>
								<% } %>
								<% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("SelectedStateID",getObject("SelectedStateID")),
new TagParameter("StatesProvinces",getObject("StatesProvinces")),
new TagParameter("cssclass","inputfield_en w100"),
new TagParameter("tabindex","9"),
new TagParameter("FormParameter","StoreForm_State")}, 333); %>
							</td>
							<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
						</tr>
					<% } %>
					
					<tr>
						<td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
					</tr>
				</table>
				<!-- EO Form Two Rows -->
			</td>
		</tr>
		
		<!-- Start Action Buttons right-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",348,e);}if (_boolean_result) { %>
			<tr>
				<td align="right" class="w e s">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StoreBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",354,e);}if (_boolean_result) { %>
								<input type="hidden" name="StoreForm_StoreID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:StoreID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {355}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="button"/>
								<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("EditStore_52.Apply.button",null)),null)%>" class="button"/>
							<% } else { %>
								<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("EditStore_52.Apply.button",null)),null)%>" class="button"/>
								<input type="submit" name="back" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("EditStore_52.Cancel.button",null)),null)%>" class="button"/>
							<% } %>
							</td>							
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StoreBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",362,e);}if (_boolean_result) { %>
								<td class="button">
									<input type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("EditStore_52.Reset.button",null)),null)%>" class="button"/>
								</td>
								<td class="button">
									<input type="hidden" name="StoreID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {367}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="button"/>
									<input type="submit" name="confirmDeleteStore" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("EditStore_52.Delete.button",null)),null)%>" class="button"/>
								</td>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	<!-- EO Action Buttons right-->
	</table>
<% out.print("</form>"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "379");} %>
<% printFooter(out); %>