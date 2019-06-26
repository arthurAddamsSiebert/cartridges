<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "3");} %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>pageselection.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel:TypeCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("ViewProductCategories_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-AssignDynamicSelectedProducts",null)); getPipelineDictionary().put("pipelineUrl", temp_obj);} %><% } else { %><% {Object temp_obj = ("ViewProductCategories-AssignDynamicSelectedProducts"); getPipelineDictionary().put("pipelineUrl", temp_obj);} %><% } %><% out.print(context.prepareWAPlacement("JSWebControls")); %>
var selectedValue;
// connect to parent window iframe bridge
bridge.init('assignCategories', function (bridge) {
$('<%=context.getFormattedValue("#",null)%>CategoriesMgmtDialog-ok').on('click', function onOk(event) {
event.preventDefault();
var tree = $('<%=context.getFormattedValue("#",null)%>tree').dynatree('getTree'),
treeData = tree.serializeArray(),
checkedCategories = []; 
for (var i = 0, l = treeData.length; i < l; i++) {
var nodeData = tree.getNodeByKey(treeData[i].value).data;
// Don't submit a selected node if it is 'root' node (should one exist at all) or if it is disabled.
if (treeData[i].value !== "root" && !nodeData.unselectable) {
if(treeData[i].value.length > 0) {
checkedCategories.push(treeData[i].value);
}
} 
}
var urlAddress = '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipelineUrl"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductID"),null)))),null)%>';
bridge.applySelectionValues(checkedCategories, urlAddress);
});
});
// reload page after closing
$dialog.on('dialogclose', function onClose() {
var $iframe = $dialog.children('iframe');
$iframe.attr('src', $iframe.attr('src'));
});
<% out.print("</waplacement>"); %><div class="dialog-content"><% URLPipelineAction action105 = new URLPipelineAction("");String site105 = null;String serverGroup105 = null;String actionValue105 = "";if (site105 == null){  site105 = action105.getDomain();  if (site105 == null)  {      site105 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup105 == null){  serverGroup105 = action105.getServerGroup();  if (serverGroup105 == null)  {      serverGroup105 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" name=\"");out.print("CatalogSelectionForm");out.print("\"");out.print(" action=\"");out.print("");out.print("\"");out.print(" class=\"");out.print("dynamicTree");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue105, site105, serverGroup105,true)); %><!-- save for further usage -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tbody>
<tr>
<td width="100%" valign="top">
<table class="w e s n" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("treeid","tree"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode","multi"),
new TagParameter("selectedcategories",getObject("AlreadySelectedCategoryUUIDs")),
new TagParameter("categories",getObject("StandardCatalogCategories")),
new TagParameter("disabledcategories",getObject("AlreadySelectedCategoryUUIDs"))}, 59); %></td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% out.print("</form>"); %></div>
<div class="dialog-buttons">
<input type="button" class="button" id="CategoriesMgmtDialog-ok" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" name="apply" />
<input type="button" class="button" id="CategoriesMgmtDialog-cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" data-action="dialog-close" name="cancel" />
</div><% printFooter(out); %>