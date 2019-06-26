<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.Products.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-PagingProducts",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductSetID",null),context.getFormattedValue(getObject("ProductSet:UUID"),null))))),
new TagParameter("id",getObject("ProductSet:UUID")),
new TagParameter("text",getObject("ProductSet:Name"))}, 3); %><!-- Tabs --><% {Object temp_obj = ("Products"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"sharing/ProductSetTabs", null, "6");} %><!-- EO Tabs --><% URLPipelineAction action484 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));String site484 = null;String serverGroup484 = null;String actionValue484 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null);if (site484 == null){  site484 = action484.getDomain();  if (site484 == null)  {      site484 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup484 == null){  serverGroup484 = action484.getServerGroup();  if (serverGroup484 == null)  {      serverGroup484 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue484, site484, serverGroup484,true)); %><input type="hidden" name="ProductSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductSet:isRuleBased"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ProductSetProducts.0ProductSelectionRules.table_title",null,null,encodeString(context.getFormattedValue(getObject("ProductSet:Name"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmApplyAssignmentType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductSelectionType"),null).equals(context.getFormattedValue("selection",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametername1","ProductSelectionType"),
new TagParameter("cancelbtnname","cancelApplyAssignmentType"),
new TagParameter("parametervalue1",getObject("ProductSelectionType")),
new TagParameter("okbtnname","applyAssignmentType"),
new TagParameter("type","mda"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductSetProducts.AreYouSureThatYouWantToSwitchTheAssignmentTypeAndR.message",null)))}, 19); %><% } %><tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductSetProducts.DefineTheSelectionRulesToDetermineTheProductsInten.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductSetProducts.ToAssignProductsOfASpecificManufacturerSelectTheIn.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ProductSetProducts.0ProductSelection.table_title",null,null,encodeString(context.getFormattedValue(getObject("ProductSet:Name"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmApplyAssignmentType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductSelectionType"),null).equals(context.getFormattedValue("rulebased",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametername1","ProductSelectionType"),
new TagParameter("cancelbtnname","cancelApplyAssignmentType"),
new TagParameter("parametervalue1",getObject("ProductSelectionType")),
new TagParameter("okbtnname","applyAssignmentType"),
new TagParameter("type","mda"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductSetProducts.AreYouSureThatYouWantToSwitchTheAssignmentTypeAndR.message1",null)))}, 40); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Product.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mda")}, 44); %><% } else { %><tr>
<td class="w e s" colspan="1">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSetProducts.YouHaveNotSelectedAnythingSelectAProductAndClickUn.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductSetProducts.TheListShowsAllProductsCurrentlyAssignedToTheShari.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("ProductSetProducts.ToAddProductsClickAssignByBrowseOrAssignBySearchUs.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><% out.print("</form>"); %><% URLPipelineAction action485 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));String site485 = null;String serverGroup485 = null;String actionValue485 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null);if (site485 == null){  site485 = action485.getDomain();  if (site485 == null)  {      site485 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup485 == null){  serverGroup485 = action485.getServerGroup();  if (serverGroup485 == null)  {      serverGroup485 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignmentTypeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue485, site485, serverGroup485,true)); %><input type="hidden" name="ProductSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table class="w e s" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="input_radio" width="1"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductSelectionType")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("cancelApplyAssignmentType")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><input name="ProductSelectionType" id="ProductSelectionType_rulebased" value="rulebased" type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductSelectionType"),null).equals(context.getFormattedValue("rulebased",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>disabled="disabled"<% } %> 
/><% } else { %><input name="ProductSelectionType" id="ProductSelectionType_rulebased" value="rulebased" type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductSet:isRuleBased"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/><% } %></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="ProductSelectionType_rulebased"><% {out.write(localizeISText("ProductSetProducts.ShareProductsBasedOnProductSelectionRules.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_radio" width="1"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductSelectionType")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("cancelApplyAssignmentType")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><input name="ProductSelectionType" id="ProductSelectionType_selection" value="selection" type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductSelectionType"),null).equals(context.getFormattedValue("selection",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/><% } else { %><input name="ProductSelectionType" id="ProductSelectionType_selection" value="selection" type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ProductSet:isRuleBased")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/><% } %></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="ProductSelectionType_selection"><% {out.write(localizeISText("ProductSetProducts.ShareOnlySelectedProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="confirmApplyAssignmentType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.Apply.button",null)),null)%>"/></td>
<td class="button"><input class="button" type="reset" name="resetAssignmentType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductSet:isRuleBased"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
<!--
function transferSelectionInSelect(sourceSelect, targetSelect) 
{
var sourceOptions = sourceSelect.options;
var sourceOptionsCount = sourceSelect.length; 
var sourceRemainedOptions = [];
for (var i = 0; i<sourceOptionsCount; i++) 
{
var option = sourceSelect.options[i];
var isOptionForTransfer = option.selected;
if (isOptionForTransfer) 
{
transferSelectOption(option, targetSelect); 
}
else
{
var remainedOption = new Option(option.text, option.value);
sourceRemainedOptions.push(remainedOption);
}
}
emptySelect(sourceSelect);
fillSelect(sourceSelect, sourceRemainedOptions);
}
function transferSelectOption(option, targetSelect)
{
var transferedOption = new Option(option.text, option.value);
targetSelect.options.add(transferedOption);
}
function emptySelect(select)
{
select.options.length = 0;
}
function fillSelect(select, options)
{ 
for (var i = 0; i<options.length; i++)
{
select.options[i] = options[i];
}
} 
function removeSelectboxData(Source) 
{
for (var i = 0; i < Source.length; i++) 
{
var SourceOption = Source.options[i]
if (SourceOption.selected) 
{
Source.options[i] = null
}
}
if(Source.length == 0)
{ 
document.getElementById( 'removeCategories' ).style.display = 'none';
document.getElementById('selectCategory').style.display = 'block';
}
} 
function collectResult(Target)
{
for (var i = 0; i < Target.length; i++) 
{
var input = document.createElement("input");
input.setAttribute("type", "hidden");
input.setAttribute("name", Target.name);
input.setAttribute("value", Target.options[i].value);
Target.form.appendChild(input);
}
}
--> 
</script><% URLPipelineAction action486 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));String site486 = null;String serverGroup486 = null;String actionValue486 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null);if (site486 == null){  site486 = action486.getDomain();  if (site486 == null)  {      site486 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup486 == null){  serverGroup486 = action486.getServerGroup();  if (serverGroup486 == null)  {      serverGroup486 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("rulesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue486, site486, serverGroup486,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %><input type="hidden" name="updateRules" value="Apply" /><% } %> 
<input type="hidden" name="ProductSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ProductSetProducts.ProductSelectionRules.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table class="w e s" border="0" cellpadding="0" cellspacing="4" width="100%">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="AvailableManufacturers"><% {out.write(localizeISText("ProductSetProducts.Manufacturers.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="fielditem" class="label_select" width="30%"><label class="label label_select label_light" for="AvailableManufacturers"><% {out.write(localizeISText("ProductSetProducts.AvailableManufacturersManufacturerAliases.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>&nbsp;</td>
<td class="fielditem" class="label_select label_light" width="30%"><label class="label label_select label_light" for="AssignedManufacturers"><% {out.write(localizeISText("ProductSetProducts.AssignedManufacturersManufacturerAliases.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td width="40%">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="table_detail" >
<select name="AvailableManufacturers" id="AvailableManufacturers" class="select inputfield_en w100" multiple="multiple" size="7"><% while (loop("ManufacturerNames","mname",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("AssignedManufacturers:Contains(mname)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("mname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/><% {String value = null;try{value=context.getFormattedValue(getObject("mname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {230}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
<td nowrap="nowrap">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td rowspan="3">&nbsp;&nbsp;</td>
<td class="button">
<input type="button" name="assign" value="&gt;&gt;" class="button" onclick="transferSelectionInSelect(this.form.AvailableManufacturers, this.form.AssignedManufacturers)"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",241,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td rowspan="3">&nbsp;&nbsp;</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr><td class="button">
<input type="button" name="unassign" value="&lt;&lt;" class="button" onclick="transferSelectionInSelect(this.form.AssignedManufacturers, this.form.AvailableManufacturers)"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",249,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td></tr>
</table>
</td>
<td class="table_detail" >
<select name="AssignedManufacturers" id="AssignedManufacturers" class="select inputfield_en w100" multiple="multiple" size="7"><% while (loop("AssignedManufacturers","mname",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("mname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",258,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/><% {String value = null;try{value=context.getFormattedValue(getObject("mname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></select>
</td>
<td>&nbsp;</td>
</tr>
<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="AssignedCategories"><% {out.write(localizeISText("ProductSetProducts.Categories.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="2" nowrap="nowrap">
<select name="AssignedCategories" id="AssignedCategories" class="select inputfield_en w100" multiple="multiple" size="7" ><% while (loop("AssignedCategories","cat",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("cat:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {271}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",272,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/><% {String value = null;try{value=context.getFormattedValue(getObject("cat:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>&nbsp;
</td>
<td>
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" id="selectCategory" name="selectCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.Select.button",null)),null)%>" class="button" onclick="collectResult(this.form.AssignedManufacturers); collectResult(this.form.AssignedCategories)"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",282,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
</tr>
</table>
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",290,e);}if (_boolean_result) { %><input type="button" id="removeCategories" name="removeCategories" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.Remove.button",null)),null)%>" class="button" onClick="removeSelectboxData(this.form.AssignedCategories)"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",292,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/><% } %></td>
</tr>
</table>
</td>
<td colspan="2">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="4" class="fielditem">
<table border="0" cellspacing="2" cellpadding="0">
<td class="input_checkbox" align="right">
<input type="checkbox" name="IncludeSubCategories" id="IncludeSubCategories" value="true" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductSet:IncludeSubCategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",307,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",308,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="label_checkbox_text" ><label class="label label_checkbox_text label_light" for="IncludeSubCategories"><% {out.write(localizeISText("ProductSetProducts.IncludingSubCategories.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td> 
</table> 
</td>
</tr> 
</table>
<table class="w e s" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="right" colspan="5">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="updateRules" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.Apply.button",null)),null)%>" class="button" onclick="collectResult(this.form.AssignedManufacturers); collectResult(this.form.AssignedCategories)"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ProductSetProducts.Products.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductSetLocker"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",336,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductSetProducts.Updating.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...
</td>
</tr>
</table><% } %><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewProductSet-DispatchProducts"),
new TagParameter("parametervalue2",getObject("ProductSet:UUID")),
new TagParameter("parametername2","ProductSetID"),
new TagParameter("searchtype",getObject("SearchType"))}, 346); %><% URLPipelineAction action487 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));String site487 = null;String serverGroup487 = null;String actionValue487 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null);if (site487 == null){  site487 = action487.getDomain();  if (site487 == null)  {      site487 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup487 == null){  serverGroup487 = action487.getServerGroup();  if (serverGroup487 == null)  {      serverGroup487 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-DispatchProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("productsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue487, site487, serverGroup487,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",348,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() && ((Boolean) ((((Boolean) getObject("ProductSet:isRuleBased")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",351,e);}if (_boolean_result) { %><td class="w s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSetProducts.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductSetProducts.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td><% } %><td class="table_header w e s"><% {out.write(localizeISText("ProductSetProducts.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductSetProducts.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductSetProducts.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("ProductSetProducts.ListPrice0.table_header",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ProductSetProducts.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr><% while (loop("Products","Product",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() && ((Boolean) ((((Boolean) getObject("ProductSet:isRuleBased")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",377,e);}if (_boolean_result) { %><td class="w s top center">
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {379}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",379,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {379}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% } %><td class="table_detail top w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Sharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {382}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Sharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {383}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {384}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s right" nowrap="nowrap"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("Product"))}, 385); %></td>
<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "386");} %>&nbsp;</td>
</tr><% } %></table><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"><% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ProductSetProducts.NoProductsFound",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ProductSetProducts.ThereAreNoProductsAssignedToTheSharingGroup",null)))}, 392); %> 
</table><% } %><input type="hidden" name="ProductSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {395}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() && ((Boolean) ((((Boolean) getObject("ProductSet:isRuleBased")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",396,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="assignBySearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.AssignBySearch.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="assignByBrowse" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.AssignByBrowse.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",404,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetProducts.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",411,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pageable","Products"),
new TagParameter("variablepagesize","true")}, 414); %><!-- End Page Cursor --><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "418");} %><!-- EO Working Area --><% printFooter(out); %>