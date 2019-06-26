<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "2");} %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>pageselection.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebControls")); %>
var selectedValue;
// connect to parent window iframe bridge
bridge.init('pageselection', function (bridge) {
$('<%=context.getFormattedValue("#",null)%>categorySelectionDialog-ok').on('click', function onOk(event) {
event.preventDefault();
bridge.applySelectionValue(selectedValue, 'ViewPageLinkCreation-Category');
});
});
// reload page after closing
$dialog.on('dialogclose', function onClose() {
var $iframe = $dialog.children('iframe');
$iframe.attr('src', $iframe.attr('src'));
});
// store selected value
$('<%=context.getFormattedValue("#",null)%>categorySelectionTree').on('afterToggleCheck.tree', function onSelect(event, data) {
var value= data.args[0][0].id;
var targetButton = $('<%=context.getFormattedValue("#",null)%>categorySelectionDialog-ok');
if (value && value !== '') {
selectedValue = value;
targetButton.prop('disabled', false);
} else {
targetButton.prop('disabled', true);
}
});
<% out.print("</waplacement>"); %><div id="categorySelection" class="dialog-content"><% processOpenTag(response, pageContext, "tree", new TagParameter[] {
new TagParameter("configtemplate","content/pageselection/CategorySelectionTreeConfig.isml"),
new TagParameter("datatemplate","content/pageselection/CategorySelectionTreeData.isml"),
new TagParameter("id","categorySelectionTree"),
new TagParameter("params",((new ParameterMap().addParameter(new ParameterEntry("Catalogs",getObject("SortedCatalogs"))))))}, 38); %></div>
<div class="dialog-buttons">
<input type="button" class="button" id="categorySelectionDialog-ok" value="<% {out.write(localizeISText("content.pageselection.lightbox.ok.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="apply" disabled="true" />
<input type="button" class="button" value="<% {out.write(localizeISText("content.pageselection.lightbox.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-action="dialog-close" name="cancel" />
</div><% printFooter(out); %>