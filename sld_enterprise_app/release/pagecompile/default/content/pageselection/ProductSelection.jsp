<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "2");} %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>pageselection.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebControls")); %>
var selectedValue;
// connect to parent window iframe bridge
bridge.init('pageselection', function (bridge) {
$('<%=context.getFormattedValue("#",null)%>productSelectionDialog-ok').on('click', function onOk(event) {
event.preventDefault();
bridge.applySelectionValue(selectedValue, 'ViewPageLinkCreation-Product');
});
});
// reload page after closing
$dialog.on('dialogclose', function onClose() {
var $iframe = $dialog.children('iframe');
$iframe.attr('src', $iframe.attr('src'));
});
// store selected value
$('<%=context.getFormattedValue("#",null)%>productSelection').on('afterRowSelectionChange', function onSelect(event, data) {
if (data.checkbox.is(':checked')) {
var value= data.checkbox.val();
var targetButton = $('<%=context.getFormattedValue("#",null)%>productSelectionDialog-ok');
if (value && value !== '') {
selectedValue = value;
targetButton.prop('disabled', false);
}
else {
targetButton.prop('disabled', true);
}
}
});
<% out.print("</waplacement>"); %><div class="dialog-content"><% URLPipelineAction action368 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelection-Dispatch",null)))),null));String site368 = null;String serverGroup368 = null;String actionValue368 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelection-Dispatch",null)))),null);if (site368 == null){  site368 = action368.getDomain();  if (site368 == null)  {      site368 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup368 == null){  serverGroup368 = action368.getServerGroup();  if (serverGroup368 == null)  {      serverGroup368 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelection-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductSearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue368, site368, serverGroup368,true)); %><table id="productSelectionSearch" border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<input type="text" maxlength="255" size="35" class="inputfield_en"
name="WFSimpleSearch_NameOrID" 
placeholder="<% {out.write(localizeISText("product.productlist.search.searchLabel.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button" width="100%">
<input type="submit" class="button"
name="findSimple" 
value="<% {out.write(localizeISText("product.productlist.search.searchButton.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><!-- parameter for the datatemplate --><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","LookupHelper"),
new TagParameter("value4",getObject("CurrentRequest:Locale:LocaleID")),
new TagParameter("value3",getObject("LookupHelper")),
new TagParameter("key4","Locale"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 66); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("scripttemplate","grid/ProductScript.isml"),
new TagParameter("columnstemplate","grid/ProductColumns.isml"),
new TagParameter("configuration","productselectionforlink"),
new TagParameter("sticky","false"),
new TagParameter("datatemplate","grid/ProductData.isml"),
new TagParameter("pageable",getObject("Products")),
new TagParameter("id","productSelection"),
new TagParameter("pageablename","Products"),
new TagParameter("params",getObject("params"))}, 74); %><% } else { %><table border="0" cellspacing="0" cellpadding="0" class="" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><tr>
<td class="table_detail"><% {out.write(localizeISText("product.productlist.search.emptySearchResult.text",null,null,encodeString(context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_detail"><% {out.write(localizeISText("product.productlist.search.emptyRepository.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% } %><% out.print("</form>"); %></div>
<div class="dialog-buttons">
<input type="button" class="button" id="productSelectionDialog-ok" value="<% {out.write(localizeISText("content.pageselection.lightbox.ok.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="apply" disabled="true" />
<input type="button" class="button" value="<% {out.write(localizeISText("content.pageselection.lightbox.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-action="dialog-close" name="cancel" />
</div><% printFooter(out); %>