<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("formParameter"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("formParameter:ID"),null).equals(context.getFormattedValue("PreviewDisplayDevice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("formParameter:Field(\"Type\")")); getPipelineDictionary().put("TypeField", temp_obj);} %><% {Object temp_obj = (getObject("formParameter:Value")); getPipelineDictionary().put("PreviewDeviceAttribute", temp_obj);} %><% {Object temp_obj = (getObject("formParameter:Invalid")); getPipelineDictionary().put("isError", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PreviewDeviceAttribute")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreviewDeviceAttribute:Visible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><div data-set-system-default-function="setSelectSystemDefault" data-is-system-default-function="isSelectSystemDefault" data-set-form-default-function="setSelectFormDefault" data-is-form-default-function="isSelectFormDefault">
<label for="preview_displaydevice_select" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>><% {out.write(localizeISText("PreviewDisplayDevice.DisplaySize.label","",null,null,null,null,null,null,null,null,null,null,null));} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TypeField:Optional"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><span class="star">*</span><% } %></label>
<select id="preview_displaydevice_select" class="select inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("TypeField:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<!-- options from PreviewDeviceAttribute --><% while (loop("PreviewDeviceAttribute:Values(previewContext)","value",null)) { %><option 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("value:isDefault"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>class="system-default-value"<% } %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("value:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("value:Selected"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>selected="selected"
<% {Object temp_obj = (getObject("value:ValueObject:Width")); getPipelineDictionary().put("Width", temp_obj);} %><% {Object temp_obj = (getObject("value:ValueObject:Height")); getPipelineDictionary().put("Height", temp_obj);} %> 
<% } %>
data-display-device-width="<% {String value = null;try{value=context.getFormattedValue(getObject("value:ValueObject:Width"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-display-device-height="<% {String value = null;try{value=context.getFormattedValue(getObject("value:ValueObject:Height"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("value:ValueObject:getDisplayName(locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("value:ValueObject:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("value:ValueObject:getDisplayName(locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("value:isDefault"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %> (<% {out.write(localizeISText("PreviewDisplayDevice.Default.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %> 
</option><% } %></select>
<div class="sfe-preview-width-height">
<table cellspacing="0" cellpadding="0" border="0">
<tr> 
<td class="fielditem2">
<table cellspacing="0" cellpadding="0" style="table-layout: fixed; border:none">
<tr>
<td>
<input type="text" id="widthbox" class="inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formParameter:Field(\"Width\"):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("formParameter:Field(\"Width\"):Value"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Width"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" size="10">&nbsp;: 
</td>
</tr>
<tr>
<td class="fielditem_comment"><% {out.write(localizeISText("PreviewDisplayDevice.WidthInPx.fielditem_comment","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<td class="fielditem2">
<table cellspacing="0" cellpadding="0" style="table-layout: fixed; border:none">
<tr>
<td>
<input type="text" id="heightbox" class="inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formParameter:Field(\"Height\"):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isError"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("formParameter:Field(\"Height\"):Value"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Height"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" size="10"> 
</td>
</tr>
<tr>
<td class="fielditem_comment"><% {out.write(localizeISText("PreviewDisplayDevice.HeightInPx.fielditem_comment","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</div><% } else { %><!-- visible flag not true for PreviewLocale -->
<input type="hidden" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("TypeField:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("TypeField:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PreviewDeviceAttribute:SelectedValue:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% } %><% } else { %><!-- no 'formParameter' found for PreviewDisplayDevice --><% } %><% printFooter(out); %>