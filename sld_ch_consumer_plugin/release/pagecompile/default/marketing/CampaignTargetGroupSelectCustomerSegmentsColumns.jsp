<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
[ {
id: 'customerSegmentComplexID',
type: 'select',
dataKey: 'customerSegmentComplexID',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID' 
}, {
id: 'name',
type: 'text',
dataKey: 'name',
title: '<% {out.write(localizeISText("CampaignTargetGroupSelectCustomerSegmentsColumns.Name","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 250,
maxWidth: 250,
sortable: false
}, {
id: 'id',
type: 'text',
dataKey: 'id',
title: '<% {out.write(localizeISText("CampaignTargetGroupSelectCustomerSegmentsColumns.ID","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 250,
maxWidth: 250,
sortable: false
}, {
id: 'description',
type: 'text',
dataKey: 'description',
title: '<% {out.write(localizeISText("CampaignTargetGroupSelectCustomerSegmentsColumns.Description","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 1100,
maxWidth: 1100,
sortable: false
}]
<% printFooter(out); %>