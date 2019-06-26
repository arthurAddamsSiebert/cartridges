<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Title -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td width="100%" class="table_title"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideSecurityQuestionPreferences"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HideSecurityQuestionPreferences",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("true",null))),null)%>" class="table_opened"><% {out.write(localizeISText("sld_ch_consumer_plugin.SecurityQuestionPreferences.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HideSecurityQuestionPreferences",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("false",null))),null)%>" class="table_closed"><% {out.write(localizeISText("sld_ch_consumer_plugin.SecurityQuestionPreferences.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideSecurityQuestionPreferences"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% URLPipelineAction action15 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-Dispatch",null)))),null));String site15 = null;String serverGroup15 = null;String actionValue15 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-Dispatch",null)))),null);if (site15 == null){  site15 = action15.getDomain();  if (site15 == null)  {      site15 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup15 == null){  serverGroup15 = action15.getServerGroup();  if (serverGroup15 == null)  {      serverGroup15 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPasswordReminderPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SecurityQuestionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue15, site15, serverGroup15,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %> class="js-form-disabled"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s" colspan="4">
<table border="0" cellspacing="0" cellpadding="4">
<tr>
<td><% {out.write(localizeISText("SecurityQuestionPreferences_52.SecurityQuestionPreferenceDescription","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText("SecurityQuestionPreferences_52.SecurityQuestion.table_title2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td class="w e s" colspan="4">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap" width="20%"><% {out.write(localizeISText("sld_ch_consumer_plugin.SecurityQuestionEnabled.fielditem","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="checkbox"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("SecurityQuestionForm:SecurityQuestionEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SecurityQuestionForm:SecurityQuestionEnabled:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/> 
</td>
<td class="table_detail" width="30%"></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
<!-- Start Action Buttons right--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateSecurityQuestion" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="reset" class="button" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Action Buttons right-->
</table><% out.print("</form>"); %><% } %><% printFooter(out); %>