<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 2); %><% context.setCustomTagTemplateName("pagelettemplatetreesubtree","content/template/PageletTemplateTreeSubTree.isml",true,new String[]{"PageFlag","ContextObject","ContentRepository","Site","Locale","SelectionListing","SelectionType","SelectionName","SelectionValue","SelectionValues","DepthCounter","RowCounter","ExpandedEntries","HasMoreMap","ContextPipeline","ConstraintCtnr","SelectedPageletDefinitions","SelectedPagelets","ReadOnly","ExcludedPagelets","PermissionMap","RestrictByConstraintCtnr","PageletModelRepository"},new String[]{"ReturnRowCounter"}); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1",getObject("parametername1")),
new TagParameter("value6",getObject("parametervalue6")),
new TagParameter("key2",getObject("parametername2")),
new TagParameter("value5",getObject("parametervalue5")),
new TagParameter("key0",getObject("parametername0")),
new TagParameter("value2",getObject("parametervalue2")),
new TagParameter("key5",getObject("parametername5")),
new TagParameter("value1",getObject("parametervalue1")),
new TagParameter("key6",getObject("parametername6")),
new TagParameter("key3",getObject("parametername3")),
new TagParameter("value4",getObject("parametervalue4")),
new TagParameter("value3",getObject("parametervalue3")),
new TagParameter("key4",getObject("parametername4")),
new TagParameter("mapname","ContextPipelineMap"),
new TagParameter("value0",getObject("parametervalue0"))}, 31); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Locale"),
new TagParameter("key2","ContextPipeline"),
new TagParameter("key0","ContentRepository"),
new TagParameter("value2",getObject("ContextPipeline")),
new TagParameter("value1",getObject("Locale")),
new TagParameter("key3","ContextPipelineMap"),
new TagParameter("value4",getObject("SelectionValue")),
new TagParameter("value3",getObject("ContextPipelineMap")),
new TagParameter("key4","SelectionValue"),
new TagParameter("value0",getObject("ContentRepository")),
new TagParameter("mapname","TreeIncludeMap")}, 40); %><% {try{executePipeline("ViewPageletTemplatesTree-TreeInclude",((java.util.Map)(getObject("TreeIncludeMap"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 47.",e);}} %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 51); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key0","ContentDomain"),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value0",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("mapname","GlobalPageletLockParams")}, 52); %><% {try{executePipeline("ProcessPageletLock-LookupParentNamedResource",((java.util.Map)(getObject("GlobalPageletLockParams"))),"GlobalPageletLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 55.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GlobalPageletLockInfoDictionary:AllPageletsLocked"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><table border="0" cellpadding="3" cellspacing="0" width="100%" class="information w e s">
<tr>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForOther.gif" align="middle" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTreeInc.LockedByOther.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTreeInc.LockedByOther.title",null)),null)%>" border="0"/>
</td> 
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PlaceholderDefinition"))))).booleanValue() && ((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ContextObject:Page")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ContextObject:Page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PageFlag")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletTemplateTreeInc.AllPageLocked.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletTemplateTreeInc.AllComponentLocked.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} %><% } %> 
<% processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("GlobalPageletLockInfoDictionary:Resource"))}, 68); %></td>
</tr>
</table><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Result:PageletModelRepository:ApplicationTypes:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="6" border="0" id="pageletTemplateSearchMask" class="infobox w e s">
<tbody>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="PageletSearch_Application_Type_ID"><% {out.write(localizeISText("ContentPageTreeInc.ApplicationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% processOpenTag(response, pageContext, "applicationtypeselector", new TagParameter[] {
new TagParameter("SelectBoxClass","select inputfield_en"),
new TagParameter("SelectedApplicationTypeID",getObject("SelectedApplicationTypeID")),
new TagParameter("PageletModelRepository",getObject("Result:PageletModelRepository")),
new TagParameter("SelectBoxID","PageletSearch_Application_Type_ID")}, 80); %></td>
<td class="w100">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="button">
<input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchMask.Find.input",null)),null)%>" name="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FindAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("FindAction"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>find<% } %>" />
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% } %><table border="0" cellspacing="0" cellpadding="0" class="zebra_table s stickyHeader" width="100%">
<thead><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SubmitButtonsTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SubmitButtonsTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectionListing"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("GlobalPageletLockInfoDictionary:AllPageletsLocked"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("GlobalPageletLockInfoDictionary:AllPageletsLocked"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("DisableButtonAttribute", temp_obj);} %><% } else { %><% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisableButtonAttribute", temp_obj);} %><% } %><tr>
<td colspan="10"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SubmitButtonsTemplate"),null), null, "108");} %></td>
</tr><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectionType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectionType"),null).equals(context.getFormattedValue("wizard",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><th class="table_header w s" width="80" style="text-align: center;" nowrap="nowrap">
<a href="#" onclick="toggleSelectAll(this, '<% {String value = null;try{value=context.getFormattedValue(getObject("SelectionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>', 'Select All', 'Clear All');" class="tableheader"><% {out.write(localizeISText("PageletTemplateTreeInc.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</th><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SelectionType"),null).equals(context.getFormattedValue("constraint",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ReadOnly")))).booleanValue() && ((Boolean) getObject("ReadOnly")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><th class="table_header w s" width="80" style="text-align: center;" nowrap="nowrap">
<a href="#" onclick="SelectionTree.toggleSelectAll(); this.innerHTML = (this.innerHTML == 'Select All') ? 'Clear All' : 'Select All'; return false;" class="tableheader"><% {out.write(localizeISText("PageletTemplateTreeInc.SelectAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</th><% } else { %><th class="table_header w s" nowrap="nowrap">
&nbsp;
</th><% }} %><% } %><th class="table_header w e s"><% {out.write(localizeISText("PageletTemplateTreeInc.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("PageletTemplateTreeInc.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("PageletTemplateTreeInc.Group.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("PageletTemplateTreeInc.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("PageletTemplateTreeInc.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SelectionListing"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><th class="table_header e s" width="1%" nowrap="nowrap"><% {out.write(localizeISText("PageletTemplateTreeInc.Actions.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } %></tr>
</thead>
<tbody><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","HasMoreMap")}, 137); %><% processOpenTag(response, pageContext, "pagelettemplatetreesubtree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Site",getObject("Site")),
new TagParameter("ReadOnly",getObject("ReadOnly")),
new TagParameter("ExcludedPagelets",getObject("ExcludedPagelets")),
new TagParameter("DepthCounter",new Double(0)),
new TagParameter("SelectedPagelets",getObject("SelectedPagelets")),
new TagParameter("RestrictByConstraintCtnr",getObject("RestrictByConstraintCtnr")),
new TagParameter("SelectedPageletDefinitions",getObject("SelectedPageletDefinitions")),
new TagParameter("SelectionName",getObject("SelectionName")),
new TagParameter("SelectionListing",getObject("SelectionListing")),
new TagParameter("SelectionValues",getObject("SelectionValues")),
new TagParameter("ReturnRowCounter","RowCounter"),
new TagParameter("PermissionMap",getObject("PermissionMap")),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("RowCounter",new Double(0)),
new TagParameter("HasMoreMap",getObject("HasMoreMap")),
new TagParameter("PageFlag",getObject("PageFlag")),
new TagParameter("ExpandedEntries",getObject("Result:ExpandedPageletTemplateTreeEntries")),
new TagParameter("SelectionType",getObject("SelectionType")),
new TagParameter("ConstraintCtnr",getObject("ConstraintCtnr")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionValue",getObject("SelectionValue")),
new TagParameter("PageletModelRepository",getObject("Result:PageletModelRepository"))}, 139); %></tbody>
</table>
<script type="text/javascript">
function switchActive(element)
{
var allElements = document.getElementsByTagName("tr");
for (var i = 0, len = allElements.length; i < len; ++ i) 
{
if(allElements[i].className.match(/\bactive\b/g))
{
allElements[i].className = allElements[i].className.replace(/active/g, "")
}
}
var newActiveElement = element.parentNode.parentNode;
newActiveElement.className = newActiveElement.className + " active";
}
function toggleSelected(element)
{
element.checked ? element.checked = false : element.checked = true;
}
function toggleSelectAll(toggleElement, partOfFormElementName, selectAllText, clearAllText)
{
var select = true;
if (toggleElement.innerHTML == selectAllText)
{
toggleElement.innerHTML = clearAllText;
select = true;
} else {
toggleElement.innerHTML = selectAllText;
select = false;
}
var e = toggleElement;
while (e.nodeName != "FORM") {
e = e.parentNode;
}
var formElements = e.elements;
for (var i=0; i<formElements.length; i++) {
if ( ( -1 != formElements[i].name.indexOf(partOfFormElementName) ) &&
( formElements[i].disabled == false ) &&
( ( formElements[i].type == "checkbox" ) ||
( formElements[i].type == "radio" ) ) ) {
formElements[i].checked = select;
}
}
return false;
}
</script><% printFooter(out); %>