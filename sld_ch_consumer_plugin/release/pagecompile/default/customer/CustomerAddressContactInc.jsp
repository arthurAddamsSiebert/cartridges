<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
	<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_PhoneHome"><% {out.write(localizeISText("customer.PhoneHome.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>	
	<td class="table_detail">
		<input type="text" name="AddressForm_PhoneHome" id="AddressForm_PhoneHome" maxlength="35" size="30"
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:PhoneHome:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:PhoneHome"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en"
		/>
	</td>
</tr>

<tr>
	<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_PhoneBusiness"><% {out.write(localizeISText("customer.PhoneBusiness.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>	
	<td class="table_detail">
		<input type="text" name="AddressForm_PhoneBusiness" id="AddressForm_PhoneBusiness" maxlength="35" size="30"
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:PhoneBusiness:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:PhoneBusiness"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en"
		/>
	</td>
</tr>

<tr>
	<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Mobile"><% {out.write(localizeISText("customer.Mobile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<td class="table_detail">
		<input type="text" name="AddressForm_Mobile" id="AddressForm_Mobile" maxlength="35" size="30"
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Mobile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:PhoneMobile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en"
		/>
	</td>
</tr>

<tr>
	<td nowrap="nowrap"  class="label"><label class="label" for="AddressForm_Fax"><% {out.write(localizeISText("customer.Fax.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<td class="table_detail">
		<input type="text" name="AddressForm_Fax" id="AddressForm_Fax" maxlength="35" size="30"
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Fax:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } else { %>
				value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:Fax"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
			<% } %>class="inputfield_en"
		/>
	</td>
</tr>
<tr>
	<td colspan="2" class="table_detail">
		<div class="inputfield_en" style="visibility: hidden;">&nbsp;</div>
	</td>
</tr>
<% printFooter(out); %>