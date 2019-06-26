<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.intershop.component.foundation.internal.iterator.ComparatorAdapter"%>
<%@page import="com.intershop.beehive.xcs.capi.catalog.CatalogCategory"%>
<%@page import="com.intershop.beehive.xcs.internal.catalog.CatalogCategoryPO"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("categorytreenode","inc/CategoryTreeNode.isml",true,new String[]{"categories","selectmode","minexpandlevel","autoselectsubcategories","selectedcategories","lazycategories","disabledcategories","detailspagepipeline","detailspageparameter","parametername","parametervalue","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3","parametername4","parametervalue4","parametername5","parametervalue5"},null); %> 
<% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/dynatree/jquery.dynatree.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery.dynatree.customized.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-ui-1.10.3.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/dynatree/jquery.dynatree-1.2.4.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebControls")); %>
$("<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("treeid"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>").dynatree({
checkbox: true,
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("selectmode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("selectmode"),null).equals(context.getFormattedValue("single",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
classNames: $.extend({}, $.ui.dynatree.prototype.options.classNames, {checkbox: "dynatree-radio"}),
<% } %> 
selectMode: <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("selectmode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("selectmode"),null).equals(context.getFormattedValue("single",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>1<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("selectmode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("selectmode"),null).equals(context.getFormattedValue("multiplehier",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>3<% } else { %>2<% }} %>,
minExpandLevel: <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("minexpandlevel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("minexpandlevel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>1<% } %>, 
generateIds: true,
idPrefix: '',
onPostInit: function(isReloading, isError) {
logMsg("onPostInit(%o, %o)", isReloading, isError);
// activate all pre-selected categories; TODO: prefix list elements IDs, categories UUIDs might start with a dot
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("selectedcategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("disabledcategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
if (this.isInitializing())
{
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("selectedcategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% while (loop("selectedcategories","selectedcategory",null)) { %>
var key = "<% {String value = null;try{value=context.getFormattedValue(getObject("selectedcategory"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>";
var selectedNode = null;
this.visit(function(node){
if(node.data.key == key) {
selectedNode = node;
return false;
}
}, true);
if ($(selectedNode).length)
{
selectedNode.activateSilently(); 
}
<% } %><% } %>
// activate the root node
this.getRoot().activateSilently();
}
<% } %>
// Re-fire onActivate, so the text is update
this.reactivate();
},
onCustomRender: function(dataNode){ 
var tooltip = dataNode.data.tooltip ? " title='" + dataNode.data.tooltip + "'" : "";
if (dataNode.data.href == undefined) {
nodeTitle = "<span style='display: inline-block;' class='" + this.options.classNames.title + "'" + tooltip + ">" + dataNode.data.title + "</span>";
}
else {
nodeTitle = "<a href='" + dataNode.data.href + "' class='" + this.options.classNames.title + "'" + tooltip + ">" + dataNode.data.title + "</a>";
}
return nodeTitle;
},
onRender: function(dataNode, nodeSpan){ 
$(nodeSpan).addClass('dynatree-ico-cf');
$(nodeSpan).filter('.dynatree-expanded').addClass('dynatree-ico-ef');
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("disabledcategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %> 
<% while (loop("disabledcategories","disabledcategory",null)) { %> 
if (dataNode.data.key == "<% {String value = null;try{value=context.getFormattedValue(getObject("disabledcategory"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>")
{
dataNode.data.unselectable = true; 
//Set unchangeable property to keep disabled state by selection/deselection
dataNode.data.unchangeable = true; 
$(nodeSpan).addClass("dynatree-unselectable dynatree-unselectable-unchangeable"); 
}
<% } %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("autodisabledisabledsubcategories")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autodisabledisabledsubcategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>
if (dataNode.parent.data.unselectable == true)
{ 
dataNode.data.unselectable = true;
$(nodeSpan).addClass("dynatree-unselectable"); 
}
if (dataNode.data.unchangeable == true)
{
//Set unchangeable property to keep disabled state by selection/deselection
dataNode.data.unchangeable = true;
$(nodeSpan).addClass("dynatree-unselectable-unchangeable"); 
}
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("autoselectdisablesubcategories")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autoselectdisablesubcategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
if (dataNode.parent.isSelected() == true)
{ 
dataNode.data.unselectable = true; 
$(nodeSpan).addClass("dynatree-unselectable"); 
}
if (dataNode.isSelected() == true && dataNode.hasChildren() && dataNode.data.unchangeable)
{
dataNode.visit(function(node){
node.data.unselectable = true;
node.data.unchangeable = true;
node.data.addClass = "dynatree-unselectable dynatree-unselectable-unchangeable";
}); 
}
else if (dataNode.isSelected() == true && dataNode.hasChildren())
{
dataNode.visit(function(node){
node.data.unselectable = true;
node.data.addClass = "dynatree-unselectable";
}); 
} 
<% } %>
},
onActivate: function(node) {
$("#echoActive").text(node.data.title);
if (node.data.href){
window.location = node.data.href;
}
},
onDeactivate: function(node) {
$("#echoActive").text("-");
},
onDblClick: function(node, event) {
logMsg("onDblClick(%o, %o)", node, event);
//node.toggleExpand();
},
onLazyRead: function(node){
node.appendAjax({url: "<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryTree-GetSubCategories",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
data: {"CategoryUUID": node.data.key, 
"detailspagepipeline" : "<% {String value = null;try{value=context.getFormattedValue(getObject("detailspagepipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"detailspageparameter" : "<% {String value = null;try{value=context.getFormattedValue(getObject("detailspageparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametername" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametername"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametername1" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametername1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {206}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametername2" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametername2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametername3" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametername3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametername4" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametername4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametername5" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametername5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametervalue" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametervalue1" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametervalue2" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {213}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametervalue3" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametervalue4" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
"parametervalue5" : "<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
}
});
}
,
onQuerySelect: function(sel, node){
// Overridding the original function in order
// to add to the desection of the node 
// check if it is unselectable
node._fixSelectionState = function(){
var p, i, l;
var opts = this.tree.options;
if( this.bSelected ) {
// Select all children
this.visit(function(node){
node.parent._setSubSel(true);
if(!node.data.unselectable){
node._select(true, false, false);
}
});
// Select parents, if all children are selected
p = this.parent;
if (opts.selectMode == 3) {
while( p ) {
p._setSubSel(true);
var allChildsSelected = true;
for(i=0, l=p.childList.length; i<l; i++) {
var n = p.childList[i];
if( !n.bSelected && !n.data.isStatusNode && !n.data.unselectable) {
allChildsSelected = false;
break;
}
}
if( allChildsSelected ){
p._select(true, false, false);
}
p = p.parent;
}
} 
} else {
// Deselect all children
this._setSubSel(false);
this.visit(function(node){
node._setSubSel(false);
//Code extionsion
if(!node.data.unchangeable){
node._select(false, false, false);
}
});
// Deselect parents, and recalc hasSubSel
p = this.parent;
if (opts.selectMode == 3) {
while( p ) {
p._select(false, false, false);
var isPartSel = false;
for(i=0, l=p.childList.length; i<l; i++) {
if( p.childList[i].bSelected || p.childList[i].hasSubSel ) {
isPartSel = true;
break;
}
}
p._setSubSel(isPartSel);
p = p.parent;
}
} 
}
};
return true;
} 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("autoselectdisablesubcategories")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autoselectdisablesubcategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>
, 
onSelect: function(flag, dataNode){
if (flag == true) {
if (dataNode.hasChildren())
{
dataNode.visit(function(node){
node.data.unselectable = true;
$(node.span).addClass("dynatree-unselectable");
}); 
}
}
else {
if (dataNode.hasChildren())
{
dataNode.visit(function(node){
//Do not deselect if node is initialized as disabled
if (!node.data.unchangeable)
{
node.data.unselectable = false;
// removeClass doesn't clear addClass data property 
// If it stays set to 'dynatree-unselectable' 
// onRender event will display nodes as unselectable
// So clear it here.
node.data.addClass = null;
$(node.span).removeClass("dynatree-unselectable");
} 
}); 
} 
}
}
<% } %>
});
$("form").submit(function(a) {
// Serialize standard form fields:
// then append Dynatree selected 'checkboxes':
var tree = $("<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("treeid"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {326}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>").dynatree("getTree");
var treeData = tree.serializeArray(<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("autoselectdisablesubcategories")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autoselectdisablesubcategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",327,e);}if (_boolean_result) { %>true<% } %>);
for (var i=0,l=treeData.length;i<l;i++) {
var nodeData = tree.getNodeByKey(treeData[i].value).data;
// Don't submit a selected node if it is 'root' node (should one exist at all) or if it is disabled.
if (treeData[i].value !== "root" && !nodeData.unselectable)
{
$("form").append('<input type="hidden" name="'+treeData[i].name+'" value="'+treeData[i].value+'"/>');
} 
}
// and/or add the active node as 'radio button':
return true;
});
<% out.print("</waplacement>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",345,e);}if (_boolean_result) { %><script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/PageletConstraint.js"></script><% } %><div id="<% {String value = null;try{value=context.getFormattedValue(getObject("treeid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {349}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<ul><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("root")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("root"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",351,e);}if (_boolean_result) { %><li><% {String value = null;try{value=context.getFormattedValue(getObject("root"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {353}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><ul> 
<% } %><%
	List<String> selectedCategoriesList = new ArrayList<String>();
	Iterator selectedCategories = getPipelineDictionary().get("selectedcategories");
	
	if (selectedCategories != null)
	{
		while(selectedCategories.hasNext())
		{
		    selectedCategoriesList.add((String)selectedCategories.next());
		}	    
	}
	
	getPipelineDictionary().put("SelectedCategoriesList",selectedCategoriesList);
	
	List<String> lazyCategoriesList = new LinkedList<String>();
	Iterator lazyCategories = getPipelineDictionary().get("lazycategories");
	
	
	if (lazyCategories != null)
	{
		while(lazyCategories.hasNext())
		{
		    lazyCategoriesList.add((String)lazyCategories.next());
		}	    
	}
	
	getPipelineDictionary().put("LazyCategoriesList",lazyCategoriesList);
	
	Iterator disabledCategories = getPipelineDictionary().get("disabledcategories");
	List<String> disabledCategoriesList = new ArrayList<String>();
	
	if (disabledCategories != null)
	{
	    while (disabledCategories.hasNext())
	    {
	        disabledCategoriesList.add((String) disabledCategories.next());
	    }
	}
	
	getPipelineDictionary().put("DisabledCategoriesList",disabledCategoriesList);
%><% processOpenTag(response, pageContext, "getsortedcategories", new TagParameter[] {
new TagParameter("CategoriesCollection",getObject("categories")),
new TagParameter("SortAttribute","DisplayName"),
new TagParameter("SortedCategories","SortedSubCategories")}, 397); %><% while (loop("SortedSubCategories","subcategory",null)) { %><li id="<%=context.getFormattedValue(getObject("subcategory:UUID"),null)%>" class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SelectedCategoriesList") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("SelectedCategoriesList:Contains(subcategory:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",401,e);}if (_boolean_result) { %>selected<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("LazyCategoriesList") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("LazyCategoriesList:Contains(subcategory:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",401,e);}if (_boolean_result) { %>lazy<% } %>" title="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("subcategory:Name"),null)),null)%>"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("detailspagepipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",402,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("detailspagepipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("detailspageparameter"),null),context.getFormattedValue(getObject("subcategory:UUID"),null))).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("subcategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {410}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("subcategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {412}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("LazyCategoriesList:Contains(subcategory:UUID)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",414,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("subcategory:SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",415,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("autoselectsubcategories")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autoselectsubcategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("SelectedCategoriesList:Contains(subcategory:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",416,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("subcategory")); getPipelineDictionary().put("CurrentSubCategory", temp_obj);} %><%
									List<String> selectedSubCategoriesList = new ArrayList<String>();
									CatalogCategory subCategory = getPipelineDictionary().get("CurrentSubCategory");
									
									List<String> disabledCategoriesCollection = getPipelineDictionary().get("DisabledCategoriesList");
									
									Iterator subCategories = subCategory.createSubCategoriesIterator();
									    
									while(subCategories.hasNext())
									{									
									    CatalogCategory subCatalogCategory = (CatalogCategory) subCategories.next();
									    
									    if (!disabledCategoriesCollection.contains(subCatalogCategory.getUUID()))
									    {
									    	selectedSubCategoriesList.add(subCatalogCategory.getUUID());
									    }
									}	    
									getPipelineDictionary().put("SelectedSubCategoriesList",selectedSubCategoriesList);
								%><% } else { %><% {Object temp_obj = (getObject("SelectedCategoriesList")); getPipelineDictionary().put("SelectedSubCategoriesList", temp_obj);} %><% } %><ul><% processOpenTag(response, pageContext, "categorytreenode", new TagParameter[] {
new TagParameter("parametervalue",getObject("parametervalue")),
new TagParameter("parametervalue5",getObject("parametervalue5")),
new TagParameter("parametervalue4",getObject("parametervalue4")),
new TagParameter("parametervalue3",getObject("parametervalue3")),
new TagParameter("parametername1",getObject("parametername1")),
new TagParameter("parametervalue2",getObject("parametervalue2")),
new TagParameter("parametervalue1",getObject("parametervalue1")),
new TagParameter("parametername2",getObject("parametername2")),
new TagParameter("minexpandlevel",getObject("minexpandlevel")),
new TagParameter("parametername3",getObject("parametername3")),
new TagParameter("selectmode",getObject("selectmode")),
new TagParameter("selectedcategories",getObject("SelectedSubCategoriesList")),
new TagParameter("disabledcategories",getObject("DisabledCategoriesList")),
new TagParameter("lazycategories",getObject("LazyCategoriesList")),
new TagParameter("detailspageparameter",getObject("detailspageparameter")),
new TagParameter("detailspagepipeline",getObject("detailspagepipeline")),
new TagParameter("parametername4",getObject("parametername4")),
new TagParameter("parametername5",getObject("parametername5")),
new TagParameter("parametername",getObject("parametername")),
new TagParameter("categories",getObject("subcategory:SubCategories")),
new TagParameter("autoselectsubcategories",getObject("autoselectsubcategories"))}, 443); %></ul><% } %><% } %></li> 
<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("root")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("root"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",471,e);}if (_boolean_result) { %></ul> 
</li><% } %></ul>
</div><% printFooter(out); %>