<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PreferencesBreadcrumb", null, "6");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageLockingPreferences-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PageLockingPreferences.ContentObjectLocking.text",null)))}, 7); %><% URLPipelineAction action453 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageLockingPreferences-Update",null)))),null));String site453 = null;String serverGroup453 = null;String actionValue453 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageLockingPreferences-Update",null)))),null);if (site453 == null){  site453 = action453.getDomain();  if (site453 == null)  {      site453 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup453 == null){  serverGroup453 = action453.getServerGroup();  if (serverGroup453 == null)  {      serverGroup453 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageLockingPreferences-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateDomainPreferenceForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue453, site453, serverGroup453,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- EO Page Navigator -->
<!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n" colspan="2"><% {out.write(localizeISText("PageLockingPreferences.ContentObjectLocking.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormUpdateDomainPreference:PageletLockTimeout:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PageLockingPreferences.PleaseSpecifyAValidLockTimeoutOnlyPositiveIntegers.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("PageLockingPreferences.DefineTheTimeInMinutesForWhichYouWantToLockTheCont.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2" class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="label w" nowrap="nowrap" style="vertical-align: middle;">
<label class="label label_light" for="RegFormUpdateDomainPreference_PageletLockTimeout"><% {out.write(localizeISText("PageLockingPreferences.ReleaseContentObjectLockAfter.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="table_detail e" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RegFormUpdateDomainPreference_PageletLockTimeout"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><input type="text" name="RegFormUpdateDomainPreference_PageletLockTimeout" id="RegFormUpdateDomainPreference_PageletLockTimeout" class="inputfield_en" size="6" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormUpdateDomainPreference_PageletLockTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> <% {out.write(localizeISText("PageLockingPreferences.Minutes.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><input type="text" name="RegFormUpdateDomainPreference_PageletLockTimeout" id="RegFormUpdateDomainPreference_PageletLockTimeout" class="inputfield_en" size="6" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletLockTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> <% {out.write(localizeISText("PageLockingPreferences.Minutes.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PageletLockTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("PageLockingPreferences.Minutes.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr><td colspan="2" class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageLockingPreferences.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageLockingPreferences.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "80");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>