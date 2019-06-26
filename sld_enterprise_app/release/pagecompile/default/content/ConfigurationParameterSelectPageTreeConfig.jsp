<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
{
plugins: ['themes', 'json', 'ui', 'hotkeys', 'checkbox'],
checkbox: {
single: true
},
themes: {
icons: false
},
json: {
ajax : {
'url': '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageSelection-GetSubPagesJSON",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("params:ContentRepository:UUID"),null)))),null)%>',
'type': 'GET',
'dataType' :'json',
'data': function(node) {
return {'PageUUID': node.attr ? node.attr('id') : ''};
}
},
progressive_render: true,
progressive_unload: false
}
}
<% printFooter(out); %>