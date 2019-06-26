<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.Services.text",null)))}, 3); %><% URLPipelineAction action72 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null)))),null));String site72 = null;String serverGroup72 = null;String actionValue72 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null)))),null);if (site72 == null){  site72 = action72.getDomain();  if (site72 == null)  {      site72 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup72 == null){  serverGroup72 = action72.getServerGroup();  if (serverGroup72 == null)  {      serverGroup72 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ServiceConfigurationSharedListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue72, site72, serverGroup72,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="n" data-testing-id="bo-channel-shared-services-overview">
<tr>
<td class="table_title e w s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.shared.title")}, 9); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedServiceConfigurations:ServiceConfigurationsAndGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("noSelectedSharedItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td class="error_box s e w">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.noselection")}, 20); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.noselection.helpmessage")}, 21); %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SharedSaveSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td class="table_detail information w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("ServiceConfiguration:DisplayName(Locale)")),
new TagParameter("key","services.shared.changes.saved")}, 31); %></td>
</tr><% } %><tr>
<td><% {Object temp_obj = ("ViewChannelService"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationSharedItems", null, "39");} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td class="e w s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="useShared" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.ResetConfiguration.button",null)),null)%>" />
</td>
<td><img width="26" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
<td class="button">
<input name="activate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.Activate.button",null)),null)%>" />
</td>
<td class="button">
<input name="deactivate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.Deactivate.button",null)),null)%>" />
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail e w s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.shared.emptylist")}, 72); %></td>
</tr><% } %></table><% out.print("</form>"); %><div><img width="1" height="10" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0"/></div><% URLPipelineAction action73 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null)))),null));String site73 = null;String serverGroup73 = null;String actionValue73 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null)))),null);if (site73 == null){  site73 = action73.getDomain();  if (site73 == null)  {      site73 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup73 == null){  serverGroup73 = action73.getServerGroup();  if (serverGroup73 == null)  {      serverGroup73 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ServiceConfigurationListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue73, site73, serverGroup73,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="n" data-testing-id="bo-channel-local-services-overview">
<tr>
<td class="table_title e w s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.local.title")}, 85); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalServiceConfigurations:ServiceConfigurationsAndGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("okbtnname","delete"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.AreYouSureThatYouWantToDeleteTheSelectedServiceConfigurations.message",null))),
new TagParameter("type","mdc")}, 90); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("noSelectedItems")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("noSelectedItems"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("DeleteJumpTarget"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><tr>
<td class="error_box e w s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.noselection")}, 100); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.noselection.helpmessage")}, 101); %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SaveSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><tr>
<td class="table_detail information s e w"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("ServiceConfiguration:DisplayName(Locale)")),
new TagParameter("key","services.local.changes.saved")}, 111); %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceConfigurationListForm:Parameters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><tr>
<td><% {Object temp_obj = ("ViewChannelService"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationLocalItems", null, "120");} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><tr>
<td class="e w s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="activate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.Activate.button",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.ChangeTheLocalStatusToActive.button",null)),null)%>" />
</td>
<td class="button">
<input name="deactivate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.Deactivate.button",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.ChangeTheLocalStatusToInactive.button",null)),null)%>" />
</td>
<td><img width="26" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
<td class="button">
<input name="add" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.New.button",null)),null)%>" />
</td>
<td class="button">
<input name="confirmDelete" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.Delete.button",null)),null)%>" />
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><% } %><% } else { %><tr>
<td class="table_detail e w s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","services.local.emptylist")}, 162); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><tr>
<td class="e w s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="add" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceConfigurationsList.New.button",null)),null)%>" />
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><% } %></table><% out.print("</form>"); %><% printFooter(out); %>