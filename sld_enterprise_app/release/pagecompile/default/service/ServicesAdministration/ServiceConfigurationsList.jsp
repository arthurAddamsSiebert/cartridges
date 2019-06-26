<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceList-Dispatch",null))))),
new TagParameter("start","true"),
new TagParameter("id","ViewServiceList"),
new TagParameter("text",localizeText(context.getFormattedValue("ServiceConfigurationsList.Services.text",null)))}, 5); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Organization:TypeCode"),null).equals(context.getFormattedValue("30",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isPartnerOrganization", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isPartnerOrganization", temp_obj);} %><% } %><% URLPipelineAction action318 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceList-Dispatch",null)))),null));String site318 = null;String serverGroup318 = null;String actionValue318 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceList-Dispatch",null)))),null);if (site318 == null){  site318 = action318.getDomain();  if (site318 == null)  {      site318 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup318 == null){  serverGroup318 = action318.getServerGroup();  if (serverGroup318 == null)  {      serverGroup318 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ServiceConfigurationSharedListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue318, site318, serverGroup318,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isPartnerOrganization"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="aldi">
<tr>
<td class="table_title"><% {out.write(localizeISText("ServiceConfigurationsList.ServiceConfigurationsSharedByOrganization.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedServiceConfigurations:ServiceConfigurationsAndGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SharedSaveSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><tr>
<td class="table_detail information w e s"><% {out.write(localizeISText("ServiceConfigurationsList.ChangesForSharedServiceConfiguration0SuccessfullyS.table_detail",null,null,encodeString(context.getFormattedValue(getObject("SCData"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("noSelectedSharedItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td class="error_box e w s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ServiceConfigurationsList.YouHaveNotSelectedAServiceConfigurationUseTheCheck.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("ServiceConfigurationsList.TheListShowsAllAvailableSharedServiceConfiguration.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% {Object temp_obj = ("true"); getPipelineDictionary().put("isOrganizationUserPermission", temp_obj);} %><% {Object temp_obj = ("ViewService"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %><% {Object temp_obj = ("true"); getPipelineDictionary().put("showBtnSharedView", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationSharedItems", null, "55");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="e w s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="useShared" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.ResetConfiguration.button",null)),null)%>" />
</td>
<td><img width="26" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
<td class="button">
<input name="activate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.Activate.button",null)),null)%>" />
</td>
<td class="button">
<input name="deactivate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.Deactivate.button",null)),null)%>" />
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("ServiceConfigurationsList.CurrentlyNoServiceConfigurationsAreShared.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><div><img width="26" border="0" height="20" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></div><% } %><% out.print("</form>"); %><% URLPipelineAction action319 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceList-Dispatch",null)))),null));String site319 = null;String serverGroup319 = null;String actionValue319 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceList-Dispatch",null)))),null);if (site319 == null){  site319 = action319.getDomain();  if (site319 == null)  {      site319 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup319 == null){  serverGroup319 = action319.getServerGroup();  if (serverGroup319 == null)  {      serverGroup319 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ServiceConfigurationListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue319, site319, serverGroup319,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="aldi">
<tr>
<td class="table_title"><% {out.write(localizeISText("ServiceConfigurationsList.LocalServiceConfigurations.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalServiceConfigurations:ServiceConfigurationsAndGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("message",localizeText(context.getFormattedValue("ServiceConfigurationsList.AreYouSureThatYouWantToDeleteTheSelectedServiceCon.message",null))),
new TagParameter("type","mdc")}, 106); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("noSelectedItems"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><tr>
<td class="error_box e w s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ServiceConfigurationsList.YouHaveNotSelectedAServiceConfigurationUseTheCheck.error1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SaveSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><tr>
<td class="table_detail information s w e"><% {out.write(localizeISText("ServiceConfigurationsList.NewServiceConfiguration0SuccessfullyCreated.table_detail",null,null,encodeString(context.getFormattedValue(getObject("SCData"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ServiceConfigurationsList.TheListShowsAllAvailableServiceConfigurationsForTh.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isPartnerOrganization"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %> <% {out.write(localizeISText("ServiceConfigurationsList.Partner.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> <% {out.write(localizeISText("ServiceConfigurationsList.Organization.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceConfigurationListForm:Parameters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isOrganizationUserPermission", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceConfigurationLocalItems", null, "140");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="e w s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="activate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.Activate.button",null)),null)%>" />
</td>
<td class="button">
<input name="deactivate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.Deactivate.button",null)),null)%>" />
</td>
<td><img width="26" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
<td class="button">
<input name="add" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.New.button",null)),null)%>" />
</td>
<td class="button">
<input name="confirmDelete" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.Delete.button",null)),null)%>" />
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% } else { %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("ServiceConfigurationsList.ThereAreNoServicesAssignedToThis.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isPartnerOrganization"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %> <% {out.write(localizeISText("ServiceConfigurationsList.Partner.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> <% {out.write(localizeISText("ServiceConfigurationsList.Organization.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="e w s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="add" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceConfigurationsList.New.button",null)),null)%>" />
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% out.print("</form>"); %><% printFooter(out); %>