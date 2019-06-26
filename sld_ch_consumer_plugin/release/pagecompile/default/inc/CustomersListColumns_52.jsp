<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
[
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:UserPermissionForEdit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
{
id: 'uuid',
type: 'select',
dataKey: 'linkID',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID'
}, 
<% } %>
{
id: 'type',
type: 'text',
dataKey: 'type',
title: '<% {out.write(localizeISText("CustomersListColumns_52.Type",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 30,
maxWidth: 30,
render: function (args) {
var type = args.row.type;
var result = [];
result.push('<div class="ish-customerType-' + type + '-icon" width="1"><span class="ish-icon">' + type + '</span></div>');
return result.join('');
}
}, {
id: 'customer',
type: 'text',
dataKey: 'customer',
sortable: false,
title: '<% {out.write(localizeISText("CustomersListColumns_52.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("params:UsePlainText")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("params:UsePlainText")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
render: function(args) {
var customer = args.row.customer;
var customerLink = args.row.customerLink;
var result = [];
result.push('<a href="' + customerLink + '">' + customer + '</a>');
return result.join('');
}
<% } %>
}, {
id: 'id',
type: 'text',
dataKey: 'ID',
title: '<% {out.write(localizeISText("CustomersListColumns_52.ID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 350,
maxWidth: 350,
sortable: false
}, {
id: 'status',
type: 'text',
dataKey: 'status',
title: '<% {out.write(localizeISText("CustomersListColumns_52.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 80,
maxWidth: 150,
sortable: false,
render: function (args) {
var status = args.row.status;
var result = [];
if (status == 'active')
{
result.push('<img border="0" title="<% {out.write(localizeISText("customers.list.status.active","",null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("customers.list.status.active","",null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" />');
} 
else
{
result.push('<img border="0" title="<% {out.write(localizeISText("customers.list.status.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("customers.list.status.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" />');
}
return result.join('');
}
}, {
id: 'CreationDate',
type: 'text',
dataKey: 'creationDate',
title: '<% {out.write(localizeISText("CustomersListColumns_52.CreationDate",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 350,
maxWidth: 350,
sortable: false
}]<% printFooter(out); %>