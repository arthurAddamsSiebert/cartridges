<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Paging",null))))),
new TagParameter("id","productValidationAssortments"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductValidationAssortmentList.ProductAssortments.text",null)))}, 2); %><!-- Main Content -->
<script type="text/javascript">
$(document).ready(function(){
// on edit an assortment configuration
$('.assortment_configuration_link').click(function(ev){
// prevent default link action
ev.preventDefault();
var validationAssortmentLink = $(this);
var productValidationAssortmentID = validationAssortmentLink.attr('product_validation_assortment_id');
// add product validation assortment id as a param
var params = 'ProductValidationAssortmentID=' + productValidationAssortmentID;
$.ajax({
cache:false,
dataType: 'html',
success: function(data, textStatus, jqXHR) {
if (data) {
// get validation assortment base configuration
var productValidationAssortmentName = validationAssortmentLink.attr('product_validation_assortment_name');
var productValidationAssortmentDescriptorID = validationAssortmentLink.attr('product_validation_assortment_descriptor_id');
// replace .-s with _-s
var productValidationAssortmentType = replaceAll('\\.', '_', productValidationAssortmentDescriptorID);
var assortmentDiv = '<%=context.getFormattedValue("#",null)%>AssortmentDiv_' + productValidationAssortmentType;
// TODO get reference to the assortment div
// update assortment name
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentConfigurationForm_AssortmentName').val(productValidationAssortmentName);
// update assortment type and make select disabled
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentConfigurationForm_AssortmentType').val(productValidationAssortmentType).prop('disabled', true);
$(assortmentDiv).show();
// set hidden fields for edit mode
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentID').val(productValidationAssortmentID);
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentDescriptorID').val(productValidationAssortmentType);
// TODO trigger onJSONReady event
if(data.length > 3)
{
$(assortmentDiv).html(data);
}
// open the dialog
$('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentDialog').dialog('open');
} else {
window.location.href = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("validationAssortmentNotAvailable",null),context.getFormattedValue("true",null)))),null)%>';
}
},
url: '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentConfiguration-GetValidationAssortmentConfiguration",null)))),null)%>',
data: params
});
});
});
</script>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="table_title2 w e n s"><% {out.write(localizeISText("product.validation.assortment.productassortments","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action2 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Dispatch",null)))),null));String site2 = null;String serverGroup2 = null;String actionValue2 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Dispatch",null)))),null);if (site2 == null){  site2 = action2.getDomain();  if (site2 == null)  {      site2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup2 == null){  serverGroup2 = action2.getServerGroup();  if (serverGroup2 == null)  {      serverGroup2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productValidationAssortmentListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue2, site2, serverGroup2,true)); %><input type="hidden" name="SortBy" value="<%=context.getFormattedValue(context.getFormattedValue(getObject("SortBy"),null),null)%>">
<input type="hidden" name="SortDirection" value="<%=context.getFormattedValue(context.getFormattedValue(getObject("SortDirection"),null),null)%>">
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("validationAssortmentNotAvailable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("product.validationrules.assortmentnotavailable","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr> 
<% } %><!-- delete confirmation if one is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("delete")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelProductValidationAssortmentList.User.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","confirmDelete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelProductValidationAssortmentList.DoYouReallyWantToDeleteTheSelectedProductCompletenessAssortments.message",null)))}, 88); %><% } %><!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("delete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("product.validation.assortment.notselectedproductvalidationassortmentsfordeletion","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% {out.write(localizeISText("product.validation.assortment.usethecheckboxestoselecttheproductvalidationassortmentsfordeletion","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("product.validation.assortment.allproductvalidationassortmentsinthischannel","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ProductValidationAssortmentConfigurationBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("product.validation.assortment.noproductvalidationassortmentsdefinedinthischannel","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><tr>
<td align="left" class="w e s">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="button" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductValidationAssortmentList.New.button",null)),null)%>" class="button" onclick="javascript: $('<%=context.getFormattedValue("#",null)%>ProductValidationAssortmentDialog').dialog('open');"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductValidationAssortmentConfigurationBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="button"><input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductValidationAssortmentList.Delete.button",null)),null)%>" class="button"/></td> 
<% } %></tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductValidationAssortmentConfigurationBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ProductValidationAssortmentPermissionForEdit"),
new TagParameter("key2","Application"),
new TagParameter("value2",getObject("CurrentApplication")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")),
new TagParameter("key3","Clipboard"),
new TagParameter("value4",getObject("Locale")),
new TagParameter("value3",getObject("Clipboard")),
new TagParameter("key4","Locale"),
new TagParameter("mapname","params")}, 138); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","product/ChannelProductValidationAssortmentListColumns.isml"),
new TagParameter("configuration","productvalidationassortmentlist"),
new TagParameter("datatemplate","product/ChannelProductValidationAssortmentListData.isml"),
new TagParameter("pageable",getObject("ProductValidationAssortmentConfigurationBOs")),
new TagParameter("id","ProductValidationAssortmentConfiguration"),
new TagParameter("pageablename","ProductValidationAssortmentConfigurationBOs"),
new TagParameter("params",getObject("params"))}, 145); %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "158");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ChannelProductValidationAssortment.isml", null, "160");} %><% printFooter(out); %>