<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerManagement_52-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("customers.title",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomers_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue(context.getFormattedValue(getObject("SortBy"),null),null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(context.getFormattedValue(getObject("SortDirection"),null),null)))),
new TagParameter("id","Customers"),
new TagParameter("text",localizeText(context.getFormattedValue("customers.list.caption",null)))}, 5); %><% URLPipelineAction action336 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomers_52-Dispatch",null)))),null));String site336 = null;String serverGroup336 = null;String actionValue336 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomers_52-Dispatch",null)))),null);if (site336 == null){  site336 = action336.getDomain();  if (site336 == null)  {      site336 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup336 == null){  serverGroup336 = action336.getServerGroup();  if (serverGroup336 == null)  {      serverGroup336 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomers_52-Dispatch",null)))),null));out.print("\"");out.print(" data-testing-id=\"");out.print("page-bo-customer-list-channel");out.print("\"");out.print(" name=\"");out.print("CustomerList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue336, site336, serverGroup336,true)); %><% {Object temp_obj = ("CustomerID"); getPipelineDictionary().put("AllCustomersIDs", temp_obj);} %><% {Object temp_obj = ("SelectedObjectUUID"); getPipelineDictionary().put("SelectedCustomersIDs", temp_obj);} %><% {Object temp_obj = (getObject("CustomersSelection")); getPipelineDictionary().put("SelectedCustomerClipboard", temp_obj);} %><input type="hidden" name="CustomersSelectionName" value="SelectedCustomers"/><% {Object temp_obj = ("ExpandedCustomerID"); getPipelineDictionary().put("ExpandedCustomersIDs", temp_obj);} %><input type="hidden" name="ExpandedCustomersSelectionName" value="ExpandedCustomers"/><% {Object temp_obj = (getObject("ExpandedCustomersSelection")); getPipelineDictionary().put("ExpandedCustomerClipboard", temp_obj);} %><% {Object temp_obj = ("UserID"); getPipelineDictionary().put("AllUsersIDs", temp_obj);} %><% {Object temp_obj = ("SelectedUser"); getPipelineDictionary().put("SelectedUsersIDs", temp_obj);} %><% {Object temp_obj = (getObject("UsersSelection")); getPipelineDictionary().put("SelectedUserClipboard", temp_obj);} %><input type="hidden" name="UsersSelectionName" value="SelectedUsers"/><% {Object temp_obj = ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))); getPipelineDictionary().put("isEditable", temp_obj);} %><% {Object temp_obj = ("true"); getPipelineDictionary().put("SortingEnabled", temp_obj);} %><% {Object temp_obj = (getObject("ApplicationBO:Extension(\"CustomerApproval\")")); getPipelineDictionary().put("ApplicationBOCustomerApprovalExtension", temp_obj);} %><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("ApplicationBOCustomerApprovalExtension")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ApplicationBOCustomerApprovalExtension:EnabledForAnyCustomerType"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("isCustomerApprovalProcessApplicable", temp_obj);} %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e">
<tbody>
<tr>
<td class="table_title s" colspan="3"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.caption")}, 33); %></td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CustomerSearchMessages", null, "37");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmSelectedUsersIDs")))).booleanValue() && ((Boolean) (hasLoopElements("ConfirmSelectedUsersIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmSelectedCustomersIDs")))).booleanValue() && ((Boolean) (hasLoopElements("ConfirmSelectedCustomersIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="s confirm_box">
<tbody>
<tr>
<td class="error_icon center e" width="1" rowspan="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmCustomersWithAllUsersSelectedIDs")))).booleanValue() && ((Boolean) (hasLoopElements("ConfirmCustomersWithAllUsersSelectedIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>4<% } else { %>3<% } %>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="confirm"><% while (loop("ConfirmSelectedUsersIDs","ConfirmSelectedUserID",null)) { %><input type="hidden" name="ConfirmedUserID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfirmSelectedUserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% while (loop("ConfirmSelectedCustomersIDs","ConfirmSelectedCustomerID",null)) { %><input type="hidden" name="ConfirmedCustomerID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfirmSelectedCustomerID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><strong><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.delete.confirm")}, 56); %></strong>
<br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.delete.confirm_delete_selected")}, 58); %></td>
<td align="right" class="top" rowspan="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmCustomersWithAllUsersSelectedIDs")))).booleanValue() && ((Boolean) (hasLoopElements("ConfirmCustomersWithAllUsersSelectedIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>4<% } else { %>3<% } %>">
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmCustomersWithAllUsersSelectedIDs")))).booleanValue() && ((Boolean) (hasLoopElements("ConfirmCustomersWithAllUsersSelectedIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><td class="button"><% while (loop("ConfirmCustomersWithAllUsersSelectedIDs","CustomerWithAllUsersSelectedID",null)) { %><input type="hidden" name="ConfirmedCustomerWithAllUsersSelectedID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerWithAllUsersSelectedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><td class="button">
<input type="submit" class="button " value="<% {out.write(localizeISText("customers.list.delete.button.just.user","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="delete">
</td>
<td><img height="0" width="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
<td class="button"><input type="submit" class="button " value="<% {out.write(localizeISText("customers.list.delete.button.customer.as.well","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="deleteAndCustomers"></td><% } else { %><td class="button">
<input type="submit" class="button " value="<% {out.write(localizeISText("customers.list.delete.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="delete"/>
</td><% } %><td><img height="0" width="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
<td class="button">
<input type="submit" class="button " value="<% {out.write(localizeISText("customers.list.delete.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="cancel" />
</td>
</tr>
</tbody>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmCustomersWithAllUsersSelectedIDs")))).booleanValue() && ((Boolean) (hasLoopElements("ConfirmCustomersWithAllUsersSelectedIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><tr>
<td class="confirm"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.delete.confirm_delete_selected_customers_as_well")}, 91); %></td>
</tr><% } %><tr><td class="confirm_subtitle"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.delete.info.text")}, 95); %></td></tr>
</tbody>
</table><% } else { %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="s error_box">
<tbody>
<tr>
<td class="error_icon center e" width="1">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.delete.missing_selection")}, 106); %></td>
</tr>
</tbody>
</table><% } %> 
</td>
</tr><% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersListMessagesExtension", null, "116");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("isCustomerApprovalProcessApplicable")).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("approveSelectedCustomers")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("rejectSelectedCustomers")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="s error_box">
<tbody><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ApprovalCustomerIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><tr>
<td class="error_icon center e" width="1">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.approve.customer.missing_selection")}, 129); %></td>
</tr><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("approveSelectedCustomers"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><tr>
<td class="information error_icon center e" width="1">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" width="16" height="15" alt="" border="0"/>
</td>
<td class="information"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApprovedCustomers"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("ApprovedCustomers:Size")),
new TagParameter("encoding","off"),
new TagParameter("key","customers.list.approved.customers.number")}, 140); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0","0"),
new TagParameter("encoding","off"),
new TagParameter("key","customers.list.approved.customers.number")}, 142); %><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("rejectSelectedCustomers"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><tr>
<td class="information error_icon center e" width="1">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" width="16" height="15" alt="" border="0"/>
</td>
<td class="information"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RejectedCustomers"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><span><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("RejectedCustomers:Size")),
new TagParameter("encoding","off"),
new TagParameter("key","customers.list.rejected.customers.number")}, 154); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0","0"),
new TagParameter("encoding","off"),
new TagParameter("key","customers.list.rejected.customers.number")}, 156); %><% } %></td>
</tr><% } %><% } %></tbody>
</table>
</td>
</tr><% } %> 
<tr>
<td class="table_title_description s" colspan="3"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PerformedSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PerformedSearch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.description_after_searching")}, 170); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("CurrentChannel:DisplayName")),
new TagParameter("key","customers.list.description")}, 172); %><% } %></td>
</tr>
</tbody>
</table><% {Object temp_obj = ("true"); getPipelineDictionary().put("isCustomersAdvancedSearchAvailable", temp_obj);} %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersSearchForm", null, "180");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tbody>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="4">
<tr>
<td class="fielditem nowrap middle ish-customerTypeSelection">
<label for="ish-CustomerType"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","customers.list.button.new.label")}, 190); %></label><% {Object temp_obj = (getObject("ApplicationBO:NamedObject(\"CustomerTypeProvider\")")); getPipelineDictionary().put("CustomerTypeProvider", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerTypeProvider")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CustomerTypeProvider")))).booleanValue() && ((Boolean) (hasLoopElements("CustomerTypeProvider:AllCustomerTypes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %><select name="NewCustomerType" id="ish-customerType" class="select inputfield_en"><% while (loop("CustomerTypeProvider:AllCustomerTypes","CustomerType",null)) { %><option<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerTypeProvider:DefaultCustomerType:CustomerTypeID"),null).equals(context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %><% } %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key",getObject("CustomerType:LocalizationKeyForName"))}, 196); %></option><% } %></select><% } %></td>
<td class="button">
<div class="button">
<input type="submit" name="create" class="button" value="<% {out.write(localizeISText("customers.list.button.new","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</div>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchResult")))).booleanValue() && ((Boolean) (hasLoopElements("SearchResult") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDelete" class="button" value="<% {out.write(localizeISText("customers.list.button.delete","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("isCustomerApprovalProcessApplicable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %><td width="26">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchResult")))).booleanValue() && ((Boolean) (hasLoopElements("SearchResult") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %><td class="button" >
<input type="submit" name="approveSelectedCustomers" class="button kor-approval-button" value="<% {out.write(localizeISText("customers.list.button.approve","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</td>
<td class="button">
<input type="submit" name="rejectSelectedCustomers" class="button kor-approval-button" value="<% {out.write(localizeISText("customers.list.button.reject","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</td><% } %><% } %></tr>
</table>
</td>
</tr>
</tbody>
</table><% } %><% {Object temp_obj = ("customers.list.channel.empty-list"); getPipelineDictionary().put("EmptyResultLocalization", temp_obj);} %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersSearchResultList", null, "234");} %><% out.print("</form>"); %><% printFooter(out); %>