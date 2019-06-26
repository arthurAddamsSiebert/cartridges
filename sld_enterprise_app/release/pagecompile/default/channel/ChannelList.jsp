<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% URLPipelineAction action22 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelList-Dispatch",null)))),null));String site22 = null;String serverGroup22 = null;String actionValue22 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelList-Dispatch",null)))),null);if (site22 == null){  site22 = action22.getDomain();  if (site22 == null)  {      site22 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup22 == null){  serverGroup22 = action22.getServerGroup();  if (serverGroup22 == null)  {      serverGroup22 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelList-Dispatch",null)))),null));out.print("\"");out.print(" data-testing-id=\"");out.print("bo-channel-list-page");out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue22, site22, serverGroup22,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Organization",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("OrganizationMenu",null))).addURLParameter(context.getFormattedValue("OverviewPage",null),context.getFormattedValue("ViewOverview-Organization",null)))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelList.Organization.text",null)))}, 8); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelList-Paging",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelList.Channels.text",null)))}, 9); %><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CurrentOrganization:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentOrganization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentOrganization:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> - <% {out.write(localizeISText("ChannelList.Channels.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Clipboard:ObjectUUIDsCount"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Channel.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 19); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Channel.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 21); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Channel.subject",null))),
new TagParameter("type","mde")}, 23); %><% }} %><% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ErrorPanel", null, "27");} %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelList.TheListShowsAllChannelsCurrentlyAvailable.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Repositories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ChannelList.CurrentlyThisSalesOrganizationHasNoChannels.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SALES_CHANNELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelList.ClickNewToCreateOne.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td><% } %></tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Repositories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6","ObjectUUID"),
new TagParameter("key2","UserPermissionForViewChannel"),
new TagParameter("value5","SelectedObjectUUID"),
new TagParameter("value8",getObject("SortDirection")),
new TagParameter("key0","Application"),
new TagParameter("value7",getObject("SortBy")),
new TagParameter("value2",getObject("CurrentUserPermissionMap:SLD_VIEW_SALES_CHANNELS")),
new TagParameter("key5","SelectedItemsName"),
new TagParameter("value1",getObject("CurrentUserPermissionMap:SLD_MANAGE_SALES_CHANNELS")),
new TagParameter("key6","AvailableItemsName"),
new TagParameter("key3","Clipboard"),
new TagParameter("value4",getObject("ChannelTypes")),
new TagParameter("value3",getObject("Clipboard")),
new TagParameter("key4","ChannelTypes"),
new TagParameter("key7","SortBy"),
new TagParameter("key8","SortDirection"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 42); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ChannelColumns.isml"),
new TagParameter("configuration","channellist"),
new TagParameter("datatemplate","grid/ChannelData.isml"),
new TagParameter("pageable",getObject("Repositories")),
new TagParameter("id","ChannelList"),
new TagParameter("pageablename","Repositories"),
new TagParameter("params",getObject("params"))}, 54); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SALES_CHANNELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelList.New.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Repositories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelList.Delete.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>