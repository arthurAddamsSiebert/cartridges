<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryWizard-DynamicTree",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SearchIndexFilterAssignmentByTree.AssignCategories.text",null)))}, 4); %><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && !((Boolean) (getObject("SearchIndex:Shared"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SearchIndexEditable", temp_obj);} %><!-- Working Area --><% URLPipelineAction action174 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryAssignment-Dispatch",null)))),null));String site174 = null;String serverGroup174 = null;String actionValue174 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryAssignment-Dispatch",null)))),null);if (site174 == null){  site174 = action174.getDomain();  if (site174 == null)  {      site174 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup174 == null){  serverGroup174 = action174.getServerGroup();  if (serverGroup174 == null)  {      serverGroup174 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryAssignment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue174, site174, serverGroup174,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="submittedForm" value="CatalogSelectionForm"/>
<input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title w e n" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterAssignmentByTree.AssignCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="aldi table_title_description" colspan="3"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchIndexFilterAssignmentByTree.ThisTreeShowsAllAvailableCategories.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SearchIndexFilterAssignmentByTree.ViewTheFiltersAssignedCategories.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Catalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMissingSelection")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon w s">
<img height="15" border="0" width="16" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif">
</td>
<td class="error w e s" width="100%"><% {out.write(localizeISText("SearchIndexFilterAssignmentByTree.YouHaveNotSelectedAnyCategoriesToAssign.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><tr>
<td class="select_links w e" width="1" nowrap="nowrap" colspan="2">
<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" id="btnSelectAll"><% {out.write(localizeISText("SearchIndexFilterAssignmentByTree.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" id="btnDeselectAll"><% {out.write(localizeISText("SearchIndexFilterAssignmentByTree.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% } %><tr>
<td class="w e s" colspan="3"><% {Object temp_obj = (context.getFormattedValue("catalogTree_",null) + context.getFormattedValue(getObject("CurrentChannel:Id"),null)); getPipelineDictionary().put("TreeId", temp_obj);} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","SID"),
new TagParameter("value6",getObject("selectedCategoriesIterator")),
new TagParameter("key2","CurrentChannelPermissionMap"),
new TagParameter("value5",getObject("AttributeName")),
new TagParameter("value8",getObject("CurrentChannel:Id")),
new TagParameter("key0","CurrentUser"),
new TagParameter("value7",getObject("TreeId")),
new TagParameter("value2",getObject("CurrentChannelPermissionMap")),
new TagParameter("key5","SearchIndexAttributeName"),
new TagParameter("value1",getObject("CurrentSession:Id")),
new TagParameter("key6","SelectedCategoriesIterator"),
new TagParameter("key3","RestStartUri"),
new TagParameter("value4",getObject("SearchIndexID")),
new TagParameter("value3",getObject("SearchFilterCategoryPath")),
new TagParameter("key4","SearchIndexId"),
new TagParameter("key9","Locale"),
new TagParameter("key7","TreeId"),
new TagParameter("key8","ChannelID"),
new TagParameter("mapname","params"),
new TagParameter("value9",getObject("CurrentRequest:Locale:LocaleID")),
new TagParameter("value0",getObject("CurrentUser"))}, 57); %><% processOpenTag(response, pageContext, "tree", new TagParameter[] {
new TagParameter("scripttemplate","searchindex/SearchIndexFilterAssignmentByTreeScript.isml"),
new TagParameter("configtemplate","searchindex/SearchIndexFilterAssignmentByTreeConfig.isml"),
new TagParameter("datatemplate","searchindex/SearchIndexFilterAssignmentByTreeData.isml"),
new TagParameter("id",getObject("TreeId")),
new TagParameter("params",getObject("params"))}, 69); %></td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("SearchIndexFilterAssignmentByTree.ThereAreCurrentlyNoCategoriesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><!-- Next/Cancel button -->
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><td align="right" colspan="3" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Catalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><td class="button" width="1">
<input type="submit" name="assignCategories" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterAssignmentByTree.OK.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancelSelectCategories" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterAssignmentByTree.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% } %></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><script type="text/javascript">
$("<%=context.getFormattedValue("#",null)%>btnDeselectAll").click(function deselectAll(event) {
event.preventDefault();
var el = $('<%=context.getFormattedValue(context.getFormattedValue("#catalogTree_",null) + context.getFormattedValue(getObject("CurrentChannel:Id"),null),null)%>'),
nodes = el.tree('getChildren', el);
nodes.each(function eachNode() {
var node = $(this);
el.tree('checkNode', node);
el.tree('toggleCheck', node);
});
});
$("<%=context.getFormattedValue("#",null)%>btnSelectAll").click(function selectAll(event) {
event.preventDefault();
var el = $('<%=context.getFormattedValue(context.getFormattedValue("#catalogTree_",null) + context.getFormattedValue(getObject("CurrentChannel:Id"),null),null)%>'),
nodes = el.tree('getChildren', el);
nodes.each(function eachNode() {
var node = $(this);
el.tree('uncheckNode', node);
el.tree('toggleCheck', node);
});
});
</script><% } %><!-- Back button --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="backbar_left">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="button">
<input type="submit" name="cancelSelectCategories" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterAssignmentByTree.Back.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% printFooter(out); %>