<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",context.getFormattedValue("Search Service Configuration (",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue(")",null))}, 5); %><!-- EO Page Navigator -->
<!-- Tabs --><%@page import="com.intershop.beehive.configuration.capi.extension.ConfigurationContext,
                com.intershop.beehive.configuration.capi.extension.ConfigurationInformation,
                com.intershop.beehive.core.capi.configuration.ConfigurationContextFactory, 
				com.intershop.beehive.core.capi.configuration.ConfigurationMgr, 
				com.intershop.beehive.core.capi.domain.Domain,
				com.intershop.beehive.app.capi.App" %><%
	App app = getPipelineDictionary().get("CurrentApplication:App");
	String searchEngine = (String) getPipelineDictionary().get("SearchEngine");
	ConfigurationContext configurationContext = (new ConfigurationContextFactory()).createContext((Domain)getPipelineDictionary().get("MasterRepository:OwningDomain:Site"), app);
	List<ConfigurationInformation> configInfos = ConfigurationMgr.getInstance().getConfigurationInformation(searchEngine, "domain", configurationContext);
	getPipelineDictionary().put("ConfigurationInformations", configInfos);
%><% {Object temp_obj = ("true"); getPipelineDictionary().put("PreferenceConfigurationEditable", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationInformations"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% while (loop("ConfigurationInformations","ConfigInfo",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConfigInfo:ValueInformation") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue("PreferencePO",null).equals(context.getFormattedValue(pad(context.getFormattedValue(getObject("ConfigInfo:ValueInformation:First:Source"),null),((Number)(new Double(12))).intValue()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue("PreferenceDefinitionPO",null).equals(context.getFormattedValue(getObject("ConfigInfo:ValueInformation:First:Source"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% } else { %><% {Object temp_obj = (getObject("ConfigInfo:ValueInformation:First:Source")); getPipelineDictionary().put("ConfigurationSource", temp_obj);} %><% {Object temp_obj = ("false"); getPipelineDictionary().put("PreferenceConfigurationEditable", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",30);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %><% } %><% URLPipelineAction action581 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexConfiguration-UpdatePreferences",null)))),null));String site581 = null;String serverGroup581 = null;String actionValue581 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexConfiguration-UpdatePreferences",null)))),null);if (site581 == null){  site581 = action581.getDomain();  if (site581 == null)  {      site581 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup581 == null){  serverGroup581 = action581.getServerGroup();  if (serverGroup581 == null)  {      serverGroup581 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexConfiguration-UpdatePreferences",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateSearchIndexPreferences");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue581, site581, serverGroup581,true)); %><input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("OrganizationSearchIndexConfiguration.SearchServiceConfiguration0.table_title",null,null,encodeString(context.getFormattedValue(getObject("SearchEngine"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceConfigurationEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrganizationSearchIndexConfiguration.PleaseSpecifyTheConfigurationForTheSearchServer.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("OrganizationSearchIndexConfiguration.TheConfigurationOfThisSearchServiceIsOverridden.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><br /><% {out.write(localizeISText("OrganizationSearchIndexConfiguration.SourceOfConfiguration0.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("ConfigurationSource"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
width="1" height="6" border="0" alt="" /></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(context.getFormattedValue("searchindex/",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue("_ServiceConfiguration",null),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("searchindex/",null) + context.getFormattedValue(getObject("SearchEngine"),null) + context.getFormattedValue("_ServiceConfiguration.isml",null)); getPipelineDictionary().put("template_name", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("template_name"),null), null, "63");} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0"
class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceConfigurationEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><input type="submit" name="update"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Apply.button",null)),null)%>" class="button" /><% } else { %><input type="submit" name="update"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Apply.button",null)),null)%>" class="button" disabled="disabled" /><% } %> 
</td>
<td class="button"><input type="reset" name="reset"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Reset.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table>
<input type="hidden" name="SearchEngine" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchEngine"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% out.print("</form>"); %><div class="sfe-dialog-hidden"> 
<% URLPipelineAction action582 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null));String site582 = null;String serverGroup582 = null;String actionValue582 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null);if (site582 == null){  site582 = action582.getDomain();  if (site582 == null)  {      site582 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup582 == null){  serverGroup582 = action582.getServerGroup();  if (serverGroup582 == null)  {      serverGroup582 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue582, site582, serverGroup582,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="button"><input type="submit" name="back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexConfiguration.Back.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>