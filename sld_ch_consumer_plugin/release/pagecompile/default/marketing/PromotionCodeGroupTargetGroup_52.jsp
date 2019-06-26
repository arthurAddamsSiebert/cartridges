<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","newPromotionCodeGroup"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.TargetGroups.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCodeGroupID",null),context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("PromotionCodeGroup:ID")),
new TagParameter("text",getObject("PromotionCodeGroup:ID"))}, 5); %><!-- Tabs --><% {Object temp_obj = (localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.TargetGroup.value",null))); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionCodeGroupsTabsInc", null, "9");} %><!-- EO Tabs --><% URLPipelineAction action539 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroup-Dispatch",null)))),null));String site539 = null;String serverGroup539 = null;String actionValue539 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroup-Dispatch",null)))),null);if (site539 == null){  site539 = action539.getDomain();  if (site539 == null)  {      site539 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup539 == null){  serverGroup539 = action539.getServerGroup();  if (serverGroup539 == null)  {      serverGroup539 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroup-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Form:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue539, site539, serverGroup539,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
<% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %> 
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ClickApplyToSaveTheDetailsClickResetToRevertToTheLast.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:UsePromotionTargetGroups:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:UsePromotionTargetGroups:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:UsePromotionTargetGroups:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:UsePromotionTargetGroups:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/><% } %></td>
<td class="table_detail"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.UsePromotionTargetGroup.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<!-- Buttons -->
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><tr>
<td align="right" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<!-- insert all as hidden -->
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<td class="button"><input type="submit" name="updateTargetGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PromotionCodeGroup")))).booleanValue() && !((Boolean) (getObject("PromotionCodeGroup:UsePromotionTargetGroups"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></div><% URLPipelineAction action540 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-DispatchUserGroup",null)))),null));String site540 = null;String serverGroup540 = null;String actionValue540 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-DispatchUserGroup",null)))),null);if (site540 == null){  site540 = action540.getDomain();  if (site540 == null)  {      site540 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup540 == null){  serverGroup540 = action540.getServerGroup();  if (serverGroup540 == null)  {      serverGroup540 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-DispatchUserGroup",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionCodeGroupUserGroupsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue540, site540, serverGroup540,true)); %><input type="submit" name="applyUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Apply.input",null)),null)%>" style="position: absolute; width: 0px; height: 0px; margin: 0px; border: 0px; padding: 0px; font-size: 0px;"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.CustomerSegment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- simple delete confirmation-->
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteUserGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.UserGroupAssignment.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteUserGroup"),
new TagParameter("okbtnname","deleteUserGroup"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.AreYouSureYouWantToRemoveTheseItems.message",null)))}, 87); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.UserGroupAssignment.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.YouHaveNotSelectedAnyItemsToBeRemovedUseTheCheckbox.message",null)))}, 89); %> 
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroupsForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.AllCustomerSegmentsCouldNotBeUpdatedCorrectTheRedFields.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr> 
<% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ThisListShowsAllCustomerSegmentsAssignedToThePromotion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %> 
<% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ClickNewToAssignACustomerSegmentUseTheCheckboxes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
<tr> 
<td>
<input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><td class="table_header n e s" width="80">
<div id="divUserGroupsA">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PromotionCodeGroupUserGroupsForm','SelectedObjectUUID','divUserGroupsA','divUserGroupsB');" class="tableheader"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="divUserGroupsB" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PromotionCodeGroupUserGroupsForm','SelectedObjectUUID','divUserGroupsA','divUserGroupsB');" class="tableheader"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_header n e s"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Redemption.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("UserGroups","UserGroup",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %><td class="e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(UserGroup:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td><% } %><td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroup:isFix"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><% {out.write(localizeISText("PaymentMethodGeneral_52.Default.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.CustomerDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><input type="checkbox" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_id" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(UserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue() && ((Boolean) getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:Value")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>checked="checked"<% } %>
/><% } else { %><input type="checkbox" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_id" disabled="disabled"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(UserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue() && ((Boolean) getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:Value")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>checked="checked"<% } %>
/><% } %></td>
<td class="table_detail<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %> error<% } %>" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.LimitTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %><input class="inputfield_en" type="text" size="3" maxlength="10" 
onclick="document.getElementById('<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_id').checked = true;" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(UserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(UserGroup)"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:Value"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %>"
/> 
<% } else { %><input class="inputfield_en" type="text" size="3" maxlength="10" disabled="disabled"
onclick="document.getElementById('<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_id').checked = true;" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(UserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(UserGroup)"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UserGroupsForm:isInvalid")).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:Value"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %>"
/> 
<% } %></td>
<td width="110px;" class="table_detail<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroupsForm:get(UserGroup:ID):TotalReuse:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %> error<% } %>" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.RedemptionS.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="applyUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="confirmDeleteUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Remove.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UserGroups")}, 238); %><!-- End Page Cursor -->
</td>
</tr><% } else { %><tr>
<td width="100%" class="table_detail w e n s"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ThereAreCurrentlyNoCustomerSegmentsAssignedToThisPromotion.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ClickNewToAssignCustomerSegments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",252,e);}if (_boolean_result) { %><tr>
<td width="100%" class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.New.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></div><% URLPipelineAction action541 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-DispatchAffiliate",null)))),null));String site541 = null;String serverGroup541 = null;String actionValue541 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-DispatchAffiliate",null)))),null);if (site541 == null){  site541 = action541.getDomain();  if (site541 == null)  {      site541 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup541 == null){  serverGroup541 = action541.getServerGroup();  if (serverGroup541 == null)  {      serverGroup541 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupTargetGroup_52-DispatchAffiliate",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionCodeGroupAffiliatesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue541, site541, serverGroup541,true)); %><input type="submit" name="applyAffiliate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Apply.input",null)),null)%>" style="position: absolute; width: 0px; height: 0px; margin: 0px; border: 0px; padding: 0px; font-size: 0px;"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Affiliates.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- simple delete confirmation-->
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteAffiliate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.AffiliateAssignment.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteAffiliate"),
new TagParameter("okbtnname","deleteAffiliate"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.AreYouSureYouWantToRemoveTheseItems.message1",null)))}, 286); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.UaffiliateAssignment.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.YouHaveNotSelectedAnyItemsToBeRemovedUseTheCheckboxes.message1",null)))}, 288); %> 
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AffiliatesForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",291,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.AllAffiliatesCouldNotBeUpdatedCorrectTheRedFields.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr> 
<% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ThisListShowsAllAffiliatesAssignedToThePromotionCode.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Affiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",310,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ClickNewToAssignAffiliatesUseTheCheckboxesAndThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr> 
<td>
<input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {318}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {319}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Affiliates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",322,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",328,e);}if (_boolean_result) { %><td class="table_header n e s" width="70">
<div id="divAffiliatesA">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PromotionCodeGroupAffiliatesForm','SelectedObjectUUID','divAffiliatesA','divAffiliatesB');" class="tableheader"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="divAffiliatesB" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PromotionCodeGroupAffiliatesForm','SelectedObjectUUID','divAffiliatesA','divAffiliatesB');" class="tableheader"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Redemption.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Affiliates","Affiliate",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",357,e);}if (_boolean_result) { %><td class="e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Affiliate:AffiliatePartner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",359,e);}if (_boolean_result) { %><input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:ProgramUserGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {360}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:ProgramUserGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {361}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Affiliate:ProgramUserGroupID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",362,e);}if (_boolean_result) { %>checked="checked"<% } %>
/><% } else { %><input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:PartnerUserGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {365}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:PartnerUserGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {366}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Affiliate:PartnerUserGroupID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",367,e);}if (_boolean_result) { %>checked="checked"<% } %>
/><% } %></td><% } %><td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Affiliate:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",372,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.NoDisplayNameGiven.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {375}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {378}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Affiliate:AffiliatePartner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",380,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ProgramOfPartner.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Affiliate:AffiliatePartner:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {381}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.AffiliatePartner.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s">
<table cellpadding="0" cellspacing="0" border="0">
<td class="table_detail" nowrap="nowrap">
<input type="checkbox" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {390}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_id" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {391}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("Affiliate:AffiliatePartner")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",393,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(Affiliate:PartnerUserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue() && ((Boolean) getObject("AffiliatesForm:get(Affiliate:Id):TotalReuseFlag:Value")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",394,e);}if (_boolean_result) { %>checked="checked"<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(Affiliate:ProgramUserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue() && ((Boolean) getObject("AffiliatesForm:get(Affiliate:Id):TotalReuseFlag:Value")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",396,e);}if (_boolean_result) { %>checked="checked"<% } %><% } %>
/>
</td>
<td class="table_detail<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuse:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",400,e);}if (_boolean_result) { %> error<% } %>" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.LimitTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail" nowrap="nowrap">
<input class="inputfield_en" type="text" size="3" maxlength="10" 
onclick="document.getElementById('<% {String value = null;try{value=context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuseFlag:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {403}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_id').checked = true;" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuse:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {404}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("Affiliate:AffiliatePartner")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",405,e);}if (_boolean_result) { %> 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(Affiliate:PartnerUserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",406,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(Affiliate:PartnerUserGroup)"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {406}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuse:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",406,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuse:Value"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {406}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %>"
<% } else { %>
value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(Affiliate:ProgramUserGroup)")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",408,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:getNumberOfReusesPerUserGroup(Affiliate:ProgramUserGroup)"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {408}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AffiliatesForm:isInvalid")).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuse:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",408,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuse:Value"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {408}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %>"
<% } %> 
/> 
</td>
<td width="110px;" class="table_detail<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AffiliatesForm:get(Affiliate:Id):TotalReuse:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",412,e);}if (_boolean_result) { %> error<% } %>" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.Redemptions.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</table>
</td>
</tr><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",420,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newAffiliate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="applyAffiliate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="confirmDeleteAffiliate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.Remove.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table> 
</td>
</tr><% } %><tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Affiliates")}, 443); %><!-- End Page Cursor -->
</td>
</tr><% } else { %><tr>
<td width="100%" class="table_detail w e n s"><% {out.write(localizeISText("PromotionCodeGroupTargetGroup_52.ThereAreCurrentlyNoAffiliatesAssignedToThisPromotionCodeGroup.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",454,e);}if (_boolean_result) { %><tr>
<td width="100%" class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newAffiliate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGroupTargetGroup_52.New.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "473");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>