<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewDomainPreference_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Start",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPageLockingPreferences.ChannelPreferences.text",null)))}, 3); %> 
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageLockingPreferences-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPageLockingPreferences.ContentObjectLocking.text",null)))}, 4); %><!-- Main Content --><% URLPipelineAction action88 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageLockingPreferences-Update",null)))),null));String site88 = null;String serverGroup88 = null;String actionValue88 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageLockingPreferences-Update",null)))),null);if (site88 == null){  site88 = action88.getDomain();  if (site88 == null)  {      site88 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup88 == null){  serverGroup88 = action88.getServerGroup();  if (serverGroup88 == null)  {      serverGroup88 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageLockingPreferences-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateDomainPreferenceForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue88, site88, serverGroup88,true)); %><input name="webform-id" type="hidden" value="RegFormUpdateDomainPreference"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.title")}, 17); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormUpdateDomainPreference:PageletLockTimeout:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.timeout.invalid")}, 26); %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.timeout.description")}, 35); %></td>
</tr>
<!--tr><td class="table_title_description w e s">Fields with a red asterisk (<span class="star">*</span>) are mandatory.</td></tr-->
<tr>
<td class="fielditem w e s" nowrap="nowrap" style="vertical-align: middle;"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONTENT_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RegFormUpdateDomainPreference_PageletLockTimeout"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.timeout.releaselock")}, 43); %> <input type="text" name="RegFormUpdateDomainPreference_PageletLockTimeout" class="inputfield_en" size="6" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormUpdateDomainPreference_PageletLockTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> <% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.timeout.unit")}, 43); %>.
<% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.timeout.releaselock")}, 45); %> <input type="text" name="RegFormUpdateDomainPreference_PageletLockTimeout" class="inputfield_en" size="6" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletLockTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> <% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.timeout.unit")}, 45); %>.
<% } %><% } else { %><input type="text" name="RegFormUpdateDomainPreference_PageletLockTimeout" class="inputfield_en" size="6" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletLockTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/> <% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","preferences.contentlocking.timeout.unit")}, 48); %>.
<% } %></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONTENT_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageLockingPreferences.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPageLockingPreferences.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "77");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>