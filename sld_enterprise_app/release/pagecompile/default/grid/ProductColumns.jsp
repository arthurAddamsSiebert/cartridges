<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("configuration")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("currentapplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".columns",null)); getPipelineDictionary().put("configColumns", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("\'",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configColumns)"),null),(String)(" "),(String)("\', \'")),null) + context.getFormattedValue("\'",null)); getPipelineDictionary().put("columns", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("columns"),null).equals(context.getFormattedValue("\'\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("columns", temp_obj);} %><% } %><% } %>
(function () {
var allColumns = {
select: {
type: 'select',
dataKey: 'uuid',
single: true,
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID',
width: 30,
maxWidth: 30,
},
image : {
type: 'image',
dataKey: 'image',
title: '<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.image.title",null)),null)%>',
width: 40,
maxWidth: 40,
sortable: false
},
name: {
type: 'text',
dataKey: 'name',
title: '<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.name.title",null)),null)%>',
width: 265,
maxWidth: 265,
sortable: true
},
sku: {
type: 'text',
dataKey: 'sku',
title: '<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.id.title",null)),null)%>',
width: 165,
maxWidth: 165,
sortable: true,
render: function (args) {
return '<span title="'+args.row.sku+'">'+args.row.sku+'</span>';
}
},
supplier: {
type: 'text',
dataKey: 'supplier',
title: '<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.supplier.title",null)),null)%>',
sortable: false,
width: 180,
maxWidth: 180,
sortable: true
},
value: {
type: 'money',
dataKey: 'value',
title: '<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.listprice.title",null)),null)%>',
width: 110,
maxWidth: 110,
sortable: true
}, 
typeCode: {
type: 'text',
dataKey: 'typeCode',
title: '<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.typecode.title",null)),null)%>',
sortable: false,
width: 150,
maxWidth: 150
},
status: {
type: 'status',
dataKey: 'status',
title: '<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.title",null)),null)%>',
sortable: false,
width: 110,
maxWidth: 110,
render: function (args) {
var result = [];
if (args.row.isOnline) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.online",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.online",null)),null)%>" border="0" />&nbsp;');
}
if (args.row.isAvailable) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.instock",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.instock",null)),null)%>" border="0" />&nbsp;');
}
if (args.row.isCategorized) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_explicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.categorized",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.categorized",null)),null)%>" border="0"/>&nbsp;');
}
if (args.row.isOffered) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_offers.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.offered",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.offered",null)),null)%>" border="0"/>&nbsp;');
}
if (args.row.isShared) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_to.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.shared",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.shared",null)),null)%>" border="0"/>');
}
return result.join('');
}
}
},
names = [<% {String value = null;try{value=context.getFormattedValue(getObject("columns"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";out.write(value);} %>],
useAll = names.length === 0,
columns = [],
name, column;
function indexOf(list, element) {
if (list.indexOf) {
return list.indexOf(element);
}
for (var i = 0, len = list.length; i < len; i++) {
if (list[i] === element) {
return i;
}
}
return -1;
}
for (name in allColumns) {
if (!allColumns.hasOwnProperty(name)) continue;
var column = allColumns[name];
column.id = name;
// check if column configuration is provided
if (useAll) {
// no column configuration
columns.push(column);
} else {
// check if column is needed
if (indexOf(names, name) !== -1) {
columns.push(column);
}
}
}
return columns;
})()
<% printFooter(out); %>