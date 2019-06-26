<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
[{
id: 'uuid',
type: 'select',
dataKey: 'uuid',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID'
}, {
id: 'name',
type: 'text',
dataKey: 'name',
title: '<% {out.write(localizeISText("ProductExportSelectProductsColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
}, {
id: 'sku',
type: 'text',
dataKey: 'sku',
title: '<% {out.write(localizeISText("ProductExportSelectProductsColumns.ID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 180,
maxWidth: 180,
sortable: false
}, {
id: 'supplier',
type: 'text',
dataKey: 'supplier',
title: '<% {out.write(localizeISText("ProductExportSelectProductsColumns.Supplier",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 180,
maxWidth: 180,
sortable: false
}, {
id: 'listPrice',
type: 'money',
dataKey: 'value',
title: '<% {out.write(localizeISText("ProductExportSelectProductsColumns.ListPriceUSDollar",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 170,
maxWidth: 170,
sortable: false
}, {
id: 'typeCode',
type: 'text',
dataKey: 'typeCode',
title: '<% {out.write(localizeISText("ProductExportSelectProductsColumns.Type",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 200,
maxWidth: 200
}, {
id: 'status',
type: 'status',
dataKey: 'status',
title: '<% {out.write(localizeISText("ProductExportSelectProductsColumns.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 170,
maxWidth: 170,
render: function (args) {
var result = [];
if (args.row.isOnline) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<% {out.write(localizeISText("ProductExportSelectProductsColumns.Online",null,null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("ProductExportSelectProductsColumns.Online",null,null,null,null,null,null,null,null,null,null,null,null));} %>" border="0" />&nbsp;');
}
if (args.row.isAvailable) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<% {out.write(localizeISText("ProductExportSelectProductsColumns.InStock",null,null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("ProductExportSelectProductsColumns.InStock",null,null,null,null,null,null,null,null,null,null,null,null));} %>" border="0" />&nbsp;');
}
if (args.row.isCategorized) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_explicitly_bound.gif" alt="<% {out.write(localizeISText("ProductExportSelectProductsColumns.Categorized",null,null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("ProductExportSelectProductsColumns.Categorized",null,null,null,null,null,null,null,null,null,null,null,null));} %>" border="0"/>&nbsp;');
}
if (args.row.isOffered) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_offers.gif" alt="<% {out.write(localizeISText("ProductExportSelectProductsColumns.Offered",null,null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("ProductExportSelectProductsColumns.Offered",null,null,null,null,null,null,null,null,null,null,null,null));} %>" border="0"/>&nbsp;');
}
if (args.row.isShared) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_to.gif" alt="<% {out.write(localizeISText("ProductExportSelectProductsColumns.SharedToOthers",null,null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("ProductExportSelectProductsColumns.SharedToOthers",null,null,null,null,null,null,null,null,null,null,null,null));} %>" border="0"/>');
}
return result.join('');
}
}]
<% printFooter(out); %>