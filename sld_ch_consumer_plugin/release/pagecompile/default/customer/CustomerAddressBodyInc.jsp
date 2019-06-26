<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<tr>
	<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Title"><% {out.write(localizeISText("customer.Title.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<td class="table_detail">
		<input type="text" name="AddressForm_Title" id="AddressForm_Title" maxlength="35" size="15" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Title:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Address:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en" />
	</td>
</tr>


<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("AddressForm:FirstName:ValueMissing")).booleanValue() || ((Boolean) getObject("AddressForm:FirstName:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label label_error" for="AddressForm_FirstName"><% {out.write(localizeISText("customer.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_FirstName"><% {out.write(localizeISText("customer.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } %>
	<td class="table_detail">
		<input type="text" name="AddressForm_FirstName" id="AddressForm_FirstName" maxlength="35" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:FirstName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Address:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en w100" />
	</td>
</tr>
	
	
<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("AddressForm:LastName:ValueMissing")).booleanValue() || ((Boolean) getObject("AddressForm:LastName:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label label_error" for="AddressForm_LastName"><% {out.write(localizeISText("customer.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_LastName"><% {out.write(localizeISText("customer.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } %>
	<td class="table_detail">
		<input type="text" name="AddressForm_LastName" id="AddressForm_LastName" maxlength="35" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:LastName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Address:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en w100"/>
	</td>
</tr>

	
<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Street"><% {out.write(localizeISText("customer.Address1.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AddressForm:Street:ValueMissing")).booleanValue() && ((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label label_error" for="AddressForm_Street"><% {out.write(localizeISText("customer.Address1.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Street"><% {out.write(localizeISText("customer.Address1.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% }} %>
	<td class="table_detail">
		<input type="text" name="AddressForm_Street" id="AddressForm_Street" maxlength="60" 
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Street:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en w100"
		/>
	</td>
</tr>


<tr>
	<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Street2"><% {out.write(localizeISText("customer.Address2.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<td class="table_detail">
		<input type="text" name="AddressForm_Street2" id="AddressForm_Street2" maxlength="60" 
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Street2:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en w100"
		/>
	</td>
</tr>

<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AddressForm:CountryCode:Value"),null).equals(context.getFormattedValue("GB",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) getObject("AddressForm:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Address:CountryCode"),null).equals(context.getFormattedValue("GB",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Street3"><% {out.write(localizeISText("customer.Locality.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Street3"><% {out.write(localizeISText("customer.Address3.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<% } %>
	<td class="table_detail">
		<input type="text" name="AddressForm_Street3" id="AddressForm_Street3" maxlength="60"
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Street3:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:Street3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en w100"
		/>
	</td>
</tr>


<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_PostalCode"><% {out.write(localizeISText("customer.ZipPostCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AddressForm:PostalCode:ValueMissing")).booleanValue() && ((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label label_error" for="AddressForm_PostalCode"><% {out.write(localizeISText("customer.ZipPostCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_PostalCode"><% {out.write(localizeISText("customer.ZipPostCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% }} %>
	<td class="table_detail" width="50%">
		<input type="text" name="AddressForm_PostalCode" id="AddressForm_PostalCode" maxlength="35" size="15"
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:PostalCode:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en"
		/>
	</td>
</tr>


<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AddressForm:City:ValueMissing")).booleanValue() && ((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label label_error" for="AddressForm_City"><% {out.write(localizeISText("customer.City.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_City"><% {out.write(localizeISText("customer.City.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } %>
	<td class="table_detail">
		<input type="text" name="AddressForm_City" id="AddressForm_City" maxlength="35"
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:City:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en w100"
		/>
	</td>
</tr>


<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AddressForm:CountryCode:ValueMissing")).booleanValue() && ((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label_select"><label class="label label_select label_error" for="AddressForm_CountryCode"><% {out.write(localizeISText("customer.Country.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label_select"><label class="label label_select" for="AddressForm_CountryCode"><% {out.write(localizeISText("customer.Country.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } %>
	<td class="table_detail">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","AddressForm_CountryCode"),
new TagParameter("readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("cssclass","inputfield_en"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("selectedcountrycode",getObject("AddressForm:CountryCode:Value")),
new TagParameter("reloadonchange","true")}, 131); %>
		<% } else { %>
			<% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","AddressForm_CountryCode"),
new TagParameter("readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("cssclass","inputfield_en"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("selectedcountrycode",getObject("Address:CountryCode")),
new TagParameter("reloadonchange","true")}, 133); %>
		<% } %>
	</td>
</tr>


<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StatesProvinces")))).booleanValue() && ((Boolean) (hasLoopElements("StatesProvinces") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_StateMissing")))).booleanValue() && ((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
			<td nowrap="nowrap"  class="label_select"><label class="label label_select label_error" for="AddressForm_State"><% {out.write(localizeISText("customer.StateProvince.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
		<% } else { %>
			<td nowrap="nowrap"  class="label_select"><label class="label label_select" for="AddressForm_State"><% {out.write(localizeISText("customer.StateProvince.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
		<% } %>	
		<td class="table_detail">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %>
				<% {Object temp_obj = (getObject("AddressForm:State:Value")); getPipelineDictionary().put("SelectedStateID", temp_obj);} %>
			<% } else { %>
				<% {Object temp_obj = (getObject("Address:State")); getPipelineDictionary().put("SelectedStateID", temp_obj);} %>
			<% } %>
			<% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("SelectedStateID",getObject("SelectedStateID")),
new TagParameter("StatesProvinces",getObject("StatesProvinces")),
new TagParameter("cssclass","w100"),
new TagParameter("FormParameter","AddressForm_State")}, 152); %>
		</td>
	</tr>
<% } %>
<% printFooter(out); %>