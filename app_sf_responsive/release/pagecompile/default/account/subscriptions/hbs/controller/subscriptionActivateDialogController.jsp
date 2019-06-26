<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
var controller = this;
// Set template model
var model = {
error: false,
confirm: true,
loading: false
};
// Update and render template
controller.model(model);
$(document).on('click', 'button[name="activate"]', function() {
model = controller.model();
model.loading = true;
// Show loader
controller
.model(model)
.update();
var client = new ISHRestClient();
client.update('/recurringorders/' + model.sid, {
"type":"UpdateRecurringOrderRO",
"active": true
}).then(function() {
model.error = false;
model.confirm = false;
controller
.model(model)
.update();
$(document).trigger('subscriptions.activate.succesfully');
}, function() {
model.error = true;
model.confirm = false;
controller
.model(model)
.update();
});
});
$(document).on('click', 'a[data-target="<%=context.getFormattedValue("#",null)%>confirmActivateModal"]', function() {
model.sid = $(this).attr('data-subscription-id');
model.confirm = true;
model.loading = false;
controller
.model(model)
.update();
});
<% printFooter(out); %>