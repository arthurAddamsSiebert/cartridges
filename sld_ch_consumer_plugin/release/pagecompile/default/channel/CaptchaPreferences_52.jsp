<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCaptchaPreferences_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.CAPTCHAs.text",null)))}, 4); %><% URLPipelineAction action23 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCaptchaPreferences_52-Dispatch",null)))),null));String site23 = null;String serverGroup23 = null;String actionValue23 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCaptchaPreferences_52-Dispatch",null)))),null);if (site23 == null){  site23 = action23.getDomain();  if (site23 == null)  {      site23 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup23 == null){  serverGroup23 = action23.getServerGroup();  if (serverGroup23 == null)  {      serverGroup23 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCaptchaPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CaptchaSettingsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue23, site23, serverGroup23,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("sld_ch_consumer_plugin.CAPTCHAs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("CaptchaPreferences_52.PleaseSelectTheStorefrontFeaturesForWhichYouWantTo.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CaptchaPreferences") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="0" width="100%" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %> class="js-form-disabled"<% } %>
>
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% while (loop("CaptchaPreferences","Pref",null)) { %><tr>
<td class="fielditem2 top">
<input type="checkbox" name="CaptchaSettingsForm_<% {String value = null;try{value=context.getFormattedValue(getObject("Pref"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="on" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CaptchaSettingsForm:get(Pref):Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="fielditem2" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("CaptchaPreferenceMap:get(Pref):PreferenceDefinition:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><div class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CaptchaPreferenceMap:get(Pref):PreferenceDefinition:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Pref") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% if (getLoopStack().isEmpty()){Logger.error(this,"ISNEXT occured outside ISLOOP. Line: {}",40);}else{LoopStackEntry stackEntry = getLoopStack().peek();if (stackEntry.getIterator().hasNext()){stackEntry.setLoopObject(stackEntry.getIterator().next());}else{continue;}} %><td class="fielditem2 top">
<input type="checkbox" name="CaptchaSettingsForm_<% {String value = null;try{value=context.getFormattedValue(getObject("Pref"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="on" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CaptchaSettingsForm:get(Pref):Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="fielditem2" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("CaptchaPreferenceMap:get(Pref):PreferenceDefinition:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><div class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CaptchaPreferenceMap:get(Pref):PreferenceDefinition:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</td><% } else { %><td colspan="2" width="50%">&nbsp;</td><% } %></tr><% } %><tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateSettings" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("CaptchaPreferences_52.ThereAreNoCAPTCHAPreferencesDefinedForThisChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "78");} %><% printFooter(out); %>