<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.ui.web.internal.property.mapping.UIMapper"%>
<%@page import="com.intershop.ui.web.internal.property.mapping.UIMapperConfiguration"%>
<%@page import="com.intershop.ui.web.internal.property.mapping.UIPropertyGroup"%>
<%@page import="com.intershop.platform.property.capi.model.PropertyGroupDescriptor"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="propertyeditor <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("displaymode"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("edit",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %> propertyeditor-<% {String value = null;try{value=context.getFormattedValue(getObject("displaymode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("validationresult")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("validationresult:ID"),null).equals(context.getFormattedValue(getObject("propertydescriptor:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("validationresult")); getPipelineDictionary().put("UIPropertyGroup", temp_obj);} %><% } else { %><%
		UIMapper mapper = UIMapper.getApplicationInstance();
		UIPropertyGroup uiPropertyGroup = mapper.getUIPropertyGroup(getObject("owner"), (PropertyGroupDescriptor)getObject("propertydescriptor"));
		getPipelineDictionary().put("UIPropertyGroup", uiPropertyGroup);
		%><% } %><%
	UIPropertyGroup uiPropertyGroup = (UIPropertyGroup)getObject("UIPropertyGroup");
	String json = UIMapper.toJSON(uiPropertyGroup);
	getPipelineDictionary().put("json", json);
	%><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("hidetitle"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><h2 class="propertyeditor-title"><% {String value = null;try{value=context.getFormattedValue(getObject("UIPropertyGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h2><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("formfieldname")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {Object temp_obj = ("PropertyGroupConfiguration"); getPipelineDictionary().put("formfieldname", temp_obj);} %><% } %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-migrate-1.2.1.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>propertygroups/utils.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>propertygroups/controller.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>propertygroups/container/property.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>propertygroups/container/propertygroup.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>propertygroups/propertygroups.css<% out.print("</waplacement>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("stylesheet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %><% {String value = null;try{value=context.getFormattedValue(getObject("stylesheet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% out.print("</waplacement>"); %><% } %><% while (loop("UIPropertyGroup:ErrorMessages","ErrorMessage",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ErrorMessage"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><div class="alert alert-danger">
<span><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div><% } %><% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"Editors", null, "53");} %><div id="<% {String value = null;try{value=context.getFormattedValue(getObject("UIPropertyGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="propertyeditor-content"></div>
<script type="text/javascript">
'use strict';
!function ($) {
function id$(id) {
// escape id selectors
return $('<%=context.getFormattedValue("#",null)%>' + id.replace(/(:|\.|\[|\])/g, '\\\$1'));
}
var groupID = '<% {String value = null;try{value=context.getFormattedValue(getObject("UIPropertyGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
$el = id$(groupID),
$form = $el.closest('form'),
json = $.parseJSON("<% {String value = null;try{value=context.getFormattedValue(getObject("json"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"),
Controller = intershop.propertygroups.ui.Controller,
propertyGroup = Controller.fromJSON(json),
propertyGroupHandlerName= 'propertygroups_'+'<% {String value = null;try{value=context.getFormattedValue(getObject("formfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>';
Controller.getContainer('PropertyGroup').validationError = '<% {out.write(localizeISText("webcontrols.PropertyEditor.PropertyGroup.ValidationError","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>';
// add rendered editor to DOM
$el.append(propertyGroup.render());
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("displaymode"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("disabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
propertyGroup.disable();
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("displaymode"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("view",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
propertyGroup.view(); 
<% } else { %>
// store PropertyGroup at form
var propertyGroups = $form.data(propertyGroupHandlerName) || [];
propertyGroups.push({
json: json,
propertyGroup: propertyGroup
});
$form.data(propertyGroupHandlerName, propertyGroups);
// add serialized values to surrounding form before submit
$form
.off('submit.'+ propertyGroupHandlerName)
.on('submit.' + propertyGroupHandlerName, function onSubmit() {
var $form = $(this),
propertyGroups = $form.data(propertyGroupHandlerName) || [],
allGroups = {};
propertyGroups.forEach(function eachPropertyGroup(group) {
var updatedJSON = Controller.toJSON(group.json, group.propertyGroup);
allGroups[group.propertyGroup.id] = updatedJSON;
});
// remove existing serialized field
$form.find('input[name="<% {String value = null;try{value=context.getFormattedValue(getObject("formfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"]').remove();
$($.parseHTML('<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>" />'))
.val(JSON.stringify(allGroups))
.prependTo($form);
});
$('.propertygroup-editor-value')
.focus(function () {
$('.propertygroup-property-helptext').stop(true).hide();
$(this).closest('.propertygroup-property').find('.propertygroup-property-helptext:not(:empty)').fadeIn(400);
})
.blur(function() {
$(this).closest('.propertygroup-property').find('.propertygroup-property-helptext:not(:empty)').hide();
});
<% } %> 
}(jQuery);
</script>
</div> 
<% printFooter(out); %>