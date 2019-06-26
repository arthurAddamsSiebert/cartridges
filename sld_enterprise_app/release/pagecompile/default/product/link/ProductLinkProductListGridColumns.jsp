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
dataKey: 'linkID',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID'
}, {
id: 'name',
type: 'link',
dataKey: 'name',
title: '<% {out.write(localizeISText("sld_enterprise_app.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %> ',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null)))),null) + context.getFormattedValue("?ProductID={uuid}&SelectedMenuItem=",null) + context.getFormattedValue(getObject("params:SelectedMenuItem"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
sortable: false
}, {
id: 'productID',
type: 'link',
dataKey: 'productID',
title: '<% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null)))),null) + context.getFormattedValue("?ProductID={uuid}&SelectedMenuItem=",null) + context.getFormattedValue(getObject("params:SelectedMenuItem"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
width: 80,
maxWidth: 170,
sortable: false
}, {
id: 'price',
type: 'money',
dataKey: 'price',
title: '<% {out.write(localizeISText("sld_enterprise_app.Price.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 80,
maxWidth: 80,
sortable: false
}, {
id: 'type',
type: 'text',
dataKey: 'type',
title: '<% {out.write(localizeISText("sld_enterprise_app.Type.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 80,
maxWidth: 150,
render: function (args) {
var result = [];
if (args.row.isLinkLocal && args.row.isLinkShared) {
result.push('<% {out.write(localizeISText("sld_enterprise_app.LocalLinkSharedLink.input","",null,null,null,null,null,null,null,null,null,null,null));} %>');
}
else if (args.row.isLinkLocal) {
result.push('<% {out.write(localizeISText("sld_enterprise_app.LocalLink.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>');
}
else if (args.row.isLinkShared) {
result.push('<% {out.write(localizeISText("sld_enterprise_app.SharedLink.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>');
}
return result.join('');
}
}, {
id: 'status',
type: 'status',
dataKey: 'status',
title: '<% {out.write(localizeISText("sld_enterprise_app.Status.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 110,
maxWidth: 110,
render: function (args) {
var result = [];
if (args.row.isOnline) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<% {out.write(localizeISText("sld_enterprise_app.Online.alt","",null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("sld_enterprise_app.Online.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" border="0" />&nbsp;');
}
if (args.row.isAvailable) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<% {out.write(localizeISText("sld_enterprise_app.InStock.alt","",null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("sld_enterprise_app.InStock.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" border="0" />&nbsp;');
}
if (args.row.isCategorized) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_explicitly_bound.gif" alt="<% {out.write(localizeISText("sld_enterprise_app.Categorized.alt","",null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("sld_enterprise_app.Categorized.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" border="0"/>&nbsp;');
}
if (args.row.isOffered) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_offers.gif" alt="<% {out.write(localizeISText("sld_enterprise_app.Offered.alt","",null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("sld_enterprise_app.Offered.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" border="0"/>&nbsp;');
}
if (args.row.isShared) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_to.gif" alt="<% {out.write(localizeISText("sld_enterprise_app.SharedToOthers.alt","",null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("sld_enterprise_app.SharedToOthers.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" border="0"/>');
}
return result.join('');
}
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("params:LinkDirection"),null).equals(context.getFormattedValue("Outgoing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("params:PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
}, {
id: 'sorting',
// This column type shouldn't be used outside of the product/category links.
// A standard column that can be used for sorting will be provided with the implementation of ENFINITY-34988.
type: 'sorting',
title: '<% {out.write(localizeISText("sld_enterprise_app.Sorting.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
webRoot: '<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
sortedElementsCount: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
allElementsCount: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
pageSize: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
pageNumber: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
width: 50,
maxWidth: 150
<% } %>
}]
<% printFooter(out); %>