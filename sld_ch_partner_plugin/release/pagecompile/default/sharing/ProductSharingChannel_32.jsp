<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("Channel:Id")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-EditChannel",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SharingTargetChannelID",null),context.getFormattedValue(getObject("Channel:UUID"),null))))),
new TagParameter("id",getObject("Channel:UUID")),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharingChannel_32.Channels.text",null)),null) + context.getFormattedValue(" - ",null))}, 4); %><!-- Main Content --><% URLPipelineAction action169 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchEditChannel",null)))),null));String site169 = null;String serverGroup169 = null;String actionValue169 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchEditChannel",null)))),null);if (site169 == null){  site169 = action169.getDomain();  if (site169 == null)  {      site169 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup169 == null){  serverGroup169 = action169.getServerGroup();  if (serverGroup169 == null)  {      serverGroup169 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing_32-DispatchEditChannel",null)))),null));out.print("\"");out.print(" name=\"");out.print("channelForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue169, site169, serverGroup169,true)); %><input type="hidden" name="SharingTargetChannelID" value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ProductSharingChannel_32.ProductSharing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> - <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductSharingChannel_32.PleaseSelectHowProductsShouldBeSharedToTheChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td class="table_detail" width="2%">
<input type="radio" name="ChannelForm_SharingType" value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelSharingType"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="table_detail"><% {out.write(localizeISText("ProductSharingChannel_32.ShareNothing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail" width="2%">
<input type="radio" name="ChannelForm_SharingType" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelSharingType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="table_detail"><% {out.write(localizeISText("ProductSharingChannel_32.ShareAllProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail" width="2%">
<input type="radio" name="ChannelForm_SharingType" value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelSharingType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="table_detail"><% {out.write(localizeISText("ProductSharingChannel_32.ShareProductsBySharingGroups.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharingChannel_32.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharingChannel_32.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table>
<!-- Sharing groups --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelSharingType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title s"><% {out.write(localizeISText("ProductSharingChannel_32.SharingGroups.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","productset"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 95); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","productset"),
new TagParameter("type","mde")}, 97); %><% } %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductSharingChannel_32.TheListShowsAllSharingGroupsAssignedToTheChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("ProductSharingChannel_32.ClickNewToAddSharingGroupsUseTheCheckboxesAndClick.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><td class="w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('channelForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSharingChannel_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('channelForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSharingChannel_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("ProductSharingChannel_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header w e s"><% {out.write(localizeISText("ProductSharingChannel_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header e s"><% {out.write(localizeISText("ProductSharingChannel_32.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductSharingChannel_32.Products.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ProductSets","ProductSet",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductSet:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductSet:UUID"),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ProductSet:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% } else { %><td class="table_detail w e s" nowrap="nowrap"><% } %>
&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductSetID",null),context.getFormattedValue(getObject("ProductSet:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:ProductsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td class="table_detail"><% {out.write(localizeISText("ProductSharingChannel_32.NoSharingGroupsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharingChannel_32.New.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharingChannel_32.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "179");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>