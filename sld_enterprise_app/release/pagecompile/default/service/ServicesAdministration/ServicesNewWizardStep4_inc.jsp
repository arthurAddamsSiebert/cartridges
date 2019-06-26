<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><input type="hidden" name="ServiceDefinitionTitle" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceDefinitionTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% {Object temp_obj = (getObject("ApplicationBO:Extension(\"ApplicationBOServiceExtension\"):SharingEnabled")); getPipelineDictionary().put("IsServiceSharingEnabled", temp_obj);} %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsServiceSharingEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><tr>
<td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
</tr>
<tr>
<td class="w input_radio">
<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="UNSHARED" id="unshared" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:Value"),null).equals(context.getFormattedValue("UNSHARED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td>
<td class="label_radio_text e w100">
<label class="label label_radio_text" for="unshared"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.UNSHARED","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="w">&nbsp;</td>
<td nowrap="nowrap" class="label_radio_text">
<label class="label label_radio_text label_light"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.UNSHARED_ORG_DESC","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr><td colspan="2" class="w e s"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" /></td></tr>
<tr><td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" /></td></tr>
<tr>
<td class="w input_radio">
<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="SHARED_ACTIVATED" id="shared_activated" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:Value"),null).equals(context.getFormattedValue("SHARED_ACTIVATED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td>
<td class="label_radio_text e">
<label class="label label_radio_text" for="shared_activated"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.SHARED_ACTIVATED","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="w">&nbsp;</td>
<td nowrap="nowrap" class="label_radio_text">
<label class="label label_radio_text label_light"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.SHARED_ACTIVATED_ORG_DESC","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr><td colspan="2" class="w e s"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" /></td></tr>
<tr><td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" /></td></tr>
<tr>
<td class="w input_radio">
<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="SHARED_DEACTIVATED" id="shared_deactivated" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:Value"),null).equals(context.getFormattedValue("SHARED_DEACTIVATED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td>
<td class="label_radio_text e">
<label class="label label_radio_text" for="shared_deactivated"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.SHARED_DEACTIVATED","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="w">&nbsp;</td>
<td nowrap="nowrap" class="label_radio_text">
<label class="label label_radio_text label_light"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.SHARED_DEACTIVATED_ORG_DESC","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr><td colspan="2" class="w e s"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" /></td></tr>
<tr><td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" /></td></tr>
<tr>
<td class="w input_radio">
<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="MANDATORY" id="mandatory" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:Value"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td>
<td class="label_radio_text e">
<label class="label label_radio_text" for="mandatory"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.MANDATORY","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="w">&nbsp;</td>
<td nowrap="nowrap" class="label_radio_text">
<label class="label label_radio_text label_light"><% {out.write(localizeISText("com.intershop.component.service.capi.service.ServiceSharingRule.MANDATORY_ORG_DESC","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr><td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td></tr><% } else { %><td class="table_detail w e"><% {out.write(localizeISText("ServicesNewWizardStep4_inc.ThisServiceWillNotBeShareablePleaseClickTheFinishB.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep4:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="UNSHARED" />
</td><% } %></table><% printFooter(out); %>