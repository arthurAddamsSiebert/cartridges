<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupUsersSelection_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelRepository:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("customersegment.customer.search.select.customers",null)))}, 5); %><% URLPipelineAction action305 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupUsersSelection_52-Dispatch",null)))),null));String site305 = null;String serverGroup305 = null;String actionValue305 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupUsersSelection_52-Dispatch",null)))),null);if (site305 == null){  site305 = action305.getDomain();  if (site305 == null)  {      site305 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup305 == null){  serverGroup305 = action305.getServerGroup();  if (serverGroup305 == null)  {      serverGroup305 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupUsersSelection_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue305, site305, serverGroup305,true)); %><input type="hidden" name="CustomerSegmentID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DefaultButton" value="search"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n w e">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title s" colspan="2" nowrap="nowrap"><% {out.write(localizeISText("customersegment.customer.search.select.customers","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("customersegment.customer.search.missing.selection.line1","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% {out.write(localizeISText("customersegment.customer.search.missing.selection.line2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CustomerSearchMessages", null, "36");} %></table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description s" colspan="2" width="100%"><% {out.write(localizeISText("customers.list.description","",null,encodeString(context.getFormattedValue(getObject("CurrentChannel:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table><% {Object temp_obj = ("true"); getPipelineDictionary().put("isCustomersAdvancedSearchAvailable", temp_obj);} %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersSearchForm", null, "51");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_header w e s center" width="1">
<input type="checkbox" name="js-massSelection" title="<% {out.write(localizeISText("customers.list.select-all","",null,null,null,null,null,null,null,null,null,null,null));} %>" />
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("customers.list.type","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("customers.list.customer","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("customers.list.ID","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="70" nowrap="nowrap"><% {out.write(localizeISText("customers.list.status","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="70" nowrap="nowrap"><% {out.write(localizeISText("customers.list.creation-date","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% while (loop("CustomerBOs",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBOs:CustomerBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBOs:CustomerBO")); getPipelineDictionary().put("CustomerBO", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CustomerBOs")); getPipelineDictionary().put("CustomerBO", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><tr>
<td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Lookup:isMember(CustomerBO:CustomerBOProfileID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
disabled="disabled" checked="checked"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(CustomerBO:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
checked="checked"
<% }} %>
/>
</td>
<td class="table_detail s e ish-customerType-<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-icon" width="1">
<span class="ish-icon"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:Name")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CustomerDetails:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:Active")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomerDetails:Active"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><img border="0" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customers.list.status.active",null)),null)%>" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customers.list.status.active",null)),null)%>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" /><% } else { %><img border="0" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customers.list.status.disabled",null)),null)%>" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customers.list.status.disabled",null)),null)%>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" /><% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("search")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("advancedSearch")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("customersegment.customer.search.no.result","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% {Object temp_obj = (getObject("CustomerSearch:Parameters:Iterator")); getPipelineDictionary().put("CustomerSearchParameters", temp_obj);} %><% while (loop("CustomerSearchParameters",null,null)) { %><% {Object temp_obj = (getObject("CustomerSearchParameters:ID")); getPipelineDictionary().put("SearchParameterID", temp_obj);} %><% {Object temp_obj = (getObject("CustomerSearchParameters:Value")); getPipelineDictionary().put("SearchParameterValue", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SearchParameterValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SearchParameterID"),null).equals(context.getFormattedValue("CustomerType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SearchParameterValue"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %>&nbsp;<em><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("SearchParameterID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></em>&nbsp;&nbsp;
<% while (loop("CustomerTypeProvider:AllCustomerTypes","CustomerType",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchParameterValue"),null).equals(context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
&quot;<% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>&quot;
<% {Object temp_obj = ("true"); getPipelineDictionary().put("SearchParameterSet", temp_obj);} %><% } %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SearchParameterID"),null).equals(context.getFormattedValue("CustomerStatus",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchParameterID"),null).equals(context.getFormattedValue("UserStatus",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>&nbsp;
<em><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("SearchParameterID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></em>&nbsp;&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchParameterValue"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
&quot;<% {out.write(localizeISText("customers.list.status.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %>&quot;
<% {Object temp_obj = ("true"); getPipelineDictionary().put("SearchParameterSet", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchParameterValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
&quot;<% {Object temp_obj = ("true"); getPipelineDictionary().put("SearchParameterSet", temp_obj);} %>&quot;
<% {out.write(localizeISText("customers.list.status.enabled","",null,null,null,null,null,null,null,null,null,null,null));} %><% }} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SearchParameterValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>&nbsp;
<% {Object temp_obj = ("true"); getPipelineDictionary().put("SearchParameterSet", temp_obj);} %><em><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("SearchParameterID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></em>&nbsp;&nbsp;&quot;<% {String value = null;try{value=context.getFormattedValue(getObject("SearchParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&quot;
<% }}} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchParameterSet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("customers.list.channel.check_spelling","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td> 
</tr><% } else { %> 
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("customersegment.customer.search.no.customers.to.show","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% } %></table><% } %> 
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assign" value="<% {out.write(localizeISText("customersegment.customer.search.button.assign","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<% {out.write(localizeISText("customersegment.customer.search.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","CustomerBOs")}, 183); %></td>
</tr>
</table><% out.print("</form>"); %><script type="text/javascript">
$(document).delegate('input[name=js-massSelection]', 'change', function(ev) { 
$('[name=SelectedObjectUUID]').not(':disabled').prop('checked', $(this).prop('checked') || false).trigger('change');
});
</script>
<!-- EO Working Area --><% printFooter(out); %>