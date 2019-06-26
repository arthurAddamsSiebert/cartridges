<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("FormType"),null).equals(context.getFormattedValue("create",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Create",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } else { %><% {Object temp_obj = (url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Update",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } %><% URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(getObject("FormAction"),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(getObject("FormAction"),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("FormAction"),null));out.print("\"");out.print(" data-bv-message=\"");out.print("This value is not valid");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(" data-bv-feedbackicons-valid=\"");out.print("glyphicon glyphicon-ok");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue(getObject("CostCenterForm:Alias"),null),null));out.print("\"");out.print(" data-bv-feedbackicons-invalid=\"");out.print("glyphicon glyphicon-remove");out.print("\"");out.print(" data-bv-feedbackicons-validating=\"");out.print("glyphicon glyphicon-refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:CustomerID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:CostCenterID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><div class="form-group">
<label class="control-label col-sm-3 col-xs-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Number:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.costcenter.form.field.no.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-9 col-xs-8"> 
<input type="text"
class="form-control" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Number:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Number:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Number:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CostCenterForm:Number:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %> error<% } %>" 
data-bv-notempty="true" required data-bv-notempty-message="<% {out.write(localizeISText("account.costcenter.create.no.required.validation","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
/>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-3 col-xs-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.costcenter.form.field.name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-9 col-xs-8"> 
<input type="text" 
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CostCenterForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %> error<% } %>" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
data-bv-notempty="true" required data-bv-notempty-message="<% {out.write(localizeISText("account.costcenter.create.name.required.validation","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
/>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-3 col-xs-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:BudgetType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.costcenter.form.field.budget.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-9 col-xs-8">
<div class="row">
<div class="col-sm-6 form-vertical-space">
<div class="input-group"> 
<span class="input-group-addon"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
<input type="text" 
class="form-control<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CostCenterForm:Budget:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %> error<% } %>" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Budget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Budget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Budget:Value:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
data-bv-notempty="true" required data-bv-notempty-message="<% {out.write(localizeISText("account.costcenter.create.budget.required.validation","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
/>
</div> 
</div>
<div class="col-sm-6">
<select
class="form-control" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:BudgetPeriod:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<option value="fixed" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CostCenterForm:BudgetPeriod:Value"),null).equals(context.getFormattedValue("fixed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CostCenterForm:BudgetPeriod:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.label.budget.period.fixed","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="weekly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterForm:BudgetPeriod:Value"),null).equals(context.getFormattedValue("weekly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.form.field.budget.period.value.weekly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="monthly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterForm:BudgetPeriod:Value"),null).equals(context.getFormattedValue("monthly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.form.field.budget.period.value.monthly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="quarterly" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterForm:BudgetPeriod:Value"),null).equals(context.getFormattedValue("quarterly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("account.costcenter.form.field.budget.period.value.quarterly","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</div>
</div>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-3 col-xs-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Manager:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.costcenter.form.field.manager.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-9 col-xs-8"> 
<select class="form-control" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Manager:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-bv-notempty="true" required data-bv-notempty-message="<% {out.write(localizeISText("account.costcenter.create.manager.required.validation","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% while (loop("UserBOs","UserBO",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterForm:Manager:Value"),null).equals(context.getFormattedValue(getObject("UserBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>selected="selected"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("UserBO:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserBO:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %></select>
</div>
</div>
<div class="row"> 
<div class="modal-footer">
<div class="pull-right"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("FormType"),null).equals(context.getFormattedValue("create",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><button id="create-costcenter-submit" class="btn btn-primary" type="submit" name="create"><% {out.write(localizeISText("account.costcenter.form.button.create.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button type="button" class="btn btn-default" data-dismiss="modal" name="cancel"><% {out.write(localizeISText("account.costcenter.form.button.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% } else { %><button class="btn btn-primary" type="submit" name="edit"><% {out.write(localizeISText("account.costcenter.details.action.save","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button type="button" class="btn btn-default" data-dismiss="modal" name="cancel"><% {out.write(localizeISText("account.costcenter.form.button.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% } %></div>
</div>
</div><% out.print("</form>"); %><script type="text/javascript">
$(document).on('click', '<%=context.getFormattedValue("#",null)%>create-costcenter-submit', function(event) {
var modal = $('<%=context.getFormattedValue("#",null)%>general-costcenter-modal');
var form = $(modal).find('form');
var button = $(this);
event.preventDefault();
$('<%=context.getFormattedValue("#",null)%>' + 'create-costcenter-submit').attr("disabled", true);
$.ajax({
url : '<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-ValidateCreate",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
type: "POST",
dataType: 'json',
data : form.serializeArray(),
success : function(data) {
var costCenterNumberID = '<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Number:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';
var costCenterNumberDiv = $('<%=context.getFormattedValue("#",null)%>' + costCenterNumberID).parent();
var numberDuplicateMessage = document.getElementById('NumberDuplicateMessage');
var costCenterBudgetID = '<% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterForm:Budget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';
var costCenterBudgetDiv = $('<%=context.getFormattedValue("#",null)%>' + costCenterBudgetID).parent().parent();
var budgetInvalidMessage = document.getElementById('BudgetInvalidMessage');
if (data.CostCenterIDExists) {
costCenterNumberDiv.addClass('has-error');
if (!numberDuplicateMessage) {
costCenterNumberDiv.append($('<small id="NumberDuplicateMessage" style="display: block;" class="help-block" data-bv-for="' + costCenterNumberID + '"><% {out.write(localizeISText("account.costcenter.create.no.duplicate.validation","",null,null,null,null,null,null,null,null,null,null,null));} %></small>'));
}
} else {
costCenterNumberDiv.removeClass('has-error');
if (numberDuplicateMessage) {
$('<%=context.getFormattedValue("#",null)%>' + 'NumberDuplicateMessage').remove();
}
}
if (data.InvalidBudgetValue) {
costCenterBudgetDiv.addClass('has-error');
if (!budgetInvalidMessage) {
costCenterBudgetDiv.append($('<small id="BudgetInvalidMessage" style="display: block;" class="help-block" data-bv-for="' + costCenterBudgetID + '"><% {out.write(localizeISText("account.costcenter.create.budget.invalid.validation","",null,null,null,null,null,null,null,null,null,null,null));} %></small>'));
}
} else {
costCenterBudgetDiv.removeClass('has-error');
if (budgetInvalidMessage) {
$('<%=context.getFormattedValue("#",null)%>' + 'BudgetInvalidMessage').remove();
}
}
$('<%=context.getFormattedValue("#",null)%>' + 'create-costcenter-submit').attr("disabled", false);
if (!(data.CostCenterIDExists || data.InvalidBudgetValue)) {
// all valid - go to create new cost center
form.submit();
}
}
});
});
</script><% printFooter(out); %>