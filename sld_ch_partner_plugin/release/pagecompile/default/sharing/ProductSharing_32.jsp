<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_32-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSharing_32.ChannelCatalogs.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-Overview",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSharing_32.OutboundProductSharing.text",null)))}, 6); %><!-- Main Content --><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 9); %><!-- Repository assignments --><% URLPipelineAction action170 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchChannels",null)))),null));String site170 = null;String serverGroup170 = null;String actionValue170 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchChannels",null)))),null);if (site170 == null){  site170 = action170.getDomain();  if (site170 == null)  {      site170 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup170 == null){  serverGroup170 = action170.getServerGroup();  if (serverGroup170 == null)  {      serverGroup170 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchChannels",null)))),null));out.print("\"");out.print(" name=\"");out.print("channelsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue170, site170, serverGroup170,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ProductSharing_32.Channels.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteChannels"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","channel"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 22); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","channel"),
new TagParameter("type","mde")}, 24); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("SearchChannelIDError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSharing_32.TheChannelIDSearchTermIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("SearchOrganizationIDError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSharing_32.TheSearchOrganizationIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("SearchChannelsError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSharing_32.ErrorWhileTryingToDetermineAssignedChannels.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductSharing_32.TheListShowsAllChannelsProductsAreSharedTo.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("ProductSharing_32.ClickNewToAddAChannelUseTheCheckboxesAndClick.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("ProductSharing_32.Search.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductSharing_32.ID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="text" name="SearchChannelID" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductSharing_32.Organization.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="SearchOrganizationID" style="1" class="inputfield_en">
<option value="all"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchOrganizationID"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ProductSharing_32.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Organizations","Organization",null)) { %><option value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchOrganizationID"),null).equals(context.getFormattedValue(getObject("Organization:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %> selected="selected"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Organization:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Organization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Organization:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %></select>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ChannelRows") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader">
<thead><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><tr>
<td colspan="7">
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newChannel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.New.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ChannelRows") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDeleteChannels" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.Delete.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><th class="w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('channelsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSharing_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('channelsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSharing_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</th>
<th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } else { %><th class="table_header w e s"><% {out.write(localizeISText("ProductSharing_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } %><th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.Organization.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.ProductSelection.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductSharing_32.SharedProducts.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr>
</thead>
<tbody><% while (loop("ChannelRows","ChannelRow",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ChannelRow:Channel:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ChannelRow:Channel:UUID"),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ChannelRow:Channel:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% } else { %><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ChannelRow:Channel:UUID"),null)%>"/>
<td class="table_detail w e s" nowrap="nowrap"><% } %>
&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-EditChannel",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SharingTargetChannelID",null),context.getFormattedValue(getObject("ChannelRow:Channel:UUID"),null)))),null)%>" class="table_detail_link"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChannelRow:Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRow:Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRow:Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></a></td>
<td class="table_detail e s" nowrap="nowrap">&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-EditChannel",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SharingTargetChannelID",null),context.getFormattedValue(getObject("ChannelRow:Channel:UUID"),null)))),null)%>" class="table_detail_link2"><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRow:Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRow:Channel:OwningDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% while (loop("ChannelTypes",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelRow:Channel:TypeCode"),null).equals(context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",190);}else{getLoopStack().pop();break;} %><% } %><% } %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ChannelRow:NoProducts"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductSharing_32.Nothing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("ChannelRow:AllProducts"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductSharing_32.AllProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductSharing_32.BySharingGroups.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ChannelRow:AllProducts"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRow:AllProductsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRow:ProductCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;</td>
</tr><% } %></tbody>
</table><% } else { %><table class="w e" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td class="table_detail"><% {out.write(localizeISText("ProductSharing_32.TheProductsAreNotSharedToAnyChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("AvailableChannelsForSharing:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("AllAssignedChannels:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %><td class="table_detail"><% {out.write(localizeISText("ProductSharing_32.ThereAreNoChannelsAvailableForSharingPleaseCreate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchParameters"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><td class="table_detail"><% {out.write(localizeISText("ProductSharing_32.NoChannelsFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% } %></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newChannel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.New.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("AvailableChannelsForSharing:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("AllAssignedChannels:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %>disabled="disabled"<% } %> /></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ChannelRows")}, 230); %></td>
</tr>
</table><% out.print("</form>"); %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
<!-- Sharing groups --><% URLPipelineAction action171 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchProductSets",null)))),null));String site171 = null;String serverGroup171 = null;String actionValue171 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchProductSets",null)))),null);if (site171 == null){  site171 = action171.getDomain();  if (site171 == null)  {      site171 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup171 == null){  serverGroup171 = action171.getServerGroup();  if (serverGroup171 == null)  {      serverGroup171 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchProductSets",null)))),null));out.print("\"");out.print(" name=\"");out.print("productSetsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue171, site171, serverGroup171,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ProductSharing_32.SharingGroups.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteProductSets"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","productset"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 249); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","productset"),
new TagParameter("type","mde")}, 251); %><% } %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductSharing_32.TheListShowsAllSharingGroupsForEachSharingGroup.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("ProductSharing_32.ClickNewToCreateANewSharingGroupUseTheCheckboxes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",263,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader">
<thead>
<tr>
<td colspan="5"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newProductSet" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.New.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDeleteProductSets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.Delete.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",287,e);}if (_boolean_result) { %><th class="w e s" width="80">
<div id="C">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productSetsForm','SelectedObjectUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ProductSharing_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="D" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productSetsForm','SelectedObjectUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ProductSharing_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</th>
<th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } else { %><th class="table_header w e s"><% {out.write(localizeISText("ProductSharing_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } %><th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ProductSharing_32.Products.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductSharing_32.AssignedRepositories.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr>
</thead>
<tbody><% while (loop("ProductSets","ProductSet",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",316,e);}if (_boolean_result) { %><td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductSet:UUID"),null)%>"/> 
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductSet:UUID"),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ProductSet:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",319,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% } else { %><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductSet:UUID"),null)%>"/>
<td class="table_detail w e s" nowrap="nowrap"><% } %>
&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductSetID",null),context.getFormattedValue(getObject("ProductSet:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {326}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {327}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:ProductsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {328}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:DomainsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {329}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></tbody>
</table><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td class="table_detail"><% {out.write(localizeISText("ProductSharing_32.NoSharingGroupsDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",338,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newProductSet" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.New.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",345,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDeleteProductSets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharing_32.Delete.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% } %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ProductSets")}, 359); %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>