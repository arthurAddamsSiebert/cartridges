<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("webform:CountryCode")))).booleanValue() && ((Boolean) getObject("webform:CountryCode:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>has-error<% } %>">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.default_address.country.label","",getObject("locale"),null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("webform:CountryCode:Optional")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><span class="required">*</span><% } %></label>
<div class="col-sm-8"><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","tabcount")}, 9); %><select class="form-control <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("webform:CountryCode")))).booleanValue() && ((Boolean) getObject("webform:CountryCode:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>has-error<% } %>"
data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAccount-ChangeAddressForm",null)))),null)%>"
data-country-list="data-country-list"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-field="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:CountryCode:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-validate="<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("validationgroup"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>dependsOn(<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("validationgroup"),null)),null)%>)<% } %>"
<% {String value = null;try{value=context.getFormattedValue(getObject("webform:CountryCode:ClientValidationConfig(\"html5\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>
><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("webform:CountryCode:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><option value="" selected="selected" disabled><% {out.write(localizeISText("account.option.select.text","",getObject("locale"),null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% while (loop("countrylist","Country",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("webform:CountryCode:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("webform:CountryCode:Value"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
selected = "selected"
<% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("address")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("address:CountryCode"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
selected = "selected"
<% }} %>
><% {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</div>
</div><% printFooter(out); %>