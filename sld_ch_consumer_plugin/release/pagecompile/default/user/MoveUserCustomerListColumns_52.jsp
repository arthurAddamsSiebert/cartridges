<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("configuration")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("currentapplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".columns",null)); getPipelineDictionary().put("configColumns", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("\'",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configColumns)"),null),(String)(" "),(String)("\', \'")),null) + context.getFormattedValue("\'",null)); getPipelineDictionary().put("columns", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("columns"),null).equals(context.getFormattedValue("\'\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("columns", temp_obj);} %><% } %><% } %>
(function () {
var allColumns = {
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:UserPermissionForEdit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
select: {
type: 'select',
dataKey: 'ID',
single: true,
selectedItemsName: 'SelectedCustomerObjectUUID',
availableItemsName: 'CustomerObjectUUID'
},
<% } %>
type: {
type: 'text',
dataKey: 'type',
sortable: false,
width: 40,
title: '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.Type",null,null,null,null,null,null,null,null,null,null,null,null));} %>'
},
name: {
type: 'text',
dataKey: 'name',
title: '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
},
customerNo: {
type: 'text',
dataKey: 'customerID',
title: '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.ID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
},
disabledflag: {
type: 'status',
dataKey: 'isActive',
sortable: true,
title: '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 70,
render: function(params) {
var isActive = !!params.row.isActive, 
src = isActive ? 'online.png' : 'offline.png',
title = (isActive ? '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.CustomerIsActivated",null,null,null,null,null,null,null,null,null,null,null,null));} %>' : '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.CustomerIsDeactivated",null,null,null,null,null,null,null,null,null,null,null,null));} %>') +
'.\n' +
(isActive ? '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.CanLogInDependingOnTheirStatus",null,null,null,null,null,null,null,null,null,null,null,null));} %>' : '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.CanTLogIn",null,null,null,null,null,null,null,null,null,null,null,null));} %>');
return '<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/' + src + '" alt="' + title + '" title="' + title + '" border="0" />&nbsp;';
}
},
creationdate: {
type: 'text',
dataKey: 'creationDate',
title: '<% {out.write(localizeISText("MoveUserCustomerListColumns_52.CreationDate",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
}
},
names = [<% {String value = null;try{value=context.getFormattedValue(getObject("columns"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";out.write(value);} %>],
columns = [],
len = names.length,
i, column;
// only show specified columns
for (i = 0; i < len; i++) {
if (!allColumns.hasOwnProperty(names[i])) continue;
column = allColumns[names[i]];
// the column needs to know about its id
column.id = names[i];
columns.push(column);
}
// show all columns if no columns are specified 
for (i in allColumns) {
if (!allColumns.hasOwnProperty(i)) continue;
column = allColumns[i];
column.id = i;
columns.push(column);
}
return columns;
})()<% printFooter(out); %>