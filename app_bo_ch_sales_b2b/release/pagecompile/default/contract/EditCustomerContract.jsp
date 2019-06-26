<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {Object temp_obj = ("Contracts"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("Contract-",null) + context.getFormattedValue(getObject("Contract:ID"),null)); getPipelineDictionary().put("ContractDetailsBreadcrumbID", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("contract.ContractTabsInc.general.title",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",getObject("ContractDetailsBreadcrumbID")),
new TagParameter("text",getObject("Contract:Name"))}, 16); %><!-- Tabs --><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/ContractTabsInc", null, "23");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" >
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("Contract:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tbody>
<tr>
<td class="table_title_description s"><% {out.write(localizeISText("customer.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditCustomerContract:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tbody>
<tr>
<td class="error_icon e top" width="1%">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top"><% {out.write(localizeISText("contract.form.edit.message.general","",null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("EditCustomerContract:InvalidParameters","InvalidParameter",null)) { %><br/><% while (loop("InvalidParameter:Errors","Error",null)) { %><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("contract.form.fields.",null) + context.getFormattedValue(getObject("InvalidParameter:ID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
</tbody>
</table>
</td>
</tr><% } %></tbody>
</table>
<!-- Main Content --><% URLPipelineAction action7 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null)))),null));String site7 = null;String serverGroup7 = null;String actionValue7 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null)))),null);if (site7 == null){  site7 = action7.getDomain();  if (site7 == null)  {      site7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup7 == null){  serverGroup7 = action7.getServerGroup();  if (serverGroup7 == null)  {      serverGroup7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue7, site7, serverGroup7,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("contract.ContractDetails.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContractID" value="<%=context.getFormattedValue(getObject("Contract:ID"),null)%>" />
<input type="hidden" name="CustomerID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>" /> 
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("EditPriceList.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action8 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));String site8 = null;String serverGroup8 = null;String actionValue8 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null);if (site8 == null){  site8 = action8.getDomain();  if (site8 == null)  {      site8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup8 == null){  serverGroup8 = action8.getServerGroup();  if (serverGroup8 == null)  {      serverGroup8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("EditCustomerContract");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue8, site8, serverGroup8,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EditCustomerContract:Name:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %> label_error<% } %>" for="EditCustomerContract_Name"><% {out.write(localizeISText("contract.form.name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail" width="100%">
<input type="text" name="EditCustomerContract_Name" id="EditCustomerContract_Name" class="inputfield_en" size="30"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditCustomerContract:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("EditCustomerContract:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Contract:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %>
/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EditCustomerContract:ContractID:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %> label_error<% } %>" for="EditCustomerContract_ContractID"><% {out.write(localizeISText("contract.form.id.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<input type="text" name="ContractID" id="ContractID" class="inputfield_en" size="30" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Contract:ContractID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"
/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="EditCustomerContract_Comment"><% {out.write(localizeISText("contract.form.comment.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditCustomerContract:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><textarea name="EditCustomerContract_Comment" id="EditCustomerContract_Comment" class="inputfield_en" cols="60" rows="8"><% {String value = null;try{value=context.getFormattedValue(getObject("EditCustomerContract:Comment:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea name="EditCustomerContract_Comment" id="EditCustomerContract_Comment" class="inputfield_en" cols="60" rows="8"><% {String value = null;try{value=context.getFormattedValue(getObject("Contract:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %> 
</td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/inc/NotificationEmailCustomerContract.isml", null, "132");} %><tr>
<td nowrap="nowrap" class="label_date_outside"><label class="label label_date_outside<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EditCustomerContract:StartDate:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %> label_error<% } %>" for="EditCustomerContract_StartDate"><% {out.write(localizeISText("contract.form.startdate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditCustomerContract:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EditCustomerContract_StartDate"),
new TagParameter("DateObject",getObject("EditCustomerContract:StartDate:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 142); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EditCustomerContract_StartDate"),
new TagParameter("DateObject",getObject("Contract:StartDate")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 148); %> 
<% } %></tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_date_outside"><label class="label label_date_outside<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EditCustomerContract:EndDate:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %> label_error<% } %>" for="EditCustomerContract_EndDate"><% {out.write(localizeISText("contract.form.enddate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditCustomerContract:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EditCustomerContract_EndDate"),
new TagParameter("DateObject",getObject("EditCustomerContract:EndDate:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("EndDateToError")))))}, 166); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EditCustomerContract_EndDate"),
new TagParameter("DateObject",getObject("Contract:EndDate")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("EndDateToError")))))}, 172); %><% } %></tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EditCustomerContract:ContractType:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %> label_error<% } %>" for="EditCustomerContract_ContractType"><% {out.write(localizeISText("contract.form.contracttype.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail" nowrap="nowrap">
<select name="EditCustomerContract_ContractType" id="EditCustomerContract_ContractType" class="inputfield_en" size="1"<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Contract"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %> disabled="disabled"<% } %>>
<option value="5" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Contract:TypeCode"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("contract.form.contracttype.revenue.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
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
<input type="hidden" name="ContractID" value="<%=context.getFormattedValue(getObject("Contract:ID"),null)%>" />
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="apply" value="<% {out.write(localizeISText("contract.form.new.buttons.create","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<% {out.write(localizeISText("contract.form.new.buttons.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "226");} %><% printFooter(out); %>