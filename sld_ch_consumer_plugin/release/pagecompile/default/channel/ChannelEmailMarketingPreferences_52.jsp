<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/emailmarketing/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketingPreferences_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.EMailMarketing.text",null)))}, 6); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProviderDefinitions")))).booleanValue() && ((Boolean) (hasLoopElements("ProviderDefinitions") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% URLPipelineAction action10 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketingPreferences_52-Dispatch",null)))),null));String site10 = null;String serverGroup10 = null;String actionValue10 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketingPreferences_52-Dispatch",null)))),null);if (site10 == null){  site10 = action10.getDomain();  if (site10 == null)  {      site10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup10 == null){  serverGroup10 = action10.getServerGroup();  if (serverGroup10 == null)  {      serverGroup10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEmailMarketingPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("EmailMarketingPreferencesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue10, site10, serverGroup10,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s" colspan="3"><% {out.write(localizeISText("sld_ch_consumer_plugin.EMailMarketing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm")))).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Submitted")).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td colspan="3">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText(context.getFormattedValue(getObject("EmailMarketingPreferencesForm:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EmailMarketingPreferencesForm:Provider:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText(context.getFormattedValue(getObject("EmailMarketingPreferencesForm:Provider:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EmailMarketingPreferencesForm:LinkToProviderTool:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText(context.getFormattedValue(getObject("EmailMarketingPreferencesForm:LinkToProviderTool:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EmailMarketingPreferencesForm:AbandonedBasketTimeout:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText(context.getFormattedValue(getObject("EmailMarketingPreferencesForm:AbandonedBasketTimeout:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr> 
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="3"> 
<% {out.write(localizeISText("ChannelEmailMarketingPreferences_52.UseTheFollowingPreferencesToDefineTheEMailMarketin.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="w e" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="8" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm")))).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Submitted")).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Provider:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><td class="fielditem2_error w" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.EMailMarketingProvider.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2 w" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.EMailMarketingProvider.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail top e" width="100%" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><select name="EmailMarketingPreferencesForm_Provider" class="select inputfield_en">
<option value=""><% {out.write(localizeISText("ChannelEmailMarketingPreferences_52.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActiveProviderDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><option value="None" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelEmailMarketingPreferences_52.SelectingThisOptionWillRemoveCurrentlyConfiguredPr.option",null)),null)%>"><% {out.write(localizeISText("sld_ch_consumer_plugin.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% while (loop("ProviderDefinitions","ProviderDefinition",null)) { %><% {Object temp_obj = (getObject("ProviderDefinition:DisplayName")); getPipelineDictionary().put("ProviderDisplayName", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProviderDisplayName")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProviderDisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ProviderDefinition:ProviderName")); getPipelineDictionary().put("ProviderDisplayName", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm")))).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Submitted")).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderDefinition:ProviderName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm:Provider")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EmailMarketingPreferencesForm:Provider:Value"),null).equals(context.getFormattedValue(getObject("ProviderDefinition:ProviderName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ProviderDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } else { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderDefinition:ProviderName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ActiveProviderDefinition")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProviderDefinition:ProviderName"),null).equals(context.getFormattedValue(getObject("ActiveProviderDefinition:ProviderName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ProviderDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select><% } else { %><select name="Provider-disabled" class="select inputfield_en" disabled="disabled"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActiveProviderDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ActiveProviderDefinition:DisplayName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ActiveProviderDefinition:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><option value=""><% {String value = null;try{value=context.getFormattedValue(getObject("ActiveProviderDefinition:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } else { %><option value=""><% {String value = null;try{value=context.getFormattedValue(getObject("ActiveProviderDefinition:ProviderName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } else { %><option value=""><% {out.write(localizeISText("sld_ch_consumer_plugin.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select><% } %></td>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm")))).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Submitted")).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:LinkToProviderTool:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><td nowrap="nowrap" class="fielditem2_error w"><% {out.write(localizeISText("sld_ch_consumer_plugin.LinkToProviderTool.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td nowrap="nowrap" class="fielditem2 w"><% {out.write(localizeISText("sld_ch_consumer_plugin.LinkToProviderTool.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail top e" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm")))).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Submitted")).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><input type="text" name="EmailMarketingPreferencesForm_LinkToProviderTool" class="inputfield_en" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("EmailMarketingPreferencesForm:LinkToProviderTool:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } else { %><input type="text" name="EmailMarketingPreferencesForm_LinkToProviderTool" class="inputfield_en" size="35" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EmailMarketingProviderLink"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EmailMarketingProviderLink"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" /><% } %><% } else { %><input type="text" name="LinkToProviderTool-disabled" class="inputfield_en" disabled="disabled" size="35" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EmailMarketingProviderLink"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EmailMarketingProviderLink"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"/><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm")))).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Submitted")).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:AbandonedBasketTimeout:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><td nowrap="nowrap" class="fielditem2_error w"><% {out.write(localizeISText("sld_ch_consumer_plugin.AbandonedBasketTimeout.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td nowrap="nowrap" class="fielditem2 w"><% {out.write(localizeISText("sld_ch_consumer_plugin.AbandonedBasketTimeout.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail top"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailMarketingPreferencesForm")))).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Submitted")).booleanValue() && ((Boolean) getObject("EmailMarketingPreferencesForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><input type="text" name="EmailMarketingPreferencesForm_AbandonedBasketTimeout" class="inputfield_en" size="35" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("EmailMarketingPreferencesForm:AbandonedBasketTimeout:Value"),"#"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } else { %><input type="text" name="EmailMarketingPreferencesForm_AbandonedBasketTimeout" class="inputfield_en" size="35" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AbandonedBasketTimeout"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AbandonedBasketTimeout"),"#"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" /><% } %><% } else { %><input type="text" name="AbandonedBasketTimeout-disabled" class="inputfield_en" size="35" disabled="disabled" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AbandonedBasketTimeout"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AbandonedBasketTimeout"),"#"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"/><% } %></td>
<td class="table_detail top e"><% {out.write(localizeISText("ChannelEmailMarketingPreferences_52.TheTimeInHoursThatDefinesTheAgeWhenABasketIsTreate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</tr>
<tr>
<td colspan="3" class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActiveProviderDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "emailmarketingconfiguration", new TagParameter[] {
new TagParameter("templatename",getObject("ActiveProviderDefinition:ConfigurationTemplateName"))}, 141); %><% } else { %><% processOpenTag(response, pageContext, "emailmarketingconfiguration", new TagParameter[] {
new TagParameter("readonly","true"),
new TagParameter("templatename",getObject("ActiveProviderDefinition:ConfigurationTemplateName"))}, 143); %><% } %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><table width="100%" cellspacing="4" cellpadding="0" border="0" class="e w s">
<tr>
<td align="right">
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
<input type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s" colspan="2"><% {out.write(localizeISText("sld_ch_consumer_plugin.EMailMarketing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation_info.gif" width="16" height="15" alt="" border="0"/></td> 
<td class="table_title_description e s"><% {out.write(localizeISText("ChannelEmailMarketingPreferences_52.NoEMailMarketingProvidersAreDefinedForThisApplicat.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "172");} %><% printFooter(out); %>