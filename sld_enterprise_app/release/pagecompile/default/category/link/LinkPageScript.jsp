<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$(document).delegate('<%=context.getFormattedValue("#",null)%>category_incoming_links_select input[type=checkbox], <%=context.getFormattedValue("#",null)%>category_outgoing_links_select input[type=checkbox]', 'change', function(ev) {
var $target = $(ev.target);
var tableId = 'table_' + $target.attr('id').replace('select_', '');
var checked = $target.is(':checked');
$('<%=context.getFormattedValue("#",null)%>' + tableId).toggle(checked);
});
$(document).delegate("form", "submit", function(ev) {
var savedState = "<input type='hidden' name='user_selection' value='true' />";
var value = "";
$('<%=context.getFormattedValue("#",null)%>category_incoming_links_select input[type=checkbox], <%=context.getFormattedValue("#",null)%>category_outgoing_links_select input[type=checkbox]').each(function(index) {
if ($(this).is(':checked')) {
savedState = savedState + "<input type='hidden' name='selected_" + $(this).attr('name') + "' value='true' />";
}
});
$("form").prepend(savedState);
});
$(document).ready(function() {
$('#category_incoming_links_select input[type=checkbox]').trigger("change");
$('#category_outgoing_links_select input[type=checkbox]').trigger("change");
restoreScrollPosition();
});
</script><% printFooter(out); %>