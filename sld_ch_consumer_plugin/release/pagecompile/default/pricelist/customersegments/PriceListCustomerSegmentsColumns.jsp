<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
[
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:UserPermissionForEdit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
{
id: 'customerSegmentComplexID',
type: 'select',
dataKey: 'customerSegmentComplexID',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID'
}, 
<% } %>
{
id: 'name',
type: 'text',
dataKey: 'name',
title: '<% {out.write(localizeISText("PriceListCustomerSegmentsColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 200,
maxWidth: 200,
sortable: false
}, {
id: 'id',
type: 'text',
dataKey: 'ID',
title: '<% {out.write(localizeISText("PriceListCustomerSegmentsColumns.ID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
}, {
id: 'description',
type: 'text',
dataKey: 'description',
title: '<% {out.write(localizeISText("PriceListCustomerSegmentsColumns.Description",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
}]
<% printFooter(out); %>