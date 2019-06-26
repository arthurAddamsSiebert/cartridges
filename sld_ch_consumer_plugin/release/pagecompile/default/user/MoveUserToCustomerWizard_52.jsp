<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% {Object temp_obj = ("Users"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %>
<% } %>
<% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %>
 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "10");} %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null) + context.getFormattedValue("MoveUserToCustomer",null)),
new TagParameter("text",localizeText(context.getFormattedValue("customer.breadcrumb.moveuser",null)))}, 12); %>
<!-- Main Content -->
<% URLPipelineAction action293 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Dispatch",null)))),null));String site293 = null;String serverGroup293 = null;String actionValue293 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Dispatch",null)))),null);if (site293 == null){  site293 = action293.getDomain();  if (site293 == null)  {      site293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup293 == null){  serverGroup293 = action293.getServerGroup();  if (serverGroup293 == null)  {      serverGroup293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("customerList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue293, site293, serverGroup293,true)); %>
	<input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>" />
	<input type="hidden" name="SortBy" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
	<input type="hidden" name="SortDirection" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortDirection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>) - <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		
		<!-- move error if nothing is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("move")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CustomerUUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
						<tr>
							<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top" width="100%">
								<% {out.write(localizeISText("customer.users.missing.selection.line1","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% {out.write(localizeISText("customer.users.missing.selection.line2","",null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		
		<tr>
			<td class="table_title_description w e s">
				<% {out.write(localizeISText("customer.users.general.description","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
	
	<% {Object temp_obj = ("false"); getPipelineDictionary().put("isCustomersAdvancedSearchAvailable", temp_obj);} %>
	<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersSearchForm", null, "49");} %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>	
		<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("value7",url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("value2",getObject("CustomerClipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerBO"),
new TagParameter("key7","SortingUrl"),
new TagParameter("mapname","params")}, 52); %>
		   
		<% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","user/MoveUserCustomerListColumns_52.isml"),
new TagParameter("configuration","CustomerList"),
new TagParameter("datatemplate","user/MoveUserCustomerListData_52.isml"),
new TagParameter("pageable",getObject("CustomerBOs")),
new TagParameter("id","CustomerList"),
new TagParameter("pageablename","CustomerBOs"),
new TagParameter("rowcsstemplate","user/MoveUserCustomerListRowCss_52.isml"),
new TagParameter("params",getObject("params"))}, 61); %>
	<% } else { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("search"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">	
				<tr>
					<td class="table_detail w e s">
						<% {out.write(localizeISText("customer.search.no.result","",null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				</tr>
			</table>
		<% } else { %>	
		
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="table_detail w e s"><% {out.write(localizeISText("customers.list.empty-list","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			</table>	
		<% } %>
	<% } %>

	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td align="right">
				<table cellpadding="0" cellspacing="4" border="0">
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
							<td class="button"><input type="submit" name="move" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.users.buttons.move",null)),null)%>" class="button"/></td>
						<% } %>
						<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.users.buttons.cancel",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
<% out.print("</form>"); %>
<% printFooter(out); %>