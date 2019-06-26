<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>&nbsp;</td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="input_checkbox">
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_InvoiceAddress" id="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_InvoiceAddress" value="true" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((Boolean) getObject("AddressForm:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
checked="checked"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AddressForm:InvoiceAddress:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
checked="checked"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("AddressForm:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("Address"))))).booleanValue() && ((Boolean) (getObject("Address:isInvoiceToAddress"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
checked="checked"
<% }}} %>
/>
</td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text" for="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_InvoiceAddress"><% {out.write(localizeISText("CustomerAddressUsageInc.InvoiceAddress.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="input_checkbox">
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_ShippingAddress" id="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_ShippingAddress" value="true" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((Boolean) getObject("AddressForm:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
checked="checked"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("AddressForm:isSubmitted"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AddressForm:ShippingAddress:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
checked="checked"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("AddressForm:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("Address"))))).booleanValue() && ((Boolean) (getObject("Address:isShipToAddress"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
checked="checked"
<% }}} %>
/>
</td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text" for="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_ShippingAddress"><% {out.write(localizeISText("CustomerAddressUsageInc.ShippingAddress.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
</table>
</td>
</tr><% printFooter(out); %>