<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$(document).delegate("#product_links_select input[type='checkbox'], " + 
"#product_incoming_links_select input[type=checkbox]," +
"#category_links_select input[type='checkbox']," +
"#category_incoming_links_select input[type='checkbox']", "change", function(ev) {
var $target = $(ev.target);
var id = $target.attr('id').replace('select_', ''),
typeCode = id.replace('_incoming', '').replace('_outgoing', '').replace('_product_links', '').replace('_category_links', ''),
tableName = id.replace('_product_links', '').replace('_category_links', '');
// hide table for link direction
var propName = $target.prop('name');
if($target.is(':checked'))
{
$('.product_links_' + typeCode).show(); // show links container
$('.category_links_' + typeCode).show(); // show links container
$('#select_' + typeCode + '_table').show();
$('<%=context.getFormattedValue("#",null)%>' + tableName + '_product_links' + '_table').show(); // show product links
$('<%=context.getFormattedValue("#",null)%>' + tableName + '_category_links' + '_table').show(); // show category links
}
else
{
$('<%=context.getFormattedValue("#",null)%>' + tableName + '_product_links' + '_table').hide(); // hide product links
$('<%=context.getFormattedValue("#",null)%>' + tableName + '_category_links' +'_table').hide(); // hide category links
// hide link type container if neither in or out direction of link type is shown
if(!$('.product_links_' + typeCode + '_list:visible').length && !$('.category_links_' + typeCode + '_list:visible').length)
{
// container is named product_links but also contains product to category links
$('.product_links_' + typeCode).hide(); // hide links container
$('.category_links_' + typeCode).hide(); // hide links container
}
}
})
$(document).delegate("form", "submit", function(ev) {
var savedState="";
var value="";
$('#product_links_select input[type=checkbox], ' +
'#product_incoming_links_select input[type=checkbox], ' +
'#category_links_select input[type=checkbox], ' +
'#category_incoming_links_select input[type=checkbox]').each(function(index) {
if($(this).is(':checked'))
{ 
savedState = savedState + "<input type='hidden' name='"+$(this).attr('name')+"' value='"+$(this).attr('name')+"' />";
}
});
$("form").prepend(savedState);
})
$(document).ready(function() {
$('#product_links_select input[type=checkbox]').trigger("change");
$('#product_incoming_links_select input[type=checkbox]').trigger("change");
$('#category_links_select input[type=checkbox]').trigger("change");
$('#category_incoming_links_select input[type=checkbox]').trigger("change");
restoreScrollPosition();
});
</script><% printFooter(out); %>