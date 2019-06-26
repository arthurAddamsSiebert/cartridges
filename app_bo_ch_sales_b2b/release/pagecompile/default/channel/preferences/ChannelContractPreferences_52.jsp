<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractPreferences_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("contract.preference.breadcrumb.text",null)))}, 5); %><!-- EO Page Navigator -->
<!-- Main Content -->
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("contract.preference.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("NotificationEmailForm:isInvalid")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationEmailForm:DaysBeforeContractExpires:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("contract.preference.notification.email.error.DaysBeforeContractEndsError",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("contract.preference.notification.email.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
</td>
</tr><% } %><% } %> 
<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ChannelContractPreferencesErrorExtensions", null, "34");} %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("contract.preference.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText("contract.preference.notification.email.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("contract.preference.notification.email.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
<tr>
<td><% URLPipelineAction action21 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractPreferences_52-Dispatch",null)))),null));String site21 = null;String serverGroup21 = null;String actionValue21 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractPreferences_52-Dispatch",null)))),null);if (site21 == null){  site21 = action21.getDomain();  if (site21 == null)  {      site21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup21 == null){  serverGroup21 = action21.getServerGroup();  if (serverGroup21 == null)  {      serverGroup21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractPreferences_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NotificationEmailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue21, site21, serverGroup21,true)); %> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0" width="100%">
<tr>
<td nowrap="nowrap" class="table_detail top" rowspan="2">
&nbsp;&nbsp;<% {out.write(localizeISText("contract.preference.notification.email.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td nowrap="nowrap" class="table_detail">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<input type="checkbox" id="<%=context.getFormattedValue(getObject("NotificationEmailForm:NotificationEmailActive:QualifiedName"),null)%>" 
name="<%=context.getFormattedValue(getObject("NotificationEmailForm:NotificationEmailActive:QualifiedName"),null)%>" 
value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("NotificationEmailForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NotificationEmailForm:NotificationEmailActive:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("NotificationEnabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NotificationEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td width="100%">
<label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationEmailForm:NotificationEmailActive:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("contract.preference.notification.email.checkbox.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table>
</td>
<td width="100%" class="table_detail">&nbsp;</td>
</tr>
<tr>
<td nowrap="nowrap" class="table_detail">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<input type="text" id="<%=context.getFormattedValue(getObject("NotificationEmailForm:DaysBeforeContractExpires:QualifiedName"),null)%>" 
name="<%=context.getFormattedValue(getObject("NotificationEmailForm:DaysBeforeContractExpires:QualifiedName"),null)%>" 
class="inputfield_en" size="4" value="
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationEmailForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("NotificationEmailForm:DaysBeforeContractExpires:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DaysBeforeNotification"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("DaysBeforeNotification"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %>" />
</td>
<td width="100%">
<label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationEmailForm:DaysBeforeContractExpires:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %> label_error<% } %>" 
for="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationEmailForm:DaysBeforeContractExpires:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("contract.preference.notification.email.define.days.before.text.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table> 
</td>
<td width="100%" class="table_detail">&nbsp;</td>
</tr>
<tr>
<td nowrap="nowrap" class="table_detail<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationEmailForm:EmailFromAddress:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %> error<% } %>">
&nbsp;&nbsp;<% {out.write(localizeISText("contract.preference.notification.email.from.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td nowrap="nowrap" class="table_detail">
<input type="text" id="<%=context.getFormattedValue(getObject("NotificationEmailForm:EmailFromAddress:QualifiedName"),null)%>" 
name="<%=context.getFormattedValue(getObject("NotificationEmailForm:EmailFromAddress:QualifiedName"),null)%>" 
class="inputfield_en" size="30" value="
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationEmailForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("NotificationEmailForm:EmailFromAddress:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EmailFromAddress"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EmailFromAddress"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %>" />
</td>
<td width="100%" class="table_detail">&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %></td>
</tr>
</table><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ChannelContractPreferencesExtensions", null, "138");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "140");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>