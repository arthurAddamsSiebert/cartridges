<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = ("AccountManagers"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "10");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagerList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null)),
new TagParameter("text",context.getFormattedValue(getObject("CustomerDetails:Name"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null)),null))}, 12); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "14");} %><!-- Main Content --><% URLPipelineAction action19 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagerList_52-Dispatch",null)))),null));String site19 = null;String serverGroup19 = null;String actionValue19 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagerList_52-Dispatch",null)))),null);if (site19 == null){  site19 = action19.getDomain();  if (site19 == null)  {      site19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup19 == null){  serverGroup19 = action19.getServerGroup();  if (serverGroup19 == null)  {      serverGroup19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAccountManagerList_52-Dispatch",null)))),null));out.print("\"");out.print(" data-testing-id=\"");out.print("page-bo-customer-accountmanager-list-channel");out.print("\"");out.print(" name=\"");out.print("customerAccountManagerList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue19, site19, serverGroup19,true)); %><input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>) - <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Delete Confirmation -->
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","account manager"),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("customer.CustomerAccountManagerList_52.message.do.you.really.want.to.delete.the.selected.user.s",null)))}, 26); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","account manager"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("customer.CustomerAccountManagerList_52.message.you.have.not.selected.any.items",null)))}, 30); %><% } %><% } %></tr>
<tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("customer.user.list.showallusers","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("AccountManagerBOsPagable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("customer.user.list.account_manager.emptylist","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><tr>
<td align="left" class="w e s">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="create" value="<% {out.write(localizeISText("customer.user.list.button.new","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %></table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Users:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<td class="button">
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.CustomerAccountManagerList_52.button.new",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.CustomerAccountManagerList_52.button.delete",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentChannelPermissionMap"),
new TagParameter("key2","Clipboard"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap")),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerBO"),
new TagParameter("mapname","params")}, 76); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","customer/CustomerAccountManagerListColumns_52.isml"),
new TagParameter("configuration","customeraccountmanagerlist"),
new TagParameter("datatemplate","customer/CustomerAccountManagerListData_52.isml"),
new TagParameter("pageable",getObject("AccountManagerBOsPagable")),
new TagParameter("id","CustomerAccountManagerList"),
new TagParameter("pageablename","AccountManagerBOsPagable"),
new TagParameter("params",getObject("params"))}, 82); %><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "94");} %><% printFooter(out); %>