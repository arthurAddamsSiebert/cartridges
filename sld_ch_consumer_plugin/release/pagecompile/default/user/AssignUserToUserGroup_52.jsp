<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "5");} %><% {Object temp_obj = ("Segments"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAllExisting",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.AssignCustomerSegment.text",null)))}, 15); %><!-- EO Page Navigator --><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "18");} %><!-- Main Content --><% URLPipelineAction action297 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null));String site297 = null;String serverGroup297 = null;String actionValue297 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null);if (site297 == null){  site297 = action297.getDomain();  if (site297 == null)  {      site297 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup297 == null){  serverGroup297 = action297.getServerGroup();  if (serverGroup297 == null)  {      serverGroup297 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserGroupListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue297, site297, serverGroup297,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CustomerID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tbody>
<tr>
<td class="table_title s" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>) - <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table> 
</td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.CustomerSegment.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 42); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.CustomerSegment.subject",null))),
new TagParameter("type","mde")}, 44); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserGroupAssignError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("AssignUserToUserGroup_52.CustomerSegment.subject",null))),
new TagParameter("type","mde2")}, 49); %><% } %> 
<% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("AssignUserToUserGroup_52.ListShowsAllExistingCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("AssignUserToUserGroup_52.UseCheckboxesAssignButtonToAssignConsumer.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="w e"><!-- Simple and advanced search --> 
<% {Object temp_obj = ("ViewUserGroupListForUser_52"); getPipelineDictionary().put("SearchPipeline", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("AssignUserToUserGroup_52.SimpleCustomerSegmentSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</td>
</tr>
<tr>
<td colspan="2">
<table cellSpacing=0 cellPadding=0 border=0>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="SearchTerm"><% {out.write(localizeISText("AssignUserToUserGroup_52.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("AssignUserToUserGroup_52.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td>
<input type="text" name="SearchTerm" id="SearchTerm" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SearchType" value="simple" />
<input type="submit" name="simpleSearchForAssignment" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignUserToUserGroup_52.Find.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header aldi center">
<input type="checkbox" name="kor-massSelection" title="<% {out.write(localizeISText("customers.list.select-all","",null,null,null,null,null,null,null,null,null,null,null));} %>" />
</td>
<td class="table_header n e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortByName"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortByName"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAllexistingForSimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("asc",null))).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null)).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("AssignUserToUserGroup_52.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupListForUser_52-ListAllexistingForSimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortByName",null),context.getFormattedValue("desc",null))).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null)).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null)%>" class="tableheader"><% {out.write(localizeISText("AssignUserToUserGroup_52.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignUserToUserGroup_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("AssignUserToUserGroup_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("UserGroups","UserGroup",null)) { %><% {Object temp_obj = (split(context.getFormattedValue(getObject("UserGroup:ID"),null),(String)("_"))); getPipelineDictionary().put("groupNames", temp_obj);} %><tr>
<td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> 
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% {Object temp_obj = (getObject("Clipboard:contains(UserGroup:ID)")); getPipelineDictionary().put("isGroupSelected", temp_obj);} %><% while (loop("AssignedUserGroups",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("UserGroup:ID"),null).equals(context.getFormattedValue(getObject("AssignedUserGroups:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserGroup:DomainID"),null).equals(context.getFormattedValue(getObject("AssignedUserGroups:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isGroupSelected", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",128);}else{getLoopStack().pop();break;} %><% } %><% } %><% {Object temp_obj = (getObject("isGroupSelected")); getPipelineDictionary().put("isGroupDisabled", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("groupNames") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("isGroupDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><% while (loop("groupNames","groupName",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("groupName"),null).equals(context.getFormattedValue("IG",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isGroupDisabled", temp_obj);} %><% } %><% } %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isGroupSelected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isGroupDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="assign"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignUserToUserGroup_52.Assign",null)),null)%>" class="button" /></td>
<td class="button"><input type="submit" name="cancelAssign"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignUserToUserGroup_52.Cancel",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table> 
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6"
alt="" border="0" /></td>
</tr>
<tr>
<td><!-- Start Page Cursor --> 
<% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UserGroups")}, 181); %> 
<!-- End Page Cursor --></td>
</tr><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %><tr>
<td class="table_detail aldi"><% {out.write(localizeISText("AssignUserToUserGroup_52.NoResultsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>&nbsp;<i><% {out.write(localizeISText("AssignUserToUserGroup_52.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} %></i>&nbsp;&nbsp;"<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %><br/><br/><% {out.write(localizeISText("AssignUserToUserGroup_52.CheckSpellingOrTryNewSearch",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_detail aldi"><% {out.write(localizeISText("AssignUserToUserGroup_52.ThereAreNoCustomerSegments",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td width="100%" class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="cancelAssign" value="Cancel" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% } %></table><% out.print("</form>"); %><script type="text/javascript">
$(document).delegate('input[name=kor-massSelection]', 'change', function(ev) { 
$('[name=SelectedObjectUUID]').not(':disabled').prop('checked', $(this).prop('checked') || false).trigger('change');
});
</script><% printFooter(out); %>