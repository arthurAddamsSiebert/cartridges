<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
var form = $('form[name="CatalogSelectionForm"]'),
el = $('<%=context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("params:TreeId"),null),null)%>'),
addState = function addState(node, type) {
var value = node.data('checkbox').value;
if (!form.find('input[type="hidden"][name="tree_' + type + '"][value="' + value + '"]').length) {
form.prepend('<input type="hidden" name="tree_' + type + '" value="' + value + '">');
}
},
removeState = function removeState(node, type) {
var value = node.data('checkbox').value;
form.find('input[type="hidden"][name="tree_' + type + '"][value="' + value + '"]').remove();
};
el.on('afterToggleCheck.tree', function onNodeChange(ev, data) {
var tree = data.instance,
nodes = data.result.obj,
changeState = function changeState(node) {
var parent = tree.getParent(node),
checked = tree.isChecked(node),
typeAdd = checked ? 'checked' : 'unchecked',
typeRemove = checked ? 'unchecked' : 'checked',
children;
removeState(node, typeRemove + '_recursive');
removeState(node, typeRemove);
if (!tree.isLeaf(node)) {
if (!tree.isLoaded(node)) {
addState(node, typeAdd + '_recursive');
} else {
addState(node, typeAdd);
children = tree.getChildren(node);
children.each(function eachChild() {
changeState($(this));
});
}
} else {
addState(node, typeAdd);
}
};
nodes.each(function eachNode() {
changeState($(this));
}); 
});
<% printFooter(out); %>