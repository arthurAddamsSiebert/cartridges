<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div id="configContainer_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="hidden" 
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
<div>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="label">
<label class="label" for="cssClass"><% {out.write(localizeISText("CssConfigParameterInc.CSSClass.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" class="inputfield_en" id="cssClass" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
</td>
</tr>
</table>
</div>
<script type="text/javascript">
// if-condition is required to prevent recreation of the same function in case 
// multiple custom config parameters are included. Can be removed once functions
// are moved to an external JS file.
if (!serializeCustomConfigValues) {
/**
* Serialize custom configuration field values
* 
* @param fields Array of fields to iterate over and to serialize values
* @param serializedField Form field (typically hidden) that hold the serialized config data
*
* TODO: this or a similar function should be moved to an external JavaScript file 
* that is available on all pages that require this functionality
*/
var serializeCustomConfigValues = function(fields, serializedField) {
var newConfigValues = "";
for (var i=0; i<fields.length; i++) {
if (i != 0)
newConfigValues += ';';
newConfigValues += (fields[i].id + '=' + fields[i].value);
}
serializedField.value = newConfigValues;
return true;
}
}
// if-condition is required to prevent recreation of the same function in case 
// multiple custom config parameters are included. Can be removed once functions
// are moved to an external JS file.
if (!populateCustomConfigFields) {
/**
* Unserialize data, populate fields, and add event listeners
* 
* @param configContainerId ID of element containing custom configuration fields
* @param serializedDataFieldId ID of (typically hidden) field that contains the serialized config data
* @param configFieldClass Class set on custom config fields of which values should be set and read
*
* TODO: this or a similar function should be moved to an external JavaScript file 
* that is available on all pages that require this functionality
*/
var populateCustomConfigFields = function(configContainerId, serializedDataFieldId, configFieldClass) {
// Read and split serialized configuration information
var configContainer = document.getElementById(configContainerId);
var serializedDataField = document.getElementById(serializedDataFieldId);
var fieldValues = (serializedDataField.value).split(';');
// Get elements by class name. Internet Explorer requires special treatment.
var configFields = [];
if(document.getElementsByClassName){
configFields = configContainer.getElementsByClassName(configFieldClass);
} else {
var fields = document.getElementsByTagName("input"); // TODO: add support for other fields than input
var len = fields.length;
while(len){
temp = fields[--len];
if(temp.className.indexOf(configFieldClass) != -1) 
configFields.push(temp);
}
}
for (var i=0; i<configFields.length; i++) {
// text fields - TODO: add functionality for other form field types
if ((configFields[i].className).indexOf("text") != -1) {
// Set value
if (serializedDataField.value != '')
configFields[i].value = fieldValues[i].split('=')[1];
// Set event listener
configFields[i].onblur = function() { serializeCustomConfigValues(configFields, serializedDataField); }
}
}
return true;
}
}
// Populate custom config fields with existing values
populateCustomConfigFields(
'configContainer_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
'custom'
);
</script><% printFooter(out); %>