<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "getcontentsharinghelper", new TagParameter[] {
new TagParameter("ContentSharingHelper","SharingHelper"),
new TagParameter("RepositoryDomain",getObject("ContentRepository:RepositoryDomain"))}, 3); %><% processOpenTag(response, pageContext, "contententrypointflagseditable", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("ContentEntryPoint")),
new TagParameter("Result","ContentEntryPointEditable")}, 4); %><% {Object temp_obj = (((!((Boolean) (getObject("ContentEntryPointEditable"))).booleanValue() || ((Boolean) getObject("Disabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ReadOnly", temp_obj);} %><% {Object temp_obj = ((((Boolean) ((disableErrorMessages().isDefined(getObject("ConfirmUpdateAllowChanges"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("NotConfirmUpdateAllowChanges", temp_obj);} %><% {Object temp_obj = ((((Boolean) ((disableErrorMessages().isDefined(getObject("ConfirmUpdateHideable"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("NotConfirmUpdateHideable", temp_obj);} %><% {Object temp_obj = (getObject("ContentEntryPoint:ContentEntryPointDefinition")); getPipelineDictionary().put("ContentEntryPointDefinition", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContentEntryPoint:Hideable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("ContentEntryPoint:Hideable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" class="w e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition:PageletPipeline:ReferencedName")))).booleanValue() && ((Boolean) getObject("ContentEntryPointDefinition:PageletAssignmentsEnabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ManageContentEntryPointFlags.AllowChanges.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox"><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>disabled="disabled"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("ContentEntryPoint:ReadOnly(ContentRepository:RepositoryDomain)"))).booleanValue() && ((Boolean) getObject("NotConfirmUpdateAllowChanges")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>checked="checked"<% } %>></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("ContentEntryPoint:Hideable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ContentRepository:RepositoryDomain"),null).equals(context.getFormattedValue(getObject("ContentEntryPoint:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox" for="<% {String value = null;try{value=context.getFormattedValue(getObject("HideableFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ManageContentEntryPointFlags.AllowHiding.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox"><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("HideableFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("HideableFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>disabled="disabled"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ContentEntryPoint:Hideable")).booleanValue() && ((Boolean) getObject("NotConfirmUpdateHideable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>checked="checked"<% } %>></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentEntryPoint:Hideable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><td class="input_checkbox" colspan="2" align="right">
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("HideableFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentEntryPoint:Hideable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("SetHiddenFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentEntryPoint:Hidden(ContentRepository:RepositoryDomain)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>checked="checked"<% } %>>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("SetHiddenFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ManageContentEntryPointFlags.Hidden.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><td>&nbsp;</td><% }}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("ContentEntryPoint:Hideable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><td width="100%" nowrap="nowrap">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateEntryPoint" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManageContentEntryPointFlags.Apply.button",null)),null)%>" class="button sfe-action-inline sfe-layout-change" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManageContentEntryPointFlags.Reset.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
</table>
</td>
</tr>
</table>
</td><% } %></tr><% } %></table><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition:PageletPipeline:ReferencedName")))).booleanValue() && ((Boolean) getObject("ContentEntryPointDefinition:PageletAssignmentsEnabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" class="w e s" width="100%">
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ManageContentEntryPointFlags.AllowChanges.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox"><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>disabled="disabled"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ContentEntryPoint:ReadOnly(ContentRepository:RepositoryDomain)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td width="100%" nowrap="nowrap">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateEntryPoint" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManageContentEntryPointFlags.Apply.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManageContentEntryPointFlags.Reset.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% printFooter(out); %>