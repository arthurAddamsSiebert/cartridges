<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "12");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 13); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletModelUtils:PageContextObjectRelationsByContextType(ContextType,PageletModelRepository)")); getPipelineDictionary().put("ContextObjectRelations", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("PageletModelUtils:ComponentContextObjectRelationsByContextType(ContextType,PageletModelRepository)")); getPipelineDictionary().put("ContextObjectRelations", temp_obj);} %><% } %><tr>
<td class="label_radio label_top"><label class="label label_radio label_top label_light label_indent" for=""><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.Product.Pages.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } else { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.Product.Includes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.Category.Pages.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } else { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.Category.Includes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } %><% }} %></label> 
</td>
<td colspan="2">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="input_radio" width="1%">
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentSelectionParam")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("AssignmentSelectionParam"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td width="1%" class="label_radio_text" nowrap="nowrap">
<label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_All"><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="input_radio" width="1%">
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_notAssigned" value="notAssigned" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentSelectionParam"),null).equals(context.getFormattedValue("notAssigned",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td width="1%" class="label_radio_text" nowrap="nowrap">
<label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_notAssigned"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.NotAssignedToAPage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.NotAssignedToAnInclude.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></label>
</td>
<td/>
</tr>
<tr>
<td class="input_radio" width="1%">
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Assigned" value="assignedToContextObjectRelation" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentSelectionParam"),null).equals(context.getFormattedValue("assignedToContextObjectRelation",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td width="30%" class="label_radio_text" nowrap="nowrap">
<label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentSelectionRadioGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Assigned"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.AssignedToAPageOfType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.AssignedToAnIncludeOfType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></label>
</td>
<td class="infobox_item">
<select class="select inputfield_en" style="width: 60%" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignedToTypeSelect"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" >
<option value="any"><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.Any.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("ContextObjectRelations","ContextObjectRelation",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ContextObjectRelation:ContentEntryPointDefinitionInclusions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><optgroup label="<%=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ContextObjectRelation,Locale)"),null)%>"><% while (loop("ContextObjectRelation:ContentEntryPointDefinitionInclusions","ContentEntryPointDefinitionInclusion",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentEntryPointDefinitionInclusion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentEntryPointDefinitionInclusion:QualifiedName"),null).equals(context.getFormattedValue(getObject("AssignedToTypeParam"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ContentEntryPointDefinitionInclusion,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></optgroup><% } %><% } %></select>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>