<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SearchIndexPreferences.Services.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("ServiceGroupID",null),context.getFormattedValue("Search Index Services",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("SearchIndexPreferences.SearchIndexServices.text",null)))}, 6); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeTextEx(context.getFormattedValue("SearchIndexPreferences.SearchServicePreferencesSearchEngine",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("SearchEngine"),null)))))}, 7); %><!-- EO Page Navigator -->
<!-- Tabs --><% URLPipelineAction action162 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexPreferences-UpdatePreferences",null)))),null));String site162 = null;String serverGroup162 = null;String actionValue162 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexPreferences-UpdatePreferences",null)))),null);if (site162 == null){  site162 = action162.getDomain();  if (site162 == null)  {      site162 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup162 == null){  serverGroup162 = action162.getServerGroup();  if (serverGroup162 == null)  {      serverGroup162 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexPreferences-UpdatePreferences",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateSearchIndexPreferences");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue162, site162, serverGroup162,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("SearchIndexPreferences.SearchServicePreferences.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("SearchEngine"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SearchIndexPreferences.PleaseSpecifyThePreferencesForTheSearchServer.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br />
</td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
width="1" height="6" border="0" alt="" /></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(context.getFormattedValue("searchindex/",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue("_ServicePreferences",null),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("searchindex/",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue("_ServicePreferences.isml",null)); getPipelineDictionary().put("template_name", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("template_name"),null), null, "32");} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0"
class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="update"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexPreferences.Apply.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="reset" name="reset"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexPreferences.Reset.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table>
<input type="hidden" name="SearchEngine" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchEngine"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>