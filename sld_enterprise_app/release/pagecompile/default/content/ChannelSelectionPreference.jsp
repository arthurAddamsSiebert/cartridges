<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentSharingChannelPreferenceNotExists"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelSelectionPreference.MasterContent.text",null)))}, 6); %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PreferencesBreadcrumb", null, "8");} %><% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences-ChannelList",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelSelectionPreference.DesignView.text",null)))}, 10); %><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelSelectionPreference.DesignView.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectChannel")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedChannelDomainName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreviousMasterPageEditingValue"),null).equals(context.getFormattedValue(getObject("MasterPageEditing_Switch"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelSelectionPreference.PreferenceCouldNotBeSetPleaseSelectAChannel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentSharingChannelPreferenceNotExists"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelSelectionPreference.ThereIsNoChannelSelectedForTheDesignView.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelSelectionPreference.SelectAChannelForTheDesignViewMasterPages.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Repositories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% URLPipelineAction action419 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences-Dispatch",null)))),null));String site419 = null;String serverGroup419 = null;String actionValue419 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences-Dispatch",null)))),null);if (site419 == null){  site419 = action419.getDomain();  if (site419 == null)  {      site419 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup419 == null){  serverGroup419 = action419.getServerGroup();  if (serverGroup419 == null)  {      serverGroup419 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ChannelSelectionPreference");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue419, site419, serverGroup419,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr><td class="w e" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox"><% {out.write(localizeISText("ChannelSelectionPreference.Editing.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox">
<input type="checkbox" name="MasterPageEditing_Switch" id="MasterPageEditing_Switch" value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("MasterPageEditinglPreference"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("MasterPageEditinglPreference:StringValue"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="label_checkbox_text" width="100%">
<label class="label label_checkbox_text label_light" for="MasterPageEditing_Switch"><% {out.write(localizeISText("ChannelSelectionPreference.DisableTheDesignViewForMasterContent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td></td>
<td class="input_checkbox">
<input type="checkbox" name="ReadonlyIfFuture_Switch" id="ReadonlyIfFuture_Switch" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ReadonlyIfFuturePreference"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ReadonlyIfFuturePreference:StringValue"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="label_checkbox_text" width="100%">
<label class="label label_checkbox_text label_light" for="ReadonlyIfFuture_Switch"><% {out.write(localizeISText("ChannelSelectionPreference.DisableEditingInTheDesignViewForAllDateTimeSetting.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox"><% {out.write(localizeISText("ChannelSelectionPreference.Preview.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox">
<input type="checkbox" name="MasterPagePreview_Switch" id="MasterPagePreview_Switch" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("MasterPagePreviewPreference"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("MasterPagePreviewPreference:StringValue"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="label_checkbox_text" width="100%">
<label class="label label_checkbox_text label_light" for="MasterPagePreview_Switch"><% {out.write(localizeISText("ChannelSelectionPreference.DisableTheDesignViewForDateTimeSettingsInThePast.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr><td class="w e" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" width="70" nowrap="nowrap"><div class="w100 center"><% {out.write(localizeISText("ChannelSelectionPreference.Select.w100",null,null,null,null,null,null,null,null,null,null,null,null));} %></div></td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("pipeline","ViewContentPreferences-ChannelList"),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("sortbyvalue","Name"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("sortdirectionvalues","asc,desc"),
new TagParameter("style","tableheader"),
new TagParameter("columnname","Name")}, 82); %></td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("pipeline","ViewContentPreferences-ChannelList"),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("sortbyvalue","ID"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("sortdirectionvalues","asc,desc"),
new TagParameter("style","tableheader"),
new TagParameter("columnname","ID")}, 83); %></td> 
<td class="table_header e s"><% {out.write(localizeISText("ChannelSelectionPreference.DefaultChannelApplication.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Repositories","Channel",null)) { %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("Channel")),
new TagParameter("PermissionMap","PermissionMap")}, 87); %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:RepositoryDomain:DomainName"),null).equals(context.getFormattedValue(getObject("ContentSharingChannelPreference:StringValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><input type="radio" name="SelectedChannelDomainName" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Channel:RepositoryDomain:DomainName"),null)),null)%>" checked="checked"/><% } else { %><input type="radio" name="SelectedChannelDomainName" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Channel:RepositoryDomain:DomainName"),null)),null)%>"/><% } %></td><% } else { %><td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:RepositoryDomain:DomainName"),null).equals(context.getFormattedValue(getObject("ContentSharingChannelPreference:StringValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><input type="radio" name="SelectedChannelDomainName" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Channel:RepositoryDomain:DomainName"),null)),null)%>" disabled="disabled" checked="checked"/><% } else { %><input type="radio" name="SelectedChannelDomainName" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Channel:RepositoryDomain:DomainName"),null)),null)%>" disabled="disabled"/><% } %></td><% } %><td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:RepositoryDomain:Site:DefaultApplication:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DESIGN_VIEW_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="SelectChannel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSelectionPreference.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSelectionPreference.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
</td>
</tr>
</table><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Repositories")}, 135); %><% out.print("</form>"); %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentOrganization:TypeCode")).doubleValue() ==((Number)(new Double(20))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelSelectionPreference.CurrentlyThisSalesOrganizationHasNoChannels.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelSelectionPreference.CurrentlyThisPartnerOrganizationHasNoChannels.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "144");} %><% printFooter(out); %>