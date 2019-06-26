<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/address/Modules", null, "2");} %>

<% {Object temp_obj = (getObject("CustomerBO:AddressBOs")); getPipelineDictionary().put("UserAddressBOs", temp_obj);} %>
<% {Object temp_obj = (new Double(2)); getPipelineDictionary().put("FurtherAddressesMinSize", temp_obj);} %>
<% {Object temp_obj = ((( ((Number) getObject("UserAddressBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("removable", temp_obj);} %>

<div class="myAccount-addressBook">
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserAddressBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("UserBO:PreferredInvoiceToAddressBO"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("UserBO:PreferredShipToAddressBO"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserBO:PreferredInvoiceToAddressBO:ID"),null).equals(context.getFormattedValue(getObject("UserBO:PreferredShipToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
			<div class="section">
				<h3><% {out.write(localizeISText("account.addresses.preferredinvoiceandshipping.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
			
				<div class="row">
					<% processOpenTag(response, pageContext, "addresslistitem", new TagParameter[] {
new TagParameter("addressBO",getObject("UserBO:PreferredInvoiceToAddressBO")),
new TagParameter("userBO",getObject("UserBO")),
new TagParameter("removable","false")}, 16); %>
				</div>
				
				
				<% URLPipelineAction action39 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null));String site39 = null;String serverGroup39 = null;String actionValue39 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null);if (site39 == null){  site39 = action39.getDomain();  if (site39 == null)  {      site39 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup39 == null){  serverGroup39 = action39.getServerGroup();  if (serverGroup39 == null)  {      serverGroup39 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null));out.print("\"");out.print(" name=\"");out.print("PreferredAddressSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue39, site39, serverGroup39,true)); %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CustomerBO:InvoiceToAddressBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("UserBO:PreferredInvoiceToAddressBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((( ((Number) getObject("CustomerBO:InvoiceToAddressBOs:Size")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
						<select
							name="PreferredInvoiceAddressID" 
							class="selectpicker useAsPreferredAddress"
							data-form-action-key="PreferredInvoiceAddress"
							data-live-search="true"
							title="<% {out.write(localizeISText("account.addresses.preferredinvoice.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"
						>
							<% while (loop("CustomerBO:InvoiceToAddressBOs","AddressBO","Counter")) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("AddressBO:ID"),null).equals(context.getFormattedValue(getObject("UserBO:PreferredInvoiceToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" >
										<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AddressBO:Street2")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("AddressBO:Street2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									</option>
								<% } %>
							<% } %>
						</select>
					<% } %>
				
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CustomerBO:ShipToAddressBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("UserBO:PreferredShipToAddressBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((( ((Number) getObject("CustomerBO:ShipToAddressBOs:Size")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
						<select
							name="PreferredShippingAddressID" 
							class="selectpicker useAsPreferredAddress"
							data-form-action-key="PreferredShipToAddress"
							data-live-search="true"
							title="<% {out.write(localizeISText("account.addresses.preferredshipping.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"
						>
							<% while (loop("CustomerBO:ShipToAddressBOs","AddressBO","Counter")) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("AddressBO:ID"),null).equals(context.getFormattedValue(getObject("UserBO:PreferredShipToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" >
										<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AddressBO:Street2")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("AddressBO:Street2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									</option>
								<% } %>
							<% } %>
						</select>
					<% } %>
				<% out.print("</form>"); %>
			</div>
		<% } else { %>
			
			<div class="section">
				<h3><% {out.write(localizeISText("account.addresses.preferredinvoice.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserBO:PreferredInvoiceToAddressBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
					<div class="myAccount-addressBook row">
						<% processOpenTag(response, pageContext, "addresslistitem", new TagParameter[] {
new TagParameter("addressBO",getObject("UserBO:PreferredInvoiceToAddressBO")),
new TagParameter("userBO",getObject("UserBO")),
new TagParameter("removable","false")}, 67); %>
					</div>
				<% } else { %>
					<p><% {out.write(localizeISText("account.addresses.no_preferred_invoice_address.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
					<% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("FurtherAddressesMinSize", temp_obj);} %>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CustomerBO:InvoiceToAddressBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("UserBO:PreferredInvoiceToAddressBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((( ((Number) getObject("CustomerBO:InvoiceToAddressBOs:Size")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
					<% URLPipelineAction action40 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null));String site40 = null;String serverGroup40 = null;String actionValue40 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null);if (site40 == null){  site40 = action40.getDomain();  if (site40 == null)  {      site40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup40 == null){  serverGroup40 = action40.getServerGroup();  if (serverGroup40 == null)  {      serverGroup40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null));out.print("\"");out.print(" name=\"");out.print("PreferredAddressSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue40, site40, serverGroup40,true)); %>
						<select
							name="PreferredInvoiceAddressID" 
							class="selectpicker useAsPreferredAddress"
							data-form-action-key="PreferredInvoiceAddress"
							data-live-search="true"
							title="<% {out.write(localizeISText("account.addresses.preferredinvoice.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"
						>
							<% while (loop("CustomerBO:InvoiceToAddressBOs","AddressBO","Counter")) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("AddressBO:ID"),null).equals(context.getFormattedValue(getObject("UserBO:PreferredInvoiceToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" >
										<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AddressBO:Street2")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("AddressBO:Street2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									</option>
								<% } %>
							<% } %>
						</select>
					<% out.print("</form>"); %>
				<% } %>
			</div>
			
			
			<div class="section">
				<h3><% {out.write(localizeISText("account.addresses.preferredshipping.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserBO:PreferredShipToAddressBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
					<div class="myAccount-addressBook row">
						<% processOpenTag(response, pageContext, "addresslistitem", new TagParameter[] {
new TagParameter("addressBO",getObject("UserBO:PreferredShipToAddressBO")),
new TagParameter("userBO",getObject("UserBO")),
new TagParameter("removable","false")}, 100); %>
					</div>
					<% {Object temp_obj = ((new Double( ((Number) getObject("FurtherAddressesMinSize")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("FurtherAddressesMinSize", temp_obj);} %>
				<% } else { %>
					<p><% {out.write(localizeISText("account.addresses.no_preferred_shipping_address.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CustomerBO:ShipToAddressBOs:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("UserBO:PreferredShipToAddressBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((( ((Number) getObject("CustomerBO:ShipToAddressBOs:Size")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
					<% URLPipelineAction action41 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null));String site41 = null;String serverGroup41 = null;String actionValue41 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null);if (site41 == null){  site41 = action41.getDomain();  if (site41 == null)  {      site41 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup41 == null){  serverGroup41 = action41.getServerGroup();  if (serverGroup41 == null)  {      serverGroup41 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-SelectPreferredAddress",null)))),null));out.print("\"");out.print(" name=\"");out.print("PreferredAddressSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue41, site41, serverGroup41,true)); %>
						<select
							name="PreferredShippingAddressID" 
							class="selectpicker useAsPreferredAddress" 
							data-live-search="true"
							data-form-action-key="PreferredShipToAddress"
							title="<% {out.write(localizeISText("account.addresses.preferredshipping.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"
						>
							<% while (loop("CustomerBO:ShipToAddressBOs","AddressBO","Counter")) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("AddressBO:ID"),null).equals(context.getFormattedValue(getObject("UserBO:PreferredShipToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" >
										<% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AddressBO:Street2")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("AddressBO:Street2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %> <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>, <% {String value = null;try{value=context.getFormattedValue(getObject("AddressBO:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									</option>
								<% } %>
							<% } %>
						</select>
					<% out.print("</form>"); %>
				<% } %>
			</div>
		<% } %>
	
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("UserAddressBOs:Size")).doubleValue() >=((Number)(getObject("FurtherAddressesMinSize"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>
			<h3><% {out.write(localizeISText("account.addresses.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
			
			<div class="myAccount-addressBook row">
				<% while (loop("UserAddressBOs","CurrentAddressBO","Counter")) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("CurrentAddressBO:ID"),null).equals(context.getFormattedValue(getObject("UserBO:PreferredInvoiceToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CurrentAddressBO:ID"),null).equals(context.getFormattedValue(getObject("UserBO:PreferredShipToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((hasNext("CurrentAddressBO") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((( ((Number) getObject("Counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>
							<% {Object temp_obj = ("false"); getPipelineDictionary().put("removable", temp_obj);} %>
						<% } else { %>
							<% {Object temp_obj = ("true"); getPipelineDictionary().put("removable", temp_obj);} %>
						<% } %>
						
						<% processOpenTag(response, pageContext, "addresslistitem", new TagParameter[] {
new TagParameter("addressBO",getObject("CurrentAddressBO")),
new TagParameter("userBO",getObject("UserBO")),
new TagParameter("removable",getObject("removable"))}, 142); %>
					<% } %>
				<% } %>
			</div>
		<% } %>
	<% } else { %>
		<p><% {out.write(localizeISText("account.addresses.have_no_saved_address.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
	<% } %>
</div>
<% printFooter(out); %>