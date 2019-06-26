<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules", null, "4");} %><!-- Product Approval Widget -->
<div class="content">
<table width="100%" cellspacing="0" cellspacing="0" cellpadding="0"> 
<tr>
<td class="table_title_description"><% {out.write(localizeISText("widgettype.productoverview.performedIn",null,null,encodeString(context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalEnabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% URLPipelineAction action677 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductApprovalWidget-Dispatch",null)))),null));String site677 = null;String serverGroup677 = null;String actionValue677 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductApprovalWidget-Dispatch",null)))),null);if (site677 == null){  site677 = action677.getDomain();  if (site677 == null)  {      site677 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup677 == null){  serverGroup677 = action677.getServerGroup();  if (serverGroup677 == null)  {      serverGroup677 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductApprovalWidget-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue677, site677, serverGroup677,true)); %><table width="100%" cellspacing="0" cellspacing="0" cellpadding="4" class="infobox">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td class="label_select" nowrap="nowrap">
<label class="label label_select" for="ProductApprovalStatusName"><% {out.write(localizeISText("widgettype.productapproval.status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail">
<select id="ProductApprovalStatusName" name="ProductApprovalStatusName" class="select inputfield_en" style="width: 260px;"> 
<option value="All" <% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalStatusName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductApprovalStatusName"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("widgettype.productapproval.status.all",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Review" <% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalStatusName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductApprovalStatusName"),null).equals(context.getFormattedValue("Review",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("widgettype.productapproval.status.review",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Edit" <% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalStatusName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductApprovalStatusName"),null).equals(context.getFormattedValue("Edit",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("widgettype.productapproval.status.editing",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Approve" <% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalStatusName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductApprovalStatusName"),null).equals(context.getFormattedValue("Approve",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("widgettype.productapproval.status.approved",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<!--option value="Rejected">Rejected</option-->
</select> 
</td>
<tr>
</table>
</td>
</tr>
</table>
<div id="ProductApprovalStatus"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"widget/productapproval/ProductApprovalEditingData.isml", null, "40");} %></div>
<script language="javascript" type="text/javascript">
(function() {
var productApprovalStatus = $('#ProductApprovalStatus');
$('#ProductApprovalStatusName').on('change', function(ev) {
var value = $(this).val(); 
if (value === 'All') {
productApprovalStatus.load("<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductApprovalWidget-AllStatus",null)))),null)%>"); 
}
if (value === 'Edit') {
productApprovalStatus.load("<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductApprovalWidget-Editing",null)))),null)%>");
}
if (value === 'Review') {
productApprovalStatus.load("<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductApprovalWidget-Review",null)))),null)%>");
}
if (value === 'Approve') {
productApprovalStatus.load("<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductApprovalWidget-Approved",null)))),null)%>");
} 
});
})(); 
</script>
</div> 
<% out.print("</form>"); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductApprovalEnabled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail" align="left" colspan="5"><% {out.write(localizeISText("widgettype.productapproval.label.NoPreferenceEnabled",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% }} %><% printFooter(out); %>