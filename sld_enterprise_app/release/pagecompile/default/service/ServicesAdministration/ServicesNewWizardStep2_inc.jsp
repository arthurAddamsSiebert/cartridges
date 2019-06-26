<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><input type="hidden" name="ServiceDefinitionTitle" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceDefinitionTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% {Object temp_obj = (getObject("ApplicationBO:Extension(\"ApplicationBOServiceExtension\"):SharingEnabled")); getPipelineDictionary().put("IsServiceSharingEnabled", temp_obj);} %><table width="100%" class="w e" border="0" cellSpacing="0" cellPadding="0">
<tr><td colspan="3"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td></tr>
<tr>
<td nowrap="nowrap" class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddNewWizzardFormStep2:ServiceConfigurationDisplayName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><label class="label label_error" for="ServiceNewWizzard_Name"><% {out.write(localizeISText("ServicesNewWizardStep2_inc.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label><% } else { %><label class="label" for="ServiceNewWizzard_Name"><% {out.write(localizeISText("ServicesNewWizardStep2_inc.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label><% } %></td>
<td class="table_detail">
<input maxlength="256" size="50" class="inputfield_en" type="text" id="ServiceNewWizzard_Name" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationDisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationDisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</td>
<td width="60%">
<table border="0" cellSpacing="0" cellPadding="0">
<tr>
<td class="input_checkbox">
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationActivationStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="activated" id="configuration_status_activated"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationActivationStatus:Value"),null).equals(context.getFormattedValue("activated",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>checked="checked"<% } %> 
/>
</td>
<td class="label_checkbox_text">
<label for="configuration_status_activated" class="label label_checkbox_text <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddNewWizzardFormStep2:ServiceConfigurationActivationStatus:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>label_error<% } %>" ><% {out.write(localizeISText("ServicesNewWizardStep2_inc.ActiveUseThisServiceConfigurationInTheCurrentConte.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label for="ServiceNewWizzard_ID" class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddNewWizzardFormStep2:ServiceConfigurationName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>label_error<% } %>"><% {out.write(localizeISText("ServicesNewWizardStep2_inc.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<input maxlength="256" size="50" class="inputfield_en" type="text" id="ServiceNewWizzard_ID" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><table border="0" cellSpacing="0" cellPadding="0">
<tr>
<td class="input_checkbox">
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="enabled" id="configuration_status_enabled"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationStatus:Value"),null).equals(context.getFormattedValue("enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddNewWizzardFormStep2:ServiceConfigurationStatus:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>label_error<% } %>" for="configuration_status_enabled"><% {out.write(localizeISText("ServicesNewWizardStep2_inc.AvailableSystemWideSetting.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table><% } else { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="enabled" />&nbsp;
<% } %></td>
</tr>
<tr><td colspan="3" class=""><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td></tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="ServiceNewWizzard_Description"><% {out.write(localizeISText("ServicesNewWizardStep2_inc.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<textarea name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationDescription:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="ServiceNewWizzard_Description" class="inputfield_en" rows="5" cols="48"><% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep2:ServiceConfigurationDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
<td>&nbsp;</td>
</tr>
<tr><td colspan="3" class=""><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td></tr>
</table><% printFooter(out); %>