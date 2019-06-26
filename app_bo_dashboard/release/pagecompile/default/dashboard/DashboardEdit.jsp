<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
[
{
render: function (element) {
$(element.li).attr('id', 'rename')
.html('<% {out.write(localizeISText("dashboard.detail.button.rename","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>');
},
click: function () {
$('<%=context.getFormattedValue("#",null)%>dashboard-dialog-rename').dialog('open');
}
},
{
render: function (element) {
$(element.li).attr('id', 'confirmDelete')
.html('<% {out.write(localizeISText("dashboard.detail.button.delete","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>');
},
click: function () {
$('<%=context.getFormattedValue("#",null)%>dashboard-dialog-deleteconfirmation').dialog('open');
}
}
]
<% printFooter(out); %>