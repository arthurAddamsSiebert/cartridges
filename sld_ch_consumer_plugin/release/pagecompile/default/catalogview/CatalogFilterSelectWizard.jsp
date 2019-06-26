<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "4");} %><% {Object temp_obj = (localizeText(context.getFormattedValue("CatalogFilterSelectWizard.CatalogViews.value",null))); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroupCatalogFilters_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerSegmentID",null),context.getFormattedValue(getObject("CustomerSegmentBO:ID"),null)))),
new TagParameter("id","Assign Catalog View"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.SelectCatalogViews.text",null)))}, 13); %><% URLPipelineAction action153 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogFilterSelectWizard-Dispatch",null)))),null));String site153 = null;String serverGroup153 = null;String actionValue153 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogFilterSelectWizard-Dispatch",null)))),null);if (site153 == null){  site153 = action153.getDomain();  if (site153 == null)  {      site153 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup153 == null){  serverGroup153 = action153.getServerGroup();  if (serverGroup153 == null)  {      serverGroup153 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogFilterSelectWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogViewsList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue153, site153, serverGroup153,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "16");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectCatalogViews.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("CatalogFilterSelectWizard.TheListShowsAllCatalogViewsInThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assign")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogFilterSelectWizard.YouHaveNotSelectedAnyItems.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %> 
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CatalogFilters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("value8","true"),
new TagParameter("value7",getObject("AssignedCatalogFilters")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerSegmentBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerSegmentBO"),
new TagParameter("key9","CurrentRequest"),
new TagParameter("key7","DisabledCatalogFilters"),
new TagParameter("key8","UsePlainText"),
new TagParameter("mapname","params"),
new TagParameter("value9",getObject("CurrentRequest"))}, 46); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","catalogview/CatalogViewsColumns_52.isml"),
new TagParameter("configuration","catalogfilterselection"),
new TagParameter("datatemplate","catalogview/CatalogViewsData_52.isml"),
new TagParameter("pageable",getObject("CatalogFilters")),
new TagParameter("id","CatalogFiltersList"),
new TagParameter("pageablename","CalalogFilters"),
new TagParameter("params",getObject("params"))}, 58); %><tr>
<td align="right" class="e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OK.button",null)),null)%>" class="button okbutton" /></td>
<td class="button"><input type="submit" name="cancelAssign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr> 
<% } else { %><tr>
<td class="table_detail e s"> <% {out.write(localizeISText("CatalogFilterSelectWizard.ThereAreCurrentlyNoCatalogViewsDefinedInThisChanne.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" align="right" class="e s">
<table cellspacing="4" cellpadding="0" border="0">
<tbody><tr>
<td class="button">
<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" name="cancelAssign">
</td>
</tr></tbody>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><script> 
$(document).ready(function(){ 
$('form').submit(function(){
$(this).find('.okbutton').prop('disabled', true);
$('<input>').attr({
type: 'hidden',
name: 'assign'
}).appendTo('form');
});
});
</script><% printFooter(out); %>