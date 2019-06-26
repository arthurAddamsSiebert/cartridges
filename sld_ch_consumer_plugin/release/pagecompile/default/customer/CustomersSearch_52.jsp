<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"customer/forms/CustomerFormModules", null, "2");} %><div class="infobox searchbox w e s">
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox js-searchbox-simpleSearch">
<tr>
<td class="infobox_title js-searchbox-simpleSearch-title" nowrap="nowrap"><% {out.write(localizeISText("customers.list.search.simple.caption","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0" width="1">
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:NameOrID")),
new TagParameter("LabelClass","label label_light")}, 34); %><td class="button left">
<input type="submit" name="search" value="<% {out.write(localizeISText("customer.search.buttons.find","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("isCustomersAdvancedSearchAvailable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("isCustomersAdvancedSearchAvailable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("CustomerSearch:UserID:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:Login:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:FirstName:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:LastName:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:UserCreationDateFrom:Day:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:UserCreationDateFrom:Time:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:UserCreationDateTo:Day:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:UserCreationDateTo:Time:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("CustomerSearch:UserStatus:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("SearchedForUsers", temp_obj);} %><% } %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox js-searchbox-advancedSearch" id="">
<tr>
<td class="infobox_title js-searchbox-advancedSearch-title" nowrap="nowrap" colspan="4"><% {out.write(localizeISText("customers.list.search.parametric.caption","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("customer.search.tabs.customer","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;</td>
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("customer.search.tabs.user","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:CustomerNo")),
new TagParameter("LabelClass","label label_indent label_light")}, 70); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:UserID")),
new TagParameter("LabelClass","label label_indent label_light")}, 72); %></tr>
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:CompanyName")),
new TagParameter("LabelClass","label label_indent label_light")}, 75); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:Login")),
new TagParameter("LabelClass","label label_indent label_light")}, 77); %></tr>
<tr>
<td class="label_select" width="1%">
<label class="label label_select label_indent label_light<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerSearch:CustomerType:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %> label_error<% } %>" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("CustomerSearch:CustomerType:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="left table_detail"><% {Object temp_obj = (getObject("ApplicationBO:NamedObject(\"CustomerTypeProvider\")")); getPipelineDictionary().put("CustomerTypeProvider", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerTypeProvider")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CustomerTypeProvider")))).booleanValue() && ((Boolean) (hasLoopElements("CustomerTypeProvider:AllCustomerTypes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><select class="select inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option value=""><% {out.write(localizeISText("customer.form.fields.labels.any","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("CustomerTypeProvider:AllCustomerTypes","CustomerType",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:CustomerType:Value"),null).equals(context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select><% } else { %><% {out.write(localizeISText("customer.details.not-available","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:FirstName")),
new TagParameter("LabelClass","label label_indent label_light")}, 101); %></tr>
<tr>
<td colspan="2">
&nbsp;
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:LastName")),
new TagParameter("LabelClass","label label_indent label_light")}, 108); %></tr>
<tr><% processOpenTag(response, pageContext, "customerfielddatetime", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:CustomerCreationDateFrom")),
new TagParameter("CurrentRequest",getObject("CurrentRequest")),
new TagParameter("Time",getObject("CustomerSearch:CustomerCreationDateFrom:Time")),
new TagParameter("Date",getObject("CustomerSearch:CustomerCreationDateFrom:Day"))}, 111); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfielddatetime", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:UserCreationDateFrom")),
new TagParameter("CurrentRequest",getObject("CurrentRequest")),
new TagParameter("Time",getObject("CustomerSearch:UserCreationDateFrom:Time")),
new TagParameter("Date",getObject("CustomerSearch:UserCreationDateFrom:Day"))}, 117); %></tr>
<tr><% processOpenTag(response, pageContext, "customerfielddatetime", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:CustomerCreationDateTo")),
new TagParameter("CurrentRequest",getObject("CurrentRequest")),
new TagParameter("Time",getObject("CustomerSearch:CustomerCreationDateTo:Time")),
new TagParameter("Date",getObject("CustomerSearch:CustomerCreationDateTo:Day"))}, 124); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfielddatetime", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:UserCreationDateTo")),
new TagParameter("CurrentRequest",getObject("CurrentRequest")),
new TagParameter("Time",getObject("CustomerSearch:UserCreationDateTo:Time")),
new TagParameter("Date",getObject("CustomerSearch:UserCreationDateTo:Day"))}, 130); %></tr>
<tr>
<td class="label_select nowrap" width="1%">
<label class="label label_select label_light label_indent<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerSearch:CustomerStatus:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %> label_error<% } %>" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("CustomerSearch:CustomerStatus:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail left">
<select class="select inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option value=""><% {out.write(localizeISText("customers.list.status.any","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:CustomerStatus:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("customers.list.status.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:CustomerStatus:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("customers.list.status.enabled","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td class="label_select nowrap" width="1%">
<label class="label label_select label_light label_indent<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerSearch:UserStatus:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %> label_error<% } %>" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:UserStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("CustomerSearch:UserStatus:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail left">
<select class="select inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:UserStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:UserStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option value=""><% {out.write(localizeISText("customers.list.status.any","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:UserStatus:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("customers.list.status.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:UserStatus:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("customers.list.status.enabled","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationBO:Extension(\"CustomerApproval\"):EnabledForAnyCustomerType"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><tr>
<td class="label_select nowrap" width="1%">
<label class="label label_select label_light label_indent<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerSearch:CustomerApprovalStatus:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %> label_error<% } %>" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerApprovalStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("CustomerSearch:CustomerApprovalStatus:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail left">
<select class="select inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerApprovalStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerApprovalStatus:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option value=""><% {out.write(localizeISText("customers.list.status.any","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:CustomerApprovalStatus:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("customers.list.approval.status.pending","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:CustomerApprovalStatus:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("customers.list.approval.status.approved","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerSearch:CustomerApprovalStatus:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("customers.list.approval.status.rejected","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td class="label_select nowrap" width="1%">&nbsp;</td>
<td class="table_detail left">&nbsp;</td>
</tr><% } %> 
<tr>
<td align="right" colspan="5">
<table cellspacing="2" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="advancedSearch" value="<% {out.write(localizeISText("customer.search.buttons.find","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<input type="hidden" name="searchType" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("advancedSearch")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("searchType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("searchType"),null).equals(context.getFormattedValue("advanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %>advanced<% } else { %>simple<% } %>"/>
<script type="text/javascript">
var simple = $('<a href="<%=context.getFormattedValue("#",null)%>" class="switch_link js-searchbox-advancedSearch-show"><% {out.write(localizeISText("customer.search.advanced.toggle","",null,null,null,null,null,null,null,null,null,null,null));} %></a>').click(function(ev) {
ev.preventDefault();
$('.js-searchbox-simpleSearch :input').not(':button, :submit, :reset, :hidden').prop('disabled', 'disabled');
$('.js-searchbox-simpleSearch').hide();
$('.js-searchbox-advancedSearch').show();
$('.js-searchbox-advancedSearch :input').removeProp('disabled');
$('input[name=searchType]').val('advanced');
$('.error_box.simple').hide();
$('.error_box.advanced').show();
});
var advanced = $('<a href="<%=context.getFormattedValue("#",null)%>" class="switch_link js-searchbox-simpleSearch-show"><% {out.write(localizeISText("customer.search.simple.toggle","",null,null,null,null,null,null,null,null,null,null,null));} %></a>').click(function(ev) {
ev.preventDefault();
$('.js-searchbox-advancedSearch :input').not(':button, :submit, :reset, :hidden').prop('disabled', 'disabled');
$('.js-searchbox-advancedSearch').hide();
$('.js-searchbox-simpleSearch').show();
$('.js-searchbox-simpleSearch :input').removeProp('disabled');
$('input[name=searchType]').val('simple');
$('.error_box.advanced').hide();
$('.error_box.simple').show();
});
$('<td></td>', {'class' : 'right'}).append(simple).insertAfter($('td.js-searchbox-simpleSearch-title'));
$('<td></td>', {'class' : 'right'}).append(advanced).insertAfter($('td.js-searchbox-advancedSearch-title'));
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("advancedSearch")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("searchType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("searchType"),null).equals(context.getFormattedValue("advanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
$('.js-searchbox-simpleSearch :input').not(':button, :submit, :reset, :hidden').prop('disabled', 'disabled');
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OnlyB2C")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OnlyB2C"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { %>
$('<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch:CustomerType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {224}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>').prop('disabled', 'disabled');
<% } %>
$('.js-searchbox-simpleSearch').hide();
<% } else { %>
$('.js-searchbox-advancedSearch :input').not(':button, :submit, :reset, :hidden').prop('disabled', 'disabled');
$('.js-searchbox-advancedSearch').hide();
<% } %></script><% } %></div><% printFooter(out); %>