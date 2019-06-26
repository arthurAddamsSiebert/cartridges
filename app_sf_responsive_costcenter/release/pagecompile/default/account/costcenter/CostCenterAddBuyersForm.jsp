<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModulesCostCenter", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("UserBOs:Empty")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% URLPipelineAction action3 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-AddCostCenterBuyer",null)))),null));String site3 = null;String serverGroup3 = null;String actionValue3 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-AddCostCenterBuyer",null)))),null);if (site3 == null){  site3 = action3.getDomain();  if (site3 == null)  {      site3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup3 == null){  serverGroup3 = action3.getServerGroup();  if (serverGroup3 == null)  {      serverGroup3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-AddCostCenterBuyer",null)))),null));out.print("\"");out.print(" data-bv-message=\"");out.print("This value is not valid");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(" data-bv-feedbackicons-valid=\"");out.print("glyphicon glyphicon-ok");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue(getObject("CostCenterAddBuyerForm:Alias"),null),null));out.print("\"");out.print(" data-bv-feedbackicons-invalid=\"");out.print("glyphicon glyphicon-remove");out.print("\"");out.print(" data-bv-feedbackicons-validating=\"");out.print("glyphicon glyphicon-refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue3, site3, serverGroup3,true)); %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterUsersForm:CustomerID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterUsersForm:CostCenterID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<div class="section">
<table class="table table-condensed" data-table="CostCenterBuyerList">
<thead>
<th class="text-center" style="width: 100px;">
<a href="<%=context.getFormattedValue("#",null)%>" data-toggle-select="all"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.selectall","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<a href="<%=context.getFormattedValue("#",null)%>" data-toggle-select="clear" style="display: none;"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.clearall","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</th>
<th><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.name","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th style="width: 400px;"><% {out.write(localizeISText("account.costcenter.details.buyers.list.header.orderspendlimit","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</thead>
<tbody><% while (loop("UserBOs","UserBO",null)) { %><tr>
<td class="text-center">
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("UserID_",null) + context.getFormattedValue(getObject("UserBO:ID"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</td>
<td>
<label for="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("UserID_",null) + context.getFormattedValue(getObject("UserBO:ID"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="cursor: pointer;"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("UserBO:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserBO:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></label>
</td>
<td>
<div class="row">
<div class="col-sm-6 col-xs-10"> 
<div class="input-group"> 
<span class="input-group-addon"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
<input type="text" 
name="Budget_<% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="" 
class="form-control" 
data-bv-regexp="true" data-bv-regexp-regexp="^[0-9.]+$"
data-bv-regexp-message="<% {out.write(localizeISText("account.costcenter.details.buyers.list.budget.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} %>"
/>
</div>
</div>
<div class="col-sm-5 col-xs-10">
<select
class="form-control" 
name="BudgetPeriod_<% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
required
>
<option value="fixed" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("fixed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.label.budget.period.fixed","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="weekly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("weekly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.form.field.budget.period.value.weekly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="monthly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("monthly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.form.field.budget.period.value.monthly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="quarterly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("quarterly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.form.field.budget.period.value.quarterly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</div>
</div> 
</td>
</tr><% } %></tbody>
</table>
</div>
<div class="row">
<div class="modal-footer">
<div class="pull-right">
<button class="btn btn-primary" type="submit" name="add"><% {out.write(localizeISText("account.costcenter.details.buyers.action.add","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button type="button" class="btn btn-default" data-dismiss="modal" name="cancel"><% {out.write(localizeISText("account.costcenter.form.button.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div>
</div>
</div>
<script>
$('[data-table="CostCenterBuyerList"]').DataTable({
"responsive": true,
"bLengthChange" : false,
"order": [[ 1, "asc" ]],
"columnDefs": [ {
"targets": 0,
"searchable": false,
"orderable": false
} ]
});
</script><% out.print("</form>"); %><% } else { %><div class="section"><% {out.write(localizeISText("account.costcenter.details.add.buyers.list.empty","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="row">
<div class="modal-footer">
<div class="pull-right">
<button type="button" class="btn btn-default" data-dismiss="modal" name="cancel"><% {out.write(localizeISText("account.costcenter.form.button.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div>
</div>
</div><% } %><% printFooter(out); %>