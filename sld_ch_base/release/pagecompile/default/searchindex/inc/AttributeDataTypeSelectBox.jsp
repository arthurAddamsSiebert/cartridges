<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
function enableTextOptions(element) {
if( typeof element.form.UpdateAttributeForm_SpellCheck == "undefined"
|| typeof element.form.UpdateAttributeForm_AutoSuggest == "undefined" ) return; 
if ( (element.form.UpdateAttributeForm_DataType.value == "0") 
|| (element.form.UpdateAttributeForm_DataType.value == "6")
|| (element.form.UpdateAttributeForm_DataType.value == "14") ) {
element.form.UpdateAttributeForm_SpellCheck.disabled = false;
element.form.UpdateAttributeForm_AutoSuggest.disabled = false;
} else {
element.form.UpdateAttributeForm_SpellCheck.checked = false;
element.form.UpdateAttributeForm_SpellCheck.disabled = true;
element.form.UpdateAttributeForm_AutoSuggest.checked = false;
element.form.UpdateAttributeForm_AutoSuggest.disabled = true;
}
return true;
}
function enableSortOptions(element) {
if(typeof element.form.UpdateAttributeForm_Sortable == "undefined"
|| typeof element.form.UpdateAttributeForm_LabelAsc == "undefined"
|| typeof element.form.UpdateAttributeForm_LabelDesc == "undefined") return;
// no sorting possible for multiple types, so disable "Sortable" checkbox
if ((element.form.UpdateAttributeForm_DataType.value == "4") 
|| (element.form.UpdateAttributeForm_DataType.value == "5")
|| (element.form.UpdateAttributeForm_DataType.value == "6")
|| (element.form.UpdateAttributeForm_DataType.value == "15")
|| (element.form.UpdateAttributeForm_DataType.value == "16")
|| (element.form.UpdateAttributeForm_DataType.value == "17")
|| (element.form.UpdateAttributeForm_DataType.value == "18")) 
{
element.form.UpdateAttributeForm_LabelAsc.value = '';
element.form.UpdateAttributeForm_LabelAsc.disabled = true;
element.form.UpdateAttributeForm_LabelDesc.value = '';
element.form.UpdateAttributeForm_LabelDesc.disabled = true;
element.form.UpdateAttributeForm_Sortable.checked = false;
element.form.UpdateAttributeForm_Sortable.disabled = true;
} 
else 
{
element.form.UpdateAttributeForm_Sortable.disabled = false;
}
return true;
}
</script>
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectBoxName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectBoxName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en" onchange="enableTextOptions(this); enableSortOptions(this)" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>disabled="disabled"<% } %> >
<option value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.String.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Integer.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Double.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="4" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.MultipleInt.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="5" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.MultipleDouble.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="6" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.MultipleString.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="8" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("8",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Long.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="9" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("9",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Boolean.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="10" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("10",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Date.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="11" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("11",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Decimal.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="12" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("12",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Money.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="13" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("13",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Quantity.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="14" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("14",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.Text.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="15" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("15",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.MultipleLong.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="16" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("16",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.MultipleBoolean.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="17" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("17",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.MultipleDate.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="18" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedOptionValue"),null).equals(context.getFormattedValue("18",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("AttributeDataTypeSelectBox.MultipleDecimal.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% printFooter(out); %>