<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {Object temp_obj = ("Contracts"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("contract.create.general.title",null)))}, 12); %><!-- Tabs --><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/ContractTabsInc", null, "16");} %><!-- EO Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tbody>
<tr>
<td class="table_title s"><% {out.write(localizeISText("contract.create.general.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description s"><% {out.write(localizeISText("customer.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateCustomerContract:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tbody>
<tr>
<td class="error_icon e top" width="1%">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top"><% {out.write(localizeISText("contract.form.edit.message.general","",null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("CreateCustomerContract:InvalidParameters","InvalidParameter",null)) { %><br/><% while (loop("InvalidParameter:Errors","Error",null)) { %><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("contract.form.fields.",null) + context.getFormattedValue(getObject("InvalidParameter:ID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
</tbody>
</table>
</td>
</tr><% } %></tbody>
</table>
<!-- Main Content --><% URLPipelineAction action10 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-New",null)))),null));String site10 = null;String serverGroup10 = null;String actionValue10 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-New",null)))),null);if (site10 == null){  site10 = action10.getDomain();  if (site10 == null)  {      site10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup10 == null){  serverGroup10 = action10.getServerGroup();  if (serverGroup10 == null)  {      serverGroup10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue10, site10, serverGroup10,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("contract.ContractDetails.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(getObject("Customer:ID"),null)%>" />
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("EditPriceList.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action11 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));String site11 = null;String serverGroup11 = null;String actionValue11 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null);if (site11 == null){  site11 = action11.getDomain();  if (site11 == null)  {      site11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup11 == null){  serverGroup11 = action11.getServerGroup();  if (serverGroup11 == null)  {      serverGroup11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CreateCustomerContract");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue11, site11, serverGroup11,true)); %><input type="hidden" name="CreateCustomerContract_CustomerId" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:Name:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %> label_error<% } %>" for="CreateCustomerContract_Name"><% {out.write(localizeISText("contract.form.name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail" width="100%">
<input type="text" name="CreateCustomerContract_Name" id="CreateCustomerContract_Name" class="inputfield_en" size="30"
value="<%=context.getFormattedValue(getObject("CreateCustomerContract:Name:Value"),null)%>" />
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:ContractID:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %> label_error<% } %>" for="CreateCustomerContract_ContractID"><% {out.write(localizeISText("contract.form.id.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<input type="text" name="CreateCustomerContract_ContractID" id="CreateCustomerContract_ContractID" class="inputfield_en" size="30" 
value="<%=context.getFormattedValue(getObject("CreateCustomerContract:ContractID:Value"),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Contract"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %> disabled="disabled"<% } %>
/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="CreateCustomerContract_Comment"><% {out.write(localizeISText("contract.form.comment.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail">
<textarea name="CreateCustomerContract_Comment" id="CreateCustomerContract_Comment" class="inputfield_en" cols="60" rows="8"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateCustomerContract:Comment:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/inc/NotificationEmailCustomerContract.isml", null, "116");} %><tr>
<td nowrap="nowrap" class="label_date_outside"><label class="label label_date_outside<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:StartDate:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %> label_error<% } %>" for="CreateCustomerContract_StartDate"><% {out.write(localizeISText("contract.form.startdate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateCustomerContract_StartDate"),
new TagParameter("DateObject",getObject("CreateCustomerContract:StartDate:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 125); %></tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_date_outside"><label class="label label_date_outside<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:EndDate:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %> label_error<% } %>" for="CreateCustomerContract_EndDate"><% {out.write(localizeISText("contract.form.enddate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateCustomerContract_EndDate"),
new TagParameter("DateObject",getObject("CreateCustomerContract:EndDate:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 141); %></tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateCustomerContract:ContractType:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %> label_error<% } %>" for="CreateCustomerContract_ContractType"><% {out.write(localizeISText("contract.form.contracttype.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail" nowrap="nowrap">
<select name="CreateCustomerContract_ContractType" id="CreateCustomerContract_ContractType" class="inputfield_en" size="1">
<option value="5" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Contract:TypeCode"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("contract.form.contracttype.revenue.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td width="100%" colspan="3">&nbsp;</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tbody>
<tr>
<td class="s" colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>" />
<input type="submit" name="createContract" value="<% {out.write(localizeISText("contract.form.new.buttons.create","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancelContract" value="<% {out.write(localizeISText("contract.form.new.buttons.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "191");} %><% printFooter(out); %>