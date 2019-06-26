<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "3");} %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>pageselection.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebControls")); %>
var selectedValue;
// connect to parent window iframe bridge
bridge.init('addEditingReason', function (bridge) {
$('<%=context.getFormattedValue("#",null)%>EditingReasonFormDialog-ok').on('click', function onOk(event) {
event.preventDefault();
var reasonText = $('<%=context.getFormattedValue("#",null)%>EditingReasonForm_EditingReason').val();
var urlAddress = "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-BackToEditing",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductID"),null)))),null)%>";
bridge.applySelectionValues(reasonText, urlAddress);
});
});
// reload page after closing
$dialog.on('dialogclose', function onClose() {
var $iframe = $dialog.children('iframe');
$iframe.attr('src', $iframe.attr('src'));
});
<% out.print("</waplacement>"); %><% URLPipelineAction action82 = new URLPipelineAction(null);String site82 = null;String serverGroup82 = null;String actionValue82 = null;if (site82 == null){  site82 = action82.getDomain();  if (site82 == null)  {      site82 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup82 == null){  serverGroup82 = action82.getServerGroup();  if (serverGroup82 == null)  {      serverGroup82 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" name=\"");out.print("setReasonForm");out.print("\"");out.print(" id=\"");out.print("setReasonForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue82, site82, serverGroup82,true)); %><div class="dialog-content">
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<!-- save for further usage -->
<table class="error_box w e s" cellspacing="0" cellpadding="4" width="100%" border="0" id="error" style="display:none;">
<tr>
<td width="100%" class="error top"> 
<% {out.write(localizeISText("sld_ch_consumer_plugin.EditingMandatoryPleaseProvide.text",null,null,null,null,null,null,null,null,null,null,null,null));} %><br> 
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tbody>
<tr>
<td nowrap="nowrap" class="label_textarea"><label for="EditingReasonForm_EditingReason" class="label label_textarea"><% {out.write(localizeISText("sld_ch_consumer_plugin.ReasonProductApproval.inputfield",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="table_detail"><textarea class="inputfield_en" id="EditingReasonForm_EditingReason" name="EditingReasonForm_EditingReason" cols="63" rows="10"></textarea></td>
</tr>
</tbody>
</table>
</div>
<div class="dialog-buttons">
<input type="button" class="button" id="EditingReasonFormDialog-ok" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" name="apply" />
<input type="button" class="button" id="EditingReasonFormDialog-cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" data-action="dialog-close" name="cancel" />
</div><% out.print("</form>"); %><% printFooter(out); %>